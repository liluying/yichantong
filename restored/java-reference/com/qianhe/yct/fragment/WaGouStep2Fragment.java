package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.enums.WaGouEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.wagou.WaGouCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentWgStep2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouStep2Fragment extends BaseProjectFragment {
    private int actionType;
    private FragmentWgStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private WaGouEntity initEntity;
    private boolean isH5Pro;
    private boolean isUpdatingFields;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private WaGouEntity waGouEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment$$ExternalSyntheticLambda0
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
                WaGouStep2Fragment.$r8$lambda$AmHPymKbeSJatXVQILR9OshsvlM(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$AmHPymKbeSJatXVQILR9OshsvlM(WaGouStep2Fragment waGouStep2Fragment, String str, double[] dArr) {
        waGouStep2Fragment.waGouEntity.cadPath = str;
        waGouStep2Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentWgStep2Binding.inflate(getLayoutInflater());
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
            this.initEntity = (WaGouEntity) arguments.getSerializable("initEntity");
            this.waGouEntity = (WaGouEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        refreshData();
    }

    private void initView() {
        this.binding.edtValue.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (WaGouStep2Fragment.this.isUpdatingFields) {
                    return;
                }
                if (!TextUtils.isEmpty(editable.toString())) {
                    double numericValue = WaGouStep2Fragment.this.binding.edtValue.getNumericValue();
                    WaGouEntity waGouEntity = WaGouStep2Fragment.this.waGouEntity;
                    int i = WaGouStep2Fragment.this.actionType;
                    double dAbs = Math.abs(numericValue);
                    if (i == 0) {
                        dAbs = -dAbs;
                    }
                    waGouEntity.depthB = dAbs;
                    if (WaGouStep2Fragment.this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
                        WaGouStep2Fragment.this.waGouEntity.depthA = 0.0d;
                        return;
                    }
                    return;
                }
                WaGouStep2Fragment.this.waGouEntity.depthB = 0.0d;
            }
        });
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showTipDialog(WaGouStep2Fragment.this.getString(R$string.reset_data), WaGouStep2Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        WaGouStep2Fragment.this.waGouEntity.east2 = WaGouStep2Fragment.this.initEntity.east2;
                        WaGouStep2Fragment.this.waGouEntity.north2 = WaGouStep2Fragment.this.initEntity.north2;
                        WaGouStep2Fragment.this.waGouEntity.targetElevation2 = WaGouStep2Fragment.this.initEntity.targetElevation2;
                        WaGouStep2Fragment.this.waGouEntity.cadPath = WaGouStep2Fragment.this.initEntity.cadPath;
                        WaGouStep2Fragment waGouStep2Fragment = WaGouStep2Fragment.this;
                        waGouStep2Fragment.showCoords(waGouStep2Fragment.initEntity.east2, WaGouStep2Fragment.this.initEntity.north2, WaGouStep2Fragment.this.initEntity.targetElevation2);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep2Fragment.this.waGouEntity.east2 = WaGouStep2Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep2Fragment.this.waGouEntity.north2 = WaGouStep2Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep2Fragment.this.waGouEntity.targetElevation2 = WaGouStep2Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WaGouStep2Fragment.m2663$r8$lambda$suO14Tb2rA5cddnWldaWViW3Lc(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return WaGouStep2Fragment.$r8$lambda$5jDuQXinwcehX8So2wiBd40p08M(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WaGouStep2Fragment.m2662$r8$lambda$kBOnk7utdFBw5X1R8R6fbrJj0(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouStep2Fragment.this.clearCadPath();
                ((WaGouCreateActivity) WaGouStep2Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltSel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouStep2Fragment.this.binding.ivSelB.setSelected(!WaGouStep2Fragment.this.binding.ivSelB.isSelected());
                WaGouStep2Fragment.this.binding.lltValue.setVisibility(WaGouStep2Fragment.this.binding.ivSelB.isSelected() ? 8 : 0);
                if (WaGouStep2Fragment.this.binding.ivSelB.isSelected()) {
                    WaGouStep2Fragment.this.waGouEntity.tickB = 1;
                    WaGouStep2Fragment.this.clearDepthBForBenchmark();
                    if (WaGouStep2Fragment.this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
                        WaGouStep2Fragment.this.binding.edtElev.setEnabled(true);
                        WaGouStep2Fragment.this.waGouEntity.tickA = 0;
                        WaGouStep2Fragment.this.waGouEntity.depthA = 0.0d;
                        if (WaGouStep2Fragment.this.waGouEntity.targetElevationBenchmark == WaGouStep2Fragment.this.waGouEntity.targetElevation1) {
                            WaGouStep2Fragment.this.waGouEntity.targetElevationBenchmark = 0.0d;
                            return;
                        }
                        return;
                    }
                    return;
                }
                WaGouStep2Fragment.this.waGouEntity.tickB = 0;
                WaGouStep2Fragment.this.clearDepthBForBenchmark();
                if (WaGouStep2Fragment.this.waGouEntity.targetElevationBenchmark == WaGouStep2Fragment.this.waGouEntity.targetElevation2) {
                    WaGouStep2Fragment.this.waGouEntity.targetElevationBenchmark = 0.0d;
                }
            }
        });
        this.binding.typeDropdown.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.8
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                WaGouStep2Fragment.this.actionType = i;
                if (WaGouStep2Fragment.this.waGouEntity.depthB != 0.0d) {
                    WaGouStep2Fragment.this.waGouEntity.depthB = WaGouStep2Fragment.this.actionType == 0 ? -Math.abs(WaGouStep2Fragment.this.waGouEntity.depthB) : Math.abs(WaGouStep2Fragment.this.waGouEntity.depthB);
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = WaGouStep2Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = WaGouStep2Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = WaGouStep2Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showToastDialog(WaGouStep2Fragment.this.getString(R$string.please_collect_direction_point));
                    return;
                }
                if (!WaGouStep2Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showTipDialog(WaGouStep2Fragment.this.getString(R$string.please_confirm_matches_engineering), WaGouStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (0.1d > CoordsCalculUtils.calculateDistanceGAUSS(new double[]{WaGouStep2Fragment.this.waGouEntity.east1, WaGouStep2Fragment.this.waGouEntity.north1}, new double[]{numericValue, numericValue2})) {
                    ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showTipDialog(WaGouStep2Fragment.this.getString(R$string.AB_must_greater_than_10cm), WaGouStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                WaGouStep2Fragment.this.applyDefaultSelBIfValueEmpty();
                if (WaGouStep2Fragment.this.waGouEntity.subType == WaGouEnum.DOWN.getType() && ((WaGouStep2Fragment.this.waGouEntity.depthB != 0.0d || WaGouStep2Fragment.this.waGouEntity.tickB == 1) && WaGouStep2Fragment.this.waGouEntity.targetElevation2 + WaGouStep2Fragment.this.waGouEntity.depthB >= WaGouStep2Fragment.this.waGouEntity.targetElevation1 + WaGouStep2Fragment.this.waGouEntity.depthA)) {
                    ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showTipDialog(WaGouStep2Fragment.this.getString(R$string.pointB_must_lower_pointA), WaGouStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (WaGouStep2Fragment.this.waGouEntity.subType == WaGouEnum.UP.getType() && ((WaGouStep2Fragment.this.waGouEntity.depthB != 0.0d || WaGouStep2Fragment.this.waGouEntity.tickB == 1) && WaGouStep2Fragment.this.waGouEntity.targetElevation2 + WaGouStep2Fragment.this.waGouEntity.depthB <= WaGouStep2Fragment.this.waGouEntity.targetElevation1 + WaGouStep2Fragment.this.waGouEntity.depthA)) {
                    ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showTipDialog(WaGouStep2Fragment.this.getString(R$string.pointB_must_higher_pointA), WaGouStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (WaGouStep2Fragment.this.waGouEntity.subType == WaGouEnum.FLAT.getType() && WaGouStep2Fragment.this.waGouEntity.tickA == 0 && WaGouStep2Fragment.this.waGouEntity.depthA == 0.0d && WaGouStep2Fragment.this.waGouEntity.tickB == 0 && WaGouStep2Fragment.this.waGouEntity.depthB == 0.0d) {
                    ((BaseActivity) WaGouStep2Fragment.this.requireActivity()).showTipDialog(WaGouStep2Fragment.this.getString(R$string.please_select_benchmark), WaGouStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (WaGouStep2Fragment.this.binding.lltValue.getVisibility() == 8) {
                    WaGouStep2Fragment.this.waGouEntity.depthB = 0.0d;
                }
                WaGouStep2Fragment.this.createEntity();
                EventBus.getDefault().post("next");
            }
        });
        showData();
    }

    /* renamed from: $r8$lambda$suO14Tb2rA5cddnWld-aWViW3Lc, reason: not valid java name */
    public static /* synthetic */ void m2663$r8$lambda$suO14Tb2rA5cddnWldaWViW3Lc(WaGouStep2Fragment waGouStep2Fragment, View view) {
        CadPickHelper cadPickHelper = waGouStep2Fragment.cadPickHelper;
        WaGouEntity waGouEntity = waGouStep2Fragment.waGouEntity;
        cadPickHelper.pickFromFile(waGouEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(waGouEntity.east2, waGouEntity.north2, waGouEntity.targetElevation2));
    }

    public static /* synthetic */ boolean $r8$lambda$5jDuQXinwcehX8So2wiBd40p08M(WaGouStep2Fragment waGouStep2Fragment, View view) {
        waGouStep2Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* renamed from: $r8$lambda$kBOnk7-utdFB-w5X1R8R6fbrJj0, reason: not valid java name */
    public static /* synthetic */ void m2662$r8$lambda$kBOnk7utdFBw5X1R8R6fbrJj0(WaGouStep2Fragment waGouStep2Fragment, View view) {
        if (waGouStep2Fragment.binding.toothView.getVisibility() == 0 && waGouStep2Fragment.waGouEntity.shovelTipType == -1) {
            ((BaseActivity) waGouStep2Fragment.requireActivity()).showToastDialog(waGouStep2Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            waGouStep2Fragment.handleMeasureCollectClick(waGouStep2Fragment.waGouEntity.shovelTipType, waGouStep2Fragment.createToothCollectHandler());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        this.waGouEntity.showUnit = getGlobalUnit();
        double numericValue = this.binding.edtValue.getNumericValue();
        WaGouEntity waGouEntity = this.waGouEntity;
        int i = this.actionType;
        double dAbs = Math.abs(numericValue);
        if (i != 1) {
            dAbs = -dAbs;
        }
        waGouEntity.depthB = dAbs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyDefaultSelBIfValueEmpty() {
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType() || this.binding.ivSelB.isSelected() || this.waGouEntity.tickB == 1 || this.binding.lltValue.getVisibility() != 0) {
            return;
        }
        Editable text = this.binding.edtValue.getText();
        double numericValue = this.binding.edtValue.getNumericValue();
        if (TextUtils.isEmpty(text) || numericValue == 0.0d) {
            this.binding.ivSelB.setSelected(true);
            this.waGouEntity.tickB = 1;
            clearDepthBForBenchmark();
            this.binding.lltValue.setVisibility(8);
        }
    }

    private void showData() {
        this.binding.ivReset.setVisibility(this.waGouEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.waGouEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.waGouEntity.editState == 0);
        this.binding.lltSel.setEnabled(this.waGouEntity.editState == 0);
        this.binding.typeDropdown.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtValue.setEnabled(this.waGouEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.waGouEntity.editState == 0);
        this.binding.customDropdown.initUnit(requireActivity(), getGlobalUnit());
        this.binding.toothView.setCurrentType(this.waGouEntity.shovelTipType);
        WaGouEntity waGouEntity = this.waGouEntity;
        showCoords(waGouEntity.east2, waGouEntity.north2, waGouEntity.targetElevation2);
        refreshData();
    }

    private void syncDepthBFillDigDisplay() {
        int i = this.waGouEntity.depthB > 0.0d ? 1 : 0;
        this.actionType = i;
        this.isUpdatingFields = true;
        this.binding.typeDropdown.setCurrentType(i, false);
        this.binding.edtValue.setText(formatDepthBValue(this.waGouEntity.depthB));
        this.isUpdatingFields = false;
    }

    private String formatDepthBValue(double d) {
        if (d == 0.0d) {
            return "";
        }
        double dAbs = Math.abs(d);
        if (this.waGouEntity.id > 0) {
            dAbs = formatMetertoOther(getGlobalUnit(), dAbs, 3);
        }
        return formatCoords(dAbs, 3);
    }

    private void refreshData() {
        this.binding.customDropdown.initUnit(requireContext(), getGlobalUnit());
        WaGouEntity waGouEntity = this.waGouEntity;
        double d = waGouEntity.targetElevationBenchmark;
        if (d != 0.0d && d == waGouEntity.targetElevation1) {
            if (waGouEntity.subType == WaGouEnum.FLAT.getType()) {
                WaGouEntity waGouEntity2 = this.waGouEntity;
                waGouEntity2.tickA = 1;
                waGouEntity2.depthB = 0.0d;
            } else {
                WaGouEntity waGouEntity3 = this.waGouEntity;
                waGouEntity3.tickB = 1;
                waGouEntity3.depthB = 0.0d;
            }
        }
        WaGouEntity waGouEntity4 = this.waGouEntity;
        double d2 = waGouEntity4.targetElevationBenchmark;
        if (d2 != 0.0d && d2 == waGouEntity4.targetElevation2) {
            if (waGouEntity4.subType == WaGouEnum.FLAT.getType()) {
                WaGouEntity waGouEntity5 = this.waGouEntity;
                waGouEntity5.tickB = 1;
                waGouEntity5.depthA = 0.0d;
            } else {
                WaGouEntity waGouEntity6 = this.waGouEntity;
                waGouEntity6.tickA = 1;
                waGouEntity6.depthA = 0.0d;
            }
        }
        int i = this.waGouEntity.subType;
        WaGouEnum waGouEnum = WaGouEnum.FLAT;
        if (i == waGouEnum.getType()) {
            this.binding.ivStep1.setImageResource(R$drawable.icon_wg_flat2);
            this.binding.tvDitchType.setText(R$string.flat_ditch);
        } else if (this.waGouEntity.subType == WaGouEnum.DOWN.getType()) {
            this.binding.ivStep1.setImageResource(R$drawable.icon_wg_down2);
            this.binding.tvDitchType.setText(R$string.downhill_ditch);
        } else if (this.waGouEntity.subType == WaGouEnum.UP.getType()) {
            this.binding.ivStep1.setImageResource(R$drawable.icon_wg_up2);
            this.binding.tvDitchType.setText(R$string.upslope_ditch);
        }
        int i2 = 0;
        this.binding.ivSelB.setSelected(this.waGouEntity.tickB == 1);
        if (this.binding.ivSelB.isSelected()) {
            this.waGouEntity.tickB = 1;
            clearDepthBForBenchmark();
            if (this.waGouEntity.subType == waGouEnum.getType()) {
                WaGouEntity waGouEntity7 = this.waGouEntity;
                waGouEntity7.tickA = 0;
                waGouEntity7.depthA = 0.0d;
                if (waGouEntity7.targetElevationBenchmark == waGouEntity7.targetElevation1) {
                    waGouEntity7.targetElevationBenchmark = 0.0d;
                }
            }
        } else {
            if (this.waGouEntity.subType == waGouEnum.getType()) {
                this.waGouEntity.tickB = 0;
            }
            WaGouEntity waGouEntity8 = this.waGouEntity;
            if (waGouEntity8.targetElevationBenchmark == waGouEntity8.targetElevation2) {
                waGouEntity8.targetElevationBenchmark = 0.0d;
            }
        }
        FragmentWgStep2Binding fragmentWgStep2Binding = this.binding;
        int i3 = 8;
        fragmentWgStep2Binding.lltValue.setVisibility(fragmentWgStep2Binding.ivSelB.isSelected() ? 8 : 0);
        if (this.waGouEntity.subType == waGouEnum.getType()) {
            FragmentWgStep2Binding fragmentWgStep2Binding2 = this.binding;
            LinearLayout linearLayout = fragmentWgStep2Binding2.lltValue;
            WaGouEntity waGouEntity9 = this.waGouEntity;
            if (waGouEntity9.depthB != 0.0d || (waGouEntity9.tickA == 0 && !fragmentWgStep2Binding2.ivSelB.isSelected() && this.waGouEntity.depthA == 0.0d)) {
                i3 = 0;
            }
            linearLayout.setVisibility(i3);
            NumericEditText numericEditText = this.binding.edtElev;
            WaGouEntity waGouEntity10 = this.waGouEntity;
            numericEditText.setEnabled(waGouEntity10.tickA == 0 && waGouEntity10.depthA == 0.0d);
        } else {
            FragmentWgStep2Binding fragmentWgStep2Binding3 = this.binding;
            LinearLayout linearLayout2 = fragmentWgStep2Binding3.lltValue;
            if (this.waGouEntity.tickB != 0 && fragmentWgStep2Binding3.ivSelB.isSelected()) {
                i2 = 8;
            }
            linearLayout2.setVisibility(i2);
            this.binding.edtElev.setEnabled(true);
        }
        syncDepthBFillDigDisplay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDepthBForBenchmark() {
        this.waGouEntity.depthB = 0.0d;
        this.isUpdatingFields = true;
        this.binding.edtValue.setText("");
        this.isUpdatingFields = false;
    }

    private void initObserve() {
        ((WaGouCreateActivity) requireActivity()).observeCoordsStep2().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !WaGouStep2Fragment.this.isAdded()) {
                    return;
                }
                WaGouStep2Fragment.this.clearCadPath();
                WaGouStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.id == 0) {
            waGouEntity.cadPath = "";
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
        WaGouEntity waGouEntity = this.waGouEntity;
        waGouEntity.east2 = d;
        waGouEntity.north2 = d2;
        waGouEntity.targetElevation2 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            WaGouEntity waGouEntity2 = this.waGouEntity;
            waGouEntity2.targetLon2 = 0.0d;
            waGouEntity2.targetLat2 = 0.0d;
            return false;
        }
        this.waGouEntity.targetLon2 = Double.parseDouble(formatCoords(dArr[0]));
        this.waGouEntity.targetLat2 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.WaGouStep2Fragment.12
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                WaGouStep2Fragment.this.clearCadPath();
                WaGouStep2Fragment.this.waGouEntity.shovelTipType = 0;
                ((WaGouCreateActivity) WaGouStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                WaGouStep2Fragment.this.clearCadPath();
                WaGouStep2Fragment.this.waGouEntity.shovelTipType = i;
                ((WaGouCreateActivity) WaGouStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                WaGouStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    WaGouStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                WaGouStep2Fragment.this.waGouEntity.shovelTipType = i;
            }
        };
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
    }
}
