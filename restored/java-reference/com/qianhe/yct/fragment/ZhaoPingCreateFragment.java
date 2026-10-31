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
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.ZhaoPingEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.zhaoping.ZhaoPingCreateActivity;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentZpCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ZhaoPingCreateFragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentZpCreateBinding binding;
    private CadPickHelper cadPickHelper;
    private ZhaoPingEntity initEntity;
    private boolean isH5Pro;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private ZhaoPingEntity zhaoPingEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment$$ExternalSyntheticLambda0
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
                ZhaoPingCreateFragment.$r8$lambda$QXo3oFlD4ZBbqnMZB1h0c2j4ihI(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$QXo3oFlD4ZBbqnMZB1h0c2j4ihI(ZhaoPingCreateFragment zhaoPingCreateFragment, String str, double[] dArr) {
        zhaoPingCreateFragment.zhaoPingEntity.cadPath = str;
        zhaoPingCreateFragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentZpCreateBinding.inflate(getLayoutInflater());
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
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
            this.initEntity = (ZhaoPingEntity) arguments.getSerializable("initEntity");
            this.zhaoPingEntity = (ZhaoPingEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        this.binding.customDropdown.initUnit(requireContext(), getGlobalUnit());
        modifyLayout();
    }

    private void initView() {
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ZhaoPingCreateFragment.this.requireActivity()).showTipDialog(ZhaoPingCreateFragment.this.getString(R$string.reset_data), ZhaoPingCreateFragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ZhaoPingCreateFragment.this.zhaoPingEntity.east = ZhaoPingCreateFragment.this.initEntity.east;
                        ZhaoPingCreateFragment.this.zhaoPingEntity.north = ZhaoPingCreateFragment.this.initEntity.north;
                        ZhaoPingCreateFragment.this.zhaoPingEntity.targetElevation = ZhaoPingCreateFragment.this.initEntity.targetElevation;
                        ZhaoPingCreateFragment.this.zhaoPingEntity.cadPath = ZhaoPingCreateFragment.this.initEntity.cadPath;
                        ZhaoPingCreateFragment zhaoPingCreateFragment = ZhaoPingCreateFragment.this;
                        zhaoPingCreateFragment.showCoords(zhaoPingCreateFragment.initEntity.east, ZhaoPingCreateFragment.this.initEntity.north, ZhaoPingCreateFragment.this.initEntity.targetElevation);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ZhaoPingCreateFragment.this.zhaoPingEntity.east = ZhaoPingCreateFragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ZhaoPingCreateFragment.this.zhaoPingEntity.north = ZhaoPingCreateFragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ZhaoPingCreateFragment.this.zhaoPingEntity.targetElevation = ZhaoPingCreateFragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ZhaoPingCreateFragment.m2698$r8$lambda$PS9QHR1VfyTRrrFbRxFSoiSAxU(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ZhaoPingCreateFragment.m2699$r8$lambda$chheotPllGdhl6D4uYnL5Ehwsw(this.f$0, view);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZhaoPingCreateFragment.this.zhaoPingEntity.east = ZhaoPingCreateFragment.this.binding.edtEast.getNumericValue();
                ZhaoPingCreateFragment.this.zhaoPingEntity.north = ZhaoPingCreateFragment.this.binding.edtNorth.getNumericValue();
                ZhaoPingCreateFragment.this.zhaoPingEntity.targetElevation = ZhaoPingCreateFragment.this.binding.edtElev.getNumericValue();
                if (ZhaoPingCreateFragment.this.binding.edtEast.getNumericValue() == 0.0d && ZhaoPingCreateFragment.this.binding.edtNorth.getNumericValue() == 0.0d && ZhaoPingCreateFragment.this.binding.edtElev.getNumericValue() == 0.0d) {
                    ((BaseActivity) ZhaoPingCreateFragment.this.requireActivity()).showTipDialog(ZhaoPingCreateFragment.this.getString(R$string.please_collect_coordinates), ZhaoPingCreateFragment.this.getString(R$string.ok), null);
                    return;
                }
                ZhaoPingCreateFragment zhaoPingCreateFragment = ZhaoPingCreateFragment.this;
                if (!zhaoPingCreateFragment.saveInputCoordsToGeodetic(zhaoPingCreateFragment.zhaoPingEntity.east, ZhaoPingCreateFragment.this.zhaoPingEntity.north, ZhaoPingCreateFragment.this.zhaoPingEntity.targetElevation)) {
                    ((BaseActivity) ZhaoPingCreateFragment.this.requireActivity()).showTipDialog(ZhaoPingCreateFragment.this.getString(R$string.please_confirm_matches_engineering), ZhaoPingCreateFragment.this.getString(R$string.ok), null);
                    return;
                }
                if (ZhaoPingCreateFragment.this.zhaoPingEntity.subType != ZhaoPingEnum.LEVEING.getType() && ZhaoPingCreateFragment.this.binding.edtValue.getNumericValue() == 0.0d) {
                    ((BaseActivity) ZhaoPingCreateFragment.this.requireActivity()).showTipDialog(ZhaoPingCreateFragment.this.getString(R$string.enter_dig_value), ZhaoPingCreateFragment.this.getString(R$string.ok), null);
                    return;
                }
                ZhaoPingCreateFragment zhaoPingCreateFragment2 = ZhaoPingCreateFragment.this;
                zhaoPingCreateFragment2.createEntity(zhaoPingCreateFragment2.zhaoPingEntity);
                if (ZhaoPingCreateFragment.this.zhaoPingEntity.id == 0) {
                    ZhaoPingCreateFragment.this.zhaoPingEntity.id = DatabaseManager.getInstance(ZhaoPingCreateFragment.this.requireContext()).insert(ZhaoPingCreateFragment.this.zhaoPingEntity);
                    ZhaoPingCreateFragment.this.next();
                } else {
                    if (!ZhaoPingCreateFragment.this.initEntity.equals(ZhaoPingCreateFragment.this.zhaoPingEntity)) {
                        ZhaoPingCreateFragment.this.zhaoPingEntity.updateTime = System.currentTimeMillis() / 1000;
                        DatabaseManager.getInstance(ZhaoPingCreateFragment.this.requireContext()).updateEntityById(ZhaoPingCreateFragment.this.zhaoPingEntity);
                        NetworkUserLoader.getInstance().modifyProject(ZhaoPingCreateFragment.this.mINS, ZhaoPingCreateFragment.this.zhaoPingEntity);
                    }
                    ZhaoPingCreateFragment.this.next();
                }
            }
        });
        showData();
    }

    /* renamed from: $r8$lambda$PS9QHR1Vfy-TRrrFbRxFSoiSAxU, reason: not valid java name */
    public static /* synthetic */ void m2698$r8$lambda$PS9QHR1VfyTRrrFbRxFSoiSAxU(ZhaoPingCreateFragment zhaoPingCreateFragment, View view) {
        CadPickHelper cadPickHelper = zhaoPingCreateFragment.cadPickHelper;
        ZhaoPingEntity zhaoPingEntity = zhaoPingCreateFragment.zhaoPingEntity;
        cadPickHelper.pickFromFile(zhaoPingEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(zhaoPingEntity.east, zhaoPingEntity.north, zhaoPingEntity.targetElevation));
    }

    /* renamed from: $r8$lambda$chheotPl-lGdhl6D4uYnL5Ehwsw, reason: not valid java name */
    public static /* synthetic */ boolean m2699$r8$lambda$chheotPllGdhl6D4uYnL5Ehwsw(ZhaoPingCreateFragment zhaoPingCreateFragment, View view) {
        zhaoPingCreateFragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) ZhaoPingWorkActivity.class);
        intent.putExtra("id", this.zhaoPingEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity(ZhaoPingEntity zhaoPingEntity) {
        double numericValue = this.binding.edtValue.getNumericValue();
        zhaoPingEntity.showUnit = getGlobalUnit();
        int globalUnit = getGlobalUnit();
        int i = zhaoPingEntity.subType;
        int type = ZhaoPingEnum.FILL.getType();
        double dAbs = Math.abs(numericValue);
        if (i != type) {
            dAbs = -dAbs;
        }
        zhaoPingEntity.depth = formatOtherToMeter(globalUnit, dAbs);
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            zhaoPingEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            zhaoPingEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            zhaoPingEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void showData() {
        this.binding.toothView.setCurrentType(this.zhaoPingEntity.shovelTipType);
        this.binding.ivReset.setVisibility(this.zhaoPingEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.zhaoPingEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.edtValue.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.customDropdown.initUnit(requireContext(), getGlobalUnit());
        ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
        if (zhaoPingEntity.height != 0.0d) {
            zhaoPingEntity.showUnit = getGlobalUnit();
            ZhaoPingEntity zhaoPingEntity2 = this.zhaoPingEntity;
            zhaoPingEntity2.depth = zhaoPingEntity2.height;
        }
        this.binding.tvContinue.setEnabled(true);
        this.binding.edtValue.setText(this.zhaoPingEntity.depth != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.zhaoPingEntity.depth), 3)) : "");
        modifyLayout();
        ZhaoPingEntity zhaoPingEntity3 = this.zhaoPingEntity;
        if (zhaoPingEntity3 != null) {
            showCoords(zhaoPingEntity3.east, zhaoPingEntity3.north, zhaoPingEntity3.targetElevation);
        }
    }

    private void modifyLayout() {
        if (this.zhaoPingEntity.subType == ZhaoPingEnum.LEVEING.getType()) {
            this.binding.lltValue.setVisibility(8);
            this.binding.ivType.setImageResource(R$drawable.icon_create_leveling);
            this.binding.tvType.setText(R$string.leveling);
        } else {
            if (this.zhaoPingEntity.subType == ZhaoPingEnum.FILL.getType()) {
                this.binding.ivType.setImageResource(R$drawable.icon_create_fill);
                this.binding.tvType.setText(R$string.fill);
                this.binding.lltValue.setVisibility(0);
                this.binding.tvTypeDes.setText(R$string.fill);
                return;
            }
            if (this.zhaoPingEntity.subType == ZhaoPingEnum.DIG.getType()) {
                this.binding.ivType.setImageResource(R$drawable.icon_create_dig);
                this.binding.tvType.setText(R$string.dig);
                this.binding.lltValue.setVisibility(0);
                this.binding.tvTypeDes.setText(R$string.dig);
            }
        }
    }

    private void initObserve() {
        ((ZhaoPingCreateActivity) requireActivity()).observeCoords().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ZhaoPingCreateFragment.this.isAdded()) {
                    return;
                }
                ZhaoPingCreateFragment.this.clearCadPath();
                ZhaoPingCreateFragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
        if (zhaoPingEntity.id == 0) {
            zhaoPingEntity.cadPath = "";
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
    public boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
        zhaoPingEntity.east = d;
        zhaoPingEntity.north = d2;
        zhaoPingEntity.targetElevation = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ZhaoPingEntity zhaoPingEntity2 = this.zhaoPingEntity;
            zhaoPingEntity2.targetLon = 0.0d;
            zhaoPingEntity2.targetLat = 0.0d;
            return false;
        }
        this.zhaoPingEntity.targetLon = Double.parseDouble(formatCoords(dArr[0]));
        this.zhaoPingEntity.targetLat = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ZhaoPingCreateFragment.8
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ZhaoPingCreateFragment.this.clearCadPath();
                ZhaoPingCreateFragment.this.zhaoPingEntity.shovelTipType = 0;
                ((ZhaoPingCreateActivity) ZhaoPingCreateFragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ZhaoPingCreateFragment.this.clearCadPath();
                ZhaoPingCreateFragment.this.zhaoPingEntity.shovelTipType = i;
                ((ZhaoPingCreateActivity) ZhaoPingCreateFragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ZhaoPingCreateFragment.this.clearCadPath();
                if (dArr != null) {
                    ZhaoPingCreateFragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ZhaoPingCreateFragment.this.zhaoPingEntity.shovelTipType = i;
            }
        };
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
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
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
