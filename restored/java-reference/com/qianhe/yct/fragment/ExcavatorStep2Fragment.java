package com.qianhe.yct.fragment;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorStep2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.dialog.BucketSelectDialogFragment;
import com.qianhe.yct.dialog.ExcavatorSelectDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NoUnderscoreInputFilter;
import java.util.LinkedHashMap;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorStep2Fragment extends BaseProjectFragment {
    private FragmentExcavatorStep2Binding binding;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private String initShovelName;
    private FocusedType lastFocusedTyep = FocusedType.G1;
    private GGAEntity mGGA;
    private InsNavi mINS;

    private enum FocusedType {
        G1,
        G2,
        G3,
        LR,
        AB
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorStep2Binding.inflate(getLayoutInflater());
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
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        getParentFragmentManager().setFragmentResultListener("step2_shovel_name", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.1
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle2) {
                if (str.equals("step2_shovel_name")) {
                    boolean z = bundle2.getBoolean("confirm");
                    boolean z2 = bundle2.getBoolean("manual_cancel");
                    if (z) {
                        ExcavatorStep2Fragment.this.setShovelDefaultName();
                    } else if (z2) {
                        ExcavatorStep2Fragment.this.binding.edtShovelName.requestFocus();
                        ExcavatorStep2Fragment.this.binding.edtShovelName.post(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                InputMethodManager inputMethodManager = (InputMethodManager) ExcavatorStep2Fragment.this.requireContext().getSystemService("input_method");
                                if (inputMethodManager != null) {
                                    inputMethodManager.showSoftInput(ExcavatorStep2Fragment.this.binding.edtShovelName, 1);
                                }
                            }
                        });
                    }
                }
            }
        });
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentExcavatorStep2Binding fragmentExcavatorStep2Binding = this.binding;
        restoreContinueEnabled(fragmentExcavatorStep2Binding != null ? fragmentExcavatorStep2Binding.tvContinue : null);
        updateTvDoubtVisibility(true);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            setGifResource(this.binding.ivStep2, R$drawable.icon_g1_sensor);
            this.binding.ivStep2CloseUp.setVisibility(8);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            setGifResource(this.binding.ivStep2, R$drawable.icon_excavator_ar);
            boolean zIsKe76Pro = MultiBluetoothManager.getInstance(requireActivity()).isKe76Pro();
            this.binding.ivStep2CloseUp.setVisibility(0);
            this.binding.ivStep2CloseUp.setImageResource(zIsKe76Pro ? R$drawable.icon_ex30_close_up : R$drawable.icon_h5pro_close_up);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
            setGifResource(this.binding.ivStep2, R$drawable.icon_g1_no_sensor);
            this.binding.ivStep2CloseUp.setVisibility(8);
        }
        this.binding.lltMode23.setVisibility(this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode() ? 8 : 0);
        FragmentExcavatorStep2Binding fragmentExcavatorStep2Binding2 = this.binding;
        fragmentExcavatorStep2Binding2.lltMode1.setVisibility(fragmentExcavatorStep2Binding2.lltMode23.getVisibility() == 0 ? 8 : 0);
        setGifPlaying(this.binding.ivStep2, true);
        if (!isComboCreateBucketFlow() || !isExistingBucket()) {
            showPostureTipsDialog();
        }
        updateContinueButtonText();
    }

    private void showPostureTipsDialog() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            return;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.excavator_step2_posture_tips), getString(R$string.ok), null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        setGifPlaying(this.binding.ivStep2, false);
        super.onPause();
    }

    private void initView() {
        NoUnderscoreInputFilter.apply(this.binding.edtShovelName);
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep2Fragment.this.showActualImageDialog();
            }
        });
        this.binding.lltShovelManager.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep2Fragment.this.showBucketSelectDialog();
            }
        });
        this.binding.tvCancelExisting.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep2Fragment.this.applyNewBucket();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExcavatorStep2Fragment.this.isComboCreateBucketFlow()) {
                    ExcavatorStep2Fragment.this.onComboContinue();
                    return;
                }
                int i = ExcavatorStep2Fragment.this.excavatorEntity.mode;
                ExcavatorCalibrateModeEnum excavatorCalibrateModeEnum = ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT;
                if (i != excavatorCalibrateModeEnum.getMode() && TextUtils.isEmpty(ExcavatorStep2Fragment.this.binding.edtShovelName.getText().toString())) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.shovel_name_cannot_empty), ExcavatorStep2Fragment.this.getString(R$string.use_default_values), null, "step2_shovel_name");
                    return;
                }
                if (ExcavatorStep2Fragment.this.excavatorEntity.mode != excavatorCalibrateModeEnum.getMode() && NoUnderscoreInputFilter.containsUnderscore(ExcavatorStep2Fragment.this.binding.edtShovelName.getText())) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showToastDialog(ExcavatorStep2Fragment.this.getString(R$string.name_cannot_contain_underscore));
                    return;
                }
                if (ExcavatorStep2Fragment.this.excavatorEntity.mode != excavatorCalibrateModeEnum.getMode() && ExcavatorStep2Fragment.this.isShovelNameDuplicate()) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showToastDialog(ExcavatorStep2Fragment.this.getString(R$string.name_exists));
                    return;
                }
                if (ExcavatorStep2Fragment.this.excavatorEntity.mode == excavatorCalibrateModeEnum.getMode()) {
                    if (ExcavatorStep2Fragment.this.binding.edtValue.getNumericValue() == 0.0d) {
                        ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.config_empty), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    ExcavatorStep2Fragment excavatorStep2Fragment = ExcavatorStep2Fragment.this;
                    if (excavatorStep2Fragment.formatOtherToMeter(excavatorStep2Fragment.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtValue.getNumericValue()) >= 0.01d) {
                        ExcavatorStep2Fragment excavatorStep2Fragment2 = ExcavatorStep2Fragment.this;
                        if (excavatorStep2Fragment2.formatOtherToMeter(excavatorStep2Fragment2.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtValue.getNumericValue()) <= 10.0d) {
                            ExcavatorStep2Fragment.this.excavatorEntity.rigthDist = ExcavatorStep2Fragment.this.binding.edtValue.getNumericValue();
                            ExcavatorStep2Fragment excavatorStep2Fragment3 = ExcavatorStep2Fragment.this;
                            excavatorStep2Fragment3.postWizardNext(excavatorStep2Fragment3.binding.tvContinue);
                            return;
                        }
                    }
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                ExcavatorStep2Fragment excavatorStep2Fragment4 = ExcavatorStep2Fragment.this;
                double otherToMeter = excavatorStep2Fragment4.formatOtherToMeter(excavatorStep2Fragment4.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtG1.getNumericValue());
                ExcavatorStep2Fragment excavatorStep2Fragment5 = ExcavatorStep2Fragment.this;
                double otherToMeter2 = excavatorStep2Fragment5.formatOtherToMeter(excavatorStep2Fragment5.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtG2.getNumericValue());
                ExcavatorStep2Fragment excavatorStep2Fragment6 = ExcavatorStep2Fragment.this;
                double otherToMeter3 = excavatorStep2Fragment6.formatOtherToMeter(excavatorStep2Fragment6.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtG3.getNumericValue());
                ExcavatorStep2Fragment excavatorStep2Fragment7 = ExcavatorStep2Fragment.this;
                double otherToMeter4 = excavatorStep2Fragment7.formatOtherToMeter(excavatorStep2Fragment7.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtLR.getNumericValue());
                ExcavatorStep2Fragment excavatorStep2Fragment8 = ExcavatorStep2Fragment.this;
                double otherToMeter5 = excavatorStep2Fragment8.formatOtherToMeter(excavatorStep2Fragment8.getGlobalUnit(), ExcavatorStep2Fragment.this.binding.edtAB.getNumericValue());
                if (otherToMeter == 0.0d || otherToMeter2 == 0.0d || otherToMeter3 == 0.0d || otherToMeter4 == 0.0d || otherToMeter5 == 0.0d) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.config_empty), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter) < 0.001d || Math.abs(otherToMeter) > 10.0d) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter2) < 0.001d || Math.abs(otherToMeter2) > 10.0d) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter3) < 0.001d || Math.abs(otherToMeter3) > 10.0d) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter4) < 0.001d || Math.abs(otherToMeter4) > 10.0d) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter5) < 0.001d || Math.abs(otherToMeter5) > 10.0d) {
                    ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                double d = ((otherToMeter4 / 2.0d) * 1000.0d) / 1000.0d;
                ExcavatorStep2Fragment.this.excavatorEntity.setMeasureValues((otherToMeter * 1000.0d) / 1000.0d, (otherToMeter2 * 1000.0d) / 1000.0d, (otherToMeter3 * 1000.0d) / 1000.0d, d, d, (otherToMeter5 * 1000.0d) / 1000.0d);
                if (ExcavatorStep2Fragment.this.isExistingBucket() && ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity != null && !TextUtils.isEmpty(ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.param)) {
                    CalibrateSessionHelper.recordReuseBucketInput(ExcavatorStep2Fragment.this.requireContext(), ExcavatorStep2Fragment.this.excavatorEntity, ExcavatorStep2Fragment.this.mGGA, ExcavatorStep2Fragment.this.mINS, YCTApplication.getInstance().getSensorInfo());
                    ExcavatorStep2Fragment excavatorStep2Fragment9 = ExcavatorStep2Fragment.this;
                    excavatorStep2Fragment9.postWizardNext(excavatorStep2Fragment9.binding.tvContinue);
                    return;
                }
                ExcavatorStep2Fragment.this.generateToolParamLocally();
            }
        });
        initGifShow();
        showData();
        setupFragmentResultListener();
        updateContinueButtonText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isComboCreateBucketFlow() {
        syncLiveExcavatorEntity();
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        return excavatorEntity != null && excavatorEntity.localId == 0 && excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode() && !this.excavatorEntity.distanceBucketMeasure;
    }

    private void syncLiveExcavatorEntity() {
        ExcavatorEntity excavatorEntity;
        if (!(getActivity() instanceof ExcavatorCreateActivity) || (excavatorEntity = ((ExcavatorCreateActivity) getActivity()).getExcavatorEntity()) == null) {
            return;
        }
        this.excavatorEntity = excavatorEntity;
    }

    private void updateContinueButtonText() {
        this.binding.tvContinue.setText(isComboCreateBucketFlow() && (requireActivity() instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) requireActivity()).isReplaceBucketMode() ? R$string.btn_complete : R$string.next);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onComboContinue() {
        if (isExistingBucket()) {
            ShovelEntity shovelEntity = this.excavatorEntity.shovelEntity;
            if (shovelEntity == null || TextUtils.isEmpty(shovelEntity.param)) {
                ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.cannot_configure));
                return;
            }
            CalibrateSessionHelper.recordReuseBucketInput(requireContext(), this.excavatorEntity, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
            postWizardNext(this.binding.tvContinue);
            return;
        }
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtG1.getNumericValue());
        double otherToMeter2 = formatOtherToMeter(getGlobalUnit(), this.binding.edtG2.getNumericValue());
        double otherToMeter3 = formatOtherToMeter(getGlobalUnit(), this.binding.edtG3.getNumericValue());
        double otherToMeter4 = formatOtherToMeter(getGlobalUnit(), this.binding.edtLR.getNumericValue());
        double otherToMeter5 = formatOtherToMeter(getGlobalUnit(), this.binding.edtAB.getNumericValue());
        if (otherToMeter == 0.0d || otherToMeter2 == 0.0d || otherToMeter3 == 0.0d || otherToMeter4 == 0.0d || otherToMeter5 == 0.0d) {
            scrollEmptyFieldIntoView(findFirstEmptyGField());
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.config_empty), getString(R$string.ok), null);
        } else {
            if (outOfRange(otherToMeter) || outOfRange(otherToMeter2) || outOfRange(otherToMeter3) || outOfRange(otherToMeter4) || outOfRange(otherToMeter5)) {
                ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
                return;
            }
            double d = otherToMeter4 / 2.0d;
            this.excavatorEntity.setMeasureValues(otherToMeter, otherToMeter2, otherToMeter3, d, d, otherToMeter5);
            generateToolParamLocally();
        }
    }

    private boolean outOfRange(double d) {
        return Math.abs(d) < 0.001d || Math.abs(d) > 10.0d;
    }

    private View findFirstEmptyGField() {
        if (this.binding.edtG1.getNumericValue() == 0.0d) {
            return this.binding.edtG1;
        }
        if (this.binding.edtG2.getNumericValue() == 0.0d) {
            return this.binding.edtG2;
        }
        if (this.binding.edtG3.getNumericValue() == 0.0d) {
            return this.binding.edtG3;
        }
        if (this.binding.edtLR.getNumericValue() == 0.0d) {
            return this.binding.edtLR;
        }
        if (this.binding.edtAB.getNumericValue() == 0.0d) {
            return this.binding.edtAB;
        }
        return null;
    }

    private void scrollEmptyFieldIntoView(final View view) {
        if (view == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorStep2Fragment.$r8$lambda$3hcytTmZ6nbpAhZcLCTO_xuPh7Y(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$3hcytTmZ6nbpAhZcLCTO_xuPh7Y(ExcavatorStep2Fragment excavatorStep2Fragment, View view) {
        NestedScrollView nestedScrollViewFindParentNestedScrollView = excavatorStep2Fragment.findParentNestedScrollView(view);
        if (nestedScrollViewFindParentNestedScrollView != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr);
            nestedScrollViewFindParentNestedScrollView.getLocationOnScreen(iArr2);
            int height = iArr[1] + view.getHeight();
            int height2 = iArr2[1] + nestedScrollViewFindParentNestedScrollView.getHeight();
            if (height > height2) {
                nestedScrollViewFindParentNestedScrollView.smoothScrollBy(0, height - height2);
                return;
            }
            int i = iArr[1];
            int i2 = iArr2[1];
            if (i < i2) {
                nestedScrollViewFindParentNestedScrollView.smoothScrollBy(0, i - i2);
                return;
            }
            return;
        }
        view.requestRectangleOnScreen(new Rect(0, 0, view.getWidth(), view.getHeight()), true);
    }

    private NestedScrollView findParentNestedScrollView(View view) {
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof NestedScrollView) {
                return (NestedScrollView) parent;
            }
        }
        return null;
    }

    private void setupFragmentResultListener() {
        if (!isComboCreateBucketFlow()) {
            getParentFragmentManager().setFragmentResultListener("bucket_select_reading", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment$$ExternalSyntheticLambda5
                @Override // androidx.fragment.app.FragmentResultListener
                public final void onFragmentResult(String str, Bundle bundle) {
                    ExcavatorStep2Fragment.$r8$lambda$sGPMOTWdR2UiIBO6EqNfnDqeUD4(this.f$0, str, bundle);
                }
            });
        }
        setupComboBucketResultListener();
    }

    public static /* synthetic */ void $r8$lambda$sGPMOTWdR2UiIBO6EqNfnDqeUD4(ExcavatorStep2Fragment excavatorStep2Fragment, String str, Bundle bundle) {
        excavatorStep2Fragment.getClass();
        if (bundle.getBoolean("createNew")) {
            excavatorStep2Fragment.applyNewBucket();
            return;
        }
        ShovelEntity shovelEntity = (ShovelEntity) bundle.getSerializable("bucket");
        if (shovelEntity == null) {
            return;
        }
        excavatorStep2Fragment.applyExistingBucket(shovelEntity);
    }

    private void setupComboBucketResultListener() {
        getChildFragmentManager().setFragmentResultListener("combo_step2_bucket_from_excavator", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment$$ExternalSyntheticLambda6
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ExcavatorStep2Fragment.$r8$lambda$SAtCFnKJ_7QG4BdI3hNkBGRYMmU(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$SAtCFnKJ_7QG4BdI3hNkBGRYMmU(ExcavatorStep2Fragment excavatorStep2Fragment, String str, Bundle bundle) {
        excavatorStep2Fragment.getClass();
        if (bundle.getBoolean("createNew")) {
            excavatorStep2Fragment.applyNewBucket();
            return;
        }
        ExcavatorEntity excavatorEntity = (ExcavatorEntity) bundle.getSerializable("excavator");
        if (excavatorEntity == null) {
            return;
        }
        excavatorStep2Fragment.applyExistingBucketFromExcavator(excavatorEntity);
    }

    private void applyExistingBucketFromExcavator(ExcavatorEntity excavatorEntity) {
        List<ExcavatorEntity> listQueryExcavatorByLocalId;
        if (excavatorEntity != null && excavatorEntity.localId > 0 && (listQueryExcavatorByLocalId = DatabaseManager.getInstance(requireContext()).queryExcavatorByLocalId(excavatorEntity.localId)) != null && !listQueryExcavatorByLocalId.isEmpty()) {
            excavatorEntity = listQueryExcavatorByLocalId.get(0);
        }
        ExcavatorCalibHelper.Result resultExistingToolParamFromExcavator = ExcavatorCalibHelper.existingToolParamFromExcavator(excavatorEntity);
        if (resultExistingToolParamFromExcavator == null || !resultExistingToolParamFromExcavator.isSuccess() || TextUtils.isEmpty(resultExistingToolParamFromExcavator.calibParamsBase64)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.cannot_configure));
            return;
        }
        CalibrateSessionHelper.clearReuseBucketInput();
        ShovelEntity shovelEntity = new ShovelEntity();
        shovelEntity.name = excavatorEntity.name;
        shovelEntity.param = resultExistingToolParamFromExcavator.calibParamsBase64;
        shovelEntity.mode = excavatorEntity.mode;
        shovelEntity.showUnit = getGlobalUnit();
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        excavatorEntity2.shovelEntity = shovelEntity;
        excavatorEntity2.copyBucketMeasureFrom(excavatorEntity);
        if (this.excavatorEntity.usesAutoGenerateParams()) {
            shovelEntity.autoGenerateParams = this.excavatorEntity.autoGenerateParams;
        } else {
            shovelEntity.measureParams = this.excavatorEntity.measureParams;
        }
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).setReuseBucketSource(excavatorEntity);
        }
        this.binding.tvShovelManager.setText(excavatorEntity.name);
        setExistingBucketUi(true);
    }

    private void applyExistingBucket(ShovelEntity shovelEntity) {
        String str = shovelEntity.name;
        this.initShovelName = str;
        this.binding.edtShovelName.setText(str);
        shovelEntity.showUnit = getGlobalUnit();
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.shovelEntity = shovelEntity;
        excavatorEntity.setMeasureValues(shovelEntity.getG1(), shovelEntity.getG2(), shovelEntity.getG3(), shovelEntity.getLy(), shovelEntity.getRy(), shovelEntity.getAB());
        this.binding.edtG1.setText(formatDouble(formatMetertoOther(getGlobalUnit(), shovelEntity.getG1(), 3)));
        this.binding.edtG2.setText(formatDouble(formatMetertoOther(getGlobalUnit(), shovelEntity.getG2(), 3)));
        this.binding.edtG3.setText(formatDouble(formatMetertoOther(getGlobalUnit(), shovelEntity.getG3(), 3)));
        this.binding.edtLR.setText(formatDouble(formatMetertoOther(getGlobalUnit(), shovelEntity.getLy() * 2.0d, 4)));
        this.binding.edtAB.setText(formatDouble(formatMetertoOther(getGlobalUnit(), shovelEntity.getAB(), 3)));
        setBucketFieldsEditable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyNewBucket() {
        boolean z = isComboCreateBucketFlow() && isExistingBucket();
        this.excavatorEntity.shovelEntity = new ShovelEntity();
        this.excavatorEntity.setMeasureValues(0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d);
        this.initShovelName = null;
        this.binding.edtG1.setText("");
        this.binding.edtG2.setText("");
        this.binding.edtG3.setText("");
        this.binding.edtLR.setText("");
        this.binding.edtAB.setText("");
        if (isComboCreateBucketFlow()) {
            if (requireActivity() instanceof ExcavatorCreateActivity) {
                ((ExcavatorCreateActivity) requireActivity()).setReuseBucketSource(null);
            }
            this.binding.tvShovelManager.setText(R$string.select_bucket);
            setExistingBucketUi(false);
            CalibrateSessionHelper.clearReuseBucketInput();
            if (z) {
                showPostureTipsDialog();
                return;
            }
            return;
        }
        this.binding.edtShovelName.setText("");
        setBucketFieldsEditable(true);
        this.binding.edtShovelName.requestFocus();
    }

    private void setExistingBucketUi(boolean z) {
        this.binding.lltExistingHint.setVisibility(z ? 0 : 8);
        this.binding.edtShovelName.setVisibility(8);
        setMeasureFieldsVisible(!z);
        setBucketFieldsEditable(!z);
    }

    private void setMeasureFieldsVisible(boolean z) {
        int i = z ? 0 : 8;
        this.binding.lltUnitRow.setVisibility(i);
        this.binding.lltRowG1G2.setVisibility(i);
        this.binding.lltRowG3Lr.setVisibility(i);
        this.binding.lltRowAb.setVisibility(i);
    }

    private void setBucketFieldsEditable(boolean z) {
        this.binding.edtShovelName.setEnabled(z);
        this.binding.edtG1.setEnabled(z);
        this.binding.edtG2.setEnabled(z);
        this.binding.edtG3.setEnabled(z);
        this.binding.edtLR.setEnabled(z);
        this.binding.edtAB.setEnabled(z);
        if (z) {
            return;
        }
        View currentFocus = requireActivity().getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
        InputMethodManager inputMethodManager = (InputMethodManager) requireContext().getSystemService("input_method");
        if (inputMethodManager == null || this.binding.getRoot().getWindowToken() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.binding.getRoot().getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isExistingBucket() {
        ShovelEntity shovelEntity;
        if (isComboCreateBucketFlow()) {
            return (requireActivity() instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) requireActivity()).getReuseBucketSource() != null;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        return (excavatorEntity == null || (shovelEntity = excavatorEntity.shovelEntity) == null || shovelEntity.localId <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBucketSelectDialog() {
        if (isComboCreateBucketFlow()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag("combo_step2_bucket_from_excavator");
            if (fragmentFindFragmentByTag != null) {
                childFragmentManager.beginTransaction().remove(fragmentFindFragmentByTag).commitNowAllowingStateLoss();
            }
            setupComboBucketResultListener();
            ExcavatorSelectDialogFragment.newInstance("combo_step2_bucket_from_excavator", R$string.select_bucket).show(childFragmentManager, "combo_step2_bucket_from_excavator");
            return;
        }
        BucketSelectDialogFragment.newInstance(false, "bucket_select_reading").show(getParentFragmentManager(), "bucket_select_reading");
    }

    private void initGifShow() {
        setupParamField(this.binding.edtG1, FocusedType.G1, R$drawable.icon_g1_sensor, R$drawable.icon_g1_no_sensor);
        setupParamField(this.binding.edtG2, FocusedType.G2, R$drawable.icon_g2_sensor, R$drawable.icon_g2_no_sensor);
        setupParamField(this.binding.edtG3, FocusedType.G3, R$drawable.icon_g3_sensor, R$drawable.icon_g3_no_sensor);
        setupParamField(this.binding.edtLR, FocusedType.LR, R$drawable.icon_lr_sensor, R$drawable.icon_lr_no_sensor);
        setupParamField(this.binding.edtAB, FocusedType.AB, R$drawable.icon_ab_sensor, R$drawable.icon_ab_no_sensor);
        this.binding.edtShovelName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    ExcavatorStep2Fragment.this.updateTvDoubtVisibility(false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTvDoubtVisibility(boolean z) {
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            this.binding.tvDoubt.setVisibility(8);
        } else {
            this.binding.tvDoubt.setVisibility(z ? 0 : 8);
        }
    }

    private void setupParamField(View view, final FocusedType focusedType, final int i, final int i2) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ExcavatorStep2Fragment.this.lastFocusedTyep = focusedType;
                ExcavatorStep2Fragment.this.updateTvDoubtVisibility(true);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.9
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z) {
                if (z) {
                    ExcavatorStep2Fragment.this.lastFocusedTyep = focusedType;
                    ExcavatorStep2Fragment.this.updateTvDoubtVisibility(true);
                    if (ExcavatorStep2Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
                        ExcavatorStep2Fragment excavatorStep2Fragment = ExcavatorStep2Fragment.this;
                        excavatorStep2Fragment.setGifResource(excavatorStep2Fragment.binding.ivStep2, i);
                    } else if (ExcavatorStep2Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
                        ExcavatorStep2Fragment excavatorStep2Fragment2 = ExcavatorStep2Fragment.this;
                        excavatorStep2Fragment2.setGifResource(excavatorStep2Fragment2.binding.ivStep2, i2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("G1", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_g1_actual_big), Integer.valueOf(R$drawable.icon_g1_actual)}));
        linkedHashMap.put("G2", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_g2_actual_big), Integer.valueOf(R$drawable.icon_g2_actual)}));
        linkedHashMap.put("G3", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_g3_actual_big), Integer.valueOf(R$drawable.icon_g3_actual)}));
        linkedHashMap.put("LR", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_lr_actual)}));
        linkedHashMap.put("AB", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ab_actual)}));
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, this.lastFocusedTyep.name(), linkedHashMap.size() > 1);
    }

    private void showData() {
        ExcavatorEntity reuseBucketSource;
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        if (this.excavatorEntity.rigthDist != 0.0d) {
            this.binding.edtValue.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.rigthDist, 3)));
        }
        if (this.excavatorEntity.getG1() != 0.0d) {
            this.binding.edtG1.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getG1(), 3)));
        }
        if (this.excavatorEntity.getG2() != 0.0d) {
            this.binding.edtG2.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getG2(), 3)));
        }
        if (this.excavatorEntity.getG3() != 0.0d) {
            this.binding.edtG3.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getG3(), 3)));
        }
        if (this.excavatorEntity.getLy() != 0.0d) {
            this.binding.edtLR.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getLy() * 2.0d, 4)));
        }
        if (this.excavatorEntity.getAB() != 0.0d) {
            this.binding.edtAB.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getAB(), 3)));
        }
        if (isComboCreateBucketFlow()) {
            this.binding.tvShovelManager.setText(R$string.select_bucket);
            if ((requireActivity() instanceof ExcavatorCreateActivity) && (reuseBucketSource = ((ExcavatorCreateActivity) requireActivity()).getReuseBucketSource()) != null) {
                applyExistingBucketFromExcavator(reuseBucketSource);
                return;
            } else {
                setExistingBucketUi(false);
                return;
            }
        }
        ShovelEntity shovelEntity = this.excavatorEntity.shovelEntity;
        if (shovelEntity != null && !TextUtils.isEmpty(shovelEntity.name)) {
            this.binding.edtShovelName.setText(this.excavatorEntity.shovelEntity.name);
            this.initShovelName = this.excavatorEntity.shovelEntity.name;
        }
        setBucketFieldsEditable(!isExistingBucket());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generateToolParamLocally() {
        final String strTrim;
        if (isComboCreateBucketFlow() && isExistingBucket()) {
            CalibrateSessionHelper.recordReuseBucketInput(requireContext(), this.excavatorEntity, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
            postWizardNext(this.binding.tvContinue);
            return;
        }
        showLoadingDialog(getString(R$string.please_wait));
        FragmentExcavatorStep2Binding fragmentExcavatorStep2Binding = this.binding;
        if (fragmentExcavatorStep2Binding != null) {
            fragmentExcavatorStep2Binding.tvContinue.setEnabled(false);
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity.shovelEntity == null) {
            excavatorEntity.shovelEntity = new ShovelEntity();
        }
        final boolean zIsComboCreateBucketFlow = isComboCreateBucketFlow();
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        ShovelEntity shovelEntity = excavatorEntity2.shovelEntity;
        if (shovelEntity.localId > 0) {
            strTrim = shovelEntity.name;
        } else if (zIsComboCreateBucketFlow) {
            strTrim = TextUtils.isEmpty(excavatorEntity2.name) ? "" : this.excavatorEntity.name;
        } else {
            strTrim = this.binding.edtShovelName.getText().toString().trim();
        }
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.10
            @Override // java.lang.Runnable
            public void run() {
                if (ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.localId <= 0) {
                    ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.name = strTrim;
                    if (zIsComboCreateBucketFlow) {
                        ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.mode = ExcavatorCalibrateModeEnum.SENSOR.getMode();
                        ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.setMeasureValues(ExcavatorStep2Fragment.this.excavatorEntity.getG1(), ExcavatorStep2Fragment.this.excavatorEntity.getG2(), ExcavatorStep2Fragment.this.excavatorEntity.getG3(), ExcavatorStep2Fragment.this.excavatorEntity.getLy(), ExcavatorStep2Fragment.this.excavatorEntity.getRy(), ExcavatorStep2Fragment.this.excavatorEntity.getAB());
                    }
                }
                final ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(ExcavatorStep2Fragment.this.excavatorEntity);
                if (ExcavatorStep2Fragment.this.isAdded()) {
                    ExcavatorStep2Fragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep2Fragment.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ExcavatorStep2Fragment.this.cancelLoadingDialog();
                            if (resultMakeToolParam.isSuccess()) {
                                if (ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.localId <= 0 || TextUtils.isEmpty(ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.param)) {
                                    ExcavatorStep2Fragment.this.excavatorEntity.shovelEntity.param = resultMakeToolParam.calibParamsBase64;
                                }
                                if (zIsComboCreateBucketFlow) {
                                    CalibrateSessionHelper.clearReuseBucketInput();
                                }
                                ExcavatorStep2Fragment.this.recordStep2ToolEvents();
                                ExcavatorStep2Fragment excavatorStep2Fragment = ExcavatorStep2Fragment.this;
                                excavatorStep2Fragment.postWizardNext(excavatorStep2Fragment.binding.tvContinue);
                                return;
                            }
                            ExcavatorStep2Fragment excavatorStep2Fragment2 = ExcavatorStep2Fragment.this;
                            excavatorStep2Fragment2.restoreContinueEnabled(excavatorStep2Fragment2.binding.tvContinue);
                            CalibrateLogToFile.e("生成铲斗参数失败，code=" + resultMakeToolParam.code);
                            ((BaseActivity) ExcavatorStep2Fragment.this.requireActivity()).showTipDialog(ExcavatorStep2Fragment.this.getString(R$string.shovel_parameter_generation_failed), ExcavatorStep2Fragment.this.getString(R$string.ok), null);
                        }
                    });
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordStep2ToolEvents() {
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
        }
        CalibrateSessionHelper.recordToolEvents(this.excavatorEntity, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isShovelNameDuplicate() {
        ShovelEntity shovelEntity = this.excavatorEntity.shovelEntity;
        if (shovelEntity != null && shovelEntity.localId > 0) {
            String strTrim = this.binding.edtShovelName.getText().toString().trim();
            if (DatabaseManager.getInstance(requireActivity()).isShovelNameExists(strTrim) && (TextUtils.isEmpty(this.initShovelName) || !this.initShovelName.equals(strTrim))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShovelDefaultName() {
        String str;
        List<ShovelEntity> listQueryShovelByName = DatabaseManager.getInstance(requireActivity()).queryShovelByName("");
        if (listQueryShovelByName != null && !listQueryShovelByName.isEmpty()) {
            if (this.excavatorEntity.localId > 0) {
                str = this.initEntity.name;
            } else {
                str = String.format(getString(R$string.shovel) + "%s", Integer.valueOf(listQueryShovelByName.size() + 1));
            }
            if (DatabaseManager.getInstance(requireActivity()).isEntityNameExists("shovel", str) && this.excavatorEntity.localId == 0) {
                str = str + "-" + (System.currentTimeMillis() / 1000);
            }
            this.binding.edtShovelName.setText(str);
        } else {
            this.binding.edtShovelName.setText(String.format("%s1", getString(R$string.shovel)));
        }
        AppCompatEditText appCompatEditText = this.binding.edtShovelName;
        appCompatEditText.setSelection(appCompatEditText.getText().toString().length());
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
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
        FragmentExcavatorStep2Binding fragmentExcavatorStep2Binding = this.binding;
        recycleGif(fragmentExcavatorStep2Binding != null ? fragmentExcavatorStep2Binding.ivStep2 : null);
        super.onDestroyView();
    }
}
