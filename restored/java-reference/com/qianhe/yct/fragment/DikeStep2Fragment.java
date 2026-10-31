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
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.dike.DikeCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentDikeStep2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DikeStep2Fragment extends BaseProjectFragment {
    private int actionType = 1;
    private FragmentDikeStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private DikeEntity dikeEntity;
    private DikeEntity initEntity;
    private boolean isH5Pro;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment$$ExternalSyntheticLambda3
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
                DikeStep2Fragment.$r8$lambda$wRD8XRp5UqrfCsO4JWCJlqFKt20(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$wRD8XRp5UqrfCsO4JWCJlqFKt20(DikeStep2Fragment dikeStep2Fragment, String str, double[] dArr) {
        dikeStep2Fragment.dikeEntity.cadPath = str;
        dikeStep2Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentDikeStep2Binding.inflate(getLayoutInflater());
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
        this.binding.edtValue.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!TextUtils.isEmpty(editable.toString())) {
                    double numericValue = DikeStep2Fragment.this.binding.edtValue.getNumericValue();
                    DikeEntity dikeEntity = DikeStep2Fragment.this.dikeEntity;
                    int i = DikeStep2Fragment.this.actionType;
                    double dAbs = Math.abs(numericValue);
                    if (i == 0) {
                        dAbs = -dAbs;
                    }
                    dikeEntity.depthB = dAbs;
                    DikeStep2Fragment.this.dikeEntity.depthA = 0.0d;
                    return;
                }
                DikeStep2Fragment.this.dikeEntity.depthB = 0.0d;
            }
        });
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showTipDialog(DikeStep2Fragment.this.getString(R$string.reset_data), DikeStep2Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        DikeStep2Fragment.this.dikeEntity.east2 = DikeStep2Fragment.this.initEntity.east2;
                        DikeStep2Fragment.this.dikeEntity.north2 = DikeStep2Fragment.this.initEntity.north2;
                        DikeStep2Fragment.this.dikeEntity.targetElevation2 = DikeStep2Fragment.this.initEntity.targetElevation2;
                        DikeStep2Fragment.this.dikeEntity.cadPath = DikeStep2Fragment.this.initEntity.cadPath;
                        DikeStep2Fragment dikeStep2Fragment = DikeStep2Fragment.this;
                        dikeStep2Fragment.showCoords(dikeStep2Fragment.initEntity.east2, DikeStep2Fragment.this.initEntity.north2, DikeStep2Fragment.this.initEntity.targetElevation2);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep2Fragment.this.dikeEntity.east2 = DikeStep2Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep2Fragment.this.dikeEntity.north2 = DikeStep2Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep2Fragment.this.dikeEntity.targetElevation2 = DikeStep2Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DikeStep2Fragment.$r8$lambda$X3CA595s3KCEhj_1y1WzS6W3iPk(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return DikeStep2Fragment.$r8$lambda$4eyKK5lF6VjI8yP432Zw0NOuPR8(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DikeStep2Fragment.$r8$lambda$L2YkaWwpbi3cyOm1pSNqXc7m06Q(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeStep2Fragment.this.clearCadPath();
                ((DikeCreateActivity) DikeStep2Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltSel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeStep2Fragment.this.binding.ivSelB.setSelected(!DikeStep2Fragment.this.binding.ivSelB.isSelected());
                DikeStep2Fragment.this.binding.lltValue.setVisibility(DikeStep2Fragment.this.binding.ivSelB.isSelected() ? 8 : 0);
                if (DikeStep2Fragment.this.binding.ivSelB.isSelected()) {
                    DikeStep2Fragment.this.dikeEntity.tickB = 1;
                    DikeStep2Fragment.this.dikeEntity.depthB = 0.0d;
                    DikeStep2Fragment.this.binding.edtValue.setText("");
                    if (DikeStep2Fragment.this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
                        DikeStep2Fragment.this.binding.edtElev.setEnabled(true);
                        DikeStep2Fragment.this.dikeEntity.tickA = 0;
                        DikeStep2Fragment.this.dikeEntity.depthA = 0.0d;
                        return;
                    }
                    return;
                }
                DikeStep2Fragment.this.dikeEntity.tickB = 0;
                DikeStep2Fragment.this.dikeEntity.depthB = 0.0d;
            }
        });
        this.binding.typeDropdown.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.8
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                DikeStep2Fragment.this.actionType = i;
                if (DikeStep2Fragment.this.dikeEntity.depthB != 0.0d) {
                    DikeStep2Fragment.this.dikeEntity.depthB = DikeStep2Fragment.this.actionType == 0 ? -Math.abs(DikeStep2Fragment.this.dikeEntity.depthB) : Math.abs(DikeStep2Fragment.this.dikeEntity.depthB);
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = DikeStep2Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = DikeStep2Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = DikeStep2Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showToastDialog(DikeStep2Fragment.this.getString(R$string.please_collect_direction_point));
                    return;
                }
                if (!DikeStep2Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showTipDialog(DikeStep2Fragment.this.getString(R$string.please_confirm_matches_engineering), DikeStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (0.1d > CoordsCalculUtils.calculateDistanceGAUSS(new double[]{DikeStep2Fragment.this.dikeEntity.east1, DikeStep2Fragment.this.dikeEntity.north1}, new double[]{numericValue, numericValue2})) {
                    ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showTipDialog(DikeStep2Fragment.this.getString(R$string.AB_must_greater_than_10cm), DikeStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (DikeStep2Fragment.this.dikeEntity.subType == DikeEnum.DOWN.getType() && ((DikeStep2Fragment.this.dikeEntity.depthB != 0.0d || DikeStep2Fragment.this.dikeEntity.tickB == 1) && DikeStep2Fragment.this.dikeEntity.targetElevation2 + DikeStep2Fragment.this.dikeEntity.depthB >= DikeStep2Fragment.this.dikeEntity.targetElevation1 + DikeStep2Fragment.this.dikeEntity.depthA)) {
                    ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showTipDialog(DikeStep2Fragment.this.getString(R$string.pointB_must_lower_pointA), DikeStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (DikeStep2Fragment.this.dikeEntity.subType == DikeEnum.UP.getType() && ((DikeStep2Fragment.this.dikeEntity.depthB != 0.0d || DikeStep2Fragment.this.dikeEntity.tickB == 1) && DikeStep2Fragment.this.dikeEntity.targetElevation2 + DikeStep2Fragment.this.dikeEntity.depthB <= DikeStep2Fragment.this.dikeEntity.targetElevation1 + DikeStep2Fragment.this.dikeEntity.depthA)) {
                    ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showTipDialog(DikeStep2Fragment.this.getString(R$string.pointB_must_higher_pointA), DikeStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (DikeStep2Fragment.this.dikeEntity.subType == DikeEnum.FLAT.getType() && DikeStep2Fragment.this.dikeEntity.tickA == 0 && DikeStep2Fragment.this.dikeEntity.depthA == 0.0d && DikeStep2Fragment.this.dikeEntity.tickB == 0 && DikeStep2Fragment.this.dikeEntity.depthB == 0.0d) {
                    ((BaseActivity) DikeStep2Fragment.this.requireActivity()).showTipDialog(DikeStep2Fragment.this.getString(R$string.please_select_benchmark), DikeStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (DikeStep2Fragment.this.binding.lltValue.getVisibility() == 8) {
                    DikeStep2Fragment.this.dikeEntity.depthB = 0.0d;
                }
                DikeStep2Fragment.this.createEntity();
                EventBus.getDefault().post("next");
            }
        });
        showData();
    }

    public static /* synthetic */ void $r8$lambda$X3CA595s3KCEhj_1y1WzS6W3iPk(DikeStep2Fragment dikeStep2Fragment, View view) {
        CadPickHelper cadPickHelper = dikeStep2Fragment.cadPickHelper;
        DikeEntity dikeEntity = dikeStep2Fragment.dikeEntity;
        cadPickHelper.pickFromFile(dikeEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(dikeEntity.east2, dikeEntity.north2, dikeEntity.targetElevation2));
    }

    public static /* synthetic */ boolean $r8$lambda$4eyKK5lF6VjI8yP432Zw0NOuPR8(DikeStep2Fragment dikeStep2Fragment, View view) {
        dikeStep2Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$L2YkaWwpbi3cyOm1pSNqXc7m06Q(DikeStep2Fragment dikeStep2Fragment, View view) {
        if (dikeStep2Fragment.binding.toothView.getVisibility() == 0 && dikeStep2Fragment.dikeEntity.shovelTipType == -1) {
            ((BaseActivity) dikeStep2Fragment.requireActivity()).showToastDialog(dikeStep2Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            dikeStep2Fragment.handleMeasureCollectClick(dikeStep2Fragment.dikeEntity.shovelTipType, dikeStep2Fragment.createToothCollectHandler());
        }
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
        dikeEntity.depthB = dAbs;
    }

    private void showData() {
        this.binding.ivReset.setVisibility(this.dikeEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.dikeEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.dikeEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.dikeEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.dikeEntity.editState == 0);
        this.binding.lltSel.setEnabled(this.dikeEntity.editState == 0);
        this.binding.typeDropdown.setEnabled(this.dikeEntity.editState == 0);
        this.binding.typeDropdown.setCurrentType(this.dikeEntity.depthB >= 0.0d ? 1 : 0);
        this.binding.edtValue.setEnabled(this.dikeEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.dikeEntity.editState == 0);
        this.binding.customDropdown.initUnit(requireActivity(), getGlobalUnit());
        this.binding.toothView.setCurrentType(this.dikeEntity.shovelTipType);
        DikeEntity dikeEntity = this.dikeEntity;
        showCoords(dikeEntity.east2, dikeEntity.north2, dikeEntity.targetElevation2);
        refreshData();
        this.binding.edtValue.setText(this.dikeEntity.depthB != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.dikeEntity.depthB))) : " ");
        this.actionType = this.dikeEntity.depthB >= 0.0d ? 1 : 0;
    }

    private void refreshData() {
        this.binding.customDropdown.initUnit(requireContext(), getGlobalUnit());
        int i = 0;
        z = false;
        boolean z = false;
        i = 0;
        this.binding.ivSelB.setSelected(this.dikeEntity.tickB == 1);
        if (this.binding.ivSelB.isSelected()) {
            DikeEntity dikeEntity = this.dikeEntity;
            dikeEntity.tickB = 1;
            dikeEntity.depthB = 0.0d;
            this.binding.edtValue.setText("");
            if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
                DikeEntity dikeEntity2 = this.dikeEntity;
                dikeEntity2.tickA = 0;
                dikeEntity2.depthA = 0.0d;
            }
        } else if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
            this.dikeEntity.tickB = 0;
        }
        FragmentDikeStep2Binding fragmentDikeStep2Binding = this.binding;
        int i2 = 8;
        fragmentDikeStep2Binding.lltValue.setVisibility(fragmentDikeStep2Binding.ivSelB.isSelected() ? 8 : 0);
        if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
            FragmentDikeStep2Binding fragmentDikeStep2Binding2 = this.binding;
            LinearLayout linearLayout = fragmentDikeStep2Binding2.lltValue;
            DikeEntity dikeEntity3 = this.dikeEntity;
            if (dikeEntity3.depthB != 0.0d || (dikeEntity3.tickA == 0 && !fragmentDikeStep2Binding2.ivSelB.isSelected() && this.dikeEntity.depthA == 0.0d)) {
                i2 = 0;
            }
            linearLayout.setVisibility(i2);
            NumericEditText numericEditText = this.binding.edtElev;
            DikeEntity dikeEntity4 = this.dikeEntity;
            if (dikeEntity4.tickA == 0 && dikeEntity4.depthA == 0.0d) {
                z = true;
            }
            numericEditText.setEnabled(z);
        } else {
            FragmentDikeStep2Binding fragmentDikeStep2Binding3 = this.binding;
            LinearLayout linearLayout2 = fragmentDikeStep2Binding3.lltValue;
            if (this.dikeEntity.tickB != 0 && fragmentDikeStep2Binding3.ivSelB.isSelected()) {
                i = 8;
            }
            linearLayout2.setVisibility(i);
            this.binding.edtElev.setEnabled(true);
        }
        NumericEditText numericEditText2 = this.binding.edtValue;
        double d = this.dikeEntity.depthB;
        numericEditText2.setText(d != 0.0d ? formatDouble(Math.abs(d)) : "");
    }

    private void initObserve() {
        ((DikeCreateActivity) requireActivity()).observeCoordsStep2().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !DikeStep2Fragment.this.isAdded()) {
                    return;
                }
                DikeStep2Fragment.this.clearCadPath();
                DikeStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
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
        dikeEntity.east2 = d;
        dikeEntity.north2 = d2;
        dikeEntity.targetElevation2 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            DikeEntity dikeEntity2 = this.dikeEntity;
            dikeEntity2.targetLon2 = 0.0d;
            dikeEntity2.targetLat2 = 0.0d;
            return false;
        }
        this.dikeEntity.targetLon2 = Double.parseDouble(formatCoords(dArr[0]));
        this.dikeEntity.targetLat2 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.DikeStep2Fragment.12
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                DikeStep2Fragment.this.clearCadPath();
                DikeStep2Fragment.this.dikeEntity.shovelTipType = 0;
                ((DikeCreateActivity) DikeStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                DikeStep2Fragment.this.clearCadPath();
                DikeStep2Fragment.this.dikeEntity.shovelTipType = i;
                ((DikeCreateActivity) DikeStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                DikeStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    DikeStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                DikeStep2Fragment.this.dikeEntity.shovelTipType = i;
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
