package com.qianhe.yct.activity;

import android.R;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RadioGroup;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$GetContent;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AlertDialog;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentResultListener;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.Gson;
import com.leon.lfilepickerlibrary.LFilePicker;
import com.leon.lfilepickerlibrary.utils.Constant;
import com.qh.yctdevice.GnssParamTransform;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GnssTransParamControlPointEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.manage.GnssParamTransformManager;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ConverParamsControlPointAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.ConverParamsControlPointInput;
import com.qianhe.yct.databinding.ActivityConverParamsCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.ToothView;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ConverParamsCreateActivity extends BaseActivity {
    private ConverParamsControlPointAdapter adapter;
    private ActivityConverParamsCreateBinding binding;
    private boolean cachedFourCalculated;
    private String cachedFourParamsDetail;
    private List<GnssParamTransform.ResidualError> cachedFourResiduals;
    private boolean cachedSevenCalculated;
    private String cachedSevenParamsDetail;
    private List<GnssParamTransform.ResidualError> cachedSevenResiduals;
    private ActivityResultLauncher collectLauncher;
    private ViewTreeObserver.OnGlobalLayoutListener controlInputScrollLayoutListener;
    private List<ConverParamsControlPointInput> controlPointsFourCache;
    private List<ConverParamsControlPointInput> controlPointsSevenCache;
    private ActivityResultLauncher csvImportLauncher;
    private GnssTransParamEntity entity;
    private View focusedControlInput;
    private String initName;
    private List<GnssParamTransform.ResidualError> lastResiduals;
    private long localId;
    private GnssTransParamEntity.FourParamsDetail manualBaselineFour;
    private GnssTransParamEntity.SevenParamsDetail manualBaselineSeven;
    private GnssTransParamEntity.FourParamsDetail manualFourCache;
    private GnssTransParamEntity.SevenParamsDetail manualSevenCache;
    private boolean paramsCalculated;
    private boolean pendingShowNameKeyboard;
    private boolean selectMode;
    private boolean suppressParamTypeSpinnerCallback;
    private final List<ConverParamsControlPointInput> pointList = new ArrayList();
    private int createMode = 0;
    private int pendingCollectPosition = -1;
    private int pendingPickTarget = 0;
    private final Gson gson = new Gson();
    private int lastKeyboardTop = -1;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i;
        this.localId = getIntent().getLongExtra("localId", 0L);
        this.selectMode = getIntent().getBooleanExtra("selectMode", false);
        this.binding = ActivityConverParamsCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        if (this.localId == 0) {
            this.pendingShowNameKeyboard = true;
            i = 34;
        } else {
            this.pendingShowNameKeyboard = false;
            i = 35;
        }
        getWindow().setSoftInputMode(i);
        EventBus.getDefault().register(this);
        if (this.localId > 0) {
            this.entity = DatabaseManager.getInstance(this).queryGnssTransParamByLocalId(this.localId);
        }
        if (this.entity == null) {
            this.entity = new GnssTransParamEntity();
            int intExtra = getIntent().getIntExtra("paramType", 0);
            this.entity.paramType = (intExtra == 1 || intExtra == 2) ? intExtra : 1;
        }
        this.initName = this.entity.name;
        initCollectLauncher();
        initCsvImportLauncher();
        initParamTypeSpinner();
        initCreateMode();
        initControlPoints();
        initControlPointsFromEntity();
        initControlInputKeyboardScroll();
        initListeners();
        loadEntityToUi();
        this.binding.nsv.requestFocus();
        if (this.localId > 0) {
            this.binding.edtName.clearFocus();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            if (this.pendingShowNameKeyboard) {
                this.pendingShowNameKeyboard = false;
                focusNameInputAndShowKeyboard();
            } else if (this.localId > 0) {
                this.binding.edtName.clearFocus();
                this.binding.nsv.requestFocus();
            }
        }
    }

    private void focusNameInputAndShowKeyboard() {
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ConverParamsCreateActivity.m1293$r8$lambda$qtQl4D5bbmCZS90CKaFdG1QdN8(this.f$0);
            }
        });
    }

    /* renamed from: $r8$lambda$q-tQl4D5bbmCZS90CKaFdG1QdN8, reason: not valid java name */
    public static /* synthetic */ void m1293$r8$lambda$qtQl4D5bbmCZS90CKaFdG1QdN8(ConverParamsCreateActivity converParamsCreateActivity) {
        converParamsCreateActivity.binding.edtName.requestFocus();
        Editable text = converParamsCreateActivity.binding.edtName.getText();
        converParamsCreateActivity.binding.edtName.setSelection(text != null ? text.length() : 0);
        InputMethodManager inputMethodManager = (InputMethodManager) converParamsCreateActivity.getSystemService("input_method");
        if (inputMethodManager == null || inputMethodManager.showSoftInput(converParamsCreateActivity.binding.edtName, 1)) {
            return;
        }
        inputMethodManager.toggleSoftInput(2, 0);
    }

    private void initCreateMode() {
        if (this.localId > 0 && this.entity.getControlPointList().isEmpty() && !TextUtils.isEmpty(this.entity.paramsDetail)) {
            this.createMode = 1;
        }
        this.binding.rgCreateMode.check(this.createMode == 1 ? R$id.rbManualInput : R$id.rbControlPoint);
        updateManualParamTypeVisibility();
        updateCreateModeUi();
    }

    private void initCollectLauncher() {
        this.collectLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ConverParamsCreateActivity.$r8$lambda$7zlKuZwBysu3JYcTeveO6Feczoo(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$7zlKuZwBysu3JYcTeveO6Feczoo(ConverParamsCreateActivity converParamsCreateActivity, ActivityResult activityResult) {
        converParamsCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            return;
        }
        Intent data = activityResult.getData();
        double[] doubleArrayExtra = data.getDoubleArrayExtra("ecef");
        double[] doubleArrayExtra2 = data.getDoubleArrayExtra("geodetic");
        if (converParamsCreateActivity.pendingPickTarget == 2 && converParamsCreateActivity.isSevenParam() && doubleArrayExtra != null) {
            converParamsCreateActivity.applyEcefCoords(doubleArrayExtra);
        } else if (doubleArrayExtra2 != null) {
            converParamsCreateActivity.applyGeodeticCoords(doubleArrayExtra2);
        }
    }

    private void initCsvImportLauncher() {
        this.csvImportLauncher = registerForActivityResult(new ActivityResultContracts$GetContent(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda11
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) throws IOException {
                ConverParamsCreateActivity.$r8$lambda$Mi_94Y4dB88TqhmDSQLlznzWmbo(this.f$0, (Uri) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Mi_94Y4dB88TqhmDSQLlznzWmbo(ConverParamsCreateActivity converParamsCreateActivity, Uri uri) throws IOException {
        if (uri != null) {
            converParamsCreateActivity.importControlPointsFromCsv(uri);
        } else {
            converParamsCreateActivity.getClass();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseImportCsvFile() {
        if (YCTApplication.getInstance().isAT80orAT85()) {
            new LFilePicker().withActivity(this).withRequestCode(1001).withTitle(getString(R$string.file_selection)).withMutilyMode(false).withMaxNum(1).withNotFoundBooks(getString(R$string.select_at_least_one_file)).withChooseMode(true).start();
        } else {
            this.csvImportLauncher.launch("*/*");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws IOException {
        ArrayList<String> stringArrayListExtra;
        super.onActivityResult(i, i2, intent);
        if (i != 1001 || i2 != -1 || intent == null || (stringArrayListExtra = intent.getStringArrayListExtra(Constant.RESULT_INFO)) == null || stringArrayListExtra.isEmpty() || TextUtils.isEmpty(stringArrayListExtra.get(0))) {
            return;
        }
        importControlPointsFromCsvPath(stringArrayListExtra.get(0));
    }

    private void initParamTypeSpinner() {
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.simple_spinner_item, new String[]{getString(R$string.four_params), getString(R$string.seven_params)});
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.binding.spParamType.setAdapter((SpinnerAdapter) arrayAdapter);
        this.binding.spParamType.setSelection(this.entity.paramType == 2 ? 1 : 0);
    }

    private void initControlPoints() {
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            this.binding.rcvControlPoints.setLayoutManager(new GridLayoutManager(this, 2));
        } else if (i == 1) {
            this.binding.rcvControlPoints.setLayoutManager(new LinearLayoutManager(this));
        }
        this.binding.rcvControlPoints.setItemAnimator(null);
        this.binding.rcvControlPoints.setDescendantFocusability(WXMediaMessage.MINI_PROGRAM__THUMB_LENGHT);
        this.binding.rcvControlPoints.setFocusable(true);
        this.binding.rcvControlPoints.setFocusableInTouchMode(true);
        ConverParamsControlPointAdapter converParamsControlPointAdapter = new ConverParamsControlPointAdapter(this.pointList);
        this.adapter = converParamsControlPointAdapter;
        converParamsControlPointAdapter.setSevenParamMode(this.entity.paramType == 2);
        this.adapter.setOnInputFocusListener(new ConverParamsControlPointAdapter.OnInputFocusListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda1
            @Override // com.qianhe.yct.adapter.ConverParamsControlPointAdapter.OnInputFocusListener
            public final void onInputFocused(View view) {
                this.f$0.scrollInputAboveKeyboard(view);
            }
        });
        this.adapter.setCallback(new ConverParamsControlPointAdapter.Callback() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity.1
            @Override // com.qianhe.yct.adapter.ConverParamsControlPointAdapter.Callback
            public void onCollectDst(int i2) {
                ConverParamsCreateActivity.this.pendingCollectPosition = i2;
                ConverParamsCreateActivity.this.pendingPickTarget = 1;
                ConverParamsCreateActivity.this.showCollectMethodDialog();
            }

            @Override // com.qianhe.yct.adapter.ConverParamsControlPointAdapter.Callback
            public void onPickKnownPoint(int i2) {
                ConverParamsCreateActivity.this.pendingCollectPosition = i2;
                ConverParamsCreateActivity.this.pendingPickTarget = 2;
                ActivityResultLauncher activityResultLauncher = ConverParamsCreateActivity.this.collectLauncher;
                ConverParamsCreateActivity converParamsCreateActivity = ConverParamsCreateActivity.this;
                activityResultLauncher.launch(PointLibraryIntent.pickPoint(converParamsCreateActivity, true, converParamsCreateActivity.isSevenParam()));
            }

            @Override // com.qianhe.yct.adapter.ConverParamsControlPointAdapter.Callback
            public void onDelete(final int i2) {
                if (ConverParamsCreateActivity.this.pointList.size() <= ConverParamsCreateActivity.this.adapter.getMinPointCount()) {
                    return;
                }
                ConverParamsCreateActivity converParamsCreateActivity = ConverParamsCreateActivity.this;
                converParamsCreateActivity.showTipDialog(converParamsCreateActivity.getString(R$string.delete_control_point_confirm), ConverParamsCreateActivity.this.getString(R$string.confirm), ConverParamsCreateActivity.this.getString(R$string.cancel), (String) null, new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        int i3 = i2;
                        if (i3 < 0 || i3 >= ConverParamsCreateActivity.this.pointList.size() || ConverParamsCreateActivity.this.pointList.size() <= ConverParamsCreateActivity.this.adapter.getMinPointCount()) {
                            return;
                        }
                        ConverParamsCreateActivity.this.pointList.remove(i2);
                        ConverParamsCreateActivity.this.adapter.notifyDataSetChanged();
                        ConverParamsCreateActivity.this.clearCalculatedResult();
                    }
                });
            }

            @Override // com.qianhe.yct.adapter.ConverParamsControlPointAdapter.Callback
            public void onAddPoint() {
                ConverParamsCreateActivity.this.pointList.add(new ConverParamsControlPointInput());
                ConverParamsCreateActivity.this.adapter.notifyItemInserted(ConverParamsCreateActivity.this.pointList.size() - 1);
                ConverParamsCreateActivity.this.clearCalculatedResult();
                ConverParamsCreateActivity.this.scrollToLastControlPointItem();
            }

            @Override // com.qianhe.yct.adapter.ConverParamsControlPointAdapter.Callback
            public void onDataChanged() {
                ConverParamsCreateActivity.this.clearCalculatedResult();
            }
        });
        this.binding.rcvControlPoints.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCollectMethodDialog() {
        View viewInflate = LayoutInflater.from(this).inflate(R$layout.dialog_select_collect_method, (ViewGroup) null);
        ToothView toothView = (ToothView) viewInflate.findViewById(R$id.toothView);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).setCancelable(true).create();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R.color.transparent);
        }
        toothView.setOnToothClickListener(new ToothView.OnToothClickListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda18
            @Override // com.qianhe.yct.view.ToothView.OnToothClickListener
            public final void onToothClick(int i) {
                ConverParamsCreateActivity.m1289$r8$lambda$MMUFG4Mu_7Swbm8sUw3mVMqwCk(this.f$0, alertDialogCreate, i);
            }
        });
        toothView.setOnToothLongClickListener(new ToothView.OnToothLongClickListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda19
            @Override // com.qianhe.yct.view.ToothView.OnToothLongClickListener
            public final void onToothLongClick(int i) {
                ConverParamsCreateActivity.$r8$lambda$DJgahBIaIFWodROvwvkzNQo4_ro(this.f$0, alertDialogCreate, i);
            }
        });
        alertDialogCreate.show();
    }

    /* renamed from: $r8$lambda$MMUFG4Mu_7Swbm8sUw-3mVMqwCk, reason: not valid java name */
    public static /* synthetic */ void m1289$r8$lambda$MMUFG4Mu_7Swbm8sUw3mVMqwCk(ConverParamsCreateActivity converParamsCreateActivity, AlertDialog alertDialog, int i) {
        converParamsCreateActivity.getClass();
        alertDialog.dismiss();
        if (i == 3) {
            converParamsCreateActivity.startPointLibraryDestination();
        } else if (i == 5 || i == 4) {
            converParamsCreateActivity.startInstrumentCollectDestination(false);
        } else {
            converParamsCreateActivity.startCollectDestination(i);
        }
    }

    public static /* synthetic */ void $r8$lambda$DJgahBIaIFWodROvwvkzNQo4_ro(ConverParamsCreateActivity converParamsCreateActivity, AlertDialog alertDialog, int i) {
        converParamsCreateActivity.getClass();
        if (i != 5) {
            return;
        }
        alertDialog.dismiss();
        converParamsCreateActivity.startInstrumentCollectDestination(true);
    }

    private void startCollectDestination(int i) {
        if (this.pendingCollectPosition < 0) {
            return;
        }
        this.pendingPickTarget = 1;
        Intent intent = new Intent(this, (Class<?>) CollectCoordsActivity.class);
        intent.putExtra("toothType", i);
        intent.putExtra("returnGeodetic", true);
        this.collectLauncher.launch(intent);
    }

    private void startInstrumentCollectDestination(boolean z) {
        if (this.pendingCollectPosition < 0) {
            return;
        }
        this.pendingPickTarget = 1;
        BaseActivity.OnInstrumentCollectListener onInstrumentCollectListener = new BaseActivity.OnInstrumentCollectListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda21
            @Override // com.qianhe.yct.base.BaseActivity.OnInstrumentCollectListener
            public final void onResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                ConverParamsCreateActivity.$r8$lambda$0jhH4pX7ru9EEkr4uhMdk39QWHk(this.f$0, instrumentCollectResult);
            }
        };
        if (z) {
            startInstrumentCollectWithPoleHeight(onInstrumentCollectListener);
        } else {
            startInstrumentCollect(onInstrumentCollectListener);
        }
    }

    public static /* synthetic */ void $r8$lambda$0jhH4pX7ru9EEkr4uhMdk39QWHk(ConverParamsCreateActivity converParamsCreateActivity, BaseActivity.InstrumentCollectResult instrumentCollectResult) {
        if (instrumentCollectResult != null) {
            converParamsCreateActivity.getClass();
            double[] dArr = instrumentCollectResult.geodetic;
            if (dArr != null) {
                converParamsCreateActivity.applyGeodeticCoords(dArr);
                return;
            }
        }
        converParamsCreateActivity.resetPendingPick();
    }

    private void startPointLibraryDestination() {
        if (this.pendingCollectPosition < 0) {
            return;
        }
        this.pendingPickTarget = 1;
        this.collectLauncher.launch(PointLibraryIntent.pickPoint(this, true));
    }

    private void initListeners() {
        this.binding.rgCreateMode.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                ConverParamsCreateActivity.$r8$lambda$lyngBrlzaBWGQCSMvrNtckAtCko(this.f$0, radioGroup, i);
            }
        });
        this.binding.spParamType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (ConverParamsCreateActivity.this.suppressParamTypeSpinnerCallback) {
                    return;
                }
                int i2 = i == 1 ? 2 : 1;
                if (ConverParamsCreateActivity.this.entity.paramType != i2) {
                    ConverParamsCreateActivity.this.onParamTypeChanged(i2);
                } else {
                    ConverParamsCreateActivity.this.adapter.setSevenParamMode(i2 == 2);
                    ConverParamsCreateActivity.this.updateManualParamTypeVisibility();
                }
            }
        });
        this.binding.tvImportCsv.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.chooseImportCsvFile();
            }
        });
        this.binding.ivImportCsvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConverParamsCreateActivity converParamsCreateActivity = this.f$0;
                converParamsCreateActivity.showTipDialog(converParamsCreateActivity.getString(R$string.import_control_points_format), converParamsCreateActivity.getString(R$string.ok), null);
            }
        });
        this.binding.tvCalculate.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.calculateParams();
            }
        });
        this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.saveParams();
            }
        });
        getSupportFragmentManager().setFragmentResultListener("defaultname", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda8
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ConverParamsCreateActivity.$r8$lambda$g9o27IBit7W61UItdnw9tOR3Bo0(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$lyngBrlzaBWGQCSMvrNtckAtCko(ConverParamsCreateActivity converParamsCreateActivity, RadioGroup radioGroup, int i) {
        converParamsCreateActivity.getClass();
        int i2 = i == R$id.rbManualInput ? 1 : 0;
        int i3 = converParamsCreateActivity.createMode;
        if (i3 == i2) {
            return;
        }
        if (i3 == 1) {
            converParamsCreateActivity.stashManualParamsToCache(converParamsCreateActivity.entity.paramType);
            converParamsCreateActivity.syncManualParamsFromUiToEntity();
        } else {
            converParamsCreateActivity.stashControlPointStateToCache(converParamsCreateActivity.entity.paramType);
        }
        converParamsCreateActivity.createMode = i2;
        if (i2 == 1) {
            converParamsCreateActivity.syncManualCacheFromEntity(converParamsCreateActivity.entity.paramType);
            converParamsCreateActivity.loadManualParamsToUi();
            converParamsCreateActivity.applyManualCacheToEntity(converParamsCreateActivity.entity.paramType);
            converParamsCreateActivity.captureManualParamsBaselineFromUi();
        } else {
            converParamsCreateActivity.clearCalculatedResult(false);
        }
        converParamsCreateActivity.updateCreateModeUi();
    }

    public static /* synthetic */ void $r8$lambda$g9o27IBit7W61UItdnw9tOR3Bo0(ConverParamsCreateActivity converParamsCreateActivity, String str, Bundle bundle) {
        converParamsCreateActivity.getClass();
        if ("defaultname".equals(str)) {
            boolean z = bundle.getBoolean("confirm");
            boolean z2 = bundle.getBoolean("manual_cancel");
            if (z) {
                converParamsCreateActivity.setDefaultConverParamsName();
            } else if (z2) {
                converParamsCreateActivity.focusNameInputAndShowKeyboard();
            }
        }
    }

    private void loadEntityToUi() {
        if (this.localId > 0) {
            this.binding.edtName.setText(this.entity.name);
            this.binding.edtName.setSelection(this.entity.name.length());
            if (this.createMode == 0 && !TextUtils.isEmpty(this.entity.paramsDetail)) {
                this.lastResiduals = computeResidualsFromCurrentPoints();
                this.paramsCalculated = true;
                this.binding.tvSave.setEnabled(true);
            } else if (this.createMode == 1) {
                this.binding.tvSave.setEnabled(true);
            }
        }
        initParamTypeCachesFromEntity();
        if (this.localId <= 0 || this.createMode != 1) {
            return;
        }
        loadManualParamsToUi();
        captureManualParamsBaselineFromUi();
    }

    private void captureManualParamsBaselineFromUi() {
        stashManualParamsToCache(this.entity.paramType);
        applyManualCacheToEntity(this.entity.paramType);
        if (this.entity.paramType == 2) {
            this.manualBaselineSeven = copySevenDetail(this.manualSevenCache);
            this.manualBaselineFour = null;
        } else {
            this.manualBaselineFour = copyFourDetail(this.manualFourCache);
            this.manualBaselineSeven = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onParamTypeChanged(int i) {
        int i2 = this.entity.paramType;
        if (this.createMode == 1) {
            stashManualParamsToCache(i2);
        } else {
            stashControlPointStateToCache(i2);
        }
        this.entity.paramType = i;
        if (this.createMode == 1) {
            loadManualParamsToUi();
            applyManualCacheToEntity(i);
            captureManualParamsBaselineFromUi();
        } else {
            restoreControlPointStateFromCache(i);
            if (this.paramsCalculated) {
                showCalculatedResult();
            } else {
                this.binding.lltResult.setVisibility(8);
            }
            this.binding.tvSave.setEnabled(this.paramsCalculated);
        }
        this.adapter.setSevenParamMode(i == 2);
        updateManualParamTypeVisibility();
    }

    private void initParamTypeCachesFromEntity() {
        GnssTransParamEntity gnssTransParamEntity = this.entity;
        if (gnssTransParamEntity.paramType == 2) {
            this.manualSevenCache = copySevenDetail(gnssTransParamEntity.getSevenParamsDetail());
            this.controlPointsSevenCache = clonePointList(this.pointList);
            this.cachedSevenParamsDetail = this.entity.paramsDetail;
            this.cachedSevenCalculated = this.paramsCalculated;
            this.cachedSevenResiduals = this.lastResiduals;
            return;
        }
        this.manualFourCache = copyFourDetail(gnssTransParamEntity.getFourParamsDetail());
        this.controlPointsFourCache = clonePointList(this.pointList);
        this.cachedFourParamsDetail = this.entity.paramsDetail;
        this.cachedFourCalculated = this.paramsCalculated;
        this.cachedFourResiduals = this.lastResiduals;
    }

    private void applyManualCacheToEntity(int i) {
        GnssTransParamEntity.FourParamsDetail fourParamsDetail;
        GnssTransParamEntity.SevenParamsDetail sevenParamsDetail;
        if (i == 2 && (sevenParamsDetail = this.manualSevenCache) != null) {
            this.entity.setSevenParamsDetail(sevenParamsDetail);
        } else {
            if (i != 1 || (fourParamsDetail = this.manualFourCache) == null) {
                return;
            }
            this.entity.setFourParamsDetail(fourParamsDetail);
        }
    }

    private void syncManualCacheFromEntity(int i) {
        if (i == 2) {
            this.manualSevenCache = copySevenDetail(this.entity.getSevenParamsDetail());
        } else {
            this.manualFourCache = copyFourDetail(this.entity.getFourParamsDetail());
        }
    }

    private void stashManualParamsToCache(int i) {
        if (i == 2) {
            this.manualSevenCache = readSevenParamsFromUi();
        } else {
            this.manualFourCache = readFourParamsFromUi();
        }
    }

    private void stashControlPointStateToCache(int i) {
        this.adapter.syncVisiblePointsFromViews(this.binding.rcvControlPoints);
        if (i == 2) {
            this.controlPointsSevenCache = clonePointList(this.pointList);
            this.cachedSevenParamsDetail = this.entity.paramsDetail;
            this.cachedSevenCalculated = this.paramsCalculated;
            this.cachedSevenResiduals = this.lastResiduals;
            return;
        }
        this.controlPointsFourCache = clonePointList(this.pointList);
        this.cachedFourParamsDetail = this.entity.paramsDetail;
        this.cachedFourCalculated = this.paramsCalculated;
        this.cachedFourResiduals = this.lastResiduals;
    }

    private void restoreControlPointStateFromCache(int i) {
        List<ConverParamsControlPointInput> list = i == 2 ? this.controlPointsSevenCache : this.controlPointsFourCache;
        this.pointList.clear();
        if (list != null) {
            this.pointList.addAll(clonePointList(list));
        } else {
            resetPointsForParamType(i == 2);
        }
        this.entity.paramsDetail = i == 2 ? this.cachedSevenParamsDetail : this.cachedFourParamsDetail;
        this.paramsCalculated = i == 2 ? this.cachedSevenCalculated : this.cachedFourCalculated;
        this.lastResiduals = i == 2 ? this.cachedSevenResiduals : this.cachedFourResiduals;
        this.adapter.setSevenParamMode(i == 2);
        this.adapter.notifyDataSetChanged();
    }

    private void updateCurrentParamTypeCache() {
        if (this.createMode == 1) {
            stashManualParamsToCache(this.entity.paramType);
        } else {
            stashControlPointStateToCache(this.entity.paramType);
        }
    }

    private static GnssTransParamEntity.FourParamsDetail copyFourDetail(GnssTransParamEntity.FourParamsDetail fourParamsDetail) {
        if (fourParamsDetail == null) {
            return null;
        }
        GnssTransParamEntity.FourParamsDetail fourParamsDetail2 = new GnssTransParamEntity.FourParamsDetail();
        fourParamsDetail2.dx = fourParamsDetail.dx;
        fourParamsDetail2.dy = fourParamsDetail.dy;
        fourParamsDetail2.rotation = fourParamsDetail.rotation;
        fourParamsDetail2.scale = fourParamsDetail.scale;
        return fourParamsDetail2;
    }

    private static GnssTransParamEntity.SevenParamsDetail copySevenDetail(GnssTransParamEntity.SevenParamsDetail sevenParamsDetail) {
        if (sevenParamsDetail == null) {
            return null;
        }
        GnssTransParamEntity.SevenParamsDetail sevenParamsDetail2 = new GnssTransParamEntity.SevenParamsDetail();
        sevenParamsDetail2.dx = sevenParamsDetail.dx;
        sevenParamsDetail2.dy = sevenParamsDetail.dy;
        sevenParamsDetail2.dz = sevenParamsDetail.dz;
        sevenParamsDetail2.rx = sevenParamsDetail.rx;
        sevenParamsDetail2.ry = sevenParamsDetail.ry;
        sevenParamsDetail2.rz = sevenParamsDetail.rz;
        sevenParamsDetail2.scale = sevenParamsDetail.scale;
        return sevenParamsDetail2;
    }

    private static List<ConverParamsControlPointInput> clonePointList(List<ConverParamsControlPointInput> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (ConverParamsControlPointInput converParamsControlPointInput : list) {
                ConverParamsControlPointInput converParamsControlPointInput2 = new ConverParamsControlPointInput();
                converParamsControlPointInput2.srcX = converParamsControlPointInput.srcX;
                converParamsControlPointInput2.srcY = converParamsControlPointInput.srcY;
                converParamsControlPointInput2.srcZ = converParamsControlPointInput.srcZ;
                converParamsControlPointInput2.dstX = converParamsControlPointInput.dstX;
                converParamsControlPointInput2.dstY = converParamsControlPointInput.dstY;
                converParamsControlPointInput2.dstZ = converParamsControlPointInput.dstZ;
                arrayList.add(converParamsControlPointInput2);
            }
        }
        return arrayList;
    }

    private GnssTransParamEntity.FourParamsDetail readFourParamsFromUi() {
        GnssTransParamEntity.FourParamsDetail fourParamsDetail = new GnssTransParamEntity.FourParamsDetail();
        fourParamsDetail.dx = this.binding.edtManualDx.getNumericValue();
        fourParamsDetail.dy = this.binding.edtManualDy.getNumericValue();
        fourParamsDetail.rotation = this.binding.edtManualRotation.getNumericValue();
        fourParamsDetail.scale = GnssTransParamEntity.scalePpmToK(this.binding.edtManualScale.getNumericValue());
        return fourParamsDetail;
    }

    private GnssTransParamEntity.SevenParamsDetail readSevenParamsFromUi() {
        GnssTransParamEntity.SevenParamsDetail sevenParamsDetail = new GnssTransParamEntity.SevenParamsDetail();
        sevenParamsDetail.dx = this.binding.edtManualDx.getNumericValue();
        sevenParamsDetail.dy = this.binding.edtManualDy.getNumericValue();
        sevenParamsDetail.dz = this.binding.edtManualDz.getNumericValue();
        sevenParamsDetail.rx = this.binding.edtManualRx.getNumericValue();
        sevenParamsDetail.ry = this.binding.edtManualRy.getNumericValue();
        sevenParamsDetail.rz = this.binding.edtManualRz.getNumericValue();
        sevenParamsDetail.scale = GnssTransParamEntity.scalePpmToK(this.binding.edtManualScale.getNumericValue());
        return sevenParamsDetail;
    }

    private void updateCreateModeUi() {
        boolean z = this.createMode == 1;
        this.binding.llControlPointSection.setVisibility(z ? 8 : 0);
        this.binding.llManualParams.setVisibility(z ? 0 : 8);
        this.binding.tvCalculate.setVisibility(z ? 8 : 0);
        if (z) {
            this.binding.lltResult.setVisibility(8);
            this.binding.tvSave.setEnabled(true);
        } else {
            this.binding.lltResult.setVisibility(this.paramsCalculated ? 0 : 8);
            this.binding.tvSave.setEnabled(this.paramsCalculated);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateManualParamTypeVisibility() {
        boolean zIsSevenParam = isSevenParam();
        this.binding.lltManualDz.setVisibility(zIsSevenParam ? 0 : 8);
        this.binding.lltManualRotation.setVisibility(zIsSevenParam ? 8 : 0);
        this.binding.lltManualRx.setVisibility(zIsSevenParam ? 0 : 8);
        this.binding.lltManualRy.setVisibility(zIsSevenParam ? 0 : 8);
        this.binding.lltManualRz.setVisibility(zIsSevenParam ? 0 : 8);
    }

    private void loadManualParamsToUi() {
        if (this.entity.paramType == 2) {
            GnssTransParamEntity.SevenParamsDetail sevenParamsDetail = this.manualSevenCache;
            this.binding.edtManualDx.setText(formatManualValue(sevenParamsDetail != null ? sevenParamsDetail.dx : 0.0d));
            this.binding.edtManualDy.setText(formatManualValue(sevenParamsDetail != null ? sevenParamsDetail.dy : 0.0d));
            this.binding.edtManualDz.setText(formatManualValue(sevenParamsDetail != null ? sevenParamsDetail.dz : 0.0d));
            this.binding.edtManualRx.setText(formatManualValue(sevenParamsDetail != null ? sevenParamsDetail.rx : 0.0d));
            this.binding.edtManualRy.setText(formatManualValue(sevenParamsDetail != null ? sevenParamsDetail.ry : 0.0d));
            this.binding.edtManualRz.setText(formatManualValue(sevenParamsDetail != null ? sevenParamsDetail.rz : 0.0d));
            this.binding.edtManualScale.setText(formatManualValue(sevenParamsDetail != null ? GnssTransParamEntity.normalizeScaleToPpm(sevenParamsDetail.scale) : 0.0d));
            return;
        }
        GnssTransParamEntity.FourParamsDetail fourParamsDetail = this.manualFourCache;
        this.binding.edtManualDx.setText(formatManualValue(fourParamsDetail != null ? fourParamsDetail.dx : 0.0d));
        this.binding.edtManualDy.setText(formatManualValue(fourParamsDetail != null ? fourParamsDetail.dy : 0.0d));
        this.binding.edtManualRotation.setText(formatManualValue(fourParamsDetail != null ? fourParamsDetail.rotation : 0.0d));
        this.binding.edtManualScale.setText(formatManualValue(fourParamsDetail != null ? GnssTransParamEntity.normalizeScaleToPpm(fourParamsDetail.scale) : 0.0d));
    }

    private String formatManualValue(double d) {
        return d == 0.0d ? "0" : String.format(Locale.US, "%.9f", Double.valueOf(d)).replaceAll("0+$", "").replaceAll("\\.$", "");
    }

    private boolean isManualParamsAllDefaultValues() {
        double numericValue = this.binding.edtManualDx.getNumericValue();
        double numericValue2 = this.binding.edtManualDy.getNumericValue();
        double numericValue3 = this.binding.edtManualScale.getNumericValue();
        if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
            if (isSevenParam()) {
                return this.binding.edtManualDz.getNumericValue() == 0.0d && this.binding.edtManualRx.getNumericValue() == 0.0d && this.binding.edtManualRy.getNumericValue() == 0.0d && this.binding.edtManualRz.getNumericValue() == 0.0d;
            }
            if (this.binding.edtManualRotation.getNumericValue() == 0.0d) {
                return true;
            }
        }
        return false;
    }

    private void syncManualParamsFromUiToEntity() {
        stashManualParamsToCache(this.entity.paramType);
        GnssTransParamEntity gnssTransParamEntity = this.entity;
        if (gnssTransParamEntity.paramType == 2) {
            gnssTransParamEntity.setSevenParamsDetail(this.manualSevenCache);
        } else {
            gnssTransParamEntity.setFourParamsDetail(this.manualFourCache);
        }
    }

    private boolean applyManualParamsFromUi() {
        boolean z;
        if (isManualParamsAllDefaultValues()) {
            showToastDialog(getString(R$string.manual_params_default_values));
            return false;
        }
        double numericValue = this.binding.edtManualDx.getNumericValue();
        double numericValue2 = this.binding.edtManualDy.getNumericValue();
        double numericValue3 = this.binding.edtManualScale.getNumericValue();
        if (!isValidCoord(numericValue) || !isValidCoord(numericValue2) || !GnssTransParamEntity.isValidScalePpm(numericValue3)) {
            showToastDialog(getString(R$string.manual_params_incomplete));
            return false;
        }
        if (isSevenParam()) {
            double numericValue4 = this.binding.edtManualDz.getNumericValue();
            double numericValue5 = this.binding.edtManualRx.getNumericValue();
            double numericValue6 = this.binding.edtManualRy.getNumericValue();
            double numericValue7 = this.binding.edtManualRz.getNumericValue();
            if (!isValidCoord(numericValue4) || !isValidCoord(numericValue5) || !isValidCoord(numericValue6) || !isValidCoord(numericValue7)) {
                showToastDialog(getString(R$string.manual_params_incomplete));
                return false;
            }
            GnssTransParamEntity.SevenParamsDetail sevenParamsDetail = new GnssTransParamEntity.SevenParamsDetail();
            sevenParamsDetail.dx = numericValue;
            sevenParamsDetail.dy = numericValue2;
            sevenParamsDetail.dz = numericValue4;
            sevenParamsDetail.rx = numericValue5;
            sevenParamsDetail.ry = numericValue6;
            sevenParamsDetail.rz = numericValue7;
            sevenParamsDetail.scale = GnssTransParamEntity.scalePpmToK(numericValue3);
            if (!isValidSevenParamsDetail(sevenParamsDetail)) {
                showToastDialog(getString(R$string.manual_params_incomplete));
                return false;
            }
            GnssTransParamEntity gnssTransParamEntity = this.entity;
            gnssTransParamEntity.paramType = 2;
            gnssTransParamEntity.setSevenParamsDetail(sevenParamsDetail);
            z = true;
        } else {
            double numericValue8 = this.binding.edtManualRotation.getNumericValue();
            if (!isValidCoord(numericValue8)) {
                showToastDialog(getString(R$string.manual_params_incomplete));
                return false;
            }
            GnssTransParamEntity.FourParamsDetail fourParamsDetail = new GnssTransParamEntity.FourParamsDetail();
            fourParamsDetail.dx = numericValue;
            fourParamsDetail.dy = numericValue2;
            fourParamsDetail.rotation = numericValue8;
            fourParamsDetail.scale = GnssTransParamEntity.scalePpmToK(numericValue3);
            if (!isValidFourParamsDetail(fourParamsDetail)) {
                showToastDialog(getString(R$string.manual_params_incomplete));
                return false;
            }
            GnssTransParamEntity gnssTransParamEntity2 = this.entity;
            z = true;
            gnssTransParamEntity2.paramType = 1;
            gnssTransParamEntity2.setFourParamsDetail(fourParamsDetail);
        }
        if (shouldClearControlPointsOnManualSave()) {
            clearControlPointDataForManualSave();
        }
        return z;
    }

    private boolean shouldClearControlPointsOnManualSave() {
        if (!this.entity.getControlPointList().isEmpty() || hasFilledControlPointInList()) {
            return isManualParamsModifiedFromBaseline();
        }
        return false;
    }

    private boolean isManualParamsModifiedFromBaseline() {
        GnssTransParamEntity.FourParamsDetail fourParamsDetail;
        GnssTransParamEntity.SevenParamsDetail sevenParamsDetail;
        return isSevenParam() ? this.manualBaselineSeven == null || (sevenParamsDetail = this.entity.getSevenParamsDetail()) == null || !isSameSevenParams(this.manualBaselineSeven, sevenParamsDetail) : this.manualBaselineFour == null || (fourParamsDetail = this.entity.getFourParamsDetail()) == null || !isSameFourParams(this.manualBaselineFour, fourParamsDetail);
    }

    private static boolean isSameFourParams(GnssTransParamEntity.FourParamsDetail fourParamsDetail, GnssTransParamEntity.FourParamsDetail fourParamsDetail2) {
        return doubleEquals(fourParamsDetail.dx, fourParamsDetail2.dx) && doubleEquals(fourParamsDetail.dy, fourParamsDetail2.dy) && doubleEquals(fourParamsDetail.rotation, fourParamsDetail2.rotation) && doubleEquals(fourParamsDetail.scale, fourParamsDetail2.scale);
    }

    private static boolean isSameSevenParams(GnssTransParamEntity.SevenParamsDetail sevenParamsDetail, GnssTransParamEntity.SevenParamsDetail sevenParamsDetail2) {
        return doubleEquals(sevenParamsDetail.dx, sevenParamsDetail2.dx) && doubleEquals(sevenParamsDetail.dy, sevenParamsDetail2.dy) && doubleEquals(sevenParamsDetail.dz, sevenParamsDetail2.dz) && doubleEquals(sevenParamsDetail.rx, sevenParamsDetail2.rx) && doubleEquals(sevenParamsDetail.ry, sevenParamsDetail2.ry) && doubleEquals(sevenParamsDetail.rz, sevenParamsDetail2.rz) && doubleEquals(sevenParamsDetail.scale, sevenParamsDetail2.scale);
    }

    private static boolean doubleEquals(double d, double d2) {
        return Math.abs(d - d2) < 1.0E-12d;
    }

    private boolean hasFilledControlPointInList() {
        for (ConverParamsControlPointInput converParamsControlPointInput : this.pointList) {
            if (converParamsControlPointInput != null && (converParamsControlPointInput.srcX != 0.0d || converParamsControlPointInput.srcY != 0.0d || converParamsControlPointInput.srcZ != 0.0d || converParamsControlPointInput.dstX != 0.0d || converParamsControlPointInput.dstY != 0.0d || converParamsControlPointInput.dstZ != 0.0d)) {
                return true;
            }
        }
        return false;
    }

    private void clearControlPointDataForManualSave() {
        this.entity.setControlPointList(new ArrayList());
        this.pointList.clear();
        this.controlPointsFourCache = null;
        this.controlPointsSevenCache = null;
        this.cachedFourCalculated = false;
        this.cachedSevenCalculated = false;
        this.cachedFourResiduals = null;
        this.cachedSevenResiduals = null;
        this.cachedFourParamsDetail = null;
        this.cachedSevenParamsDetail = null;
        this.paramsCalculated = false;
        this.lastResiduals = null;
        ConverParamsControlPointAdapter converParamsControlPointAdapter = this.adapter;
        if (converParamsControlPointAdapter != null) {
            converParamsControlPointAdapter.notifyDataSetChanged();
        }
    }

    private void resetPointsForParamType(boolean z) {
        this.pointList.clear();
        int i = z ? 3 : 2;
        for (int i2 = 0; i2 < i; i2++) {
            this.pointList.add(new ConverParamsControlPointInput());
        }
        ConverParamsControlPointAdapter converParamsControlPointAdapter = this.adapter;
        if (converParamsControlPointAdapter != null) {
            converParamsControlPointAdapter.notifyDataSetChanged();
        }
    }

    private void initControlPointsFromEntity() {
        this.pointList.clear();
        List<GnssTransParamControlPointEntity> controlPointList = this.entity.getControlPointList();
        if (controlPointList.isEmpty()) {
            resetPointsForParamType(this.entity.paramType == 2);
            return;
        }
        for (GnssTransParamControlPointEntity gnssTransParamControlPointEntity : controlPointList) {
            ConverParamsControlPointInput converParamsControlPointInput = new ConverParamsControlPointInput();
            converParamsControlPointInput.srcX = gnssTransParamControlPointEntity.srcX;
            converParamsControlPointInput.srcY = gnssTransParamControlPointEntity.srcY;
            converParamsControlPointInput.srcZ = gnssTransParamControlPointEntity.srcZ;
            converParamsControlPointInput.dstX = gnssTransParamControlPointEntity.dstX;
            converParamsControlPointInput.dstY = gnssTransParamControlPointEntity.dstY;
            converParamsControlPointInput.dstZ = gnssTransParamControlPointEntity.dstZ;
            this.pointList.add(converParamsControlPointInput);
        }
        int i = this.entity.paramType == 2 ? 3 : 2;
        while (this.pointList.size() < i) {
            this.pointList.add(new ConverParamsControlPointInput());
        }
        this.adapter.setSevenParamMode(this.entity.paramType == 2);
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda10
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ConverParamsCreateActivity.$r8$lambda$d_gdYT0z9C1SJ3ohklHrq7KkpO4(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$d_gdYT0z9C1SJ3ohklHrq7KkpO4(ConverParamsCreateActivity converParamsCreateActivity, String str, Bundle bundle) {
        converParamsCreateActivity.getClass();
        if ("back".equals(str) && bundle.getBoolean("confirm")) {
            converParamsCreateActivity.finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        showTipDialog(getString(R$string.exit_page), getString(R$string.confirm), getString(R$string.cancel), (TipsDialogFragment.OnConfirmListener) null, "back");
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    private void applyEcefCoords(double[] dArr) {
        int i;
        if (dArr == null || (i = this.pendingCollectPosition) < 0 || i >= this.pointList.size()) {
            return;
        }
        ConverParamsControlPointInput converParamsControlPointInput = this.pointList.get(this.pendingCollectPosition);
        converParamsControlPointInput.dstX = dArr[0];
        converParamsControlPointInput.dstY = dArr[1];
        converParamsControlPointInput.dstZ = dArr[2];
        this.adapter.notifyItemChanged(this.pendingCollectPosition);
        clearCalculatedResult();
        resetPendingPick();
    }

    private void applyGeodeticCoords(double[] dArr) {
        int i;
        double d;
        double d2;
        double d3;
        if (dArr == null || (i = this.pendingCollectPosition) < 0 || i >= this.pointList.size()) {
            return;
        }
        if (!GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            showToastDialog(getString(R$string.no_engineering_applied));
            resetPendingPick();
            return;
        }
        ConverParamsControlPointInput converParamsControlPointInput = this.pointList.get(this.pendingCollectPosition);
        if (isSevenParam()) {
            double[] dArr2 = new double[3];
            if (!GnssCoordConvertManager.getInstance().geodeticToXyzOnly(dArr[0], dArr[1], dArr[2], dArr2)) {
                showToastDialog(getString(R$string.coord_convert_failed));
                resetPendingPick();
                return;
            } else {
                d = dArr2[0];
                d2 = dArr2[1];
                d3 = dArr2[2];
            }
        } else {
            double[] dArr3 = new double[3];
            if (!GnssCoordConvertManager.getInstance().geoToProjOnly(dArr[0], dArr[1], dArr[2], dArr3)) {
                showToastDialog(getString(R$string.coord_convert_failed));
                resetPendingPick();
                return;
            } else {
                d = dArr3[0];
                d2 = dArr3[1];
                d3 = 0.0d;
            }
        }
        if (this.pendingPickTarget == 2) {
            converParamsControlPointInput.dstX = d;
            converParamsControlPointInput.dstY = d2;
            converParamsControlPointInput.dstZ = d3;
        } else {
            converParamsControlPointInput.srcX = d;
            converParamsControlPointInput.srcY = d2;
            converParamsControlPointInput.srcZ = d3;
        }
        this.adapter.notifyItemChanged(this.pendingCollectPosition);
        clearCalculatedResult();
        resetPendingPick();
    }

    private void resetPendingPick() {
        this.pendingCollectPosition = -1;
        this.pendingPickTarget = 0;
    }

    private void importControlPointsFromCsv(Uri uri) throws IOException {
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
            try {
                if (inputStreamOpenInputStream == null) {
                    showToastDialog(getString(R$string.import_control_points_failed));
                    if (inputStreamOpenInputStream == null) {
                        return;
                    }
                } else {
                    importControlPointsFromStream(inputStreamOpenInputStream);
                }
                inputStreamOpenInputStream.close();
            } finally {
            }
        } catch (IOException unused) {
            showToastDialog(getString(R$string.import_control_points_failed));
        }
    }

    private void importControlPointsFromCsvPath(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            showToastDialog(getString(R$string.import_control_points_failed));
            return;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                importControlPointsFromStream(fileInputStream);
                fileInputStream.close();
            } finally {
            }
        } catch (IOException unused) {
            showToastDialog(getString(R$string.import_control_points_failed));
        }
    }

    private void importControlPointsFromStream(InputStream inputStream) throws IOException {
        ConverParamsControlPointInput importControlPointLine;
        this.adapter.syncVisiblePointsFromViews(this.binding.rcvControlPoints);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty() && (importControlPointLine = parseImportControlPointLine(strTrim)) != null) {
                    arrayList.add(importControlPointLine);
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        bufferedReader.close();
        if (arrayList.isEmpty()) {
            showToastDialog(getString(R$string.import_control_points_failed));
            return;
        }
        stashControlPointStateToCache(this.entity.paramType);
        this.pointList.clear();
        this.pointList.addAll(arrayList);
        int i = isSevenParam() ? 3 : 2;
        while (this.pointList.size() < i) {
            this.pointList.add(new ConverParamsControlPointInput());
        }
        this.adapter.notifyDataSetChanged();
        clearCalculatedResult();
        updateCurrentParamTypeCache();
        if (validateControlPointDistances()) {
            Toast.makeText(this, getString(R$string.import_control_points_success, Integer.valueOf(arrayList.size())), 0).show();
        } else {
            showTipDialog(getString(R$string.control_point_min_distance, 50), getString(R$string.ok), null);
        }
    }

    private ConverParamsControlPointInput parseImportControlPointLine(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length != 3 && strArrSplit.length != 6) {
            return null;
        }
        double[] dArr = new double[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            try {
                dArr[i] = Double.parseDouble(strArrSplit[i].trim());
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        ConverParamsControlPointInput converParamsControlPointInput = new ConverParamsControlPointInput();
        if (strArrSplit.length == 6) {
            converParamsControlPointInput.srcX = dArr[0];
            converParamsControlPointInput.srcY = dArr[1];
            converParamsControlPointInput.srcZ = dArr[2];
            converParamsControlPointInput.dstX = dArr[3];
            converParamsControlPointInput.dstY = dArr[4];
            converParamsControlPointInput.dstZ = dArr[5];
            return converParamsControlPointInput;
        }
        converParamsControlPointInput.dstX = dArr[0];
        converParamsControlPointInput.dstY = dArr[1];
        converParamsControlPointInput.dstZ = dArr[2];
        return converParamsControlPointInput;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSevenParam() {
        return this.binding.spParamType.getSelectedItemPosition() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateParams() {
        this.adapter.syncVisiblePointsFromViews(this.binding.rcvControlPoints);
        performCalculate();
    }

    private void setDefaultConverParamsName() {
        String str;
        List<GnssTransParamEntity> listQueryAllGnssTransParams = DatabaseManager.getInstance(this).queryAllGnssTransParams();
        if (this.localId > 0 && !TextUtils.isEmpty(this.initName)) {
            str = this.initName;
        } else {
            str = getString(R$string.param) + ((listQueryAllGnssTransParams != null ? listQueryAllGnssTransParams.size() : 0) + 1);
            if (DatabaseManager.getInstance(this).isGnssTransParamNameExists(str) && this.entity.localId == 0) {
                str = str + "_" + (System.currentTimeMillis() / 1000);
            }
        }
        this.binding.edtName.setText(str);
        EditText editText = this.binding.edtName;
        editText.setSelection(editText.getText().length());
    }

    private void performCalculate() {
        String str;
        boolean z;
        String strTrim = this.binding.edtName.getText() != null ? this.binding.edtName.getText().toString().trim() : "";
        if (this.pointList.size() < (isSevenParam() ? 3 : 2)) {
            showToastDialog(getString(isSevenParam() ? R$string.seven_param_min_points : R$string.four_param_min_points));
            return;
        }
        if (!validateControlPoints(isSevenParam())) {
            showToastDialog(getString(R$string.control_point_incomplete));
            return;
        }
        if (!validateControlPointDistances()) {
            showTipDialog(getString(R$string.control_point_min_distance, 50), getString(R$string.ok), null);
            return;
        }
        logControlPointsForCalculate(strTrim);
        GnssParamTransform gnssParamTransform = GnssParamTransformManager.getInstance().getGnssParamTransform();
        ArrayList arrayList = new ArrayList();
        if (isSevenParam()) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (ConverParamsControlPointInput converParamsControlPointInput : this.pointList) {
                arrayList2.add(new GnssParamTransform.Point3D(converParamsControlPointInput.srcX, converParamsControlPointInput.srcY, converParamsControlPointInput.srcZ));
                arrayList3.add(new GnssParamTransform.Point3D(converParamsControlPointInput.dstX, converParamsControlPointInput.dstY, converParamsControlPointInput.dstZ));
                strTrim = strTrim;
            }
            str = strTrim;
            GnssParamTransform.SevenParameter sevenParameter = new GnssParamTransform.SevenParameter();
            if (!GnssParamTransform.computeSevenParameters(arrayList2, arrayList3, sevenParameter, arrayList)) {
                showToastDialog(getString(R$string.calculate_params_failed));
                return;
            }
            GnssTransParamEntity.SevenParamsDetail sevenParamsDetail = new GnssTransParamEntity.SevenParamsDetail();
            sevenParamsDetail.dx = sevenParameter.dx;
            sevenParamsDetail.dy = sevenParameter.dy;
            sevenParamsDetail.dz = sevenParameter.dz;
            sevenParamsDetail.rx = sevenParameter.rx;
            sevenParamsDetail.ry = sevenParameter.ry;
            sevenParamsDetail.rz = sevenParameter.rz;
            sevenParamsDetail.scale = sevenParameter.scale;
            if (!isValidSevenParamsDetail(sevenParamsDetail)) {
                showToastDialog(getString(R$string.calculate_params_failed));
                return;
            }
            gnssParamTransform.setSevenParameter(sevenParameter);
            GnssTransParamEntity gnssTransParamEntity = this.entity;
            gnssTransParamEntity.paramType = 2;
            gnssTransParamEntity.setSevenParamsDetail(sevenParamsDetail);
            z = true;
        } else {
            str = strTrim;
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            for (ConverParamsControlPointInput converParamsControlPointInput2 : this.pointList) {
                arrayList4.add(new GnssParamTransform.Point2D(converParamsControlPointInput2.srcX, converParamsControlPointInput2.srcY));
                arrayList5.add(new GnssParamTransform.Point2D(converParamsControlPointInput2.dstX, converParamsControlPointInput2.dstY));
            }
            GnssParamTransform.FourParameter fourParameter = new GnssParamTransform.FourParameter();
            if (!GnssParamTransform.computeFourParameters(arrayList4, arrayList5, fourParameter, arrayList)) {
                showToastDialog(getString(R$string.calculate_params_failed));
                return;
            }
            GnssTransParamEntity.FourParamsDetail fourParamsDetail = new GnssTransParamEntity.FourParamsDetail();
            fourParamsDetail.dx = fourParameter.dx;
            fourParamsDetail.dy = fourParameter.dy;
            fourParamsDetail.rotation = fourParameter.r;
            fourParamsDetail.scale = fourParameter.scale;
            if (!isValidFourParamsDetail(fourParamsDetail)) {
                showToastDialog(getString(R$string.calculate_params_failed));
                return;
            }
            gnssParamTransform.setFourParameter(fourParameter);
            GnssTransParamEntity gnssTransParamEntity2 = this.entity;
            z = true;
            gnssTransParamEntity2.paramType = 1;
            gnssTransParamEntity2.setFourParamsDetail(fourParamsDetail);
        }
        GnssTransParamEntity gnssTransParamEntity3 = this.entity;
        gnssTransParamEntity3.name = str;
        gnssTransParamEntity3.setControlPointList(buildControlPointEntities());
        this.lastResiduals = arrayList;
        this.paramsCalculated = z;
        syncManualCacheFromEntity(this.entity.paramType);
        updateCurrentParamTypeCache();
        GnssCoordConvertManager.getInstance().updateTransParamCache(this.entity);
        showCalculatedResult();
        this.binding.tvSave.setEnabled(z);
    }

    private boolean validateControlPoints(boolean z) {
        for (ConverParamsControlPointInput converParamsControlPointInput : this.pointList) {
            if (z) {
                double d = converParamsControlPointInput.srcX;
                if ((d == 0.0d && converParamsControlPointInput.srcY == 0.0d) || converParamsControlPointInput.dstX == 0.0d || converParamsControlPointInput.dstY == 0.0d || !isValidCoord(d) || !isValidCoord(converParamsControlPointInput.srcY) || !isValidCoord(converParamsControlPointInput.dstX) || !isValidCoord(converParamsControlPointInput.dstY)) {
                    return false;
                }
            } else {
                double d2 = converParamsControlPointInput.srcX;
                if ((d2 == 0.0d && converParamsControlPointInput.srcY == 0.0d) || converParamsControlPointInput.dstX == 0.0d || converParamsControlPointInput.dstY == 0.0d || !isValidCoord(d2) || !isValidCoord(converParamsControlPointInput.srcY) || !isValidCoord(converParamsControlPointInput.dstX) || !isValidCoord(converParamsControlPointInput.dstY)) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean validateControlPointDistances() {
        int i = 0;
        while (i < this.pointList.size()) {
            ConverParamsControlPointInput converParamsControlPointInput = this.pointList.get(i);
            i++;
            int i2 = i;
            while (i2 < this.pointList.size()) {
                ConverParamsControlPointInput converParamsControlPointInput2 = this.pointList.get(i2);
                int i3 = i;
                double dCalculateEcefDistance3D = GeoCoordsDistanceUtils.calculateEcefDistance3D(converParamsControlPointInput.srcX, converParamsControlPointInput.srcY, converParamsControlPointInput.srcZ, converParamsControlPointInput2.srcX, converParamsControlPointInput2.srcY, converParamsControlPointInput2.srcZ);
                LogToFile.i("控制点距离(" + i3 + ")：" + (dCalculateEcefDistance3D / 100.0d) + "米");
                if (Double.isNaN(dCalculateEcefDistance3D) || dCalculateEcefDistance3D * 100.0d < 50.0d) {
                    return false;
                }
                i2++;
                i = i3;
            }
        }
        return true;
    }

    private boolean isValidFourParamsDetail(GnssTransParamEntity.FourParamsDetail fourParamsDetail) {
        return fourParamsDetail != null && isValidCoord(fourParamsDetail.dx) && isValidCoord(fourParamsDetail.dy) && isValidCoord(fourParamsDetail.rotation);
    }

    private boolean isValidSevenParamsDetail(GnssTransParamEntity.SevenParamsDetail sevenParamsDetail) {
        return sevenParamsDetail != null && isValidCoord(sevenParamsDetail.dx) && isValidCoord(sevenParamsDetail.dy) && isValidCoord(sevenParamsDetail.dz) && isValidCoord(sevenParamsDetail.rx) && isValidCoord(sevenParamsDetail.ry) && isValidCoord(sevenParamsDetail.rz);
    }

    private List<GnssTransParamControlPointEntity> buildControlPointEntities() {
        ArrayList arrayList = new ArrayList();
        for (ConverParamsControlPointInput converParamsControlPointInput : this.pointList) {
            GnssTransParamControlPointEntity gnssTransParamControlPointEntity = new GnssTransParamControlPointEntity();
            gnssTransParamControlPointEntity.srcX = converParamsControlPointInput.srcX;
            gnssTransParamControlPointEntity.srcY = converParamsControlPointInput.srcY;
            double d = 0.0d;
            gnssTransParamControlPointEntity.srcZ = isSevenParam() ? converParamsControlPointInput.srcZ : 0.0d;
            gnssTransParamControlPointEntity.dstX = converParamsControlPointInput.dstX;
            gnssTransParamControlPointEntity.dstY = converParamsControlPointInput.dstY;
            if (isSevenParam()) {
                d = converParamsControlPointInput.dstZ;
            }
            gnssTransParamControlPointEntity.dstZ = d;
            arrayList.add(gnssTransParamControlPointEntity);
        }
        return arrayList;
    }

    private void showCalculatedResult() {
        this.binding.lltResult.setVisibility(0);
        this.binding.tvResult.setText(buildResultText());
        scrollToResult();
    }

    public static /* synthetic */ void $r8$lambda$DqL9h7e0owKyDfKcWhArRd370yo(ConverParamsCreateActivity converParamsCreateActivity) {
        NestedScrollView nestedScrollView = converParamsCreateActivity.binding.nsv;
        nestedScrollView.smoothScrollTo(0, nestedScrollView.getChildAt(0).getHeight());
    }

    private void scrollToResult() {
        this.binding.nsv.post(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ConverParamsCreateActivity.$r8$lambda$DqL9h7e0owKyDfKcWhArRd370yo(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToLastControlPointItem() {
        this.binding.rcvControlPoints.post(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                ConverParamsCreateActivity.m1288$r8$lambda$3K3kUgSAtRAxjC22sPlJhnwSzQ(this.f$0);
            }
        });
    }

    /* renamed from: $r8$lambda$3K3kUgSA-tRAxjC22sPlJhnwSzQ, reason: not valid java name */
    public static /* synthetic */ void m1288$r8$lambda$3K3kUgSAtRAxjC22sPlJhnwSzQ(final ConverParamsCreateActivity converParamsCreateActivity) {
        RecyclerView.LayoutManager layoutManager = converParamsCreateActivity.binding.rcvControlPoints.getLayoutManager();
        if (layoutManager == null) {
            return;
        }
        View viewFindViewByPosition = layoutManager.findViewByPosition(converParamsCreateActivity.adapter.getItemCount() - 1);
        if (viewFindViewByPosition == null) {
            converParamsCreateActivity.binding.rcvControlPoints.post(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.scrollToLastControlPointItem();
                }
            });
            return;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        viewFindViewByPosition.getLocationOnScreen(iArr);
        converParamsCreateActivity.binding.nsv.getLocationOnScreen(iArr2);
        int height = iArr[1] + viewFindViewByPosition.getHeight();
        int height2 = iArr2[1] + converParamsCreateActivity.binding.nsv.getHeight();
        if (height > height2) {
            converParamsCreateActivity.binding.nsv.smoothScrollBy(0, height - height2);
            return;
        }
        int i = iArr[1];
        int i2 = iArr2[1];
        if (i < i2) {
            converParamsCreateActivity.binding.nsv.smoothScrollBy(0, i - i2);
        }
    }

    private void initControlInputKeyboardScroll() {
        View decorView = getWindow().getDecorView();
        this.controlInputScrollLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ConverParamsCreateActivity.m1291$r8$lambda$ZviF7xvThEDWQZVoVfsoCe6o(this.f$0);
            }
        };
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.controlInputScrollLayoutListener);
    }

    /* renamed from: $r8$lambda$Zv-iF7-xvThEDWQZVoVf-soCe6o, reason: not valid java name */
    public static /* synthetic */ void m1291$r8$lambda$ZviF7xvThEDWQZVoVfsoCe6o(ConverParamsCreateActivity converParamsCreateActivity) {
        int keyboardTopOnScreen;
        View view = converParamsCreateActivity.focusedControlInput;
        if (view == null || !view.isFocused() || (keyboardTopOnScreen = converParamsCreateActivity.getKeyboardTopOnScreen()) == converParamsCreateActivity.lastKeyboardTop) {
            return;
        }
        converParamsCreateActivity.lastKeyboardTop = keyboardTopOnScreen;
        converParamsCreateActivity.performScrollInputAboveKeyboard(converParamsCreateActivity.focusedControlInput);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollInputAboveKeyboard(final View view) {
        if (view == null) {
            return;
        }
        this.focusedControlInput = view;
        this.lastKeyboardTop = -1;
        performScrollInputAboveKeyboard(view);
        view.post(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performScrollInputAboveKeyboard(view);
            }
        });
        view.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performScrollInputAboveKeyboard(view);
            }
        }, 50L);
        view.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performScrollInputAboveKeyboard(view);
            }
        }, 150L);
        view.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performScrollInputAboveKeyboard(view);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performScrollInputAboveKeyboard(View view) {
        if (view == null || !view.isFocused()) {
            return;
        }
        int i = (int) (getResources().getDisplayMetrics().density * 16.0f);
        int keyboardTopOnScreen = getKeyboardTopOnScreen();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int height = iArr[1] + view.getHeight();
        if (height > keyboardTopOnScreen - i) {
            this.binding.nsv.scrollBy(0, (height - keyboardTopOnScreen) + i);
        }
    }

    private int getKeyboardTopOnScreen() {
        View decorView = getWindow().getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int height = decorView.getRootView().getHeight();
        int i = rect.bottom;
        double d = height;
        return ((double) (height - i)) > 0.12d * d ? i : height - ((int) (d * 0.38d));
    }

    private void logControlPointsForCalculate(String str) {
        String str2;
        String string = getString(isSevenParam() ? R$string.seven_params : R$string.four_params);
        if (TextUtils.isEmpty(str)) {
            str2 = getString(R$string.calculate_params) + " " + string;
        } else {
            str2 = getString(R$string.calculate_params) + " " + string + " [" + str + "]";
        }
        LogToFile.i(str2 + ":\n" + GnssTransParamEntity.formatControlPointsCsv(buildControlPointEntities()));
    }

    private String buildResultText() {
        StringBuilder sb = new StringBuilder(buildParamsSummaryText());
        String strBuildControlPointResidualText = buildControlPointResidualText(this.lastResiduals);
        if (!TextUtils.isEmpty(strBuildControlPointResidualText)) {
            sb.append("\n\n");
            sb.append(strBuildControlPointResidualText);
        }
        return sb.toString();
    }

    private String buildParamsSummaryText() {
        GnssTransParamEntity gnssTransParamEntity = this.entity;
        if (gnssTransParamEntity.paramType == 2) {
            GnssTransParamEntity.SevenParamsDetail sevenParamsDetail = gnssTransParamEntity.getSevenParamsDetail();
            return sevenParamsDetail == null ? "" : String.format(Locale.US, "dx=%.6f\ndy=%.6f\ndz=%.6f\nrx=%.9f\nry=%.9f\nrz=%.9f\n%s=%.6f", Double.valueOf(sevenParamsDetail.dx), Double.valueOf(sevenParamsDetail.dy), Double.valueOf(sevenParamsDetail.dz), Double.valueOf(sevenParamsDetail.rx), Double.valueOf(sevenParamsDetail.ry), Double.valueOf(sevenParamsDetail.rz), getString(R$string.scale_ppm), Double.valueOf(GnssTransParamEntity.normalizeScaleToPpm(sevenParamsDetail.scale)));
        }
        GnssTransParamEntity.FourParamsDetail fourParamsDetail = gnssTransParamEntity.getFourParamsDetail();
        return fourParamsDetail == null ? "" : String.format(Locale.US, "dx=%.6f\ndy=%.6f\nrotation=%.9f\n%s=%.6f", Double.valueOf(fourParamsDetail.dx), Double.valueOf(fourParamsDetail.dy), Double.valueOf(fourParamsDetail.rotation), getString(R$string.scale_ppm), Double.valueOf(GnssTransParamEntity.normalizeScaleToPpm(fourParamsDetail.scale)));
    }

    private String buildControlPointResidualText(List<GnssParamTransform.ResidualError> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        boolean z = this.entity.paramType == 2;
        StringBuilder sb = new StringBuilder(getString(R$string.calc_residual));
        double d = 0.0d;
        int i = 0;
        while (i < list.size()) {
            double dComputeResidualMagnitude = computeResidualMagnitude(list.get(i), z);
            if (dComputeResidualMagnitude > d) {
                d = dComputeResidualMagnitude;
            }
            sb.append('\n');
            i++;
            sb.append(getString(R$string.control_point_index, Integer.valueOf(i)));
            sb.append(": ");
            sb.append(String.format(Locale.US, "%.4f", Double.valueOf(dComputeResidualMagnitude)));
        }
        sb.append('\n');
        sb.append(getString(R$string.calc_max_residual));
        sb.append(": ");
        sb.append(String.format(Locale.US, "%.4f", Double.valueOf(d)));
        return sb.toString();
    }

    private static double computeResidualMagnitude(GnssParamTransform.ResidualError residualError, boolean z) {
        if (z) {
            double d = residualError.x;
            double d2 = residualError.y;
            double d3 = residualError.z;
            return Math.sqrt((d * d) + (d2 * d2) + (d3 * d3));
        }
        double d4 = residualError.x;
        double d5 = residualError.y;
        return Math.sqrt((d4 * d4) + (d5 * d5));
    }

    private List<GnssParamTransform.ResidualError> computeResidualsFromCurrentPoints() {
        if (!this.entity.hasParamsDetail() || this.pointList.isEmpty()) {
            return null;
        }
        GnssParamTransform gnssParamTransform = new GnssParamTransform();
        this.entity.applyToTransform(gnssParamTransform);
        ArrayList arrayList = new ArrayList();
        if (this.entity.paramType == 2) {
            for (ConverParamsControlPointInput converParamsControlPointInput : this.pointList) {
                GnssParamTransform.Point3D point3DTransform3D = gnssParamTransform.transform3D(new GnssParamTransform.Point3D(converParamsControlPointInput.srcX, converParamsControlPointInput.srcY, converParamsControlPointInput.srcZ));
                if (point3DTransform3D == null) {
                    return null;
                }
                GnssParamTransform.ResidualError residualError = new GnssParamTransform.ResidualError();
                residualError.x = point3DTransform3D.x - converParamsControlPointInput.dstX;
                residualError.y = point3DTransform3D.y - converParamsControlPointInput.dstY;
                residualError.z = point3DTransform3D.z - converParamsControlPointInput.dstZ;
                arrayList.add(residualError);
            }
        } else {
            for (ConverParamsControlPointInput converParamsControlPointInput2 : this.pointList) {
                GnssParamTransform.Point2D point2DTransform2D = gnssParamTransform.transform2D(new GnssParamTransform.Point2D(converParamsControlPointInput2.srcX, converParamsControlPointInput2.srcY));
                if (point2DTransform2D == null) {
                    return null;
                }
                GnssParamTransform.ResidualError residualError2 = new GnssParamTransform.ResidualError();
                residualError2.x = point2DTransform2D.x - converParamsControlPointInput2.dstX;
                residualError2.y = point2DTransform2D.y - converParamsControlPointInput2.dstY;
                arrayList.add(residualError2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCalculatedResult() {
        clearCalculatedResult(true);
    }

    private void clearCalculatedResult(boolean z) {
        this.paramsCalculated = false;
        this.lastResiduals = null;
        this.binding.tvSave.setEnabled(false);
        this.binding.lltResult.setVisibility(8);
        if (z) {
            this.entity.paramsDetail = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveParams() {
        String strTrim = this.binding.edtName.getText() != null ? this.binding.edtName.getText().toString().trim() : "";
        if (TextUtils.isEmpty(strTrim)) {
            showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "defaultname");
            return;
        }
        if (this.createMode == 0) {
            if (!this.paramsCalculated) {
                showToastDialog(getString(R$string.please_calculate_first));
                return;
            }
        } else if (!applyManualParamsFromUi()) {
            return;
        }
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByName = DatabaseManager.getInstance(this).queryGnssTransParamByName(strTrim);
        if (gnssTransParamEntityQueryGnssTransParamByName != null && gnssTransParamEntityQueryGnssTransParamByName.localId != this.entity.localId) {
            showToastDialog(getString(R$string.param_name_already_exists));
            return;
        }
        this.entity.name = strTrim;
        if (this.createMode == 0) {
            this.adapter.syncVisiblePointsFromViews(this.binding.rcvControlPoints);
            this.entity.setControlPointList(buildControlPointEntities());
        }
        this.entity.normalizeParamsDetailScaleToK();
        GnssTransParamEntity gnssTransParamEntity = this.entity;
        gnssTransParamEntity.state = 0;
        if (gnssTransParamEntity.localId > 0) {
            gnssTransParamEntity.version++;
            if (DatabaseManager.getInstance(this).updateGnssTransParam(this.entity) <= 0) {
                showToastDialog(getString(R$string.save_failed));
                return;
            }
        } else {
            long jInsertGnssTransParam = DatabaseManager.getInstance(this).insertGnssTransParam(this.entity);
            if (jInsertGnssTransParam <= 0) {
                showToastDialog(getString(R$string.save_failed));
                return;
            }
            this.entity.localId = jInsertGnssTransParam;
        }
        uploadTransParamToServerAsync(this.entity);
        if (this.selectMode) {
            promptEnableAfterCreate(this.entity);
            return;
        }
        if (isAutoCreatedDefaultEngineeringInUse()) {
            Toast.makeText(this, R$string.saved_successfully, 1).show();
            finish();
            return;
        }
        GnssTransParamEntity currentTransParam = GnssCoordConvertManager.getInstance().getCurrentTransParam();
        if (DatabaseManager.getInstance(this).queryCurrentEngineering() != null && (currentTransParam == null || this.localId == 0 || currentTransParam.localId != this.entity.localId)) {
            promptEnableAfterCreate(this.entity);
        } else {
            Toast.makeText(this, R$string.saved_successfully, 1).show();
            finish();
        }
    }

    private boolean isAutoCreatedDefaultEngineeringInUse() {
        EngineeringEntity engineeringEntityQueryCurrentEngineering = DatabaseManager.getInstance(this).queryCurrentEngineering();
        return engineeringEntityQueryCurrentEngineering != null && engineeringEntityQueryCurrentEngineering.id > 0 && engineeringEntityQueryCurrentEngineering.editState != 1 && isDefaultEngineeringName(engineeringEntityQueryCurrentEngineering.name);
    }

    private boolean isDefaultEngineeringName(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.equals(str, getString(R$string.Default))) {
            return true;
        }
        Locale[] localeArr = {Locale.SIMPLIFIED_CHINESE, Locale.TRADITIONAL_CHINESE, Locale.ENGLISH};
        for (int i = 0; i < 3; i++) {
            Locale locale = localeArr[i];
            Configuration configuration = new Configuration(getResources().getConfiguration());
            configuration.setLocale(locale);
            if (TextUtils.equals(str, createConfigurationContext(configuration).getResources().getString(R$string.Default))) {
                return true;
            }
        }
        return false;
    }

    private void promptEnableAfterCreate(final GnssTransParamEntity gnssTransParamEntity) {
        showTipDialog(getString(R$string.want_to_enable_conversion_params), getString(R$string.enable), getString(R$string.cancel), (String) null, new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ConverParamsCreateActivity.3
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                ConverParamsCreateActivity.this.enableConversionParam(gnssTransParamEntity);
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                Toast.makeText(ConverParamsCreateActivity.this, R$string.saved_successfully, 1).show();
                ConverParamsCreateActivity.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableConversionParam(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity == null) {
            finish();
            return;
        }
        if (this.selectMode) {
            Intent intent = new Intent();
            intent.putExtra("localId", gnssTransParamEntity.localId);
            setResult(-1, intent);
            Toast.makeText(this, R$string.config_success, 1).show();
            finish();
            return;
        }
        EngineeringEntity engineeringEntityQueryCurrentEngineering = DatabaseManager.getInstance(this).queryCurrentEngineering();
        if (engineeringEntityQueryCurrentEngineering == null) {
            Toast.makeText(this, R$string.no_engineering_applied, 1).show();
            finish();
            return;
        }
        applyTransParamToEngineering(engineeringEntityQueryCurrentEngineering, gnssTransParamEntity);
        applyTransformParamsToDevice(engineeringEntityQueryCurrentEngineering);
        DatabaseManager.getInstance(this).updateEngineering(engineeringEntityQueryCurrentEngineering);
        if (gnssTransParamEntity.transParamId <= 0 && !TextUtils.isEmpty(UserSession.get().getToken())) {
            NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntity);
        }
        if (engineeringEntityQueryCurrentEngineering.engineeringId > 0) {
            NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntityQueryCurrentEngineering);
        }
        Toast.makeText(this, R$string.config_success, 1).show();
        finish();
    }

    private void applyTransParamToEngineering(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity) {
        engineeringEntity.conversionParamsType = gnssTransParamEntity.paramType;
        engineeringEntity.transParamLocalId = gnssTransParamEntity.localId;
        engineeringEntity.transParamId = gnssTransParamEntity.transParamId;
        engineeringEntity.transParam = gnssTransParamEntity;
    }

    private void applyTransformParamsToDevice(EngineeringEntity engineeringEntity) {
        GnssParamTransform gnssParamTransform = GnssParamTransformManager.getInstance().getGnssParamTransform();
        GnssTransParamEntity gnssTransParamEntityResolveGnssTransParamForEngineering = DatabaseManager.getInstance(this).resolveGnssTransParamForEngineering(engineeringEntity);
        if (gnssTransParamEntityResolveGnssTransParamForEngineering != null) {
            gnssTransParamEntityResolveGnssTransParamForEngineering.applyToTransform(gnssParamTransform);
        }
    }

    private void uploadTransParamToServerAsync(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity == null || gnssTransParamEntity.localId <= 0) {
            return;
        }
        if (gnssTransParamEntity.transParamId > 0) {
            NetworkUserLoader.getInstance().modifyGnssTransParam(gnssTransParamEntity);
        } else {
            NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(this.localId > 0 ? R$string.modify_conver_params : R$string.create_conver_params);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (this.controlInputScrollLayoutListener != null) {
            getWindow().getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(this.controlInputScrollLayoutListener);
        }
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
