package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.enums.WaGouEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.wagou.WaGouCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentWgStep1Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouStep1Fragment extends BaseProjectFragment {
    private int actionType;
    private FragmentWgStep1Binding binding;
    private CadPickHelper cadPickHelper;
    private WaGouEntity initEntity;
    private boolean isH5Pro;
    private boolean isUpdatingFields;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private int mToothType;
    private WaGouEntity waGouEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment$$ExternalSyntheticLambda0
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
                WaGouStep1Fragment.$r8$lambda$YsCO0rqtIYDjFVqtvAsUYSXbCrw(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$YsCO0rqtIYDjFVqtvAsUYSXbCrw(WaGouStep1Fragment waGouStep1Fragment, String str, double[] dArr) {
        waGouStep1Fragment.waGouEntity.cadPath = str;
        waGouStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentWgStep1Binding.inflate(getLayoutInflater());
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
        this.binding.edtValue.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (WaGouStep1Fragment.this.isUpdatingFields) {
                    return;
                }
                if (!TextUtils.isEmpty(editable.toString())) {
                    double numericValue = WaGouStep1Fragment.this.binding.edtValue.getNumericValue();
                    WaGouEntity waGouEntity = WaGouStep1Fragment.this.waGouEntity;
                    int i = WaGouStep1Fragment.this.actionType;
                    double dAbs = Math.abs(numericValue);
                    if (i == 0) {
                        dAbs = -dAbs;
                    }
                    waGouEntity.depthA = dAbs;
                    if (WaGouStep1Fragment.this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
                        WaGouStep1Fragment.this.waGouEntity.depthB = 0.0d;
                        return;
                    }
                    return;
                }
                WaGouStep1Fragment.this.waGouEntity.depthA = 0.0d;
            }
        });
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) WaGouStep1Fragment.this.requireActivity()).showTipDialog(WaGouStep1Fragment.this.getString(R$string.reset_data), WaGouStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        WaGouStep1Fragment.this.waGouEntity.east1 = WaGouStep1Fragment.this.initEntity.east1;
                        WaGouStep1Fragment.this.waGouEntity.north1 = WaGouStep1Fragment.this.initEntity.north1;
                        WaGouStep1Fragment.this.waGouEntity.targetElevation1 = WaGouStep1Fragment.this.initEntity.targetElevation1;
                        WaGouStep1Fragment.this.waGouEntity.cadPath = WaGouStep1Fragment.this.initEntity.cadPath;
                        WaGouStep1Fragment waGouStep1Fragment = WaGouStep1Fragment.this;
                        waGouStep1Fragment.showCoords(waGouStep1Fragment.initEntity.east1, WaGouStep1Fragment.this.initEntity.north1, WaGouStep1Fragment.this.initEntity.targetElevation1);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep1Fragment.this.waGouEntity.east1 = WaGouStep1Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep1Fragment.this.waGouEntity.north1 = WaGouStep1Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep1Fragment.this.waGouEntity.targetElevation1 = WaGouStep1Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WaGouStep1Fragment.$r8$lambda$TJ8GTPbipCpvRrVaZYXjVqio4hA(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return WaGouStep1Fragment.m2649$r8$lambda$c6E9B0fqEAoyFM4Cx1dH6sxF9A(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WaGouStep1Fragment.$r8$lambda$S22ZkMdFS1sZYZpkmZBJVEHaPEA(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouStep1Fragment.this.clearCadPath();
                ((WaGouCreateActivity) WaGouStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltSel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouStep1Fragment.this.binding.ivSelA.setSelected(!WaGouStep1Fragment.this.binding.ivSelA.isSelected());
                WaGouStep1Fragment.this.binding.lltValue.setVisibility(WaGouStep1Fragment.this.binding.ivSelA.isSelected() ? 8 : 0);
                if (WaGouStep1Fragment.this.binding.ivSelA.isSelected()) {
                    WaGouStep1Fragment.this.waGouEntity.tickA = 1;
                    WaGouStep1Fragment.this.clearDepthAForBenchmark();
                    if (WaGouStep1Fragment.this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
                        WaGouStep1Fragment.this.binding.edtElev.setEnabled(true);
                        WaGouStep1Fragment.this.waGouEntity.tickB = 0;
                        WaGouStep1Fragment.this.waGouEntity.depthB = 0.0d;
                        return;
                    }
                    return;
                }
                WaGouStep1Fragment.this.waGouEntity.tickA = 0;
                WaGouStep1Fragment.this.clearDepthAForBenchmark();
            }
        });
        this.binding.typeDropdown.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.8
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                WaGouStep1Fragment.this.actionType = i;
                if (WaGouStep1Fragment.this.waGouEntity.depthA != 0.0d) {
                    WaGouStep1Fragment.this.waGouEntity.depthA = WaGouStep1Fragment.this.actionType == 0 ? -Math.abs(WaGouStep1Fragment.this.waGouEntity.depthA) : Math.abs(WaGouStep1Fragment.this.waGouEntity.depthA);
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = WaGouStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = WaGouStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = WaGouStep1Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) WaGouStep1Fragment.this.requireActivity()).showToastDialog(WaGouStep1Fragment.this.getString(R$string.please_collect_start_point));
                    return;
                }
                if (!WaGouStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) WaGouStep1Fragment.this.requireActivity()).showTipDialog(WaGouStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), WaGouStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (WaGouStep1Fragment.this.waGouEntity.subType != WaGouEnum.FLAT.getType() && WaGouStep1Fragment.this.waGouEntity.tickA == 0 && WaGouStep1Fragment.this.waGouEntity.depthA == 0.0d) {
                    ((BaseActivity) WaGouStep1Fragment.this.requireActivity()).showTipDialog(WaGouStep1Fragment.this.getString(R$string.please_choose_reference_A), WaGouStep1Fragment.this.getString(R$string.ok), null);
                } else {
                    WaGouStep1Fragment.this.createEntity();
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    public static /* synthetic */ void $r8$lambda$TJ8GTPbipCpvRrVaZYXjVqio4hA(WaGouStep1Fragment waGouStep1Fragment, View view) {
        CadPickHelper cadPickHelper = waGouStep1Fragment.cadPickHelper;
        WaGouEntity waGouEntity = waGouStep1Fragment.waGouEntity;
        cadPickHelper.pickFromFile(waGouEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(waGouEntity.east1, waGouEntity.north1, waGouEntity.targetElevation1));
    }

    /* renamed from: $r8$lambda$c6E9B0fqEAoyFM4Cx1dH-6sxF9A, reason: not valid java name */
    public static /* synthetic */ boolean m2649$r8$lambda$c6E9B0fqEAoyFM4Cx1dH6sxF9A(WaGouStep1Fragment waGouStep1Fragment, View view) {
        waGouStep1Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$S22ZkMdFS1sZYZpkmZBJVEHaPEA(WaGouStep1Fragment waGouStep1Fragment, View view) {
        if (waGouStep1Fragment.binding.toothView.getVisibility() == 0 && waGouStep1Fragment.mToothType == -1) {
            ((BaseActivity) waGouStep1Fragment.requireActivity()).showToastDialog(waGouStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            waGouStep1Fragment.handleMeasureCollectClick(waGouStep1Fragment.mToothType, waGouStep1Fragment.createToothCollectHandler());
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
        waGouEntity.depthA = dAbs;
    }

    private void showData() {
        WaGouEntity waGouEntity = this.waGouEntity;
        double d = waGouEntity.targetElevationBenchmark;
        if (d != 0.0d && d == waGouEntity.targetElevation1 && waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            WaGouEntity waGouEntity2 = this.waGouEntity;
            waGouEntity2.tickA = 1;
            waGouEntity2.depthB = 0.0d;
        }
        WaGouEntity waGouEntity3 = this.waGouEntity;
        double d2 = waGouEntity3.targetElevationBenchmark;
        if (d2 != 0.0d && d2 == waGouEntity3.targetElevation2 && waGouEntity3.subType == WaGouEnum.FLAT.getType()) {
            WaGouEntity waGouEntity4 = this.waGouEntity;
            waGouEntity4.tickB = 1;
            waGouEntity4.depthA = 0.0d;
        }
        this.binding.toothView.setCurrentType(this.mToothType);
        this.binding.ivReset.setVisibility(this.waGouEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.waGouEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.waGouEntity.editState == 0);
        this.binding.lltSel.setEnabled(this.waGouEntity.editState == 0);
        this.binding.typeDropdown.setEnabled(this.waGouEntity.editState == 0);
        this.binding.typeDropdown.setCurrentType(this.waGouEntity.depthA > 0.0d ? 1 : 0);
        this.binding.edtValue.setEnabled(this.waGouEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.waGouEntity.editState == 0);
        this.binding.customDropdown.initUnit(requireActivity(), getGlobalUnit());
        WaGouEntity waGouEntity5 = this.waGouEntity;
        showCoords(waGouEntity5.east1, waGouEntity5.north1, waGouEntity5.targetElevation1);
        refreshData();
        this.binding.edtValue.setText(this.waGouEntity.depthA != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.waGouEntity.depthA))) : "");
        this.actionType = this.waGouEntity.depthA <= 0.0d ? 0 : 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void refreshData() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.fragment.WaGouStep1Fragment.refreshData():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDepthAForBenchmark() {
        this.waGouEntity.depthA = 0.0d;
        this.isUpdatingFields = true;
        this.binding.edtValue.setText("");
        this.isUpdatingFields = false;
    }

    private void syncDepthADisplay() {
        this.isUpdatingFields = true;
        NumericEditText numericEditText = this.binding.edtValue;
        double d = this.waGouEntity.depthA;
        numericEditText.setText(d != 0.0d ? formatDouble(Math.abs(d)) : "");
        this.isUpdatingFields = false;
    }

    private void initObserve() {
        ((WaGouCreateActivity) requireActivity()).observeCoordsStep1().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !WaGouStep1Fragment.this.isAdded()) {
                    return;
                }
                WaGouStep1Fragment.this.clearCadPath();
                WaGouStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
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
        waGouEntity.east1 = d;
        waGouEntity.north1 = d2;
        waGouEntity.targetElevation1 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            WaGouEntity waGouEntity2 = this.waGouEntity;
            waGouEntity2.targetLon1 = 0.0d;
            waGouEntity2.targetLat1 = 0.0d;
            return false;
        }
        this.waGouEntity.targetLon1 = Double.parseDouble(formatCoords(dArr[0]));
        this.waGouEntity.targetLat1 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.WaGouStep1Fragment.12
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                WaGouStep1Fragment.this.clearCadPath();
                ((WaGouCreateActivity) WaGouStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                WaGouStep1Fragment.this.clearCadPath();
                ((WaGouCreateActivity) WaGouStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                WaGouStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    WaGouStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                WaGouStep1Fragment.this.mToothType = i;
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
}
