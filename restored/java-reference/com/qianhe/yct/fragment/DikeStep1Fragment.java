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
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DikeEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.dike.DikeCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentDikeStep1Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DikeStep1Fragment extends BaseProjectFragment {
    private int actionType = 1;
    private FragmentDikeStep1Binding binding;
    private CadPickHelper cadPickHelper;
    private DikeEntity dikeEntity;
    private DikeEntity initEntity;
    private boolean isH5Pro;
    private InsNavi mINS;
    private int mToothType;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment$$ExternalSyntheticLambda0
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
                DikeStep1Fragment.m2305$r8$lambda$L4MSiQp6ECfJyK0NnlTzG0_k0(this.f$0, str, dArr);
            }
        });
    }

    /* renamed from: $r8$lambda$L4M-S-iQp6ECfJyK0NnlTzG0_k0, reason: not valid java name */
    public static /* synthetic */ void m2305$r8$lambda$L4MSiQp6ECfJyK0NnlTzG0_k0(DikeStep1Fragment dikeStep1Fragment, String str, double[] dArr) {
        dikeStep1Fragment.dikeEntity.cadPath = str;
        dikeStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentDikeStep1Binding.inflate(getLayoutInflater());
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
            this.initEntity = (DikeEntity) arguments.getSerializable("initEntity");
            this.dikeEntity = (DikeEntity) arguments.getSerializable("baseProEntity");
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
        DikeEntity dikeEntity = this.dikeEntity;
        if (dikeEntity.subType == 0) {
            dikeEntity.subType = DikeEnum.FLAT.getType();
        }
        this.binding.edtValue.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!TextUtils.isEmpty(editable.toString())) {
                    double numericValue = DikeStep1Fragment.this.binding.edtValue.getNumericValue();
                    DikeEntity dikeEntity2 = DikeStep1Fragment.this.dikeEntity;
                    int i = DikeStep1Fragment.this.actionType;
                    double dAbs = Math.abs(numericValue);
                    if (i == 0) {
                        dAbs = -dAbs;
                    }
                    dikeEntity2.depthA = dAbs;
                    DikeStep1Fragment.this.dikeEntity.depthB = 0.0d;
                    return;
                }
                DikeStep1Fragment.this.dikeEntity.depthA = 0.0d;
            }
        });
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) DikeStep1Fragment.this.requireActivity()).showTipDialog(DikeStep1Fragment.this.getString(R$string.reset_data), DikeStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        DikeStep1Fragment.this.dikeEntity.east1 = DikeStep1Fragment.this.initEntity.east1;
                        DikeStep1Fragment.this.dikeEntity.north1 = DikeStep1Fragment.this.initEntity.north1;
                        DikeStep1Fragment.this.dikeEntity.targetElevation1 = DikeStep1Fragment.this.initEntity.targetElevation1;
                        DikeStep1Fragment.this.dikeEntity.cadPath = DikeStep1Fragment.this.initEntity.cadPath;
                        DikeStep1Fragment dikeStep1Fragment = DikeStep1Fragment.this;
                        dikeStep1Fragment.showCoords(dikeStep1Fragment.initEntity.east1, DikeStep1Fragment.this.initEntity.north1, DikeStep1Fragment.this.initEntity.targetElevation1);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep1Fragment.this.dikeEntity.east1 = DikeStep1Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep1Fragment.this.dikeEntity.north1 = DikeStep1Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep1Fragment.this.dikeEntity.targetElevation1 = DikeStep1Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DikeStep1Fragment.$r8$lambda$nWnm_wLsh2pT4yyzBqpGaPP4uDU(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return DikeStep1Fragment.$r8$lambda$au1syfU7OgM0sPbeWZ9nhftHe1M(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DikeStep1Fragment.$r8$lambda$LgN9FJXHmxo8XLxbqNPRgKLY91Y(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeStep1Fragment.this.clearCadPath();
                ((DikeCreateActivity) DikeStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltSel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeStep1Fragment.this.binding.ivSelA.setSelected(!DikeStep1Fragment.this.binding.ivSelA.isSelected());
                DikeStep1Fragment.this.binding.lltValue.setVisibility(DikeStep1Fragment.this.binding.ivSelA.isSelected() ? 8 : 0);
                if (DikeStep1Fragment.this.binding.ivSelA.isSelected()) {
                    DikeStep1Fragment.this.dikeEntity.tickA = 1;
                    if (DikeStep1Fragment.this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
                        DikeStep1Fragment.this.binding.edtElev.setEnabled(true);
                        DikeStep1Fragment.this.dikeEntity.tickB = 0;
                        DikeStep1Fragment.this.dikeEntity.depthB = 0.0d;
                        return;
                    }
                    return;
                }
                DikeStep1Fragment.this.dikeEntity.tickA = 0;
                DikeStep1Fragment.this.dikeEntity.depthA = 0.0d;
                DikeStep1Fragment.this.binding.edtValue.setText("");
            }
        });
        this.binding.typeDropdown.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.8
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                DikeStep1Fragment.this.actionType = i;
                if (DikeStep1Fragment.this.dikeEntity.depthA != 0.0d) {
                    DikeStep1Fragment.this.dikeEntity.depthA = DikeStep1Fragment.this.actionType == 0 ? -Math.abs(DikeStep1Fragment.this.dikeEntity.depthA) : Math.abs(DikeStep1Fragment.this.dikeEntity.depthA);
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = DikeStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = DikeStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = DikeStep1Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) DikeStep1Fragment.this.requireActivity()).showToastDialog(DikeStep1Fragment.this.getString(R$string.please_collect_start_point));
                    return;
                }
                if (!DikeStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) DikeStep1Fragment.this.requireActivity()).showTipDialog(DikeStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), DikeStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (DikeStep1Fragment.this.dikeEntity.subType != DikeEnum.FLAT.getType() && DikeStep1Fragment.this.dikeEntity.tickA == 0 && DikeStep1Fragment.this.dikeEntity.depthA == 0.0d) {
                    ((BaseActivity) DikeStep1Fragment.this.requireActivity()).showTipDialog(DikeStep1Fragment.this.getString(R$string.please_choose_reference_A), DikeStep1Fragment.this.getString(R$string.ok), null);
                } else {
                    DikeStep1Fragment.this.createEntity();
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    public static /* synthetic */ void $r8$lambda$nWnm_wLsh2pT4yyzBqpGaPP4uDU(DikeStep1Fragment dikeStep1Fragment, View view) {
        CadPickHelper cadPickHelper = dikeStep1Fragment.cadPickHelper;
        DikeEntity dikeEntity = dikeStep1Fragment.dikeEntity;
        cadPickHelper.pickFromFile(dikeEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(dikeEntity.east1, dikeEntity.north1, dikeEntity.targetElevation1));
    }

    public static /* synthetic */ boolean $r8$lambda$au1syfU7OgM0sPbeWZ9nhftHe1M(DikeStep1Fragment dikeStep1Fragment, View view) {
        dikeStep1Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$LgN9FJXHmxo8XLxbqNPRgKLY91Y(DikeStep1Fragment dikeStep1Fragment, View view) {
        if (dikeStep1Fragment.binding.toothView.getVisibility() == 0 && dikeStep1Fragment.mToothType == -1) {
            ((BaseActivity) dikeStep1Fragment.requireActivity()).showToastDialog(dikeStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            dikeStep1Fragment.handleMeasureCollectClick(dikeStep1Fragment.mToothType, dikeStep1Fragment.createToothCollectHandler());
        }
    }

    private void refreshData() {
        this.binding.customDropdown.initUnit(requireContext(), getGlobalUnit());
        int i = 0;
        z = false;
        boolean z = false;
        i = 0;
        this.binding.ivSelA.setSelected(this.dikeEntity.tickA == 1);
        if (this.binding.ivSelA.isSelected()) {
            DikeEntity dikeEntity = this.dikeEntity;
            dikeEntity.tickA = 1;
            dikeEntity.depthA = 0.0d;
            this.binding.edtValue.setText("");
            if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
                DikeEntity dikeEntity2 = this.dikeEntity;
                dikeEntity2.tickB = 0;
                dikeEntity2.depthB = 0.0d;
            }
        } else if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
            this.dikeEntity.tickA = 0;
        }
        int i2 = 8;
        if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
            FragmentDikeStep1Binding fragmentDikeStep1Binding = this.binding;
            LinearLayout linearLayout = fragmentDikeStep1Binding.lltValue;
            DikeEntity dikeEntity3 = this.dikeEntity;
            if (dikeEntity3.depthA != 0.0d || (dikeEntity3.tickB == 0 && !fragmentDikeStep1Binding.ivSelA.isSelected() && this.dikeEntity.depthB == 0.0d)) {
                i2 = 0;
            }
            linearLayout.setVisibility(i2);
            NumericEditText numericEditText = this.binding.edtElev;
            DikeEntity dikeEntity4 = this.dikeEntity;
            if (dikeEntity4.tickB == 0 && dikeEntity4.depthB == 0.0d) {
                z = true;
            }
            numericEditText.setEnabled(z);
        } else {
            FragmentDikeStep1Binding fragmentDikeStep1Binding2 = this.binding;
            LinearLayout linearLayout2 = fragmentDikeStep1Binding2.lltValue;
            if (this.dikeEntity.tickA != 0 && fragmentDikeStep1Binding2.ivSelA.isSelected()) {
                i = 8;
            }
            linearLayout2.setVisibility(i);
            this.binding.edtElev.setEnabled(true);
        }
        NumericEditText numericEditText2 = this.binding.edtValue;
        double d = this.dikeEntity.depthA;
        numericEditText2.setText(d != 0.0d ? formatDouble(Math.abs(d)) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        this.dikeEntity.showUnit = getGlobalUnit();
        double numericValue = this.binding.edtValue.getNumericValue();
        DikeEntity dikeEntity = this.dikeEntity;
        int i = this.actionType;
        double dAbs = Math.abs(numericValue);
        if (i == 0) {
            dAbs = -dAbs;
        }
        dikeEntity.depthA = dAbs;
    }

    private void showData() {
        this.binding.toothView.setCurrentType(this.mToothType);
        this.binding.ivReset.setVisibility(this.dikeEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.dikeEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.dikeEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.dikeEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.dikeEntity.editState == 0);
        this.binding.lltSel.setEnabled(this.dikeEntity.editState == 0);
        this.binding.typeDropdown.setEnabled(this.dikeEntity.editState == 0);
        this.binding.typeDropdown.setCurrentType(this.dikeEntity.depthA >= 0.0d ? 1 : 0);
        this.binding.edtValue.setEnabled(this.dikeEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.dikeEntity.editState == 0);
        this.binding.customDropdown.initUnit(requireActivity(), getGlobalUnit());
        DikeEntity dikeEntity = this.dikeEntity;
        showCoords(dikeEntity.east1, dikeEntity.north1, dikeEntity.targetElevation1);
        refreshData();
        this.binding.edtValue.setText(this.dikeEntity.depthA != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.dikeEntity.depthA))) : "");
        this.actionType = this.dikeEntity.depthA >= 0.0d ? 1 : 0;
    }

    private void initObserve() {
        ((DikeCreateActivity) requireActivity()).observeCoordsStep1().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !DikeStep1Fragment.this.isAdded()) {
                    return;
                }
                DikeStep1Fragment.this.clearCadPath();
                DikeStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        DikeEntity dikeEntity = this.dikeEntity;
        if (dikeEntity.id == 0) {
            dikeEntity.cadPath = "";
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
        DikeEntity dikeEntity = this.dikeEntity;
        dikeEntity.east1 = d;
        dikeEntity.north1 = d2;
        dikeEntity.targetElevation1 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            DikeEntity dikeEntity2 = this.dikeEntity;
            dikeEntity2.targetLon1 = 0.0d;
            dikeEntity2.targetLat1 = 0.0d;
            return false;
        }
        this.dikeEntity.targetLon1 = Double.parseDouble(formatCoords(dArr[0]));
        this.dikeEntity.targetLat1 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.DikeStep1Fragment.12
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                DikeStep1Fragment.this.clearCadPath();
                ((DikeCreateActivity) DikeStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                DikeStep1Fragment.this.clearCadPath();
                ((DikeCreateActivity) DikeStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                DikeStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    DikeStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                DikeStep1Fragment.this.mToothType = i;
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
