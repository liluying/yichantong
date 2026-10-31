package com.qianhe.yct.fragment;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.widget.NestedScrollView;
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
import com.qianhe.yct.databinding.FragmentExcavatorMode4BucketBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.dialog.ExcavatorSelectDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import java.util.LinkedHashMap;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorMode4BucketFragment extends BaseProjectFragment {
    private FragmentExcavatorMode4BucketBinding binding;
    private boolean continueProcessing;
    private ExcavatorEntity excavatorEntity;
    private FocusedType lastFocusedType = FocusedType.NT;
    private GGAEntity mGGA;
    private InsNavi mINS;

    /* JADX INFO: Access modifiers changed from: private */
    enum FocusedType {
        NT,
        AT,
        NA,
        AB,
        LR
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorMode4BucketBinding.inflate(getLayoutInflater());
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
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        updateTvDoubtVisibility(true);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        setGifResource(this.binding.ivStep, R$drawable.icon_nt_sensor);
        setGifPlaying(this.binding.ivStep, true);
        if (!isExistingBucket()) {
            showBucketPostureTips();
        }
        updateContinueButtonText();
        setContinueProcessing(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        setGifPlaying(this.binding.ivStep, false);
        super.onPause();
    }

    private void initView() {
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showActualImageDialog();
            }
        });
        this.binding.lltShovelManager.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showBucketSelectDialog();
            }
        });
        this.binding.tvCancelExisting.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.applyNewBucket();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onContinue();
            }
        });
        initGifShow();
        showData();
        setupFragmentResultListener();
        updateContinueButtonText();
    }

    private void updateContinueButtonText() {
        this.binding.tvContinue.setText((requireActivity() instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) requireActivity()).isReplaceBucketMode() ? R$string.btn_complete : R$string.next);
    }

    private void setContinueProcessing(boolean z) {
        this.continueProcessing = z;
        FragmentExcavatorMode4BucketBinding fragmentExcavatorMode4BucketBinding = this.binding;
        if (fragmentExcavatorMode4BucketBinding != null) {
            fragmentExcavatorMode4BucketBinding.tvContinue.setEnabled(!z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContinue() {
        if (this.continueProcessing) {
            return;
        }
        if (isExistingBucket()) {
            ShovelEntity shovelEntity = this.excavatorEntity.shovelEntity;
            if (shovelEntity == null || TextUtils.isEmpty(shovelEntity.param)) {
                ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.cannot_configure));
                return;
            }
            CalibrateSessionHelper.recordReuseBucketInput(requireContext(), this.excavatorEntity, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
            setContinueProcessing(true);
            goNextOrCompleteReplace();
            return;
        }
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtNT.getNumericValue());
        double otherToMeter2 = formatOtherToMeter(getGlobalUnit(), this.binding.edtAT.getNumericValue());
        double otherToMeter3 = formatOtherToMeter(getGlobalUnit(), this.binding.edtNA.getNumericValue());
        double otherToMeter4 = formatOtherToMeter(getGlobalUnit(), this.binding.edtAB.getNumericValue());
        double otherToMeter5 = formatOtherToMeter(getGlobalUnit(), this.binding.edtLR.getNumericValue());
        if (otherToMeter == 0.0d || otherToMeter2 == 0.0d || otherToMeter3 == 0.0d || otherToMeter4 == 0.0d || otherToMeter5 == 0.0d) {
            scrollEmptyFieldIntoView(findFirstEmptyParamField());
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.config_empty), getString(R$string.ok), null);
            return;
        }
        if (outOfRange(otherToMeter) || outOfRange(otherToMeter2) || outOfRange(otherToMeter3) || outOfRange(otherToMeter4) || outOfRange(otherToMeter5)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
            return;
        }
        double d = otherToMeter5 / 2.0d;
        this.excavatorEntity.setDistanceMeasureValues(otherToMeter, otherToMeter2, otherToMeter3, d, d, otherToMeter4);
        setContinueProcessing(true);
        generateToolParamLocally();
    }

    private void goNextOrCompleteReplace() {
        if ((requireActivity() instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) requireActivity()).isReplaceBucketMode()) {
            setContinueProcessing(false);
            ((ExcavatorCreateActivity) requireActivity()).completeReplaceBucket();
        } else {
            EventBus.getDefault().post("next");
        }
    }

    private boolean outOfRange(double d) {
        return Math.abs(d) < 0.001d || Math.abs(d) > 10.0d;
    }

    private View findFirstEmptyParamField() {
        if (this.binding.edtNT.getNumericValue() == 0.0d) {
            return this.binding.edtNT;
        }
        if (this.binding.edtAT.getNumericValue() == 0.0d) {
            return this.binding.edtAT;
        }
        if (this.binding.edtNA.getNumericValue() == 0.0d) {
            return this.binding.edtNA;
        }
        if (this.binding.edtAB.getNumericValue() == 0.0d) {
            return this.binding.edtAB;
        }
        if (this.binding.edtLR.getNumericValue() == 0.0d) {
            return this.binding.edtLR;
        }
        return null;
    }

    private void scrollEmptyFieldIntoView(final View view) {
        if (view == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorMode4BucketFragment.$r8$lambda$sKbTspBSCOxOh0krSlJfuUA5kgM(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$sKbTspBSCOxOh0krSlJfuUA5kgM(ExcavatorMode4BucketFragment excavatorMode4BucketFragment, View view) {
        NestedScrollView nestedScrollViewFindParentNestedScrollView = excavatorMode4BucketFragment.findParentNestedScrollView(view);
        if (nestedScrollViewFindParentNestedScrollView != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr);
            nestedScrollViewFindParentNestedScrollView.getLocationOnScreen(iArr2);
            int i = iArr[1];
            int height = view.getHeight() + i;
            int i2 = iArr2[1];
            int height2 = nestedScrollViewFindParentNestedScrollView.getHeight() + i2;
            if (height > height2) {
                nestedScrollViewFindParentNestedScrollView.smoothScrollBy(0, height - height2);
                return;
            } else {
                if (i < i2) {
                    nestedScrollViewFindParentNestedScrollView.smoothScrollBy(0, i - i2);
                    return;
                }
                return;
            }
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
        getParentFragmentManager().setFragmentResultListener("bucket_from_excavator", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda10
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ExcavatorMode4BucketFragment.$r8$lambda$gWITsc2p4y7oxNsBJn8gdM2HVaM(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$gWITsc2p4y7oxNsBJn8gdM2HVaM(ExcavatorMode4BucketFragment excavatorMode4BucketFragment, String str, Bundle bundle) {
        excavatorMode4BucketFragment.getClass();
        if (bundle.getBoolean("createNew")) {
            excavatorMode4BucketFragment.applyNewBucket();
            return;
        }
        ExcavatorEntity excavatorEntity = (ExcavatorEntity) bundle.getSerializable("excavator");
        if (excavatorEntity == null) {
            return;
        }
        excavatorMode4BucketFragment.applyExistingBucketFromExcavator(excavatorEntity);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void applyNewBucket() {
        boolean zIsExistingBucket = isExistingBucket();
        this.excavatorEntity.shovelEntity = new ShovelEntity();
        this.excavatorEntity.setDistanceMeasureValues(0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d);
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).setReuseBucketSource(null);
        }
        this.binding.tvShovelManager.setText(R$string.select_bucket);
        this.binding.edtNT.setText("");
        this.binding.edtAT.setText("");
        this.binding.edtNA.setText("");
        this.binding.edtAB.setText("");
        this.binding.edtLR.setText("");
        setExistingBucketUi(false);
        CalibrateSessionHelper.clearReuseBucketInput();
        if (zIsExistingBucket) {
            showBucketPostureTips();
        }
    }

    private void showBucketPostureTips() {
        if (isAdded()) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.excavator_mode4_bucket_posture_tips), getString(R$string.ok), null);
        }
    }

    private void setExistingBucketUi(boolean z) {
        this.binding.lltExistingHint.setVisibility(z ? 0 : 8);
        this.binding.edtShovelName.setVisibility(8);
        setMeasureFieldsVisible(!z);
        setBucketFieldsEditable(!z);
    }

    private void setBucketFieldsEditable(boolean z) {
        this.binding.edtNT.setEnabled(z);
        this.binding.edtAT.setEnabled(z);
        this.binding.edtNA.setEnabled(z);
        this.binding.edtAB.setEnabled(z);
        this.binding.edtLR.setEnabled(z);
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

    private void setMeasureFieldsVisible(boolean z) {
        int i = z ? 0 : 8;
        this.binding.lltUnitRow.setVisibility(i);
        this.binding.lltRowNtAt.setVisibility(i);
        this.binding.lltRowNaAb.setVisibility(i);
        this.binding.lltRowLr.setVisibility(i);
    }

    private boolean isExistingBucket() {
        ExcavatorEntity excavatorEntity;
        ShovelEntity shovelEntity;
        return (!(requireActivity() instanceof ExcavatorCreateActivity) || ((ExcavatorCreateActivity) requireActivity()).getReuseBucketSource() == null || (excavatorEntity = this.excavatorEntity) == null || (shovelEntity = excavatorEntity.shovelEntity) == null || TextUtils.isEmpty(shovelEntity.param)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBucketSelectDialog() {
        ExcavatorSelectDialogFragment.newBucketSourceInstance().show(getParentFragmentManager(), "bucket_from_excavator");
    }

    private void initGifShow() {
        setupParamField(this.binding.edtNT, FocusedType.NT, R$drawable.icon_nt_sensor);
        setupParamField(this.binding.edtAT, FocusedType.AT, R$drawable.icon_at_sensor);
        setupParamField(this.binding.edtNA, FocusedType.NA, R$drawable.icon_na_sensor);
        setupParamField(this.binding.edtAB, FocusedType.AB, R$drawable.icon_ab_mode4_sensor);
        setupParamField(this.binding.edtLR, FocusedType.LR, R$drawable.icon_lr_mode4_sensor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTvDoubtVisibility(boolean z) {
        this.binding.tvDoubt.setVisibility(z ? 0 : 8);
    }

    private void setupParamField(View view, final FocusedType focusedType, final int i) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.updateTvDoubtVisibility(true);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda13
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                ExcavatorMode4BucketFragment.$r8$lambda$tc8J8VF73CamAIxTPS9K5Jb1rGc(this.f$0, focusedType, i, view2, z);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$tc8J8VF73CamAIxTPS9K5Jb1rGc(ExcavatorMode4BucketFragment excavatorMode4BucketFragment, FocusedType focusedType, int i, View view, boolean z) {
        if (!z) {
            excavatorMode4BucketFragment.getClass();
            return;
        }
        excavatorMode4BucketFragment.lastFocusedType = focusedType;
        excavatorMode4BucketFragment.updateTvDoubtVisibility(true);
        excavatorMode4BucketFragment.setGifResource(excavatorMode4BucketFragment.binding.ivStep, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("NT", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(MultiBluetoothManager.getInstance(requireContext()).isKe76Pro() ? R$drawable.icon_nt_ex30_mode4_actual : R$drawable.icon_nt_mode4_actual), Integer.valueOf(R$drawable.icon_nt_mode4_actual_multi)}));
        linkedHashMap.put("AT", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_at_mode4_actual)}));
        linkedHashMap.put("NA", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_na_mode4_actual)}));
        linkedHashMap.put("AB", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ab_mode4_actual)}));
        linkedHashMap.put("LR", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_lr_mode4_actual)}));
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, this.lastFocusedType.name(), linkedHashMap.size() > 1);
    }

    private void showData() {
        ExcavatorEntity reuseBucketSource;
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        if (this.excavatorEntity.usesDistanceMeasure()) {
            if (this.excavatorEntity.getNT() != 0.0d) {
                this.binding.edtNT.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getNT(), 3)));
            }
            if (this.excavatorEntity.getAT() != 0.0d) {
                this.binding.edtAT.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getAT(), 3)));
            }
            if (this.excavatorEntity.getNA() != 0.0d) {
                this.binding.edtNA.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getNA(), 3)));
            }
            if (this.excavatorEntity.getLy() != 0.0d) {
                this.binding.edtLR.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getLy() * 2.0d, 4)));
            }
            if (this.excavatorEntity.getAB() != 0.0d) {
                this.binding.edtAB.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.getAB(), 3)));
            }
        }
        if ((requireActivity() instanceof ExcavatorCreateActivity) && (reuseBucketSource = ((ExcavatorCreateActivity) requireActivity()).getReuseBucketSource()) != null) {
            applyExistingBucketFromExcavator(reuseBucketSource);
        } else {
            setExistingBucketUi(false);
        }
    }

    private void generateToolParamLocally() {
        if (isExistingBucket()) {
            CalibrateSessionHelper.recordReuseBucketInput(requireContext(), this.excavatorEntity, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
            goNextOrCompleteReplace();
            return;
        }
        showLoadingDialog(getString(R$string.please_wait));
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity.shovelEntity == null) {
            excavatorEntity.shovelEntity = new ShovelEntity();
        }
        ShovelEntity shovelEntity = this.excavatorEntity.shovelEntity;
        final String strResolveNewShovelName = shovelEntity.localId <= 0 ? resolveNewShovelName() : shovelEntity.name;
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorMode4BucketFragment.$r8$lambda$yQTe9PymztHyoZ7lgwxontwozkg(this.f$0, strResolveNewShovelName);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$yQTe9PymztHyoZ7lgwxontwozkg(final ExcavatorMode4BucketFragment excavatorMode4BucketFragment, String str) {
        ShovelEntity shovelEntity = excavatorMode4BucketFragment.excavatorEntity.shovelEntity;
        if (shovelEntity.localId <= 0) {
            shovelEntity.name = str;
            shovelEntity.mode = ExcavatorCalibrateModeEnum.SENSOR.getMode();
            ExcavatorEntity excavatorEntity = excavatorMode4BucketFragment.excavatorEntity;
            excavatorEntity.shovelEntity.setDistanceMeasureValues(excavatorEntity.getNT(), excavatorMode4BucketFragment.excavatorEntity.getAT(), excavatorMode4BucketFragment.excavatorEntity.getNA(), excavatorMode4BucketFragment.excavatorEntity.getLy(), excavatorMode4BucketFragment.excavatorEntity.getRy(), excavatorMode4BucketFragment.excavatorEntity.getAB());
        }
        final ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(excavatorMode4BucketFragment.excavatorEntity);
        if (excavatorMode4BucketFragment.isAdded()) {
            excavatorMode4BucketFragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4BucketFragment$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    ExcavatorMode4BucketFragment.m2349$r8$lambda$kiCg7ckQL4LYatCfFiJ1nT8uI(this.f$0, resultMakeToolParam);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$kiCg7ckQL4LYa-tCf-FiJ1nT8uI, reason: not valid java name */
    public static /* synthetic */ void m2349$r8$lambda$kiCg7ckQL4LYatCfFiJ1nT8uI(ExcavatorMode4BucketFragment excavatorMode4BucketFragment, ExcavatorCalibHelper.Result result) {
        excavatorMode4BucketFragment.cancelLoadingDialog();
        if (result.isSuccess()) {
            ShovelEntity shovelEntity = excavatorMode4BucketFragment.excavatorEntity.shovelEntity;
            if (shovelEntity.localId <= 0 || TextUtils.isEmpty(shovelEntity.param)) {
                excavatorMode4BucketFragment.excavatorEntity.shovelEntity.param = result.calibParamsBase64;
            }
            excavatorMode4BucketFragment.recordMode4ToolEvents();
            excavatorMode4BucketFragment.goNextOrCompleteReplace();
            return;
        }
        excavatorMode4BucketFragment.setContinueProcessing(false);
        CalibrateLogToFile.e("生成铲斗参数失败，code=" + result.code);
        ((BaseActivity) excavatorMode4BucketFragment.requireActivity()).showTipDialog(excavatorMode4BucketFragment.getString(R$string.shovel_parameter_generation_failed), excavatorMode4BucketFragment.getString(R$string.ok), null);
    }

    private void recordMode4ToolEvents() {
        CalibrateSessionHelper.clearReuseBucketInput();
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
        }
        CalibrateSessionHelper.recordToolEvents(this.excavatorEntity, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
    }

    private String resolveNewShovelName() {
        ShovelEntity shovelEntity = this.excavatorEntity.shovelEntity;
        if (shovelEntity != null && !TextUtils.isEmpty(shovelEntity.name)) {
            return this.excavatorEntity.shovelEntity.name;
        }
        List<ShovelEntity> listQueryShovelByName = DatabaseManager.getInstance(requireActivity()).queryShovelByName("");
        if (listQueryShovelByName == null || listQueryShovelByName.isEmpty()) {
            return String.format("%s1", getString(R$string.shovel));
        }
        String str = String.format(getString(R$string.shovel) + "%s", Integer.valueOf(listQueryShovelByName.size() + 1));
        if (!DatabaseManager.getInstance(requireActivity()).isEntityNameExists("shovel", str)) {
            return str;
        }
        return str + "-" + (System.currentTimeMillis() / 1000);
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
        FragmentExcavatorMode4BucketBinding fragmentExcavatorMode4BucketBinding = this.binding;
        recycleGif(fragmentExcavatorMode4BucketBinding != null ? fragmentExcavatorMode4BucketBinding.ivStep : null);
        super.onDestroyView();
    }
}
