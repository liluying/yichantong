package com.qianhe.yct.activity.excavator;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentResultListener;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.excavator.ExcavatorDetailActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityExcavatorDetailBinding;
import com.qianhe.yct.databinding.LayoutExcavatorDetailBucketParamsBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.event.ModifyExcavatorResponse;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.BucketSwitchHelper;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.NoUnderscoreInputFilter;
import com.qianhe.yct.view.NumericEditText;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorDetailActivity extends BaseActivity {
    private ActivityExcavatorDetailBinding binding;
    private ExcavatorEntity excavatorEntity;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mLatestGga;
    private InsNavi mLatestIns;
    private boolean modifyingExcavator;
    private ShovelEntity pendingRecalibrateBucket;
    private boolean recalibrateMode;
    private String recalibrateNewBucketName;
    private ExcavatorEntity recalibrateSnapshot;
    private boolean recalibrating;
    private String initName = "";
    private String initMeasureParams = "";
    private String initBucketName = "";

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    private int getDisplayUnit() {
        return AppConfigManager.getInstance().getUnitPreference();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws JSONException {
        this.binding = ActivityExcavatorDetailBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        Intent intent = getIntent();
        if (intent != null) {
            List<ExcavatorEntity> listQueryExcavatorByLocalId = this.mDatabaseManager.queryExcavatorByLocalId(intent.getLongExtra("localId", 0L));
            if (!listQueryExcavatorByLocalId.isEmpty()) {
                ExcavatorEntity excavatorEntity = listQueryExcavatorByLocalId.get(0);
                this.excavatorEntity = excavatorEntity;
                excavatorEntity.loadCalibSoInputsFromJson();
                logExcavatorEntity(this.excavatorEntity);
                ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
                if (excavatorEntity2.mode == 0) {
                    excavatorEntity2.mode = ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode();
                }
                this.recalibrateMode = this.excavatorEntity.hasCalibSoInputs();
                this.initName = TextUtils.isEmpty(this.excavatorEntity.name) ? "" : this.excavatorEntity.name;
                ExcavatorEntity excavatorEntity3 = this.excavatorEntity;
                String str = excavatorEntity3.measureParams;
                this.initMeasureParams = str != null ? str : "";
                this.initBucketName = CalibParamsIdUtil.parseBucketNameFromCalibParamsId(excavatorEntity3.calibParamsId, excavatorEntity3);
                initNameView();
                this.binding.unitDropdownSensor.initUnit(this, getDisplayUnit());
                this.binding.unitDropdownSensor.setEnabled(false);
                int displayUnit = getDisplayUnit();
                if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
                    this.binding.lltMode1.setVisibility(0);
                    this.binding.lltMode23.setVisibility(8);
                    boolean z = this.recalibrateMode;
                    if (z || this.excavatorEntity.deviceHeight != 0.0d) {
                        this.binding.tvAH.setText(formatDouble(formatMetertoOther(displayUnit, this.excavatorEntity.deviceHeight, 3)));
                    }
                    if (z || this.excavatorEntity.rigthDist != 0.0d) {
                        this.binding.tvAR.setText(formatDouble(formatMetertoOther(displayUnit, this.excavatorEntity.rigthDist, 3)));
                    }
                    if (z || this.excavatorEntity.leftDist != 0.0d) {
                        this.binding.tvAL.setText(formatDouble(formatMetertoOther(displayUnit, this.excavatorEntity.leftDist, 3)));
                    }
                    if (z || this.excavatorEntity.spanDist != 0.0d) {
                        this.binding.tvLRMode1.setText(formatDouble(formatMetertoOther(displayUnit, this.excavatorEntity.spanDist, 3)));
                    }
                    this.binding.iv.setImageResource(R$drawable.icon_excavator_all);
                } else {
                    this.binding.lltMode1.setVisibility(8);
                    this.binding.lltMode23.setVisibility(0);
                    if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
                        if (this.excavatorEntity.resolveDiagramDistanceMeasure()) {
                            this.binding.iv.setImageResource(R$drawable.icon_all_mode4_sensor);
                        } else {
                            this.binding.iv.setImageResource(R$drawable.icon_all_sensor);
                        }
                    } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
                        this.binding.iv.setImageResource(R$drawable.icon_all_no_sensor);
                    }
                    bindMode23Params(displayUnit);
                }
            }
        }
        if (this.recalibrateMode) {
            enableRecalibrateEditing();
            this.binding.tvSave.setText(R$string.recalibrate);
            this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.startRecalibrate();
                }
            });
            return;
        }
        this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.saveName();
            }
        });
    }

    private void bindMode23Params(int i) {
        boolean z = this.recalibrateMode;
        boolean zIsDistanceBucketMeasureFlow = this.excavatorEntity.isDistanceBucketMeasureFlow();
        if (z || this.excavatorEntity.HA != 0.0d) {
            this.binding.tvHA.setText(formatDouble(formatMetertoOther(i, this.excavatorEntity.HA, 3)));
        }
        if (z || this.excavatorEntity.pq != 0.0d) {
            this.binding.tvPq.setText(formatDouble(formatMetertoOther(i, this.excavatorEntity.pq, 3)));
        }
        bindBucketParams(this.excavatorEntity);
        ActivityExcavatorDetailBinding activityExcavatorDetailBinding = this.binding;
        setDetailParamRow(activityExcavatorDetailBinding.lltAy, activityExcavatorDetailBinding.tvAy, i, this.excavatorEntity.Ay, z && !zIsDistanceBucketMeasureFlow);
        ActivityExcavatorDetailBinding activityExcavatorDetailBinding2 = this.binding;
        setDetailParamRow(activityExcavatorDetailBinding2.lltAx, activityExcavatorDetailBinding2.tvAx, i, this.excavatorEntity.Ax, z && !zIsDistanceBucketMeasureFlow);
        ActivityExcavatorDetailBinding activityExcavatorDetailBinding3 = this.binding;
        setDetailParamRow(activityExcavatorDetailBinding3.lltBD, activityExcavatorDetailBinding3.tvBD, i, this.excavatorEntity.BD, z && !zIsDistanceBucketMeasureFlow);
        this.binding.lltDx.setVisibility(0);
        if (z || this.excavatorEntity.Dx != 0.0d) {
            this.binding.tvDx.setText(formatDouble(formatMetertoOther(i, this.excavatorEntity.Dx, 3)));
        }
        if (z || this.excavatorEntity.AD != 0.0d) {
            this.binding.tvAD.setText(formatDouble(formatMetertoOther(i, this.excavatorEntity.AD, 3)));
        }
        if (z || this.excavatorEntity.BC != 0.0d) {
            this.binding.tvBC.setText(formatDouble(formatMetertoOther(i, this.excavatorEntity.BC, 3)));
        }
        if (z || this.excavatorEntity.CD != 0.0d) {
            this.binding.tvCD.setText(formatDouble(formatMetertoOther(i, this.excavatorEntity.CD, 3)));
        }
    }

    private void enableRecalibrateEditing() {
        setNumericEditable(this.binding.tvAH, true);
        setNumericEditable(this.binding.tvAR, true);
        setNumericEditable(this.binding.tvAL, true);
        setNumericEditable(this.binding.tvLRMode1, true);
        setNumericEditable(this.binding.tvHA, true);
        setNumericEditable(this.binding.tvPq, true);
        setNumericEditable(this.binding.tvAy, true);
        setNumericEditable(this.binding.tvAx, true);
        setNumericEditable(this.binding.tvDx, true);
        setNumericEditable(this.binding.tvAD, true);
        setNumericEditable(this.binding.tvBC, true);
        setNumericEditable(this.binding.tvCD, true);
        setNumericEditable(this.binding.tvBD, true);
        LayoutExcavatorDetailBucketParamsBinding bucketParamsBinding = getBucketParamsBinding();
        if (bucketParamsBinding != null) {
            setNumericEditable(bucketParamsBinding.tvG1, true);
            setNumericEditable(bucketParamsBinding.tvG2, true);
            setNumericEditable(bucketParamsBinding.tvG3, true);
            setNumericEditable(bucketParamsBinding.tvLRMode23, true);
            setNumericEditable(bucketParamsBinding.tvAB, true);
        }
    }

    private void setNumericEditable(TextView textView, boolean z) {
        if (textView == null) {
            return;
        }
        textView.setEnabled(z);
        textView.setFocusable(z);
        textView.setFocusableInTouchMode(z);
        textView.setCursorVisible(z);
    }

    private void initNameView() {
        NoUnderscoreInputFilter.apply(this.binding.edtName);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorDetailActivity.$r8$lambda$QZ6LHxaQYczPfEO7F2VGcxGyb60(this.f$0, view);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("detail_excavator_name", this, new AnonymousClass1());
        this.binding.edtName.setText(this.initName);
        TextUtils.isEmpty(this.initName);
    }

    public static /* synthetic */ void $r8$lambda$QZ6LHxaQYczPfEO7F2VGcxGyb60(ExcavatorDetailActivity excavatorDetailActivity, View view) {
        excavatorDetailActivity.binding.edtName.setText(excavatorDetailActivity.initName);
        if (!TextUtils.isEmpty(excavatorDetailActivity.initName)) {
            excavatorDetailActivity.binding.edtName.setSelection(excavatorDetailActivity.initName.length());
        }
        ExcavatorEntity excavatorEntity = excavatorDetailActivity.excavatorEntity;
        if (excavatorEntity != null) {
            excavatorEntity.name = excavatorDetailActivity.initName;
        }
        excavatorDetailActivity.binding.edtName.requestFocus();
    }

    /* renamed from: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$1, reason: invalid class name */
    class AnonymousClass1 implements FragmentResultListener {
        AnonymousClass1() {
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(String str, Bundle bundle) {
            if ("detail_excavator_name".equals(str)) {
                if (bundle.getBoolean("confirm")) {
                    ExcavatorDetailActivity.this.setDefaultName();
                } else if (bundle.getBoolean("manual_cancel")) {
                    ExcavatorDetailActivity.this.binding.edtName.requestFocus();
                    ExcavatorDetailActivity.this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ExcavatorDetailActivity.AnonymousClass1.$r8$lambda$avBxXsCfD7mI9tpO4yxgDT5JvwA(this.f$0);
                        }
                    });
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$avBxXsCfD7mI9tpO4yxgDT5JvwA(AnonymousClass1 anonymousClass1) {
            InputMethodManager inputMethodManager = (InputMethodManager) ExcavatorDetailActivity.this.getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(ExcavatorDetailActivity.this.binding.edtName, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultName() {
        String str;
        List<ExcavatorEntity> listQueryExcavatorByUserId = this.mDatabaseManager.queryExcavatorByUserId(0L);
        if (listQueryExcavatorByUserId == null || listQueryExcavatorByUserId.isEmpty()) {
            str = String.format("%s1", getString(R$string.excavator));
        } else {
            if (TextUtils.isEmpty(this.initName)) {
                str = String.format(getString(R$string.excavator) + "%s", Integer.valueOf(listQueryExcavatorByUserId.size() + 1));
            } else {
                str = this.initName;
            }
            if (this.mDatabaseManager.isEntityNameExists("excavator", str) && !TextUtils.equals(this.initName, str)) {
                str = str + "-" + (System.currentTimeMillis() / 1000);
            }
        }
        this.binding.edtName.setText(str);
        this.binding.edtName.setSelection(str.length());
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null) {
            excavatorEntity.name = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveName() {
        if (this.excavatorEntity == null) {
            return;
        }
        String strTrim = this.binding.edtName.getText() != null ? this.binding.edtName.getText().toString().trim() : "";
        this.excavatorEntity.name = strTrim;
        if (TextUtils.isEmpty(strTrim)) {
            showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "detail_excavator_name");
            return;
        }
        if (NoUnderscoreInputFilter.containsUnderscore(strTrim)) {
            showToastDialog(getString(R$string.name_cannot_contain_underscore));
            return;
        }
        if (this.mDatabaseManager.isExcavatorNameExists(strTrim) && !TextUtils.equals(this.initName, strTrim)) {
            showToastDialog(getString(R$string.excavator_name_already_exists));
            return;
        }
        if (TextUtils.equals(this.initName, strTrim)) {
            showToastDialog(getString(R$string.no_modify_content));
            return;
        }
        hideSoftInput();
        BucketSwitchHelper.refreshCalibParamsIdAfterExcavatorRenamed(this, this.excavatorEntity);
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.version++;
        excavatorEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateExcavatorById(this.excavatorEntity);
        this.modifyingExcavator = true;
        NetworkUserLoader.getInstance().modifyExcavator(this.excavatorEntity);
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        syncCalibParamsToDevice(excavatorEntity2.calibParamsId, excavatorEntity2.calibParams);
        this.initName = strTrim;
        Toast.makeText(this, R$string.modify_success, 0).show();
        finish();
    }

    private boolean applyRecalibrateInputs() {
        double d;
        double meter;
        boolean z;
        double meter2;
        double d2;
        double d3;
        double d4;
        if (this.excavatorEntity == null) {
            return false;
        }
        String strTrim = this.binding.edtName.getText() != null ? this.binding.edtName.getText().toString().trim() : "";
        if (TextUtils.isEmpty(strTrim)) {
            showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "detail_excavator_name");
            return false;
        }
        if (NoUnderscoreInputFilter.containsUnderscore(strTrim)) {
            showToastDialog(getString(R$string.name_cannot_contain_underscore));
            return false;
        }
        if (this.mDatabaseManager.isExcavatorNameExists(strTrim) && !TextUtils.equals(this.initName, strTrim)) {
            showToastDialog(getString(R$string.excavator_name_already_exists));
            return false;
        }
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            return applyRecalibrateMode1Inputs(strTrim);
        }
        boolean zIsDistanceBucketMeasureFlow = this.excavatorEntity.isDistanceBucketMeasureFlow();
        double meter3 = readMeter(this.binding.tvHA);
        double meter4 = readMeter(this.binding.tvPq);
        if (!checkRequired(meter3) || !checkRequired(meter4)) {
            return false;
        }
        LayoutExcavatorDetailBucketParamsBinding bucketParamsBinding = getBucketParamsBinding();
        double meter5 = bucketParamsBinding != null ? readMeter(bucketParamsBinding.tvG1) : 0.0d;
        double meter6 = bucketParamsBinding != null ? readMeter(bucketParamsBinding.tvG2) : 0.0d;
        double meter7 = bucketParamsBinding != null ? readMeter(bucketParamsBinding.tvG3) : 0.0d;
        if (bucketParamsBinding != null) {
            d = meter3;
            meter = readMeter(bucketParamsBinding.tvLRMode23);
        } else {
            d = meter3;
            meter = 0.0d;
        }
        if (bucketParamsBinding != null) {
            z = zIsDistanceBucketMeasureFlow;
            meter2 = readMeter(bucketParamsBinding.tvAB);
        } else {
            z = zIsDistanceBucketMeasureFlow;
            meter2 = 0.0d;
        }
        if (!checkRequired(meter5) || !checkRequired(meter6) || !checkRequired(meter7) || !checkRequired(meter) || !checkRequired(meter2)) {
            return false;
        }
        double d5 = meter2;
        double meter8 = readMeter(this.binding.tvAD);
        double d6 = meter;
        double meter9 = readMeter(this.binding.tvBC);
        double d7 = meter7;
        double meter10 = readMeter(this.binding.tvCD);
        if (!checkRequired(meter8) || !checkRequired(meter9) || !checkRequired(meter10)) {
            return false;
        }
        double d8 = meter5;
        double meter11 = readMeter(this.binding.tvDx);
        if (!z) {
            d2 = meter6;
            double meter12 = readMeter(this.binding.tvAy);
            d3 = meter10;
            double meter13 = readMeter(this.binding.tvAx);
            d4 = meter9;
            double meter14 = readMeter(this.binding.tvBD);
            if (!checkRequired(meter12) || !checkRequired(meter13) || !checkRequired(meter11) || !checkRequired(meter14)) {
                return false;
            }
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            excavatorEntity.Ay = meter12;
            excavatorEntity.Ax = meter13;
            excavatorEntity.BD = meter14;
        } else {
            if (meter11 != 0.0d && (Math.abs(meter11) < 0.001d || Math.abs(meter11) > 10.0d)) {
                showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
                return false;
            }
            d4 = meter9;
            d3 = meter10;
            d2 = meter6;
        }
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        excavatorEntity2.name = strTrim;
        excavatorEntity2.HA = d;
        excavatorEntity2.pq = meter4;
        excavatorEntity2.Dx = meter11;
        excavatorEntity2.AD = meter8;
        excavatorEntity2.BC = d4;
        excavatorEntity2.CD = d3;
        if (excavatorEntity2.resolveDiagramDistanceMeasure()) {
            double d9 = d6 / 2.0d;
            this.excavatorEntity.setDistanceMeasureValues(d8, d2, d7, d9, d9, d5);
        } else {
            double d10 = d6 / 2.0d;
            this.excavatorEntity.setMeasureValues(d8, d2, d7, d10, d10, d5);
        }
        this.excavatorEntity.syncExcavatorParamsToJson();
        this.excavatorEntity.syncParamsToJson();
        return true;
    }

    private boolean applyRecalibrateMode1Inputs(String str) {
        double meter = readMeter(this.binding.tvAH);
        double meter2 = readMeter(this.binding.tvAR);
        double meter3 = readMeter(this.binding.tvAL);
        double meter4 = readMeter(this.binding.tvLRMode1);
        if (!checkRequired(meter) || !checkRequired(meter2) || !checkRequired(meter3) || !checkRequired(meter4)) {
            return false;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.name = str;
        excavatorEntity.deviceHeight = meter;
        excavatorEntity.rigthDist = meter2;
        excavatorEntity.leftDist = meter3;
        excavatorEntity.spanDist = meter4;
        return true;
    }

    private boolean checkRequired(double d) {
        if (d == 0.0d) {
            showTipDialog(getString(R$string.config_empty), getString(R$string.ok), null);
            return false;
        }
        if (Math.abs(d) >= 0.001d && Math.abs(d) <= 10.0d) {
            return true;
        }
        showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
        return false;
    }

    private boolean hasRecalibrateChanges() {
        if (!TextUtils.equals(this.initName, this.binding.edtName.getText() != null ? this.binding.edtName.getText().toString().trim() : "")) {
            return true;
        }
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            return (sameMeter(this.binding.tvAH, this.excavatorEntity.deviceHeight) && sameMeter(this.binding.tvAR, this.excavatorEntity.rigthDist) && sameMeter(this.binding.tvAL, this.excavatorEntity.leftDist) && sameMeter(this.binding.tvLRMode1, this.excavatorEntity.spanDist)) ? false : true;
        }
        boolean zIsDistanceBucketMeasureFlow = this.excavatorEntity.isDistanceBucketMeasureFlow();
        if (!sameMeter(this.binding.tvHA, this.excavatorEntity.HA) || !sameMeter(this.binding.tvPq, this.excavatorEntity.pq) || !sameMeter(this.binding.tvDx, this.excavatorEntity.Dx) || !sameMeter(this.binding.tvAD, this.excavatorEntity.AD) || !sameMeter(this.binding.tvBC, this.excavatorEntity.BC) || !sameMeter(this.binding.tvCD, this.excavatorEntity.CD) || (!zIsDistanceBucketMeasureFlow && (!sameMeter(this.binding.tvAy, this.excavatorEntity.Ay) || !sameMeter(this.binding.tvAx, this.excavatorEntity.Ax) || !sameMeter(this.binding.tvBD, this.excavatorEntity.BD)))) {
            return true;
        }
        LayoutExcavatorDetailBucketParamsBinding bucketParamsBinding = getBucketParamsBinding();
        if (bucketParamsBinding == null) {
            return false;
        }
        return this.excavatorEntity.resolveDiagramDistanceMeasure() ? (sameMeter(bucketParamsBinding.tvG1, this.excavatorEntity.getNT()) && sameMeter(bucketParamsBinding.tvG2, this.excavatorEntity.getAT()) && sameMeter(bucketParamsBinding.tvG3, this.excavatorEntity.getNA()) && sameMeter(bucketParamsBinding.tvLRMode23, this.excavatorEntity.getLy() * 2.0d) && sameMeter(bucketParamsBinding.tvAB, this.excavatorEntity.getAB())) ? false : true : (sameMeter(bucketParamsBinding.tvG1, this.excavatorEntity.getG1()) && sameMeter(bucketParamsBinding.tvG2, this.excavatorEntity.getG2()) && sameMeter(bucketParamsBinding.tvG3, this.excavatorEntity.getG3()) && sameMeter(bucketParamsBinding.tvLRMode23, this.excavatorEntity.getLy() * 2.0d) && sameMeter(bucketParamsBinding.tvAB, this.excavatorEntity.getAB())) ? false : true;
    }

    private boolean sameMeter(TextView textView, double d) {
        return Math.abs(readMeter(textView) - formatOtherToMeter(getDisplayUnit(), formatMetertoOther(getDisplayUnit(), d, 3), 3)) < 1.0E-9d;
    }

    private double readMeter(TextView textView) {
        if (textView instanceof NumericEditText) {
            return formatOtherToMeter(getDisplayUnit(), ((NumericEditText) textView).getNumericValue(), 3);
        }
        CharSequence text = textView != null ? textView.getText() : null;
        if (text != null && !text.toString().trim().isEmpty()) {
            try {
                return formatOtherToMeter(getDisplayUnit(), Double.parseDouble(text.toString().trim()), 3);
            } catch (NumberFormatException unused) {
            }
        }
        return 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startRecalibrate() {
        /*
            r6 = this;
            boolean r0 = r6.recalibrating
            if (r0 != 0) goto Le2
            com.qianhe.baselib.bean.ExcavatorEntity r0 = r6.excavatorEntity
            if (r0 != 0) goto La
            goto Le2
        La:
            boolean r0 = r6.hasRecalibrateChanges()
            if (r0 != 0) goto L1a
            int r0 = com.qianhe.yct.R$string.no_modify_content
            java.lang.String r0 = r6.getString(r0)
            r6.showToastDialog(r0)
            return
        L1a:
            com.qianhe.baselib.bean.ExcavatorEntity r0 = r6.excavatorEntity
            com.qianhe.baselib.bean.ExcavatorEntity r0 = copyExcavator(r0)
            r6.recalibrateSnapshot = r0
            r0 = 0
            r6.pendingRecalibrateBucket = r0
            boolean r1 = r6.applyRecalibrateInputs()
            if (r1 != 0) goto L2e
            r6.recalibrateSnapshot = r0
            return
        L2e:
            r6.hideSoftInput()
            int r1 = com.qianhe.yct.R$string.please_wait
            java.lang.String r1 = r6.getString(r1)
            r6.showLoadingDialog(r1)
            r1 = 1
            r6.recalibrating = r1
            com.qianhe.baselib.bean.ExcavatorEntity r2 = r6.excavatorEntity
            java.lang.String r3 = "local"
            com.qianhe.yct.utils.CalibrateSessionHelper.beginFreshForExcavator(r6, r2, r3)
            com.qianhe.baselib.bean.ExcavatorEntity r2 = r6.excavatorEntity
            int r2 = r2.mode
            com.qianhe.yct.enums.ExcavatorCalibrateModeEnum r3 = com.qianhe.yct.enums.ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT
            int r3 = r3.getMode()
            r4 = 0
            if (r2 != r3) goto L53
            r2 = 1
            goto L54
        L53:
            r2 = 0
        L54:
            if (r2 != 0) goto L68
            java.lang.String r3 = r6.initMeasureParams
            com.qianhe.baselib.bean.ExcavatorEntity r5 = r6.excavatorEntity
            java.lang.String r5 = r5.measureParams
            if (r5 == 0) goto L5f
            goto L61
        L5f:
            java.lang.String r5 = ""
        L61:
            boolean r3 = android.text.TextUtils.equals(r3, r5)
            if (r3 != 0) goto L68
            goto L69
        L68:
            r1 = 0
        L69:
            r6.recalibrateNewBucketName = r0
            if (r1 == 0) goto Ld0
            java.lang.String r0 = r6.generateRecalibrateBucketName()     // Catch: java.lang.Exception -> L74
            r6.recalibrateNewBucketName = r0     // Catch: java.lang.Exception -> L74
            goto Ld0
        L74:
            r0 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "生成重新标定铲斗名称失败："
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            com.qianhe.baselib.utils.CalibrateLogToFile.e(r0)
            java.lang.String r0 = r6.initBucketName
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L95
            java.lang.String r0 = r6.initBucketName
            goto L99
        L95:
            com.qianhe.baselib.bean.ExcavatorEntity r0 = r6.excavatorEntity
            java.lang.String r0 = r0.name
        L99:
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto La5
            int r0 = com.qianhe.yct.R$string.shovel
            java.lang.String r0 = r6.getString(r0)
        La5:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            int r0 = com.qianhe.yct.R$string.bucket_recalibrate_name_mark
            java.lang.String r0 = r6.getString(r0)
            r3.append(r0)
            java.lang.String r0 = "1-"
            r3.append(r0)
            long r4 = java.lang.System.currentTimeMillis()
            r3.append(r4)
            java.lang.String r0 = r3.toString()
            java.lang.String r3 = "_"
            java.lang.String r4 = "-"
            java.lang.String r0 = r0.replace(r3, r4)
            r6.recalibrateNewBucketName = r0
        Ld0:
            if (r2 == 0) goto Ld5
            r6.recordRecalibrateMode1Input()
        Ld5:
            java.lang.Thread r0 = new java.lang.Thread
            com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda5 r3 = new com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda5
            r3.<init>()
            r0.<init>(r3)
            r0.start()
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity.startRecalibrate():void");
    }

    public static /* synthetic */ void $r8$lambda$7BzQwtKz_33KPF9r8cLW6dfsURw(final ExcavatorDetailActivity excavatorDetailActivity, final boolean z, boolean z2) {
        final ExcavatorCalibHelper.Result resultMakeToolParam = z ? ExcavatorCalibHelper.makeToolParam(excavatorDetailActivity.excavatorEntity) : null;
        if (z) {
            excavatorDetailActivity.getClass();
            if (resultMakeToolParam == null || !resultMakeToolParam.isSuccess()) {
                excavatorDetailActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        ExcavatorDetailActivity.m1651$r8$lambda$k44aMcudl0ZsF92luNX_Txk6Gk(this.f$0, resultMakeToolParam);
                    }
                });
                return;
            }
        }
        if (!z2) {
            excavatorDetailActivity.recordRecalibratePreCalibEvents();
        }
        final ExcavatorCalibHelper.Result resultCalibrateFromSavedInputs = ExcavatorCalibHelper.calibrateFromSavedInputs(excavatorDetailActivity.excavatorEntity);
        excavatorDetailActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorDetailActivity.m1648$r8$lambda$8AsebPif7CldihNJxWnuVpRDU(this.f$0, resultCalibrateFromSavedInputs, z, resultMakeToolParam);
            }
        });
    }

    /* renamed from: $r8$lambda$k44aMcudl0ZsF9-2luNX_Txk6Gk, reason: not valid java name */
    public static /* synthetic */ void m1651$r8$lambda$k44aMcudl0ZsF92luNX_Txk6Gk(ExcavatorDetailActivity excavatorDetailActivity, ExcavatorCalibHelper.Result result) {
        excavatorDetailActivity.cancelLoadingDialog();
        excavatorDetailActivity.recalibrating = false;
        StringBuilder sb = new StringBuilder();
        sb.append("重新标定生成铲斗参数失败，code=");
        sb.append(result != null ? result.code : -1);
        CalibrateLogToFile.e(sb.toString());
        excavatorDetailActivity.endRecalibrateSession(false, null);
        excavatorDetailActivity.rollbackRecalibrateLocalState();
        excavatorDetailActivity.showTipDialog(excavatorDetailActivity.getString(R$string.shovel_parameter_generation_failed), excavatorDetailActivity.getString(R$string.ok), null);
    }

    /* renamed from: $r8$lambda$-8AsebPif7CldihNJxW-nuVpRDU, reason: not valid java name */
    public static /* synthetic */ void m1648$r8$lambda$8AsebPif7CldihNJxWnuVpRDU(ExcavatorDetailActivity excavatorDetailActivity, ExcavatorCalibHelper.Result result, boolean z, ExcavatorCalibHelper.Result result2) {
        excavatorDetailActivity.getClass();
        if (result.isSuccess()) {
            excavatorDetailActivity.onRecalibrateSuccess(result.calibParamsBase64, z, result2 != null ? result2.calibParamsBase64 : null);
            return;
        }
        excavatorDetailActivity.cancelLoadingDialog();
        excavatorDetailActivity.recalibrating = false;
        CalibrateLogToFile.e("重新标定失败，code=" + result.code);
        excavatorDetailActivity.endRecalibrateSession(false, null);
        excavatorDetailActivity.rollbackRecalibrateLocalState();
        excavatorDetailActivity.showTipDialog(excavatorDetailActivity.getString(R$string.calibration_failed_check_unit_or_params), excavatorDetailActivity.getString(R$string.ok), null);
    }

    private void onRecalibrateSuccess(String str, boolean z, String str2) {
        ShovelEntity shovelEntityResolveBucketForCalibId;
        String strBuildCalibParamsId;
        CalibrateLogToFile.i("挖机重新标定成功");
        if (z) {
            shovelEntityResolveBucketForCalibId = buildNewRecalibrateBucket(str2);
            this.pendingRecalibrateBucket = shovelEntityResolveBucketForCalibId;
        } else {
            shovelEntityResolveBucketForCalibId = null;
        }
        if (shovelEntityResolveBucketForCalibId == null) {
            shovelEntityResolveBucketForCalibId = resolveBucketForCalibId(str2);
        }
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(this.excavatorEntity);
        } else {
            strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(this.excavatorEntity, shovelEntityResolveBucketForCalibId);
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.calibParamsId = strBuildCalibParamsId;
        excavatorEntity.calibParams = str;
        excavatorEntity.syncCalibSoInputsToJson();
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginFreshForExcavator(this, this.excavatorEntity, "local");
        }
        recordRecalibrateGoAndSetParam(strBuildCalibParamsId, str);
        boolean zSyncCalibParamsToDevice = syncCalibParamsToDevice(strBuildCalibParamsId, str);
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        CalibrateLogToFile.updateSessionExcavator(excavatorEntity2.localId, excavatorEntity2.name);
        showLoadingDialog(getString(R$string.please_wait));
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("ok", Boolean.TRUE);
        String str3 = this.excavatorEntity.name;
        if (str3 == null) {
            str3 = "";
        }
        jsonObject.addProperty("name", str3);
        jsonObject.addProperty("calib_params_id", strBuildCalibParamsId);
        if (zSyncCalibParamsToDevice) {
            CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObject);
        } else if (YCTApplication.getInstance().isDemo()) {
            CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObject);
            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    ExcavatorDetailActivity.m1650$r8$lambda$abDtmW7hNba3v8jNH3lHg1hKG4(this.f$0);
                }
            }, 300L);
        } else {
            persistRecalibrateResult();
            CalibrateLogToFile.endSession(true, jsonObject, new ExcavatorDetailActivity$$ExternalSyntheticLambda0(this));
        }
    }

    /* renamed from: $r8$lambda$abDtmW7hNb-a3v8jNH3lHg1hKG4, reason: not valid java name */
    public static /* synthetic */ void m1650$r8$lambda$abDtmW7hNba3v8jNH3lHg1hKG4(ExcavatorDetailActivity excavatorDetailActivity) {
        if (excavatorDetailActivity.isDestroyed() || !excavatorDetailActivity.recalibrating) {
            return;
        }
        excavatorDetailActivity.onRecalibrateSetParamEvent(new SetCalibrateParamEvent(DeviceType.ZPY, "#CALIBRATE,,SET_PARAM,OK*3D\r\n"));
    }

    private void onRecalibrateSetParamEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (!this.recalibrating) {
            CalibrateSessionHelper.handleSetParamReplyIfWaiting(setCalibrateParamEvent != null ? setCalibrateParamEvent.line : null, this.mLatestGga, this.mLatestIns, YCTApplication.getInstance().getSensorInfo(), null);
        } else {
            if (setCalibrateParamEvent == null || TextUtils.isEmpty(setCalibrateParamEvent.line) || !setCalibrateParamEvent.line.contains("OK")) {
                onRecalibrateSetParamFailed(setCalibrateParamEvent);
                return;
            }
            persistRecalibrateResult();
            if (CalibrateSessionHelper.handleSetParamReplyIfWaiting(setCalibrateParamEvent.line, this.mLatestGga, this.mLatestIns, YCTApplication.getInstance().getSensorInfo(), null, new ExcavatorDetailActivity$$ExternalSyntheticLambda0(this))) {
                return;
            }
            finishRecalibrateAfterLog();
        }
    }

    private void onRecalibrateSetParamFailed(SetCalibrateParamEvent setCalibrateParamEvent) {
        SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        CalibrateSessionHelper.clearAwaitSetParamReply();
        if (CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.recordSetParamReply(setCalibrateParamEvent != null ? setCalibrateParamEvent.line : null, this.mLatestGga, this.mLatestIns, sensorInfo, null);
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            endRecalibrateSession(false, excavatorEntity != null ? excavatorEntity.calibParamsId : null);
        }
        rollbackRecalibrateLocalState();
        this.recalibrating = false;
        cancelLoadingDialog();
        ActivityExcavatorDetailBinding activityExcavatorDetailBinding = this.binding;
        if (activityExcavatorDetailBinding == null || activityExcavatorDetailBinding.getRoot() == null) {
            showRecalibrateConfigFailedDialog();
        } else {
            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ExcavatorDetailActivity.$r8$lambda$Z1eTiZC8Kiq_tZiaxp5UBT3cVZs(this.f$0);
                }
            }, 100L);
        }
    }

    public static /* synthetic */ void $r8$lambda$Z1eTiZC8Kiq_tZiaxp5UBT3cVZs(ExcavatorDetailActivity excavatorDetailActivity) {
        if (excavatorDetailActivity.isDestroyed()) {
            return;
        }
        excavatorDetailActivity.showRecalibrateConfigFailedDialog();
    }

    private void showRecalibrateConfigFailedDialog() {
        showTipDialog(getString(R$string.config_failed_please_check_params), getString(R$string.ok), null);
    }

    private void persistRecalibrateResult() {
        ShovelEntity shovelEntity = this.pendingRecalibrateBucket;
        if (shovelEntity != null) {
            insertNewRecalibrateBucket(shovelEntity);
            this.pendingRecalibrateBucket = null;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.version++;
        excavatorEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateExcavatorById(this.excavatorEntity);
        this.modifyingExcavator = true;
        NetworkUserLoader.getInstance().modifyExcavator(this.excavatorEntity);
        this.recalibrateSnapshot = null;
    }

    private void rollbackRecalibrateLocalState() {
        this.pendingRecalibrateBucket = null;
        this.recalibrateNewBucketName = null;
        ExcavatorEntity excavatorEntity = this.recalibrateSnapshot;
        if (excavatorEntity != null) {
            this.excavatorEntity = excavatorEntity;
            if (excavatorEntity != null) {
                excavatorEntity.loadCalibSoInputsFromJson();
            }
            this.recalibrateSnapshot = null;
        }
    }

    private static ExcavatorEntity copyExcavator(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return null;
        }
        try {
            Gson gson = new Gson();
            return (ExcavatorEntity) gson.fromJson(gson.toJson(excavatorEntity), ExcavatorEntity.class);
        } catch (Exception unused) {
            return excavatorEntity;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRecalibrateAfterLog() {
        runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorDetailActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorDetailActivity.$r8$lambda$Ms5vzQz3CfEEcRNBZ16qsOlOeTs(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Ms5vzQz3CfEEcRNBZ16qsOlOeTs(ExcavatorDetailActivity excavatorDetailActivity) {
        if (excavatorDetailActivity.isDestroyed() || excavatorDetailActivity.isFinishing()) {
            return;
        }
        excavatorDetailActivity.cancelLoadingDialog();
        excavatorDetailActivity.recalibrating = false;
        Toast.makeText(excavatorDetailActivity, R$string.config_success, 0).show();
        excavatorDetailActivity.finish();
    }

    private ShovelEntity resolveBucketForCalibId(String str) {
        List<ShovelEntity> listQueryShovelByName;
        ShovelEntity shovelEntity = new ShovelEntity();
        shovelEntity.name = !TextUtils.isEmpty(this.initBucketName) ? this.initBucketName : this.excavatorEntity.name;
        if (!TextUtils.isEmpty(str)) {
            shovelEntity.param = str;
            return shovelEntity;
        }
        if (!TextUtils.isEmpty(shovelEntity.name) && (listQueryShovelByName = this.mDatabaseManager.queryShovelByName(shovelEntity.name)) != null && !listQueryShovelByName.isEmpty()) {
            shovelEntity.param = listQueryShovelByName.get(0).param;
        }
        return shovelEntity;
    }

    private ShovelEntity buildNewRecalibrateBucket(String str) {
        String strGenerateRecalibrateBucketName = !TextUtils.isEmpty(this.recalibrateNewBucketName) ? this.recalibrateNewBucketName : generateRecalibrateBucketName();
        if (TextUtils.isEmpty(strGenerateRecalibrateBucketName)) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        ShovelEntity shovelEntity = new ShovelEntity();
        shovelEntity.name = strGenerateRecalibrateBucketName;
        applyBucketMeasure(shovelEntity);
        shovelEntity.param = str;
        shovelEntity.mode = this.excavatorEntity.mode;
        shovelEntity.showUnit = getDisplayUnit();
        shovelEntity.createTime = jCurrentTimeMillis;
        shovelEntity.updateTime = jCurrentTimeMillis;
        shovelEntity.version = 1L;
        return shovelEntity;
    }

    private void insertNewRecalibrateBucket(ShovelEntity shovelEntity) {
        if (shovelEntity == null) {
            return;
        }
        if (shovelEntity.localId <= 0) {
            long jInsertShovel = this.mDatabaseManager.insertShovel(shovelEntity);
            shovelEntity.localId = jInsertShovel;
            if (jInsertShovel <= 0) {
                shovelEntity.name = (shovelEntity.name + "-" + System.currentTimeMillis()).replace("_", "-");
                shovelEntity.localId = this.mDatabaseManager.insertShovel(shovelEntity);
            }
        }
        if (shovelEntity.localId <= 0) {
            CalibrateLogToFile.e("重新标定新建铲斗失败，name=" + shovelEntity.name);
            return;
        }
        NetworkUserLoader.getInstance().createBucket(shovelEntity);
        this.excavatorEntity.shovelEntity = shovelEntity;
        CalibrateLogToFile.i("重新标定新建铲斗：" + shovelEntity.name + "，localId=" + shovelEntity.localId);
    }

    private String generateRecalibrateBucketName() {
        String string;
        int recalibrateSerial;
        String string2 = getString(R$string.bucket_recalibrate_name_mark);
        if (TextUtils.isEmpty(string2)) {
            string2 = "(重新标定)";
        }
        if (TextUtils.isEmpty(this.initBucketName)) {
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            string = excavatorEntity != null ? excavatorEntity.name : "";
        } else {
            string = this.initBucketName;
        }
        if (TextUtils.isEmpty(string)) {
            string = getString(R$string.shovel);
        }
        String strStripRecalibrateNameMark = stripRecalibrateNameMark(string, string2);
        if (TextUtils.isEmpty(strStripRecalibrateNameMark)) {
            strStripRecalibrateNameMark = getString(R$string.shovel);
        }
        String strReplace = (strStripRecalibrateNameMark.replace("_", "-") + string2).replace("_", "-");
        List<ShovelEntity> listQueryShovelByName = this.mDatabaseManager.queryShovelByName(null);
        int i = 1;
        if (listQueryShovelByName != null) {
            for (ShovelEntity shovelEntity : listQueryShovelByName) {
                if (shovelEntity != null && !TextUtils.isEmpty(shovelEntity.name) && (recalibrateSerial = parseRecalibrateSerial(shovelEntity.name, strReplace)) >= i) {
                    i = recalibrateSerial + 1;
                }
            }
        }
        String str = strReplace + i;
        for (int i2 = 0; this.mDatabaseManager.isShovelNameExists(str) && i2 < 50; i2++) {
            i++;
            str = strReplace + i;
        }
        if (!this.mDatabaseManager.isShovelNameExists(str)) {
            return str;
        }
        return strReplace + i + "-" + (System.currentTimeMillis() / 1000);
    }

    private static String stripRecalibrateNameMark(String str, String str2) {
        int iLastIndexOf;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            loop0: while (true) {
                for (boolean z = true; z; z = false) {
                    iLastIndexOf = str.lastIndexOf(str2);
                    if (iLastIndexOf < 0) {
                        break loop0;
                    }
                    String strSubstring = str.substring(str2.length() + iLastIndexOf);
                    if (strSubstring.isEmpty() || strSubstring.matches("-?\\d+")) {
                        break;
                    }
                }
                str = str.substring(0, iLastIndexOf);
            }
        }
        return str;
    }

    private static int parseRecalibrateSerial(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str.startsWith(str2)) {
            String strSubstring = str.substring(str2.length());
            if (strSubstring.isEmpty()) {
                return 0;
            }
            for (int i = 0; i < strSubstring.length(); i++) {
                if (!Character.isDigit(strSubstring.charAt(i))) {
                    return -1;
                }
            }
            try {
                return Integer.parseInt(strSubstring);
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    private void applyBucketMeasure(ShovelEntity shovelEntity) {
        if (this.excavatorEntity.resolveDiagramDistanceMeasure()) {
            shovelEntity.setDistanceMeasureValues(this.excavatorEntity.getNT(), this.excavatorEntity.getAT(), this.excavatorEntity.getNA(), this.excavatorEntity.getLy(), this.excavatorEntity.getRy(), this.excavatorEntity.getAB());
        } else {
            shovelEntity.setMeasureValues(this.excavatorEntity.getG1(), this.excavatorEntity.getG2(), this.excavatorEntity.getG3(), this.excavatorEntity.getLy(), this.excavatorEntity.getRy(), this.excavatorEntity.getAB());
        }
    }

    private void recordRecalibratePreCalibEvents() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null && excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            recordRecalibrateMode1Input();
            return;
        }
        recordRecalibrateToolEvents();
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        if (excavatorEntity2 != null && excavatorEntity2.isDistanceBucketMeasureFlow()) {
            recordRecalibrateMode4CollectAndInput();
        } else {
            recordRecalibrateMode23Input();
        }
    }

    private void recordRecalibrateMode1Input() {
        CalibrateSessionHelper.recordMode1Input(this.excavatorEntity, this.mLatestGga, this.mLatestIns, liveSensor());
    }

    private SensorInfoEvent liveSensor() {
        return YCTApplication.getInstance().getSensorInfo();
    }

    private void recordRecalibrateToolEvents() {
        String str;
        SensorInfoEvent sensorInfoEventLiveSensor = liveSensor();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("algo", "tool");
        if (TextUtils.isEmpty(this.recalibrateNewBucketName)) {
            str = this.initBucketName;
            if (str == null) {
                str = "";
            }
        } else {
            str = this.recalibrateNewBucketName;
        }
        jsonObject2.addProperty("bucket", str);
        if (this.excavatorEntity.usesDistanceMeasure()) {
            jsonObject2.addProperty("ab", Double.valueOf(this.excavatorEntity.getAB()));
            jsonObject2.addProperty("at", Double.valueOf(this.excavatorEntity.getAT()));
            jsonObject2.addProperty("an", Double.valueOf(this.excavatorEntity.getNA()));
            jsonObject2.addProperty("nt", Double.valueOf(this.excavatorEntity.getNT()));
            jsonObject2.addProperty("lr", Double.valueOf(this.excavatorEntity.getLy() * 2.0d));
        } else {
            jsonObject2.addProperty("g1", Double.valueOf(this.excavatorEntity.getG1()));
            jsonObject2.addProperty("g2", Double.valueOf(this.excavatorEntity.getG2()));
            jsonObject2.addProperty("g3", Double.valueOf(this.excavatorEntity.getG3()));
            jsonObject2.addProperty("lr", Double.valueOf(this.excavatorEntity.getLy() * 2.0d));
            jsonObject2.addProperty("ab", Double.valueOf(this.excavatorEntity.getAB()));
        }
        jsonObject.add("input", jsonObject2);
        CalibrateSessionHelper.recordCmdWithLive("INPUT", jsonObject, this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null, false);
        JsonObject jsonObject3 = new JsonObject();
        if (this.excavatorEntity.usesDistanceMeasure()) {
            jsonObject3.addProperty("cmd", "LOCAL,tool,fromDistance,AB=" + this.excavatorEntity.getAB() + ",AT=" + this.excavatorEntity.getAT() + ",AN=" + this.excavatorEntity.getNA() + ",NT=" + this.excavatorEntity.getNT() + ",LR=" + (this.excavatorEntity.getLy() * 2.0d));
        } else {
            jsonObject3.addProperty("cmd", "LOCAL,tool,fromMeasure,G1=" + this.excavatorEntity.getG1() + ",G2=" + this.excavatorEntity.getG2() + ",G3=" + this.excavatorEntity.getG3() + ",LR=" + (this.excavatorEntity.getLy() * 2.0d) + ",AB=" + this.excavatorEntity.getAB());
        }
        CalibrateSessionHelper.recordCmdWithLive("MAKE_TOOL", jsonObject3, this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null, false);
    }

    private void recordRecalibrateMode23Input() {
        CalibrateSessionHelper.recordMode23Input(this.excavatorEntity, this.mLatestGga, this.mLatestIns, liveSensor());
    }

    private void recordRecalibrateMode4CollectAndInput() {
        SensorInfoEvent sensorInfoEventLiveSensor = liveSensor();
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        double[][] dArr = excavatorEntity.reDeviceAttitudes;
        double[][] dArr2 = excavatorEntity.reSensorAttitudes;
        String[] strArr = {"sweep1", "sweep2", "sweep3", "sweep4"};
        if (dArr != null) {
            for (int i = 0; i < dArr.length && i < 4; i++) {
                double[] dArr3 = dArr[i];
                if (dArr3 != null && dArr3.length >= 3) {
                    CalibrateSessionHelper.recordCollect(strArr[i], this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null, CalibrateSessionHelper.buildCollectSample(null, insFromRpy(dArr3[0], dArr3[1], dArr3[2]), sensorFromAttitudes(dArr2, i), this.excavatorEntity.phaseToHang));
                }
            }
        }
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        InsNavi insNaviInsFromRpy = insFromRpy(excavatorEntity2.aDeviceRoll, excavatorEntity2.aDevicePitch, excavatorEntity2.aDeviceHeading);
        ExcavatorEntity excavatorEntity3 = this.excavatorEntity;
        CalibrateSessionHelper.recordCollect("hab", this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null, CalibrateSessionHelper.buildCollectSample(null, insNaviInsFromRpy, new SensorInfoEvent(0, excavatorEntity3.bSensorRoll, excavatorEntity3.bSensorPitch, excavatorEntity3.bSensorHeading), this.excavatorEntity.phaseToHang));
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("algo", "caliMode21");
        jsonObject2.addProperty("phase_to_hang", Double.valueOf(this.excavatorEntity.phaseToHang));
        jsonObject2.addProperty("ha", Double.valueOf(this.excavatorEntity.HA));
        jsonObject2.addProperty("hy", Double.valueOf(this.excavatorEntity.pq));
        jsonObject2.addProperty("dx", Double.valueOf(this.excavatorEntity.Dx));
        jsonObject2.addProperty("ad", Double.valueOf(this.excavatorEntity.AD));
        jsonObject2.addProperty("cd", Double.valueOf(this.excavatorEntity.CD));
        jsonObject2.addProperty("bc", Double.valueOf(this.excavatorEntity.BC));
        jsonObject2.add("sweep", CalibrateSessionHelper.buildSweepArrayExcludingDc(this.excavatorEntity.reDeviceAttitudes, 2));
        ExcavatorEntity excavatorEntity4 = this.excavatorEntity;
        jsonObject2.add("a_device", CalibrateSessionHelper.buildRpy(excavatorEntity4.aDeviceRoll, excavatorEntity4.aDevicePitch, excavatorEntity4.aDeviceHeading, true));
        ExcavatorEntity excavatorEntity5 = this.excavatorEntity;
        jsonObject2.add("b_device", CalibrateSessionHelper.buildRpy(excavatorEntity5.bDeviceRoll, excavatorEntity5.bDevicePitch, excavatorEntity5.bDeviceHeading, true));
        ExcavatorEntity excavatorEntity6 = this.excavatorEntity;
        jsonObject2.add("b_sensor", CalibrateSessionHelper.buildRpy(excavatorEntity6.bSensorRoll, excavatorEntity6.bSensorPitch, excavatorEntity6.bSensorHeading, true));
        ExcavatorEntity excavatorEntity7 = this.excavatorEntity;
        jsonObject2.add("dc_device", CalibrateSessionHelper.buildRpy(excavatorEntity7.dcDeviceRoll, excavatorEntity7.dcDevicePitch, excavatorEntity7.dcDeviceHeading, true));
        ExcavatorEntity excavatorEntity8 = this.excavatorEntity;
        jsonObject2.add("dc_sensor", CalibrateSessionHelper.buildRpy(excavatorEntity8.dcSensorRoll, excavatorEntity8.dcSensorPitch, excavatorEntity8.dcSensorHeading, true));
        jsonObject2.add("tool", ExcavatorCalibHelper.buildToolInputJson(this.excavatorEntity));
        jsonObject.add("input", jsonObject2);
        CalibrateSessionHelper.recordCmdWithLive("INPUT", jsonObject, this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null);
    }

    private void recordRecalibrateGoAndSetParam(String str, String str2) {
        SensorInfoEvent sensorInfoEventLiveSensor = liveSensor();
        JsonObject jsonObject = new JsonObject();
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            jsonObject.addProperty("cmd", CalibrateSessionHelper.buildMode1GoCmd(this.excavatorEntity));
        } else if (this.excavatorEntity.isDistanceBucketMeasureFlow()) {
            jsonObject.addProperty("cmd", "LOCAL,caliMode21,sweep=" + CalibrateSessionHelper.countSweepExcludingDc(this.excavatorEntity.reDeviceAttitudes, 2) + ",HA=" + this.excavatorEntity.HA + ",phaseToHang=" + this.excavatorEntity.phaseToHang);
        } else {
            jsonObject.addProperty("cmd", CalibrateSessionHelper.buildMode23GoCmd(this.excavatorEntity));
        }
        CalibrateSessionHelper.recordCmdWithLive("GO", jsonObject, this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("set_param", CalibrateSessionHelper.buildSetParam(str, str2));
        CalibrateSessionHelper.recordCmdWithLive("SET_PARAM", jsonObject2, this.mLatestGga, this.mLatestIns, sensorInfoEventLiveSensor, null);
    }

    private void endRecalibrateSession(boolean z, String str) {
        String str2;
        CalibrateSessionHelper.clearAwaitSetParamReply();
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("ok", Boolean.valueOf(z));
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            if (excavatorEntity == null || (str2 = excavatorEntity.name) == null) {
                str2 = "";
            }
            jsonObject.addProperty("name", str2);
            if (!TextUtils.isEmpty(str)) {
                jsonObject.addProperty("calib_params_id", str);
            }
            CalibrateLogToFile.endSession(z, jsonObject);
        }
    }

    private static InsNavi insFromRpy(double d, double d2, double d3) {
        InsNavi insNavi = new InsNavi();
        insNavi.rollDegrees = d;
        insNavi.pitchDegrees = d2;
        insNavi.headingDegrees = d3;
        return insNavi;
    }

    private static SensorInfoEvent sensorFromAttitudes(double[][] dArr, int i) {
        double[] dArr2;
        if (dArr != null && i >= 0 && i < dArr.length && (dArr2 = dArr[i]) != null && dArr2.length >= 3) {
            return new SensorInfoEvent(0, dArr2[0], dArr2[1], dArr2[2]);
        }
        return new SensorInfoEvent(0, 0.0d, 0.0d, 0.0d);
    }

    private boolean syncCalibParamsToDevice(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || YCTApplication.getInstance().isDemo() || YCTApplication.getInstance().getCurrentDevice().state != BluetoothStateEnum.CONNECTED.getState()) {
            return false;
        }
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,SET_PARAM," + str + "," + str2));
        return true;
    }

    private void hideSoftInput() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager == null || this.binding.edtName.getWindowToken() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.binding.edtName.getWindowToken(), 0);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(ModifyExcavatorResponse modifyExcavatorResponse) {
        int i;
        if (this.modifyingExcavator) {
            this.modifyingExcavator = false;
            if (modifyExcavatorResponse == null || (i = modifyExcavatorResponse.state) == 0 || i == 8000) {
                return;
            }
            showToastDialog(ErrorCodeUtils.getErrorMsg(this, i));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        onRecalibrateSetParamEvent(setCalibrateParamEvent);
    }

    private void bindBucketParams(ExcavatorEntity excavatorEntity) {
        LayoutExcavatorDetailBucketParamsBinding bucketParamsBinding = getBucketParamsBinding();
        if (bucketParamsBinding == null) {
            return;
        }
        if (excavatorEntity.usesAutoGenerateParams()) {
            bucketParamsBinding.lltManualBucketParams.setVisibility(8);
            bucketParamsBinding.lltAutoBucketParams.setVisibility(0);
            showAutoBucketParams(excavatorEntity, bucketParamsBinding);
        } else {
            bucketParamsBinding.lltManualBucketParams.setVisibility(0);
            bucketParamsBinding.lltAutoBucketParams.setVisibility(8);
            showManualBucketParams(excavatorEntity, bucketParamsBinding);
        }
    }

    private void logExcavatorEntity(ExcavatorEntity excavatorEntity) throws JSONException {
        try {
            Gson gson = new Gson();
            JSONObject jSONObject = new JSONObject(gson.toJson(excavatorEntity));
            if (excavatorEntity.usesAutoGenerateParams()) {
                jSONObject.put("measureParams", JSONObject.NULL);
                jSONObject.put("autoGenerateParams", new JSONObject(gson.toJson(excavatorEntity.getAutoGenerateParamsObj())));
            } else {
                jSONObject.put("measureParams", new JSONObject(gson.toJson(excavatorEntity.getMeasureParamsObj())));
                jSONObject.put("autoGenerateParams", JSONObject.NULL);
            }
            LogToFile.i("ExcavatorEntity: " + jSONObject.toString(2));
        } catch (Exception e) {
            LogToFile.e("ExcavatorEntity log failed: " + e);
        }
    }

    private LayoutExcavatorDetailBucketParamsBinding getBucketParamsBinding() {
        LayoutExcavatorDetailBucketParamsBinding layoutExcavatorDetailBucketParamsBinding;
        ActivityExcavatorDetailBinding activityExcavatorDetailBinding = this.binding;
        if (activityExcavatorDetailBinding == null || (layoutExcavatorDetailBucketParamsBinding = activityExcavatorDetailBinding.bucketParams) == null) {
            return null;
        }
        return layoutExcavatorDetailBucketParamsBinding;
    }

    private void showManualBucketParams(ExcavatorEntity excavatorEntity, LayoutExcavatorDetailBucketParamsBinding layoutExcavatorDetailBucketParamsBinding) {
        int displayUnit = getDisplayUnit();
        boolean z = this.recalibrateMode;
        if (excavatorEntity.resolveDiagramDistanceMeasure()) {
            setDetailRowLabel(layoutExcavatorDetailBucketParamsBinding.rowG1, "NT:");
            setDetailRowLabel(layoutExcavatorDetailBucketParamsBinding.rowG2, "AT:");
            setDetailRowLabel(layoutExcavatorDetailBucketParamsBinding.rowG3, "NA:");
            setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowG1, layoutExcavatorDetailBucketParamsBinding.tvG1, displayUnit, excavatorEntity.getNT(), z);
            setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowG2, layoutExcavatorDetailBucketParamsBinding.tvG2, displayUnit, excavatorEntity.getAT(), z);
            setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowG3, layoutExcavatorDetailBucketParamsBinding.tvG3, displayUnit, excavatorEntity.getNA(), z);
        } else {
            setDetailRowLabel(layoutExcavatorDetailBucketParamsBinding.rowG1, "G1:");
            setDetailRowLabel(layoutExcavatorDetailBucketParamsBinding.rowG2, "G2:");
            setDetailRowLabel(layoutExcavatorDetailBucketParamsBinding.rowG3, "G3:");
            setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowG1, layoutExcavatorDetailBucketParamsBinding.tvG1, displayUnit, excavatorEntity.getG1(), z);
            setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowG2, layoutExcavatorDetailBucketParamsBinding.tvG2, displayUnit, excavatorEntity.getG2(), z);
            setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowG3, layoutExcavatorDetailBucketParamsBinding.tvG3, displayUnit, excavatorEntity.getG3(), z);
        }
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowLRMode23, layoutExcavatorDetailBucketParamsBinding.tvLRMode23, displayUnit, excavatorEntity.getLy() * 2.0d, z);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAB, layoutExcavatorDetailBucketParamsBinding.tvAB, displayUnit, excavatorEntity.getAB(), z);
    }

    private void setDetailRowLabel(View view, String str) {
        if (view instanceof ViewGroup) {
            View childAt = ((ViewGroup) view).getChildAt(0);
            if (childAt instanceof TextView) {
                ((TextView) childAt).setText(str);
            }
        }
    }

    private void showAutoBucketParams(ExcavatorEntity excavatorEntity, LayoutExcavatorDetailBucketParamsBinding layoutExcavatorDetailBucketParamsBinding) {
        ShovelAutoGenerateParams autoGenerateParamsObj = excavatorEntity.getAutoGenerateParamsObj();
        int displayUnit = getDisplayUnit();
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoAB, layoutExcavatorDetailBucketParamsBinding.tvAutoAB, displayUnit, autoGenerateParamsObj.AB);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT0x, layoutExcavatorDetailBucketParamsBinding.tvAutoT0x, displayUnit, autoGenerateParamsObj.T0x);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT0y, layoutExcavatorDetailBucketParamsBinding.tvAutoT0y, displayUnit, autoGenerateParamsObj.T0y);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT0z, layoutExcavatorDetailBucketParamsBinding.tvAutoT0z, displayUnit, autoGenerateParamsObj.T0z);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT1x, layoutExcavatorDetailBucketParamsBinding.tvAutoT1x, displayUnit, autoGenerateParamsObj.T1x);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT1y, layoutExcavatorDetailBucketParamsBinding.tvAutoT1y, displayUnit, autoGenerateParamsObj.T1y);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT1z, layoutExcavatorDetailBucketParamsBinding.tvAutoT1z, displayUnit, autoGenerateParamsObj.T1z);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT2x, layoutExcavatorDetailBucketParamsBinding.tvAutoT2x, displayUnit, autoGenerateParamsObj.T2x);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT2y, layoutExcavatorDetailBucketParamsBinding.tvAutoT2y, displayUnit, autoGenerateParamsObj.T2y);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT2z, layoutExcavatorDetailBucketParamsBinding.tvAutoT2z, displayUnit, autoGenerateParamsObj.T2z);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT3x, layoutExcavatorDetailBucketParamsBinding.tvAutoT3x, displayUnit, autoGenerateParamsObj.T3x);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT3y, layoutExcavatorDetailBucketParamsBinding.tvAutoT3y, displayUnit, autoGenerateParamsObj.T3y);
        setDetailParamRow(layoutExcavatorDetailBucketParamsBinding.rowAutoT3z, layoutExcavatorDetailBucketParamsBinding.tvAutoT3z, displayUnit, autoGenerateParamsObj.T3z);
    }

    private void setDetailParamRow(View view, TextView textView, int i, double d) {
        setDetailParamRow(view, textView, i, d, false);
    }

    private void setDetailParamRow(View view, TextView textView, int i, double d, boolean z) {
        if (view == null || textView == null) {
            return;
        }
        if (z || d != 0.0d) {
            view.setVisibility(0);
            textView.setText(formatDouble(formatMetertoOther(i, d, 3)));
        } else {
            view.setVisibility(8);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.mLatestIns = insNavi;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.calibration));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mLatestGga = gGAEntity;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        CalibrateSessionHelper.endAwaitingSessionIfNeeded();
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
