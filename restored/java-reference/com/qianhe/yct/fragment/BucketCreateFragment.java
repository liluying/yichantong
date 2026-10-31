package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.FragmentResultListener;
import com.google.gson.JsonObject;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity;
import com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentBucketCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.dialog.FineTunePointModeDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.event.CreateBucketResponse;
import com.qianhe.yct.event.ModifyBucketResponse;
import com.qianhe.yct.event.SwicthBucketEvent;
import com.qianhe.yct.fragment.BucketCreateFragment;
import com.qianhe.yct.utils.BucketSwitchHelper;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.CurrentExcavatorCalibHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.NoUnderscoreInputFilter;
import com.qianhe.yct.view.NumericEditText;
import java.util.LinkedHashMap;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketCreateFragment extends BaseProjectFragment {
    private boolean awaitBucketSwitchLogEnd;
    private FragmentBucketCreateBinding binding;
    private ShovelEntity bucket;
    private boolean creatingBucket;
    private ExcavatorEntity currentExcavator;
    private DatabaseManager databaseManager;
    private ActivityResultLauncher fineTuneLauncher;
    private ShovelEntity initBucket;
    private boolean isSupportBucket;
    private GGAEntity mLatestGga;
    private InsNavi mLatestIns;
    private boolean modifyingBucket;
    private String pendingCalibParams;
    private String pendingCalibParamsId;
    private boolean pendingFineTuneAfterParams;
    private boolean persistingBucket;
    private boolean saveOnlyThisSubmit;
    private boolean savingAfterUnsupportedReplace;
    private boolean suppressMeasureTypeCallback;
    private boolean useAutoGenerateParams;
    private boolean waitingSetParam;
    private boolean waitingSwitchBeforeSave;
    private int mParamsType = -1;
    private int pendingFineTunePointMode = 1;
    private FocusedType lastFocusedType = FocusedType.G1;
    private boolean useDistanceMeasure = true;

    /* JADX INFO: Access modifiers changed from: private */
    enum FocusedType {
        G1,
        G2,
        G3,
        AB
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.fineTuneLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda10
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                BucketCreateFragment.m2208$r8$lambda$ZI8pTNoKVGflMcl5I6Sx1H1vnI(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$ZI8p-TNoKVGflMcl5I6Sx1H1vnI, reason: not valid java name */
    public static /* synthetic */ void m2208$r8$lambda$ZI8pTNoKVGflMcl5I6Sx1H1vnI(BucketCreateFragment bucketCreateFragment, ActivityResult activityResult) {
        bucketCreateFragment.getClass();
        if (activityResult.getResultCode() == -1) {
            bucketCreateFragment.requireActivity().finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentBucketCreateBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        this.databaseManager = DatabaseManager.getInstance(requireContext());
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initBucket = (ShovelEntity) arguments.getSerializable("initBucket");
            this.bucket = (ShovelEntity) arguments.getSerializable("bucket");
            this.isSupportBucket = arguments.getBoolean("isSupportBucket");
            ExcavatorEntity excavatorEntity = (ExcavatorEntity) arguments.getSerializable("currentExcavator");
            this.currentExcavator = excavatorEntity;
            if (excavatorEntity != null) {
                this.currentExcavator = CurrentExcavatorCalibHelper.resolveLocalExcavator(requireContext(), this.currentExcavator);
            }
            updateFineTuneVisibility();
        }
        initView();
        initNameView();
        initGifShow();
        loadData();
        requestDeviceParamsTypeIfNeeded();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        refreshStepImageForCurrentFocus();
    }

    private void initView() {
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showActualImageDialog();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.requireActivity().finish();
            }
        });
        this.binding.tvApply.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onBottomRightClick();
            }
        });
        this.binding.tvFineTune.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onFineTuneClick();
            }
        });
        this.binding.rgMeasureType.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda17
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                BucketCreateFragment.$r8$lambda$65sZalGktC3HbUP5Z9_COyxfDaA(this.f$0, radioGroup, i);
            }
        });
        getParentFragmentManager().setFragmentResultListener("fine_tune_point_mode", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.1
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if ("fine_tune_point_mode".equals(str) && bundle.getBoolean("confirm")) {
                    BucketCreateFragment.this.pendingFineTunePointMode = bundle.getInt("fineTunePointModeValue", 1);
                    BucketCreateFragment.this.showFineTuneTips();
                }
            }
        });
        getParentFragmentManager().setFragmentResultListener("bucket_fine_tune_tips", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("bucket_fine_tune_tips") && bundle.getBoolean("confirm")) {
                    if (BucketCreateFragment.this.pendingFineTunePointMode == 0) {
                        BucketCreateFragment.this.jumpOneClickFineTune();
                    } else {
                        BucketCreateFragment.this.jumpStepByStepFineTune();
                    }
                }
            }
        });
        getParentFragmentManager().setFragmentResultListener("create_bucket_apply", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.3
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if ("create_bucket_apply".equals(str)) {
                    if (bundle.getBoolean("confirm")) {
                        BucketCreateFragment.this.startApplyBucketSwitch();
                    } else {
                        if (BucketCreateFragment.this.getActivity() == null || BucketCreateFragment.this.requireActivity().isFinishing()) {
                            return;
                        }
                        BucketCreateFragment.this.requireActivity().finish();
                    }
                }
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$65sZalGktC3HbUP5Z9_COyxfDaA(BucketCreateFragment bucketCreateFragment, RadioGroup radioGroup, int i) {
        if (bucketCreateFragment.suppressMeasureTypeCallback) {
            return;
        }
        boolean z = i == R$id.rbTriangleMeasure;
        if (bucketCreateFragment.useDistanceMeasure == z) {
            return;
        }
        bucketCreateFragment.useDistanceMeasure = z;
        bucketCreateFragment.onMeasureTypeChanged();
    }

    private void initNameView() {
        if (this.bucket == null || this.initBucket == null) {
            return;
        }
        NoUnderscoreInputFilter.apply(this.binding.edtName);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketCreateFragment.m2209$r8$lambda$lFv2TIffa42xCIgpfviGeZ8Cjs(this.f$0, view);
            }
        });
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                BucketCreateFragment.this.bucket.name = editable.toString();
            }
        });
        getParentFragmentManager().setFragmentResultListener("step1_shovel_name", requireActivity(), new AnonymousClass5());
        this.binding.edtName.setText(!TextUtils.isEmpty(this.bucket.name) ? this.bucket.name : "");
        TextUtils.isEmpty(this.bucket.name);
    }

    /* renamed from: $r8$lambda$lFv2TIf-fa42xCIgpfviGeZ8Cjs, reason: not valid java name */
    public static /* synthetic */ void m2209$r8$lambda$lFv2TIffa42xCIgpfviGeZ8Cjs(BucketCreateFragment bucketCreateFragment, View view) {
        bucketCreateFragment.binding.edtName.setText(TextUtils.isEmpty(bucketCreateFragment.initBucket.name) ? "" : bucketCreateFragment.initBucket.name);
        if (!TextUtils.isEmpty(bucketCreateFragment.initBucket.name)) {
            bucketCreateFragment.binding.edtName.setSelection(bucketCreateFragment.initBucket.name.length());
        }
        bucketCreateFragment.binding.edtName.requestFocus();
    }

    /* renamed from: com.qianhe.yct.fragment.BucketCreateFragment$5, reason: invalid class name */
    class AnonymousClass5 implements FragmentResultListener {
        AnonymousClass5() {
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(String str, Bundle bundle) {
            if ("step1_shovel_name".equals(str)) {
                if (bundle.getBoolean("confirm")) {
                    BucketCreateFragment.this.setShovelDefaultName();
                } else if (bundle.getBoolean("manual_cancel")) {
                    BucketCreateFragment.this.binding.edtName.requestFocus();
                    BucketCreateFragment.this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$5$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            BucketCreateFragment.AnonymousClass5.m2233$r8$lambda$PlcfHsPfJFZCag0kFr_gGGjUVs(this.f$0);
                        }
                    });
                }
            }
        }

        /* renamed from: $r8$lambda$PlcfHsPfJFZCag0kFr_g-GGjUVs, reason: not valid java name */
        public static /* synthetic */ void m2233$r8$lambda$PlcfHsPfJFZCag0kFr_gGGjUVs(AnonymousClass5 anonymousClass5) {
            InputMethodManager inputMethodManager = (InputMethodManager) BucketCreateFragment.this.requireContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(BucketCreateFragment.this.binding.edtName, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShovelDefaultName() {
        String str;
        List<ShovelEntity> listQueryShovelByName = this.databaseManager.queryShovelByName("");
        if (listQueryShovelByName == null || listQueryShovelByName.isEmpty()) {
            str = String.format("%s1", getString(R$string.shovel));
        } else {
            if (this.bucket.localId > 0) {
                str = this.initBucket.name;
            } else {
                str = String.format(getString(R$string.shovel) + "%s", Integer.valueOf(listQueryShovelByName.size() + 1));
            }
            if (this.databaseManager.isEntityNameExists("shovel", str) && this.bucket.localId == 0) {
                str = str + "-" + (System.currentTimeMillis() / 1000);
            }
        }
        this.binding.edtName.setText(str);
        this.binding.edtName.setSelection(str.length());
        this.bucket.name = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFineTuneClick() {
        if (this.mParamsType <= 0) {
            this.pendingFineTuneAfterParams = true;
            showLoadingDialog(getString(R$string.please_wait));
            requestDeviceParamsType();
            return;
        }
        proceedFineTuneByParamsType();
    }

    private void requestDeviceParamsTypeIfNeeded() {
        ShovelEntity shovelEntity = this.bucket;
        if (shovelEntity == null || shovelEntity.localId <= 0 || !YCTApplication.getInstance().isH5Pro()) {
            return;
        }
        requestDeviceParamsType();
    }

    private void requestDeviceParamsType() {
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,GET_PARAM"));
    }

    private int getEffectiveParamsType() {
        return this.mParamsType;
    }

    private void updateFineTuneVisibility() {
        ShovelEntity shovelEntity = this.bucket;
        this.binding.tvFineTune.setVisibility(shovelEntity != null && (shovelEntity.localId > 0L ? 1 : (shovelEntity.localId == 0L ? 0 : -1)) > 0 && YCTApplication.getInstance().isH5Pro() && isCurrentUsageBucket() ? 0 : 8);
        updateApplyButton();
    }

    private void updateApplyButton() {
        TextView textView;
        FragmentBucketCreateBinding fragmentBucketCreateBinding = this.binding;
        if (fragmentBucketCreateBinding == null || (textView = fragmentBucketCreateBinding.tvApply) == null) {
            return;
        }
        textView.setText(isSaveOnlyBucket() ? R$string.save : R$string.save_and_apply);
    }

    private boolean isSaveOnlyBucket() {
        ShovelEntity shovelEntity = this.bucket;
        return (shovelEntity == null || shovelEntity.localId <= 0 || isCurrentUsageBucket()) ? false : true;
    }

    private boolean isCurrentUsageBucket() {
        ExcavatorEntity excavatorEntity;
        if (this.bucket != null && (excavatorEntity = this.currentExcavator) != null) {
            String str = excavatorEntity.calibParamsId;
            if (TextUtils.isEmpty(str) || !CalibParamsIdUtil.supportsBucketCurrentUsage(str, this.currentExcavator)) {
                return false;
            }
            ShovelEntity shovelEntity = this.initBucket;
            if (shovelEntity == null || shovelEntity.localId <= 0) {
                shovelEntity = this.bucket;
            }
            if (CalibParamsIdUtil.matchesBucket(str, shovelEntity, this.currentExcavator)) {
                return true;
            }
            String bucketNameFromCalibParamsId = CalibParamsIdUtil.parseBucketNameFromCalibParamsId(str, this.currentExcavator);
            if (!TextUtils.isEmpty(shovelEntity.name) && TextUtils.equals(bucketNameFromCalibParamsId, shovelEntity.name)) {
                return true;
            }
        }
        return false;
    }

    private void proceedFineTuneByParamsType() {
        if (getEffectiveParamsType() != ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            this.pendingFineTunePointMode = 1;
            showFineTuneTips();
        } else {
            if (getParentFragmentManager().findFragmentByTag("FineTunePointModeDialogFragment") != null) {
                return;
            }
            FineTunePointModeDialogFragment fineTunePointModeDialogFragment = new FineTunePointModeDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("requestKey", "fine_tune_point_mode");
            fineTunePointModeDialogFragment.setArguments(bundle);
            fineTunePointModeDialogFragment.show(getParentFragmentManager(), "FineTunePointModeDialogFragment");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFineTuneTips() {
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.bucket_fine_tune_tips), getString(R$string.confirm), getString(R$string.cancel), "", null, "bucket_fine_tune_tips");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jumpStepByStepFineTune() {
        Intent intent = new Intent(requireActivity(), (Class<?>) BucketFineTuneActivity.class);
        intent.putExtra("currentExcavator", this.currentExcavator);
        intent.putExtra("smartCalibAutoOptimize", true);
        this.fineTuneLauncher.launch(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jumpOneClickFineTune() {
        Intent intent = new Intent(requireActivity(), (Class<?>) VerifyAccuracyActivity.class);
        intent.putExtra("currentExcavator", this.currentExcavator);
        intent.putExtra("skipVerifyModeSelect", true);
        intent.putExtra("showOneClickVerifyTips", true);
        startActivity(intent);
    }

    private void initGifShow() {
        setupParamField(this.binding.layoutG1.getRoot(), this.binding.layoutG1.etValue, FocusedType.G1);
        setupParamField(this.binding.layoutG2.getRoot(), this.binding.layoutG2.etValue, FocusedType.G2);
        setupParamField(this.binding.layoutG3.getRoot(), this.binding.layoutG3.etValue, FocusedType.G3);
        setupLrField();
        setupParamField(this.binding.layoutAB.getRoot(), this.binding.layoutAB.etValue, FocusedType.AB);
    }

    private void onMeasureTypeChanged() {
        updateParamLabels();
        this.binding.layoutG1.etValue.setText("");
        this.binding.layoutG2.etValue.setText("");
        this.binding.layoutG3.etValue.setText("");
        FocusedType focusedType = FocusedType.G1;
        this.lastFocusedType = focusedType;
        applyStepImageForType(focusedType);
        updateTvDoubtVisibility(true);
    }

    private void updateTvDoubtVisibility(boolean z) {
        if (this.useAutoGenerateParams || this.bucket.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            this.binding.tvDoubt.setVisibility(8);
        } else {
            this.binding.tvDoubt.setVisibility(z ? 0 : 8);
        }
    }

    private void setupParamField(View view, final NumericEditText numericEditText, final FocusedType focusedType) {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BucketCreateFragment.m2212$r8$lambda$wAyblVwCrHByco9jYes87prC8(this.f$0, numericEditText, focusedType, view2);
            }
        };
        view.setOnClickListener(onClickListener);
        numericEditText.setOnClickListener(onClickListener);
        numericEditText.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda12
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public final void onFocusChange(View view2, boolean z) {
                BucketCreateFragment.m2205$r8$lambda$50l7XXVbJr1qZZ2YJ1Jmbbyc7w(this.f$0, focusedType, view2, z);
            }
        });
    }

    /* renamed from: $r8$lambda$wAyblVwCrHB-yco9jYes87prC-8, reason: not valid java name */
    public static /* synthetic */ void m2212$r8$lambda$wAyblVwCrHByco9jYes87prC8(BucketCreateFragment bucketCreateFragment, NumericEditText numericEditText, FocusedType focusedType, View view) {
        if (view != numericEditText) {
            bucketCreateFragment.getClass();
            numericEditText.requestFocus();
        }
        bucketCreateFragment.onParamFieldFocused(focusedType, true);
    }

    /* renamed from: $r8$lambda$50l7XXVbJr1qZ-Z2YJ1Jmbbyc7w, reason: not valid java name */
    public static /* synthetic */ void m2205$r8$lambda$50l7XXVbJr1qZZ2YJ1Jmbbyc7w(BucketCreateFragment bucketCreateFragment, FocusedType focusedType, View view, boolean z) {
        if (z) {
            bucketCreateFragment.onParamFieldFocused(focusedType, true);
        } else {
            bucketCreateFragment.getClass();
        }
    }

    private void setupLrField() {
        LinearLayout root = this.binding.layoutLR.getRoot();
        final NumericEditText numericEditText = this.binding.layoutLR.etValue;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketCreateFragment.m2207$r8$lambda$95Q1QxHSzzVfj9TNyBEMHCrIhg(this.f$0, numericEditText, view);
            }
        };
        root.setOnClickListener(onClickListener);
        numericEditText.setOnClickListener(onClickListener);
        numericEditText.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda19
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public final void onFocusChange(View view, boolean z) {
                BucketCreateFragment.$r8$lambda$g906sazDBs6_5gzET6q8FMRv_as(this.f$0, view, z);
            }
        });
    }

    /* renamed from: $r8$lambda$95Q1Q-xHSzzVfj9TNyBEMHCrIhg, reason: not valid java name */
    public static /* synthetic */ void m2207$r8$lambda$95Q1QxHSzzVfj9TNyBEMHCrIhg(BucketCreateFragment bucketCreateFragment, NumericEditText numericEditText, View view) {
        if (view != numericEditText) {
            bucketCreateFragment.getClass();
            numericEditText.requestFocus();
        }
        bucketCreateFragment.onLrFieldFocused();
    }

    public static /* synthetic */ void $r8$lambda$g906sazDBs6_5gzET6q8FMRv_as(BucketCreateFragment bucketCreateFragment, View view, boolean z) {
        if (z) {
            bucketCreateFragment.onLrFieldFocused();
        } else {
            bucketCreateFragment.getClass();
        }
    }

    private void onParamFieldFocused(FocusedType focusedType, boolean z) {
        this.lastFocusedType = focusedType;
        updateTvDoubtVisibility(z);
        applyStepImageForType(focusedType);
    }

    private void onLrFieldFocused() {
        updateTvDoubtVisibility(false);
        if (this.useDistanceMeasure) {
            int i = R$drawable.icon_lr_mode4_sensor;
            applyStepImage(i, i);
        } else {
            applyStepImage(R$drawable.icon_lr_sensor, R$drawable.icon_lr_no_sensor);
        }
    }

    private void refreshStepImageForCurrentFocus() {
        if (this.binding.layoutG1.etValue.hasFocus()) {
            onParamFieldFocused(FocusedType.G1, true);
            return;
        }
        if (this.binding.layoutG2.etValue.hasFocus()) {
            onParamFieldFocused(FocusedType.G2, true);
            return;
        }
        if (this.binding.layoutG3.etValue.hasFocus()) {
            onParamFieldFocused(FocusedType.G3, true);
            return;
        }
        if (this.binding.layoutLR.etValue.hasFocus()) {
            onLrFieldFocused();
        } else if (this.binding.layoutAB.etValue.hasFocus()) {
            onParamFieldFocused(FocusedType.AB, true);
        } else {
            applyStepImageForType(this.lastFocusedType);
            updateTvDoubtVisibility(true);
        }
    }

    private void applyStepImageForType(FocusedType focusedType) {
        if (this.useDistanceMeasure) {
            int iOrdinal = focusedType.ordinal();
            if (iOrdinal == 1) {
                int i = R$drawable.icon_at_sensor;
                applyStepImage(i, i);
                return;
            } else if (iOrdinal == 2) {
                int i2 = R$drawable.icon_na_sensor;
                applyStepImage(i2, i2);
                return;
            } else if (iOrdinal == 3) {
                int i3 = R$drawable.icon_ab_mode4_sensor;
                applyStepImage(i3, i3);
                return;
            } else {
                int i4 = R$drawable.icon_nt_sensor;
                applyStepImage(i4, i4);
                return;
            }
        }
        int iOrdinal2 = focusedType.ordinal();
        if (iOrdinal2 == 1) {
            applyStepImage(R$drawable.icon_g2_sensor, R$drawable.icon_g2_no_sensor);
            return;
        }
        if (iOrdinal2 == 2) {
            applyStepImage(R$drawable.icon_g3_sensor, R$drawable.icon_g3_no_sensor);
        } else if (iOrdinal2 == 3) {
            applyStepImage(R$drawable.icon_ab_sensor, R$drawable.icon_ab_no_sensor);
        } else {
            applyStepImage(R$drawable.icon_g1_sensor, R$drawable.icon_g1_no_sensor);
        }
    }

    private void ensureBucketMode() {
        ExcavatorEntity excavatorEntity;
        int i;
        ShovelEntity shovelEntity = this.bucket;
        if (shovelEntity.mode != 0 || (excavatorEntity = this.currentExcavator) == null || (i = excavatorEntity.mode) <= 0) {
            return;
        }
        shovelEntity.mode = i;
    }

    private int resolveEffectiveMode() {
        int i;
        int i2 = this.bucket.mode;
        if (i2 > 0) {
            return i2;
        }
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        return (excavatorEntity == null || (i = excavatorEntity.mode) <= 0) ? ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode() : i;
    }

    private void applyStepImage(int i, int i2) {
        if (resolveEffectiveMode() != ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            i = i2;
        }
        setGifResource(this.binding.ivStep, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        String strName;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.useDistanceMeasure) {
            linkedHashMap.put("NT", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(MultiBluetoothManager.getInstance(requireContext()).isKe76Pro() ? R$drawable.icon_nt_ex30_mode4_actual : R$drawable.icon_nt_mode4_actual), Integer.valueOf(R$drawable.icon_nt_mode4_actual_multi)}));
            linkedHashMap.put("AT", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_at_mode4_actual)}));
            linkedHashMap.put("NA", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_na_mode4_actual)}));
            linkedHashMap.put("AB", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ab_mode4_actual)}));
            linkedHashMap.put("LR", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_lr_mode4_actual)}));
            strName = distanceActualImageKey(this.lastFocusedType);
        } else {
            linkedHashMap.put("G1", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_g1_actual_big), Integer.valueOf(R$drawable.icon_g1_actual)}));
            linkedHashMap.put("G2", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_g2_actual_big), Integer.valueOf(R$drawable.icon_g2_actual)}));
            linkedHashMap.put("G3", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_g3_actual_big), Integer.valueOf(R$drawable.icon_g3_actual)}));
            linkedHashMap.put("LR", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_lr_actual)}));
            linkedHashMap.put("AB", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ab_actual)}));
            strName = this.lastFocusedType.name();
        }
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, strName, linkedHashMap.size() > 1);
    }

    private String distanceActualImageKey(FocusedType focusedType) {
        int iOrdinal = focusedType.ordinal();
        if (iOrdinal == 1) {
            return "AT";
        }
        if (iOrdinal == 2) {
            return "NA";
        }
        if (iOrdinal == 3) {
            return "AB";
        }
        return "NT";
    }

    private void loadData() {
        if (this.bucket == null) {
            return;
        }
        ensureBucketMode();
        boolean zResolveUseAutoGenerateParams = resolveUseAutoGenerateParams();
        this.useAutoGenerateParams = zResolveUseAutoGenerateParams;
        ShovelEntity shovelEntity = this.bucket;
        boolean z = shovelEntity.localId > 0;
        if (z || zResolveUseAutoGenerateParams) {
            this.useDistanceMeasure = shovelEntity.resolveDiagramDistanceMeasure();
        } else {
            this.useDistanceMeasure = true;
        }
        this.binding.layoutMeasureType.setVisibility((z || this.useAutoGenerateParams) ? 8 : 0);
        if (!z && !this.useAutoGenerateParams) {
            this.suppressMeasureTypeCallback = true;
            this.binding.rgMeasureType.check(this.useDistanceMeasure ? R$id.rbTriangleMeasure : R$id.rbReadingMeasure);
            this.suppressMeasureTypeCallback = false;
        }
        updateParamLabels();
        this.binding.unitDropdown.initUnit(requireContext(), getGlobalUnit());
        this.binding.layoutManualParams.setVisibility(this.useAutoGenerateParams ? 8 : 0);
        this.binding.layoutAutoGenerateParams.setVisibility(this.useAutoGenerateParams ? 0 : 8);
        if (this.useAutoGenerateParams) {
            ShovelAutoGenerateParams autoGenerateParamsObj = this.bucket.getAutoGenerateParamsObj();
            setParamText(this.binding.layoutAutoAB.etValue, autoGenerateParamsObj.AB, z);
            setParamText(this.binding.layoutAutoT0x.etValue, autoGenerateParamsObj.T0x, z);
            setParamText(this.binding.layoutAutoT0y.etValue, autoGenerateParamsObj.T0y, z);
            setParamText(this.binding.layoutAutoT0z.etValue, autoGenerateParamsObj.T0z, z);
            setParamText(this.binding.layoutAutoT1x.etValue, autoGenerateParamsObj.T1x, z);
            setParamText(this.binding.layoutAutoT1y.etValue, autoGenerateParamsObj.T1y, z);
            setParamText(this.binding.layoutAutoT1z.etValue, autoGenerateParamsObj.T1z, z);
            setParamText(this.binding.layoutAutoT2x.etValue, autoGenerateParamsObj.T2x, z);
            setParamText(this.binding.layoutAutoT2y.etValue, autoGenerateParamsObj.T2y, z);
            setParamText(this.binding.layoutAutoT2z.etValue, autoGenerateParamsObj.T2z, z);
            setParamText(this.binding.layoutAutoT3x.etValue, autoGenerateParamsObj.T3x, z);
            setParamText(this.binding.layoutAutoT3y.etValue, autoGenerateParamsObj.T3y, z);
            setParamText(this.binding.layoutAutoT3z.etValue, autoGenerateParamsObj.T3z, z);
        } else if (this.useDistanceMeasure) {
            setParamText(this.binding.layoutG1.etValue, this.bucket.getNT(), z);
            setParamText(this.binding.layoutG2.etValue, this.bucket.getAT(), z);
            setParamText(this.binding.layoutG3.etValue, this.bucket.getNA(), z);
            setParamText(this.binding.layoutLR.etValue, this.bucket.getLR() != 0.0d ? this.bucket.getLR() : 2.0d * this.bucket.getLy(), z);
            setParamText(this.binding.layoutAB.etValue, this.bucket.getAB(), z);
        } else {
            setParamText(this.binding.layoutG1.etValue, this.bucket.getG1(), z);
            setParamText(this.binding.layoutG2.etValue, this.bucket.getG2(), z);
            setParamText(this.binding.layoutG3.etValue, this.bucket.getG3(), z);
            setParamText(this.binding.layoutLR.etValue, this.bucket.getLy() * 2.0d, z);
            setParamText(this.binding.layoutAB.etValue, this.bucket.getAB(), z);
        }
        setParamsEditable(!this.useAutoGenerateParams);
        applyStepImageForType(this.lastFocusedType);
        updateTvDoubtVisibility(true);
    }

    private void setParamsEditable(boolean z) {
        this.binding.layoutG1.etValue.setEnabled(z);
        this.binding.layoutG2.etValue.setEnabled(z);
        this.binding.layoutG3.etValue.setEnabled(z);
        this.binding.layoutLR.etValue.setEnabled(z);
        this.binding.layoutAB.etValue.setEnabled(z);
        this.binding.layoutAutoAB.etValue.setEnabled(z);
        this.binding.layoutAutoT0x.etValue.setEnabled(z);
        this.binding.layoutAutoT0y.etValue.setEnabled(z);
        this.binding.layoutAutoT0z.etValue.setEnabled(z);
        this.binding.layoutAutoT1x.etValue.setEnabled(z);
        this.binding.layoutAutoT1y.etValue.setEnabled(z);
        this.binding.layoutAutoT1z.etValue.setEnabled(z);
        this.binding.layoutAutoT2x.etValue.setEnabled(z);
        this.binding.layoutAutoT2y.etValue.setEnabled(z);
        this.binding.layoutAutoT2z.etValue.setEnabled(z);
        this.binding.layoutAutoT3x.etValue.setEnabled(z);
        this.binding.layoutAutoT3y.etValue.setEnabled(z);
        this.binding.layoutAutoT3z.etValue.setEnabled(z);
    }

    private void setParamText(NumericEditText numericEditText, double d, boolean z) {
        if (!z && d == 0.0d) {
            numericEditText.setText("");
        } else {
            numericEditText.setText(formatDouble(formatMetertoOther(getGlobalUnit(), d, 3)));
        }
    }

    private boolean resolveUseAutoGenerateParams() {
        return (TextUtils.isEmpty(this.bucket.autoGenerateParams) || this.bucket.getAutoGenerateParamsObj().isEmpty()) ? false : true;
    }

    private void updateParamLabels() {
        if (this.useAutoGenerateParams) {
            this.binding.layoutAutoAB.tvTitle.setText("AB:");
            this.binding.layoutAutoT0x.tvTitle.setText("T0x:");
            this.binding.layoutAutoT0y.tvTitle.setText("T0y:");
            this.binding.layoutAutoT0z.tvTitle.setText("T0z:");
            this.binding.layoutAutoT1x.tvTitle.setText("T1x:");
            this.binding.layoutAutoT1y.tvTitle.setText("T1y:");
            this.binding.layoutAutoT1z.tvTitle.setText("T1z:");
            this.binding.layoutAutoT2x.tvTitle.setText("T2x:");
            this.binding.layoutAutoT2y.tvTitle.setText("T2y:");
            this.binding.layoutAutoT2z.tvTitle.setText("T2z:");
            this.binding.layoutAutoT3x.tvTitle.setText("T3x:");
            this.binding.layoutAutoT3y.tvTitle.setText("T3y:");
            this.binding.layoutAutoT3z.tvTitle.setText("T3z:");
            return;
        }
        if (this.useDistanceMeasure) {
            this.binding.layoutG1.tvTitle.setText("NT:");
            this.binding.layoutG2.tvTitle.setText("AT:");
            this.binding.layoutG3.tvTitle.setText("NA:");
            this.binding.layoutLR.tvTitle.setText("LR:");
            this.binding.layoutAB.tvTitle.setText("AB:");
            return;
        }
        this.binding.layoutG1.tvTitle.setText("G1:");
        this.binding.layoutG2.tvTitle.setText("G2:");
        this.binding.layoutG3.tvTitle.setText("G3:");
        this.binding.layoutLR.tvTitle.setText("LR:");
        this.binding.layoutAB.tvTitle.setText("AB:");
    }

    private boolean prepareBucketData() {
        ShovelEntity shovelEntity;
        String strTrim = this.binding.edtName.getText().toString().trim();
        this.bucket.name = strTrim;
        if (TextUtils.isEmpty(strTrim)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.shovel_name_cannot_empty), getString(R$string.use_default_values), null, "step1_shovel_name");
            return false;
        }
        if (NoUnderscoreInputFilter.containsUnderscore(strTrim)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.name_cannot_contain_underscore));
            return false;
        }
        if (this.databaseManager.isShovelNameExists(strTrim) && (shovelEntity = this.initBucket) != null && !TextUtils.isEmpty(shovelEntity.name) && !this.initBucket.name.equals(strTrim)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.name_exists));
            return false;
        }
        if (this.useAutoGenerateParams) {
            if (!TextUtils.isEmpty(this.bucket.param)) {
                return true;
            }
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.shovel_parameter_generation_failed));
            return false;
        }
        this.bucket.showUnit = getGlobalUnit();
        int globalUnit = getGlobalUnit();
        double otherToMeter = formatOtherToMeter(globalUnit, this.binding.layoutG1.etValue.getNumericValue(), 3);
        double otherToMeter2 = formatOtherToMeter(globalUnit, this.binding.layoutG2.etValue.getNumericValue(), 3);
        double otherToMeter3 = formatOtherToMeter(globalUnit, this.binding.layoutG3.etValue.getNumericValue(), 3);
        double otherToMeter4 = formatOtherToMeter(globalUnit, this.binding.layoutLR.etValue.getNumericValue() / 2.0d, 3);
        double otherToMeter5 = formatOtherToMeter(globalUnit, this.binding.layoutAB.etValue.getNumericValue(), 3);
        if (otherToMeter == 0.0d || otherToMeter2 == 0.0d || otherToMeter3 == 0.0d || otherToMeter4 == 0.0d || otherToMeter5 == 0.0d) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.please_enter_parameters));
            return false;
        }
        if (this.useDistanceMeasure) {
            this.bucket.setDistanceMeasureValues(otherToMeter, otherToMeter2, otherToMeter3, otherToMeter4, otherToMeter4, otherToMeter5);
        } else {
            this.bucket.setMeasureValues(otherToMeter, otherToMeter2, otherToMeter3, otherToMeter4, otherToMeter4, otherToMeter5);
        }
        return true;
    }

    private boolean hasBucketModifications() {
        ShovelEntity shovelEntity = this.bucket;
        if (shovelEntity == null || this.initBucket == null || shovelEntity.localId <= 0) {
            return true;
        }
        String strTrim = this.binding.edtName.getText() != null ? this.binding.edtName.getText().toString().trim() : "";
        String str = this.initBucket.name;
        if (!TextUtils.equals(strTrim, str != null ? str.trim() : "")) {
            return true;
        }
        if (this.useAutoGenerateParams) {
            return false;
        }
        int globalUnit = getGlobalUnit();
        double otherToMeter = formatOtherToMeter(globalUnit, this.binding.layoutG1.etValue.getNumericValue(), 3);
        double otherToMeter2 = formatOtherToMeter(globalUnit, this.binding.layoutG2.etValue.getNumericValue(), 3);
        double otherToMeter3 = formatOtherToMeter(globalUnit, this.binding.layoutG3.etValue.getNumericValue(), 3);
        double otherToMeter4 = formatOtherToMeter(globalUnit, this.binding.layoutLR.etValue.getNumericValue(), 3);
        double otherToMeter5 = formatOtherToMeter(globalUnit, this.binding.layoutAB.etValue.getNumericValue(), 3);
        if (this.useDistanceMeasure) {
            return (sameDisplayMeter(otherToMeter, this.initBucket.getNT()) && sameDisplayMeter(otherToMeter2, this.initBucket.getAT()) && sameDisplayMeter(otherToMeter3, this.initBucket.getNA()) && sameDisplayMeter(otherToMeter4, (this.initBucket.getLR() > 0.0d ? 1 : (this.initBucket.getLR() == 0.0d ? 0 : -1)) != 0 ? this.initBucket.getLR() : 2.0d * this.initBucket.getLy()) && sameDisplayMeter(otherToMeter5, this.initBucket.getAB())) ? false : true;
        }
        return (sameDisplayMeter(otherToMeter, this.initBucket.getG1()) && sameDisplayMeter(otherToMeter2, this.initBucket.getG2()) && sameDisplayMeter(otherToMeter3, this.initBucket.getG3()) && sameDisplayMeter(otherToMeter4, this.initBucket.getLy() * 2.0d) && sameDisplayMeter(otherToMeter5, this.initBucket.getAB())) ? false : true;
    }

    private boolean sameDisplayMeter(double d, double d2) {
        return TextUtils.equals(formatDouble(formatMetertoOther(getGlobalUnit(), d, 3)), formatDouble(formatMetertoOther(getGlobalUnit(), d2, 3)));
    }

    private void continueBucketSwitch() {
        if (TextUtils.isEmpty(getActiveCalibParams())) {
            CalibrateSessionHelper.recordGetParamCmd(this.mLatestGga, this.mLatestIns, YCTApplication.getInstance().getSensorInfo(), headingError());
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,GET_PARAM"));
            return;
        }
        startLocalBucketSwitch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Double headingError() {
        if (requireActivity() instanceof BaseActivity) {
            return Double.valueOf(((BaseActivity) requireActivity()).getLatestHeadingDegreesError());
        }
        return null;
    }

    private String getActiveCalibParams() {
        if (!TextUtils.isEmpty(this.pendingCalibParams)) {
            return this.pendingCalibParams;
        }
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.calibParams)) {
            return this.currentExcavator.calibParams;
        }
        return "";
    }

    private void startLocalBucketSwitch() {
        final String activeCalibParams = getActiveCalibParams();
        if (TextUtils.isEmpty(activeCalibParams)) {
            onBucketSwitchFailed();
            return;
        }
        if (!this.useAutoGenerateParams) {
            this.bucket.param = null;
        }
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.6
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(BucketCreateFragment.this.bucket.param) || !BucketCreateFragment.this.useAutoGenerateParams) {
                    final ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(BucketCreateFragment.this.bucket);
                    if (!resultMakeToolParam.isSuccess()) {
                        if (BucketCreateFragment.this.isAdded()) {
                            BucketCreateFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.6.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    BucketCreateFragment.this.waitingSwitchBeforeSave = false;
                                    BucketCreateFragment.this.waitingSetParam = false;
                                    BucketCreateFragment.this.awaitBucketSwitchLogEnd = false;
                                    BucketCreateFragment.this.cancelLoadingDialog();
                                    CalibrateLogToFile.e("本地生成铲斗参数失败，code=" + resultMakeToolParam.code);
                                    CalibrateSessionHelper.endBucketSwitchFailed(BucketCreateFragment.this.currentExcavator, BucketCreateFragment.this.bucket);
                                    ((BaseActivity) BucketCreateFragment.this.requireActivity()).showTipDialog(BucketCreateFragment.this.getString(R$string.shovel_parameter_generation_failed), BucketCreateFragment.this.getString(R$string.ok), null);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    BucketCreateFragment.this.bucket.param = resultMakeToolParam.calibParamsBase64;
                }
                final ExcavatorCalibHelper.Result resultApplyTool = ExcavatorCalibHelper.applyTool(activeCalibParams, BucketCreateFragment.this.bucket.param);
                final String str = BucketCreateFragment.this.bucket.param;
                final String str2 = activeCalibParams;
                if (BucketCreateFragment.this.isAdded()) {
                    BucketCreateFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!resultApplyTool.isSuccess()) {
                                CalibrateLogToFile.e("本地切换铲斗失败，code=" + resultApplyTool.code);
                                BucketCreateFragment.this.onBucketSwitchFailed();
                                return;
                            }
                            CalibrateSessionHelper.recordBucketSwitchApply(str2, str, BucketCreateFragment.this.bucket != null ? BucketCreateFragment.this.bucket.name : "", BucketCreateFragment.this.mLatestGga, BucketCreateFragment.this.mLatestIns, YCTApplication.getInstance().getSensorInfo(), BucketCreateFragment.this.headingError());
                            BucketCreateFragment.this.onLocalSwitchSuccess(resultApplyTool.calibParamsBase64);
                        }
                    });
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocalSwitchSuccess(String str) {
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity == null) {
            onBucketSwitchFailed();
            return;
        }
        this.pendingCalibParams = str;
        String strBuildCalibParamsId = BucketSwitchHelper.buildCalibParamsId(excavatorEntity, this.bucket);
        this.pendingCalibParamsId = strBuildCalibParamsId;
        ExcavatorEntity excavatorEntity2 = this.currentExcavator;
        excavatorEntity2.calibParams = str;
        excavatorEntity2.calibParamsId = strBuildCalibParamsId;
        this.waitingSetParam = true;
        recordBucketSwitchSetParamAndScheduleEnd(strBuildCalibParamsId, str);
        sendSetParamOrder(this.pendingCalibParamsId, str);
    }

    private void recordBucketSwitchSetParamAndScheduleEnd(String str, String str2) {
        if (CalibrateLogToFile.hasActiveSession() && "bucket".equals(CalibrateLogToFile.getActiveFileFlow())) {
            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
            CalibrateSessionHelper.recordFineTuneSetParam(str, str2, this.mLatestGga, this.mLatestIns, sensorInfo, headingError());
            JsonObject jsonObjectBuildBucketSwitchMeta = CalibrateSessionHelper.buildBucketSwitchMeta(this.currentExcavator, this.bucket, str, true);
            this.awaitBucketSwitchLogEnd = true;
            if (YCTApplication.getInstance().isDemo()) {
                CalibrateSessionHelper.recordSetParamReply("#CALIBRATE,,SET_PARAM,OK*3D\r\n", this.mLatestGga, this.mLatestIns, sensorInfo, headingError());
                CalibrateLogToFile.endSession(true, jsonObjectBuildBucketSwitchMeta);
                this.awaitBucketSwitchLogEnd = false;
                return;
            }
            CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObjectBuildBucketSwitchMeta);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBucketSwitchFailed() {
        this.waitingSwitchBeforeSave = false;
        this.waitingSetParam = false;
        this.awaitBucketSwitchLogEnd = false;
        this.pendingCalibParams = null;
        this.pendingCalibParamsId = null;
        if (!this.useAutoGenerateParams) {
            this.bucket.param = null;
        }
        CalibrateSessionHelper.endBucketSwitchFailed(this.currentExcavator, this.bucket);
        cancelLoadingDialog();
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.config_failed_please_check_params), getString(R$string.ok), null);
    }

    private void createBucketFirst() {
        int i;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            ShovelEntity shovelEntity = this.bucket;
            if (shovelEntity.mode == 0 && (i = excavatorEntity.mode) > 0) {
                shovelEntity.mode = i;
            }
        }
        showLoadingDialog(getString(R$string.please_wait));
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                BucketCreateFragment.$r8$lambda$UDu10VM7iYDIw_i9BDETs3nHOH0(this.f$0);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$UDu10VM7iYDIw_i9BDETs3nHOH0(final BucketCreateFragment bucketCreateFragment) {
        if (TextUtils.isEmpty(bucketCreateFragment.bucket.param) || !bucketCreateFragment.useAutoGenerateParams) {
            final ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(bucketCreateFragment.bucket);
            if (!resultMakeToolParam.isSuccess()) {
                if (bucketCreateFragment.isAdded()) {
                    bucketCreateFragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            BucketCreateFragment.$r8$lambda$4XN5Xu1OXI9FmfIA2To7T6G5Cn0(this.f$0, resultMakeToolParam);
                        }
                    });
                    return;
                }
                return;
            }
            bucketCreateFragment.bucket.param = resultMakeToolParam.calibParamsBase64;
        }
        if (bucketCreateFragment.isAdded()) {
            bucketCreateFragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.persistCreatedBucket();
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$4XN5Xu1OXI9FmfIA2To7T6G5Cn0(BucketCreateFragment bucketCreateFragment, ExcavatorCalibHelper.Result result) {
        bucketCreateFragment.cancelLoadingDialog();
        CalibrateLogToFile.e("本地生成铲斗参数失败，code=" + result.code);
        ((BaseActivity) bucketCreateFragment.requireActivity()).showTipDialog(bucketCreateFragment.getString(R$string.shovel_parameter_generation_failed), bucketCreateFragment.getString(R$string.ok), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistCreatedBucket() {
        ShovelEntity shovelEntity;
        if (!isAdded() || (shovelEntity = this.bucket) == null) {
            return;
        }
        shovelEntity.ensureParamsSerialized();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        ShovelEntity shovelEntity2 = this.bucket;
        if (shovelEntity2.createTime == 0) {
            shovelEntity2.createTime = jCurrentTimeMillis;
        }
        shovelEntity2.updateTime = jCurrentTimeMillis;
        shovelEntity2.version = 1L;
        long jInsertShovel = this.databaseManager.insertShovel(shovelEntity2);
        this.bucket.localId = jInsertShovel;
        cancelLoadingDialog();
        if (jInsertShovel <= 0) {
            if (!this.useAutoGenerateParams) {
                this.bucket.param = null;
            }
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.create_failed), getString(R$string.ok), null);
            return;
        }
        ShovelEntity shovelEntity3 = this.initBucket;
        if (shovelEntity3 != null) {
            shovelEntity3.name = this.bucket.name;
        }
        this.binding.tvFineTune.setVisibility(8);
        this.creatingBucket = true;
        NetworkUserLoader.getInstance().createBucket(this.bucket);
        if (this.saveOnlyThisSubmit) {
            Toast.makeText(requireContext(), R$string.create_success, 0).show();
            if (getActivity() == null || requireActivity().isFinishing()) {
                return;
            }
            requireActivity().finish();
            return;
        }
        showWhetherApplyDialog(getString(R$string.create_success_whether_apply));
    }

    private void modifyBucketFirst() {
        int i;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            ShovelEntity shovelEntity = this.bucket;
            if (shovelEntity.mode == 0 && (i = excavatorEntity.mode) > 0) {
                shovelEntity.mode = i;
            }
        }
        showLoadingDialog(getString(R$string.please_wait));
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                BucketCreateFragment.$r8$lambda$d4qZDUTBbfBKFAwJVlw_37lIC0o(this.f$0);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$d4qZDUTBbfBKFAwJVlw_37lIC0o(final BucketCreateFragment bucketCreateFragment) {
        if (TextUtils.isEmpty(bucketCreateFragment.bucket.param) || !bucketCreateFragment.useAutoGenerateParams) {
            final ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(bucketCreateFragment.bucket);
            if (!resultMakeToolParam.isSuccess()) {
                if (bucketCreateFragment.isAdded()) {
                    bucketCreateFragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda24
                        @Override // java.lang.Runnable
                        public final void run() {
                            BucketCreateFragment.m2206$r8$lambda$8Dvotzn6aoslgpHnMAb93eQDE8(this.f$0, resultMakeToolParam);
                        }
                    });
                    return;
                }
                return;
            }
            bucketCreateFragment.bucket.param = resultMakeToolParam.calibParamsBase64;
        }
        if (bucketCreateFragment.isAdded()) {
            bucketCreateFragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.persistModifiedBucket();
                }
            });
        }
    }

    /* renamed from: $r8$lambda$8Dvotzn6aoslgpHnMAb93e-QDE8, reason: not valid java name */
    public static /* synthetic */ void m2206$r8$lambda$8Dvotzn6aoslgpHnMAb93eQDE8(BucketCreateFragment bucketCreateFragment, ExcavatorCalibHelper.Result result) {
        bucketCreateFragment.cancelLoadingDialog();
        CalibrateLogToFile.e("本地生成铲斗参数失败，code=" + result.code);
        ((BaseActivity) bucketCreateFragment.requireActivity()).showTipDialog(bucketCreateFragment.getString(R$string.shovel_parameter_generation_failed), bucketCreateFragment.getString(R$string.ok), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistModifiedBucket() {
        ShovelEntity shovelEntity;
        if (!isAdded() || (shovelEntity = this.bucket) == null) {
            return;
        }
        shovelEntity.ensureParamsSerialized();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        ShovelEntity shovelEntity2 = this.bucket;
        shovelEntity2.version++;
        shovelEntity2.updateTime = jCurrentTimeMillis;
        this.databaseManager.updateShovelById(shovelEntity2);
        cancelLoadingDialog();
        BucketSwitchHelper.refreshCalibParamsIdAfterBucketRenamed(requireContext(), this.initBucket, this.bucket, this.currentExcavator);
        ShovelEntity shovelEntity3 = this.initBucket;
        if (shovelEntity3 != null) {
            shovelEntity3.name = this.bucket.name;
        }
        this.modifyingBucket = true;
        NetworkUserLoader.getInstance().modifyBucket(this.bucket);
        if (this.saveOnlyThisSubmit) {
            Toast.makeText(requireContext(), R$string.saved_successfully, 0).show();
            if (getActivity() == null || requireActivity().isFinishing()) {
                return;
            }
            requireActivity().finish();
            return;
        }
        startApplyBucketSwitch();
    }

    private void showWhetherApplyDialog(String str) {
        ((BaseActivity) requireActivity()).showTipDialog(str, getString(R$string.apply), getString(R$string.cancel), "", null, "create_bucket_apply");
    }

    private void persistBucketAfterSwitchSuccess() {
        int i;
        this.persistingBucket = true;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            ShovelEntity shovelEntity = this.bucket;
            if (shovelEntity.mode == 0 && (i = excavatorEntity.mode) > 0) {
                shovelEntity.mode = i;
            }
        }
        this.bucket.ensureParamsSerialized();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        ShovelEntity shovelEntity2 = this.bucket;
        if (shovelEntity2.localId > 0) {
            shovelEntity2.version++;
            shovelEntity2.updateTime = jCurrentTimeMillis;
            this.databaseManager.updateShovelById(shovelEntity2);
            NetworkUserLoader.getInstance().modifyBucket(this.bucket);
            finishBucketSyncAfterPersist(this.bucket, false);
            return;
        }
        if (shovelEntity2.createTime == 0) {
            shovelEntity2.createTime = jCurrentTimeMillis;
        }
        shovelEntity2.updateTime = jCurrentTimeMillis;
        shovelEntity2.version = 1L;
        long jInsertShovel = this.databaseManager.insertShovel(shovelEntity2);
        this.bucket.localId = jInsertShovel;
        if (jInsertShovel > 0) {
            Toast.makeText(requireContext(), R$string.create_success, 1).show();
        }
        finishBucketSyncAfterPersist(this.bucket, true);
        NetworkUserLoader.getInstance().createBucket(this.bucket);
    }

    private void notifyBucketApplied(ShovelEntity shovelEntity, String str) {
        EventBus.getDefault().post(new SwicthBucketEvent(shovelEntity, true, str));
    }

    private ShovelEntity prepareBucketForExcavatorSync(ShovelEntity shovelEntity) {
        int i;
        if (shovelEntity == null) {
            shovelEntity = this.bucket;
        }
        ShovelEntity shovelEntity2 = this.bucket;
        if (shovelEntity2 != null && shovelEntity != shovelEntity2) {
            if (TextUtils.isEmpty(shovelEntity.name) && !TextUtils.isEmpty(this.bucket.name)) {
                shovelEntity.name = this.bucket.name;
            }
            if (TextUtils.isEmpty(shovelEntity.param) && !TextUtils.isEmpty(this.bucket.param)) {
                shovelEntity.param = this.bucket.param;
            }
            if (shovelEntity.mode == 0 && (i = this.bucket.mode) > 0) {
                shovelEntity.mode = i;
            }
            if (shovelEntity.localId <= 0) {
                long j = this.bucket.localId;
                if (j > 0) {
                    shovelEntity.localId = j;
                }
            }
        }
        return shovelEntity;
    }

    private void finishBucketSyncAfterPersist(ShovelEntity shovelEntity, boolean z) {
        ShovelEntity shovelEntityPrepareBucketForExcavatorSync = prepareBucketForExcavatorSync(shovelEntity);
        if (shovelEntityPrepareBucketForExcavatorSync == null || this.currentExcavator == null) {
            notifyBucketApplied(shovelEntityPrepareBucketForExcavatorSync, this.pendingCalibParamsId);
            return;
        }
        String str = !TextUtils.isEmpty(this.pendingCalibParams) ? this.pendingCalibParams : this.currentExcavator.calibParams;
        BucketSwitchHelper.SyncResult syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied = BucketSwitchHelper.refreshExcavatorCalibParamsIdAfterBucketApplied(requireContext(), this.currentExcavator, shovelEntityPrepareBucketForExcavatorSync, str, z);
        ExcavatorEntity excavatorEntity = syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.excavator;
        if (excavatorEntity != null) {
            this.currentExcavator = excavatorEntity;
        }
        ShovelEntity shovelEntity2 = syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.bucket;
        if (shovelEntity2 != null) {
            this.bucket = shovelEntity2;
        }
        String str2 = syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.calibParamsId;
        this.pendingCalibParamsId = str2;
        if (!TextUtils.isEmpty(str2)) {
            this.currentExcavator.calibParamsId = syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.calibParamsId;
            if (!TextUtils.isEmpty(str)) {
                this.currentExcavator.calibParams = str;
            }
        }
        if (!TextUtils.isEmpty(syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.calibParamsId) && !TextUtils.isEmpty(str)) {
            sendSetParamOrder(syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.calibParamsId, str);
        }
        updateFineTuneVisibility();
        ShovelEntity shovelEntity3 = syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.bucket;
        if (shovelEntity3 != null) {
            shovelEntityPrepareBucketForExcavatorSync = shovelEntity3;
        }
        notifyBucketApplied(shovelEntityPrepareBucketForExcavatorSync, syncResultRefreshExcavatorCalibParamsIdAfterBucketApplied.calibParamsId);
    }

    private void sendSetParamOrder(String str, String str2) {
        String str3 = "CALIBRATE,,SET_PARAM," + str + "," + str2;
        CalibrateLogToFile.i("设置校准参数：" + str3);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, str3));
        if (YCTApplication.getInstance().isDemo()) {
            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.BucketCreateFragment$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    BucketCreateFragment.$r8$lambda$CcUCO0ArsmoI2jyiGVixKnJjDQQ(this.f$0);
                }
            }, 300L);
        }
    }

    public static /* synthetic */ void $r8$lambda$CcUCO0ArsmoI2jyiGVixKnJjDQQ(BucketCreateFragment bucketCreateFragment) {
        bucketCreateFragment.getClass();
        bucketCreateFragment.onMessageEvent(new SetCalibrateParamEvent(DeviceType.ZPY, "OK"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (this.waitingSetParam) {
            this.waitingSetParam = false;
            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
            if (!TextUtils.isEmpty(setCalibrateParamEvent.line) && setCalibrateParamEvent.line.contains("OK")) {
                if (this.awaitBucketSwitchLogEnd) {
                    CalibrateSessionHelper.handleSetParamReplyIfWaiting(setCalibrateParamEvent.line, this.mLatestGga, this.mLatestIns, sensorInfo, headingError());
                    this.awaitBucketSwitchLogEnd = false;
                }
                this.waitingSwitchBeforeSave = false;
                ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.config_success));
                persistBucketAfterSwitchSuccess();
                return;
            }
            if (this.awaitBucketSwitchLogEnd) {
                CalibrateSessionHelper.clearAwaitSetParamReply();
                if (CalibrateLogToFile.hasActiveSession() && "bucket".equals(CalibrateLogToFile.getActiveFileFlow())) {
                    CalibrateSessionHelper.recordSetParamReply(setCalibrateParamEvent.line, this.mLatestGga, this.mLatestIns, sensorInfo, headingError());
                }
                this.awaitBucketSwitchLogEnd = false;
            }
            onBucketSwitchFailed();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
        String strBuildGetParamReplyLine;
        if (getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParams)) {
            return;
        }
        byte[] bArrDecode = Base64.decode(getCalibrateParamEvent.calibParams, 0);
        if (bArrDecode != null && bArrDecode.length > 0) {
            this.mParamsType = bArrDecode[0] & 255;
            CalibrateLogToFile.i("校准参数类型：" + this.mParamsType);
            ExcavatorEntity excavatorEntity = this.currentExcavator;
            if (excavatorEntity != null) {
                excavatorEntity.mode = this.mParamsType;
                excavatorEntity.calibParams = getCalibrateParamEvent.calibParams;
                if (!TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
                    this.currentExcavator.calibParamsId = getCalibrateParamEvent.calibParamsId;
                }
                if (this.currentExcavator.localId <= 0) {
                    this.currentExcavator = CurrentExcavatorCalibHelper.resolveLocalExcavator(requireContext(), this.currentExcavator);
                }
            }
            updateFineTuneVisibility();
        }
        if (this.pendingFineTuneAfterParams) {
            this.pendingFineTuneAfterParams = false;
            cancelLoadingDialog();
            if (this.mParamsType > 0 && this.binding.tvFineTune.getVisibility() == 0) {
                proceedFineTuneByParamsType();
            }
        }
        if (this.waitingSwitchBeforeSave) {
            String str = getCalibrateParamEvent.calibParams;
            this.pendingCalibParams = str;
            ExcavatorEntity excavatorEntity2 = this.currentExcavator;
            if (excavatorEntity2 != null) {
                excavatorEntity2.calibParams = str;
            }
            if (CalibrateLogToFile.hasActiveSession() && "bucket".equals(CalibrateLogToFile.getActiveFileFlow())) {
                SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
                if (!TextUtils.isEmpty(getCalibrateParamEvent.line)) {
                    strBuildGetParamReplyLine = getCalibrateParamEvent.line;
                } else {
                    strBuildGetParamReplyLine = CalibrateSessionHelper.buildGetParamReplyLine(getCalibrateParamEvent.calibParamsId, getCalibrateParamEvent.calibParams);
                }
                CalibrateSessionHelper.recordGetParamReply(strBuildGetParamReplyLine, this.mLatestGga, this.mLatestIns, sensorInfo, headingError());
            }
            continueBucketSwitch();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBottomRightClick() {
        ShovelEntity shovelEntity = this.bucket;
        if (shovelEntity != null && shovelEntity.localId > 0 && !hasBucketModifications()) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.no_modify_content));
            return;
        }
        boolean zIsSaveOnlyBucket = isSaveOnlyBucket();
        this.saveOnlyThisSubmit = zIsSaveOnlyBucket;
        if (zIsSaveOnlyBucket) {
            saveWithoutApply();
        } else {
            apply();
        }
    }

    private void saveWithoutApply() {
        if (prepareBucketData()) {
            if (this.bucket.localId <= 0) {
                createBucketFirst();
            } else {
                modifyBucketFirst();
            }
        }
    }

    private void apply() {
        this.binding.tvApply.setSelected(true);
        if (prepareBucketData()) {
            if (!this.isSupportBucket) {
                showNotSupportReplaceBucketDialog();
            } else if (this.bucket.localId <= 0) {
                createBucketFirst();
            } else {
                modifyBucketFirst();
            }
        }
    }

    private void showNotSupportReplaceBucketDialog() {
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.not_support_replace_bucket), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.BucketCreateFragment.7
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                BucketCreateFragment.this.saveBucketWithoutApplyAfterUnsupported();
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                BucketCreateFragment.this.saveBucketWithoutApplyAfterUnsupported();
            }
        }, "not_support_replace_bucket");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveBucketWithoutApplyAfterUnsupported() {
        if (!isAdded() || this.savingAfterUnsupportedReplace) {
            return;
        }
        this.savingAfterUnsupportedReplace = true;
        this.saveOnlyThisSubmit = true;
        ShovelEntity shovelEntity = this.bucket;
        if (shovelEntity != null && shovelEntity.localId > 0 && (this.creatingBucket || this.modifyingBucket)) {
            Toast.makeText(requireContext(), R$string.saved_successfully, 0).show();
            if (getActivity() == null || requireActivity().isFinishing()) {
                return;
            }
            requireActivity().finish();
            return;
        }
        saveWithoutApply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startApplyBucketSwitch() {
        if (!this.isSupportBucket) {
            showNotSupportReplaceBucketDialog();
            return;
        }
        this.waitingSwitchBeforeSave = true;
        this.awaitBucketSwitchLogEnd = false;
        CalibrateSessionHelper.beginBucketSwitch(requireContext(), this.currentExcavator);
        showLoadingDialog(getString(R$string.please_wait));
        continueBucketSwitch();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateBucketResponse createBucketResponse) {
        ShovelEntity shovelEntity;
        int i;
        if (this.creatingBucket) {
            this.creatingBucket = false;
            if (createBucketResponse == null || createBucketResponse.state != 0 || createBucketResponse.shovelEntity == null || this.bucket == null || !isAdded()) {
                return;
            }
            ShovelEntity shovelEntity2 = createBucketResponse.shovelEntity;
            long j = shovelEntity2.localId;
            if (j > 0) {
                this.bucket.localId = j;
            }
            long j2 = shovelEntity2.bucket_id;
            if (j2 != 0) {
                this.bucket.bucket_id = j2;
            }
            if (!TextUtils.isEmpty(shovelEntity2.bucket_uuid)) {
                this.bucket.bucket_uuid = createBucketResponse.shovelEntity.bucket_uuid;
            }
            ShovelEntity shovelEntity3 = this.bucket;
            if (shovelEntity3.localId > 0) {
                this.databaseManager.updateShovelById(shovelEntity3);
                return;
            }
            return;
        }
        if (this.persistingBucket) {
            this.persistingBucket = false;
            cancelLoadingDialog();
            if (createBucketResponse.state == 0 && (shovelEntity = createBucketResponse.shovelEntity) != null) {
                ShovelEntity shovelEntityPrepareBucketForExcavatorSync = prepareBucketForExcavatorSync(shovelEntity);
                ExcavatorEntity excavatorEntity = this.currentExcavator;
                if (excavatorEntity != null && shovelEntityPrepareBucketForExcavatorSync.mode == 0 && (i = excavatorEntity.mode) > 0) {
                    shovelEntityPrepareBucketForExcavatorSync.mode = i;
                }
                shovelEntityPrepareBucketForExcavatorSync.ensureParamsSerialized();
                if (shovelEntityPrepareBucketForExcavatorSync.localId <= 0) {
                    long j3 = this.bucket.localId;
                    if (j3 > 0) {
                        shovelEntityPrepareBucketForExcavatorSync.localId = j3;
                    }
                }
                if (shovelEntityPrepareBucketForExcavatorSync.localId > 0) {
                    this.databaseManager.updateShovelById(shovelEntityPrepareBucketForExcavatorSync);
                }
            }
            if (getActivity() == null || requireActivity().isFinishing()) {
                return;
            }
            requireActivity().finish();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(ModifyBucketResponse modifyBucketResponse) {
        if (this.modifyingBucket) {
            this.modifyingBucket = false;
            return;
        }
        if (this.persistingBucket) {
            this.persistingBucket = false;
            cancelLoadingDialog();
            if (!this.binding.tvApply.isSelected()) {
                Toast.makeText(requireContext(), R$string.modify_success, 1).show();
            }
            requireActivity().finish();
        }
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentBucketCreateBinding fragmentBucketCreateBinding = this.binding;
        recycleGif(fragmentBucketCreateBinding != null ? fragmentBucketCreateBinding.ivStep : null);
        CalibrateSessionHelper.endAwaitingSessionIfNeeded();
        this.awaitBucketSwitchLogEnd = false;
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
        this.mLatestGga = gGAEntity;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        this.mLatestIns = insNavi;
    }
}
