package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.ShuaPoEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.workchecker.SlopePositionChecker;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity;
import com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSpStep3Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.fragment.ShuaPoStep3Fragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoStep3Fragment extends BaseProjectFragment {
    private double abcCalculatedRatio;
    private BaseStationEntity baseStationInfo;
    private FragmentSpStep3Binding binding;
    private CadPickHelper cadPickHelper;
    private ShuaPoEntity initEntity;
    private boolean isH5Pro;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private ShuaPoEntity shuaPoEntity;
    private boolean updatingSlopeParams;
    private final Runnable slopeUpdateRunnable = new Runnable() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (!ShuaPoStep3Fragment.this.isAdded() || ShuaPoStep3Fragment.this.updatingSlopeParams) {
                return;
            }
            ShuaPoStep3Fragment.this.onPointCCoordsInputFinished();
        }
    };
    private final TextWatcher pointCTextWatcher = new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.2
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (ShuaPoStep3Fragment.this.updatingSlopeParams) {
                return;
            }
            ShuaPoStep3Fragment.this.syncPointCEntityFromView();
            ShuaPoStep3Fragment.this.scheduleSlopeUpdateFromABC();
        }
    };

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public /* synthetic */ void onFileLoadFailed() {
                CadPickHelper.Callback.CC.$default$onFileLoadFailed(this);
            }

            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public /* synthetic */ void onPickCancelled() {
                CadPickHelper.Callback.CC.$default$onPickCancelled(this);
            }

            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public final void onPickResult(String str, double[] dArr) {
                ShuaPoStep3Fragment.$r8$lambda$lCOeK0hm0yCmx7shvzpw3nHQXd8(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$lCOeK0hm0yCmx7shvzpw3nHQXd8(ShuaPoStep3Fragment shuaPoStep3Fragment, String str, double[] dArr) {
        shuaPoStep3Fragment.shuaPoEntity.cadPath = str;
        shuaPoStep3Fragment.onPointCCollected(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSpStep3Binding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception unused) {
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initEntity = (ShuaPoEntity) arguments.getSerializable("initEntity");
            this.shuaPoEntity = (ShuaPoEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        this.binding.heightDropdown.initUnit(requireContext(), getGlobalUnit());
    }

    private void initView() {
        this.binding.ivStep3Collect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoStep3Fragment.this.binding.toothView.getVisibility() == 0 && ShuaPoStep3Fragment.this.shuaPoEntity.shovelTipType == -1) {
                    ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showToastDialog(ShuaPoStep3Fragment.this.getString(R$string.please_select_shovel_tip));
                } else {
                    ShuaPoStep3Fragment.this.clearCadPath();
                    ((ShuaPoCreateActivity) ShuaPoStep3Fragment.this.requireActivity()).goCollectCoordinates(ShuaPoStep3Fragment.this.shuaPoEntity.shovelTipType);
                }
            }
        });
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.reset_data), ShuaPoStep3Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.4.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ShuaPoStep3Fragment.this.shuaPoEntity.east3 = ShuaPoStep3Fragment.this.initEntity.east3;
                        ShuaPoStep3Fragment.this.shuaPoEntity.north3 = ShuaPoStep3Fragment.this.initEntity.north3;
                        ShuaPoStep3Fragment.this.shuaPoEntity.targetElevation3 = ShuaPoStep3Fragment.this.initEntity.targetElevation3;
                        ShuaPoStep3Fragment.this.shuaPoEntity.cadPath = ShuaPoStep3Fragment.this.initEntity.cadPath;
                        ShuaPoStep3Fragment shuaPoStep3Fragment = ShuaPoStep3Fragment.this;
                        shuaPoStep3Fragment.showCoords(shuaPoStep3Fragment.initEntity.east3, ShuaPoStep3Fragment.this.initEntity.north3, ShuaPoStep3Fragment.this.initEntity.targetElevation3);
                        ShuaPoStep3Fragment.this.updateSlopeParamsFromABC();
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(this.pointCTextWatcher);
        this.binding.edtNorth.addTextChangedListener(this.pointCTextWatcher);
        this.binding.edtElev.addTextChangedListener(this.pointCTextWatcher);
        NumericEditText.OnFocusListener onFocusListener = new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.5
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z || ShuaPoStep3Fragment.this.updatingSlopeParams) {
                    return;
                }
                ShuaPoStep3Fragment.this.scheduleSlopeUpdateFromABC();
            }
        };
        this.binding.edtEast.setOnFocusListener(onFocusListener);
        this.binding.edtNorth.setOnFocusListener(onFocusListener);
        this.binding.edtElev.setOnFocusListener(onFocusListener);
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuaPoStep3Fragment.m2572$r8$lambda$sv1Vc4BpZtl93N3rAzthZYu6Ek(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ShuaPoStep3Fragment.$r8$lambda$1Qt8rtRlu2PaTxw0StwEJktXjIM(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuaPoStep3Fragment.m2571$r8$lambda$TbiaD4wDZufQTYamNFIeJKNkY(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoStep3Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep3Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltNoWidth.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoStep3Fragment.this.binding.ivSelNoWidth.setSelected(!ShuaPoStep3Fragment.this.binding.ivSelNoWidth.isSelected());
                ShuaPoStep3Fragment.this.binding.edtWidth.setEnabled(!ShuaPoStep3Fragment.this.binding.ivSelNoWidth.isSelected());
                ShuaPoStep3Fragment.this.binding.lltWidth.setVisibility(ShuaPoStep3Fragment.this.binding.ivSelNoWidth.isSelected() ? 8 : 0);
            }
        });
        this.binding.edtRatio.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.8
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z || ShuaPoStep3Fragment.this.updatingSlopeParams) {
                    return;
                }
                ShuaPoStep3Fragment.this.onRatioInputFinished();
            }
        });
        this.binding.edtHeight.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.9
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z || ShuaPoStep3Fragment.this.binding.edtRatio.getNumericValue() <= 0.0d) {
                    return;
                }
                ShuaPoStep3Fragment.this.recalcFlatDistanceFromHeight();
            }
        });
        this.binding.edtDis.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.10
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z || ShuaPoStep3Fragment.this.binding.edtRatio.getNumericValue() <= 0.0d) {
                    return;
                }
                ShuaPoStep3Fragment.this.recalcHeightFromFlatDistance();
            }
        });
        this.binding.edtWidth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.11
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep3Fragment.this.shuaPoEntity.width = ShuaPoStep3Fragment.this.binding.edtWidth.getNumericValue();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new AnonymousClass13());
        showData();
    }

    /* renamed from: $r8$lambda$sv1Vc4BpZtl93N3-rAzthZYu6Ek, reason: not valid java name */
    public static /* synthetic */ void m2572$r8$lambda$sv1Vc4BpZtl93N3rAzthZYu6Ek(ShuaPoStep3Fragment shuaPoStep3Fragment, View view) {
        CadPickHelper cadPickHelper = shuaPoStep3Fragment.cadPickHelper;
        ShuaPoEntity shuaPoEntity = shuaPoStep3Fragment.shuaPoEntity;
        cadPickHelper.pickFromFile(shuaPoEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(shuaPoEntity.east3, shuaPoEntity.north3, shuaPoEntity.targetElevation3));
    }

    public static /* synthetic */ boolean $r8$lambda$1Qt8rtRlu2PaTxw0StwEJktXjIM(ShuaPoStep3Fragment shuaPoStep3Fragment, View view) {
        shuaPoStep3Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* renamed from: $r8$lambda$TbiaD4wD--ZufQTYamNFIeJKNkY, reason: not valid java name */
    public static /* synthetic */ void m2571$r8$lambda$TbiaD4wDZufQTYamNFIeJKNkY(ShuaPoStep3Fragment shuaPoStep3Fragment, View view) {
        if (shuaPoStep3Fragment.binding.toothView.getVisibility() == 0 && shuaPoStep3Fragment.shuaPoEntity.shovelTipType == -1) {
            ((BaseActivity) shuaPoStep3Fragment.requireActivity()).showToastDialog(shuaPoStep3Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            shuaPoStep3Fragment.handleMeasureCollectClick(shuaPoStep3Fragment.shuaPoEntity.shovelTipType, shuaPoStep3Fragment.createToothCollectHandler());
        }
    }

    /* renamed from: com.qianhe.yct.fragment.ShuaPoStep3Fragment$13, reason: invalid class name */
    class AnonymousClass13 implements View.OnClickListener {
        AnonymousClass13() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            double numericValue = ShuaPoStep3Fragment.this.binding.edtEast.getNumericValue();
            double numericValue2 = ShuaPoStep3Fragment.this.binding.edtNorth.getNumericValue();
            double numericValue3 = ShuaPoStep3Fragment.this.binding.edtElev.getNumericValue();
            if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showToastDialog(ShuaPoStep3Fragment.this.getString(R$string.please_collect_start_point));
                return;
            }
            if (!ShuaPoStep3Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.please_confirm_matches_engineering), ShuaPoStep3Fragment.this.getString(R$string.ok), null);
                return;
            }
            if (0.1d > CoordsCalculUtils.calculateDistanceGAUSS(new double[]{ShuaPoStep3Fragment.this.shuaPoEntity.east1, ShuaPoStep3Fragment.this.shuaPoEntity.north1}, new double[]{numericValue, numericValue2}) || 0.1d > CoordsCalculUtils.calculateDistanceGAUSS(new double[]{ShuaPoStep3Fragment.this.shuaPoEntity.east2, ShuaPoStep3Fragment.this.shuaPoEntity.north2}, new double[]{numericValue, numericValue2})) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.pointC_and_pointAB_must_greater_than_10cm), ShuaPoStep3Fragment.this.getString(R$string.ok), null);
                return;
            }
            int i = ShuaPoStep3Fragment.this.shuaPoEntity.subType;
            ShuaPoEnum shuaPoEnum = ShuaPoEnum.DOWN;
            if (i == shuaPoEnum.getType() && numericValue3 >= Math.min(ShuaPoStep3Fragment.this.shuaPoEntity.targetElevation1, ShuaPoStep3Fragment.this.shuaPoEntity.targetElevation2)) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.pointC_must_below_pointAB), ShuaPoStep3Fragment.this.getString(R$string.ok), null);
                return;
            }
            if (ShuaPoStep3Fragment.this.shuaPoEntity.subType == ShuaPoEnum.UP.getType() && numericValue3 <= Math.max(ShuaPoStep3Fragment.this.shuaPoEntity.targetElevation1, ShuaPoStep3Fragment.this.shuaPoEntity.targetElevation2)) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.point_C_must_higher_pointAB), ShuaPoStep3Fragment.this.getString(R$string.ok), null);
                return;
            }
            if (ShuaPoStep3Fragment.this.isPointCComplete() && ShuaPoStep3Fragment.this.binding.edtRatio.getNumericValue() == 0.0d) {
                if (ShuaPoStep3Fragment.this.shuaPoEntity.subType == shuaPoEnum.getType()) {
                    ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.please_input_slope_ratio_down), ShuaPoStep3Fragment.this.getString(R$string.ok), null);
                    return;
                } else {
                    ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showTipDialog(ShuaPoStep3Fragment.this.getString(R$string.please_input_slope_ratio_up), ShuaPoStep3Fragment.this.getString(R$string.ok), null);
                    return;
                }
            }
            if (!ShuaPoStep3Fragment.this.binding.ivSelNoWidth.isSelected() && ShuaPoStep3Fragment.this.binding.edtWidth.getNumericValue() == 0.0d) {
                ((BaseActivity) ShuaPoStep3Fragment.this.requireActivity()).showToastDialog(ShuaPoStep3Fragment.this.getString(R$string.please_enter_slope_params));
                ShuaPoStep3Fragment.this.binding.nsv.post(new Runnable() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment$13$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShuaPoStep3Fragment.AnonymousClass13 anonymousClass13 = this.f$0;
                        ShuaPoStep3Fragment.this.binding.nsv.smoothScrollTo(0, ShuaPoStep3Fragment.this.binding.nsv.getChildAt(0).getHeight());
                    }
                });
                return;
            }
            ShuaPoStep3Fragment.this.syncSlopeParamsFromView();
            ShuaPoStep3Fragment.this.createEntity();
            if (ShuaPoStep3Fragment.this.shuaPoEntity.id == 0) {
                ShuaPoStep3Fragment.this.shuaPoEntity.id = DatabaseManager.getInstance(ShuaPoStep3Fragment.this.requireContext()).insert(ShuaPoStep3Fragment.this.shuaPoEntity);
                ShuaPoStep3Fragment.this.next();
                return;
            }
            if (!ShuaPoStep3Fragment.this.initEntity.equals(ShuaPoStep3Fragment.this.shuaPoEntity)) {
                ShuaPoStep3Fragment.this.shuaPoEntity.updateTime = System.currentTimeMillis() / 1000;
                DatabaseManager.getInstance(ShuaPoStep3Fragment.this.requireContext()).updateEntityById(ShuaPoStep3Fragment.this.shuaPoEntity);
                NetworkUserLoader.getInstance().modifyProject(ShuaPoStep3Fragment.this.mINS, ShuaPoStep3Fragment.this.shuaPoEntity);
            }
            ShuaPoStep3Fragment.this.next();
        }
    }

    private void showData() {
        this.binding.toothView.setVisibility(this.shuaPoEntity.editState == 0 ? 0 : 8);
        this.binding.edtRatio.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtHeight.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtDis.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.ivStep3Collect.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtWidth.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.heightDropdown.initUnit(requireContext(), getGlobalUnit());
        this.binding.lltSel.setVisibility(8);
        if (this.shuaPoEntity.subType == ShuaPoEnum.DOWN.getType()) {
            this.binding.ivStep3Collect.setImageResource(R$drawable.sel_sp_down3_collect);
            this.binding.tvCdes.setText(R$string.is_pointC_bottom_of_slope);
        } else if (this.shuaPoEntity.subType == ShuaPoEnum.UP.getType()) {
            this.binding.ivStep3Collect.setImageResource(R$drawable.sel_sp_up3_collect);
            this.binding.tvCdes.setText(R$string.is_pointC_top_of_slope);
        }
        this.binding.toothView.setCurrentType(this.shuaPoEntity.shovelTipType);
        this.updatingSlopeParams = true;
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        showCoords(shuaPoEntity.east3, shuaPoEntity.north3, shuaPoEntity.targetElevation3);
        this.updatingSlopeParams = false;
        this.binding.edtWidth.setText(this.shuaPoEntity.width != 0.0d ? formatCoords(formatDouble(formatMetertoOther(getGlobalUnit(), this.shuaPoEntity.width)), 3) : "");
        showSlopeParams();
        this.binding.ivSelNoWidth.setSelected(this.shuaPoEntity.width == 0.0d);
        FragmentSpStep3Binding fragmentSpStep3Binding = this.binding;
        fragmentSpStep3Binding.lltWidth.setVisibility(fragmentSpStep3Binding.ivSelNoWidth.isSelected() ? 8 : 0);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        this.shuaPoEntity.showUnit = getGlobalUnit();
        double numericValue = this.binding.edtWidth.getNumericValue();
        syncSlopeParamsFromView();
        if (this.binding.ivSelNoWidth.isSelected()) {
            this.shuaPoEntity.width = 0.0d;
        } else {
            this.shuaPoEntity.width = formatOtherToMeter(getGlobalUnit(), numericValue);
        }
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            this.shuaPoEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            this.shuaPoEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            this.shuaPoEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void initObserve() {
        ((ShuaPoCreateActivity) requireActivity()).observeCoordsStep3().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.14
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ShuaPoStep3Fragment.this.isAdded()) {
                    return;
                }
                ShuaPoStep3Fragment.this.clearCadPath();
                ShuaPoStep3Fragment.this.onPointCCollected(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity.id == 0) {
            shuaPoEntity.cadPath = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoords(double d, double d2, double d3) {
        saveInputCoordsToGeodetic(d, d2, d3);
        this.binding.edtEast.setText(d != 0.0d ? formatCoords(d, 3) : "");
        this.binding.edtNorth.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
        this.binding.edtElev.setText(d3 != 0.0d ? formatCoords(d3, 3) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleSlopeUpdateFromABC() {
        this.binding.getRoot().removeCallbacks(this.slopeUpdateRunnable);
        this.binding.getRoot().postDelayed(this.slopeUpdateRunnable, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncPointCEntityFromView() {
        this.shuaPoEntity.east3 = this.binding.edtEast.getNumericValue();
        this.shuaPoEntity.north3 = this.binding.edtNorth.getNumericValue();
        this.shuaPoEntity.targetElevation3 = this.binding.edtElev.getNumericValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPointCCoordsInputFinished() {
        this.binding.getRoot().removeCallbacks(this.slopeUpdateRunnable);
        if (isPointCComplete() && hasPointAB()) {
            syncPointCEntityFromView();
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            saveInputCoordsToGeodetic(shuaPoEntity.east3, shuaPoEntity.north3, shuaPoEntity.targetElevation3);
            updateSlopeParamsFromABC();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPointCCollected(double d, double d2, double d3) {
        this.updatingSlopeParams = true;
        showCoords(d, d2, d3);
        this.updatingSlopeParams = false;
        onPointCCoordsInputFinished();
        this.binding.nsv.post(new Runnable() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ShuaPoStep3Fragment.$r8$lambda$hOoD2l_PTV4XE0PjskU47AsH3c4(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$hOoD2l_PTV4XE0PjskU47AsH3c4(ShuaPoStep3Fragment shuaPoStep3Fragment) {
        int top = shuaPoStep3Fragment.binding.lltRadio.getTop();
        if (top > 0) {
            shuaPoStep3Fragment.binding.nsv.smoothScrollTo(0, top);
        }
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ShuaPoStep3Fragment.15
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ShuaPoStep3Fragment.this.clearCadPath();
                ShuaPoStep3Fragment.this.shuaPoEntity.shovelTipType = 0;
                ((ShuaPoCreateActivity) ShuaPoStep3Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ShuaPoStep3Fragment.this.clearCadPath();
                ShuaPoStep3Fragment.this.shuaPoEntity.shovelTipType = i;
                ((ShuaPoCreateActivity) ShuaPoStep3Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ShuaPoStep3Fragment.this.clearCadPath();
                if (dArr != null) {
                    ShuaPoStep3Fragment.this.onPointCCollected(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ShuaPoStep3Fragment.this.shuaPoEntity.shovelTipType = i;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPointCComplete() {
        if (!TextUtils.isEmpty(this.binding.edtEast.getText()) && !TextUtils.isEmpty(this.binding.edtNorth.getText())) {
            String strTrim = this.binding.edtElev.getText().toString().trim();
            if (!strTrim.isEmpty() && !".".equals(strTrim) && !"-".equals(strTrim) && this.binding.edtEast.getNumericValue() != 0.0d && this.binding.edtNorth.getNumericValue() != 0.0d) {
                return true;
            }
        }
        return false;
    }

    private boolean hasPointAB() {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity.east1 == 0.0d && shuaPoEntity.north1 == 0.0d) {
            return false;
        }
        return (shuaPoEntity.east2 == 0.0d && shuaPoEntity.north2 == 0.0d) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSlopeParamsFromView() {
        double numericValue = this.binding.edtDis.getNumericValue();
        double numericValue2 = this.binding.edtHeight.getNumericValue();
        this.shuaPoEntity.ratio = this.binding.edtRatio.getNumericValue();
        this.shuaPoEntity.heigth = formatOtherToMeter(getGlobalUnit(), numericValue2);
        this.shuaPoEntity.flatDistance = formatOtherToMeter(getGlobalUnit(), numericValue);
    }

    private void showSlopeParams() {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity.heigth != 0.0d || shuaPoEntity.flatDistance != 0.0d || shuaPoEntity.ratio != 0.0d) {
            this.updatingSlopeParams = true;
            this.binding.edtDis.setText(shuaPoEntity.flatDistance != 0.0d ? formatDouble(Math.round(formatMetertoOther(getGlobalUnit(), this.shuaPoEntity.flatDistance) * 100.0d) / 100.0d) : "");
            this.binding.edtHeight.setText(this.shuaPoEntity.heigth != 0.0d ? formatDouble(Math.round(formatMetertoOther(getGlobalUnit(), this.shuaPoEntity.heigth) * 100.0d) / 100.0d) : "");
            setRatioText(this.shuaPoEntity.ratio);
            this.updatingSlopeParams = false;
            refreshAbcCalculatedRatio();
            return;
        }
        if (isPointCComplete() && hasPointAB()) {
            updateSlopeParamsFromABC();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSlopeParamsFromABC() {
        double numericValue = this.binding.edtEast.getNumericValue();
        double numericValue2 = this.binding.edtNorth.getNumericValue();
        double numericValue3 = this.binding.edtElev.getNumericValue();
        if (isPointCComplete() && hasPointAB()) {
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            shuaPoEntity.east3 = numericValue;
            shuaPoEntity.north3 = numericValue2;
            shuaPoEntity.targetElevation3 = numericValue3;
            SlopePositionChecker.applySlopeParamsFromAC(shuaPoEntity);
            ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
            this.abcCalculatedRatio = shuaPoEntity2.ratio;
            double d = shuaPoEntity2.heigth;
            this.updatingSlopeParams = true;
            this.binding.edtDis.setText(shuaPoEntity2.flatDistance != 0.0d ? formatDouble(Math.round(formatMetertoOther(getGlobalUnit(), this.shuaPoEntity.flatDistance) * 100.0d) / 100.0d) : "");
            this.binding.edtHeight.setText(d != 0.0d ? formatDouble(Math.round(formatMetertoOther(getGlobalUnit(), d) * 100.0d) / 100.0d) : "");
            setRatioText(this.shuaPoEntity.ratio);
            this.updatingSlopeParams = false;
        }
    }

    private void refreshAbcCalculatedRatio() {
        syncPointCEntityFromView();
        this.abcCalculatedRatio = SlopePositionChecker.calculateAbcRatioFromEntity(this.shuaPoEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRatioInputFinished() {
        double numericValue = this.binding.edtRatio.getNumericValue();
        if (numericValue <= 0.0d) {
            return;
        }
        this.shuaPoEntity.ratio = numericValue;
        if (isPointCComplete() && hasPointAB()) {
            double d = this.abcCalculatedRatio;
            if (d > 0.0d) {
                if (Math.abs(numericValue - d) >= 0.01d) {
                    recalcFlatDistanceFromHeight();
                    return;
                }
                return;
            }
        }
        recalcFlatDistanceFromHeight();
    }

    private void setRatioText(double d) {
        this.binding.edtRatio.setText(d > 0.0d ? formatDouble(d) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recalcFlatDistanceFromHeight() {
        if (this.updatingSlopeParams) {
            return;
        }
        double numericValue = this.binding.edtRatio.getNumericValue();
        double numericValue2 = this.binding.edtHeight.getNumericValue();
        if (numericValue <= 0.0d) {
            return;
        }
        this.updatingSlopeParams = true;
        if (numericValue2 <= 0.0d) {
            this.binding.edtDis.setText("");
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            shuaPoEntity.flatDistance = 0.0d;
            shuaPoEntity.heigth = 0.0d;
        } else {
            double dRound = Math.round((numericValue2 / (numericValue / 100.0d)) * 100.0d) / 100.0d;
            this.binding.edtDis.setText(formatDouble(dRound));
            this.shuaPoEntity.heigth = formatOtherToMeter(getGlobalUnit(), numericValue2);
            this.shuaPoEntity.flatDistance = formatOtherToMeter(getGlobalUnit(), dRound);
        }
        this.updatingSlopeParams = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recalcHeightFromFlatDistance() {
        if (this.updatingSlopeParams) {
            return;
        }
        double numericValue = this.binding.edtRatio.getNumericValue();
        double numericValue2 = this.binding.edtDis.getNumericValue();
        if (numericValue <= 0.0d) {
            return;
        }
        this.updatingSlopeParams = true;
        if (numericValue2 <= 0.0d) {
            this.binding.edtHeight.setText("");
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            shuaPoEntity.heigth = 0.0d;
            shuaPoEntity.flatDistance = 0.0d;
        } else {
            double dRound = Math.round(((numericValue / 100.0d) * numericValue2) * 100.0d) / 100.0d;
            this.binding.edtHeight.setText(formatDouble(dRound));
            this.shuaPoEntity.heigth = formatOtherToMeter(getGlobalUnit(), dRound);
            this.shuaPoEntity.flatDistance = formatOtherToMeter(getGlobalUnit(), numericValue2);
        }
        this.updatingSlopeParams = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        shuaPoEntity.east3 = d;
        shuaPoEntity.north3 = d2;
        shuaPoEntity.targetElevation3 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
            shuaPoEntity2.targetLon3 = 0.0d;
            shuaPoEntity2.targetLat3 = 0.0d;
            return false;
        }
        this.shuaPoEntity.targetLon3 = Double.parseDouble(formatCoords(dArr[0]));
        this.shuaPoEntity.targetLat3 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) ShuaPoWorkActivity.class);
        intent.putExtra("id", this.shuaPoEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.binding.getRoot().removeCallbacks(this.slopeUpdateRunnable);
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
