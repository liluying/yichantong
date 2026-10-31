package com.qianhe.yct.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentResultListener;
import com.cmcc.sy.hap.sdk.BuildConfig;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.qh.yctdevice.GnssCoordConvert;
import com.qh.yctdevice.GnssParamTransform;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.manage.GnssParamTransformManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.CoordSystemEntity;
import com.qianhe.yct.databinding.ActivityEngineeringCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import com.qianhe.yct.utils.CoordSystemUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.NumericEditText;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class EngineeringCreateActivity extends BaseActivity {
    private ActivityEngineeringCreateBinding binding;
    private List<CoordSystemEntity> builtInCoordSystems;
    private int centralMeridianZoneWidth;
    private ActivityResultLauncher converParamsLauncher;
    private boolean conversionSpinnerUserReady;
    private DatabaseManager databaseManager;
    private boolean defaultEngineeringReadonly;
    private List<EllipsoidOption> ellipsoidOptions;
    private AlertDialog ellipsoidPickerDialog;
    private EngineeringEntity initEntity;
    private int lastProjectionPosition;
    private EngineeringEntity mEntity;
    private GGAEntity mGGA;
    private final Gson gson = new GsonBuilder().setPrettyPrinting().create();
    private int lastConversionSpinnerPosition = 0;

    public static /* synthetic */ boolean $r8$lambda$J7_6obCmpIYhHzp0GTl2AstS2QA(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    public EngineeringCreateActivity() {
        List list = Collections.EMPTY_LIST;
        this.builtInCoordSystems = list;
        this.ellipsoidOptions = list;
        this.centralMeridianZoneWidth = 3;
        this.lastProjectionPosition = -1;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws NoSuchFieldException, SecurityException, NumberFormatException {
        this.binding = ActivityEngineeringCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.databaseManager = DatabaseManager.getInstance(this);
        EngineeringEntity engineeringEntity = (EngineeringEntity) getIntent().getSerializableExtra("engineering");
        this.mEntity = engineeringEntity;
        if (engineeringEntity == null) {
            EngineeringEntity engineeringEntity2 = new EngineeringEntity();
            this.mEntity = engineeringEntity2;
            engineeringEntity2.ellipsoidType = 2;
            Gson gson = this.gson;
            this.initEntity = (EngineeringEntity) gson.fromJson(gson.toJson(engineeringEntity2), EngineeringEntity.class);
            this.binding.topBar.tvTitle.setText(R$string.create_engineering);
        } else {
            EngineeringEntity engineeringEntityQueryEngineeringByLocalId = this.databaseManager.queryEngineeringByLocalId(engineeringEntity.id);
            if (engineeringEntityQueryEngineeringByLocalId != null) {
                this.mEntity = engineeringEntityQueryEngineeringByLocalId;
            }
            Gson gson2 = this.gson;
            this.initEntity = (EngineeringEntity) gson2.fromJson(gson2.toJson(this.mEntity), EngineeringEntity.class);
            this.binding.topBar.tvTitle.setText(R$string.modify_engineering);
            this.binding.edtName.setText(this.mEntity.name);
        }
        this.binding.ivReset.setVisibility(0);
        initConverParamsLauncher();
        initSpinners();
        initConversionParamsSpinner();
        initDataFromEntity();
        initView();
        applyDefaultEngineeringReadonlyUi();
        ConfigLayoutHelper.applyContentDirectionByLanguage(this.binding.nsvContent);
        this.binding.spConversionType.post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.conversionSpinnerUserReady = true;
            }
        });
    }

    private boolean isAutoCreatedDefaultEngineering() {
        EngineeringEntity engineeringEntity = this.mEntity;
        return engineeringEntity != null && engineeringEntity.id > 0 && engineeringEntity.editState != 1 && isDefaultEngineeringName(engineeringEntity.name);
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

    private void applyDefaultEngineeringReadonlyUi() throws NumberFormatException {
        boolean zIsAutoCreatedDefaultEngineering = isAutoCreatedDefaultEngineering();
        this.defaultEngineeringReadonly = zIsAutoCreatedDefaultEngineering;
        this.binding.tvDefaultEngineeringTip.setVisibility(zIsAutoCreatedDefaultEngineering ? 0 : 8);
        this.binding.tvApply.setEnabled(!this.defaultEngineeringReadonly);
        if (this.defaultEngineeringReadonly) {
            ensureDefaultEngineeringCentralMeridian();
            setEditTextReadonly(this.binding.edtName);
            this.binding.ivReset.setVisibility(8);
            this.binding.ivRefresh.setVisibility(8);
            this.binding.ivUtmRefresh.setVisibility(8);
            setEditTextReadonly(this.binding.edtA);
            setEditTextReadonly(this.binding.edtF);
            setEditTextReadonly(this.binding.edtLon0);
            setEditTextReadonly(this.binding.edtLat0);
            setEditTextReadonly(this.binding.edtFalseEasting);
            setEditTextReadonly(this.binding.edtFalseNorthing);
            setEditTextReadonly(this.binding.edtScaleFactor);
            setEditTextReadonly(this.binding.edtUtmZone);
            this.binding.cbIsNorth.setEnabled(false);
            setEditTextReadonly(this.binding.edtProjHeight);
            lockSpinnerInteraction(this.binding.spEllipsoid);
            lockSpinnerInteraction(this.binding.spDeformation);
            lockSpinnerInteraction(this.binding.spProjectionType);
            lockSpinnerInteraction(this.binding.spConversionType);
            this.binding.ivEllipsoidArrow.setVisibility(8);
            this.binding.ivDeformationArrow.setVisibility(8);
            this.binding.ivProjectionArrow.setVisibility(8);
            this.binding.ivConversionTypeArrow.setVisibility(8);
            this.binding.ivConversionSelectArrow.setVisibility(8);
            this.binding.llConversionSelect.setEnabled(false);
            this.binding.llConversionSelect.setClickable(false);
            this.binding.llConversionSelect.setOnClickListener(null);
            this.binding.tvApply.setOnClickListener(null);
        }
    }

    private void setEditTextReadonly(TextView textView) {
        textView.setEnabled(false);
        textView.setFocusable(false);
        textView.setFocusableInTouchMode(false);
        textView.clearFocus();
    }

    private void lockSpinnerInteraction(AdapterView<?> adapterView) {
        adapterView.setClickable(false);
        adapterView.setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return EngineeringCreateActivity.$r8$lambda$J7_6obCmpIYhHzp0GTl2AstS2QA(view, motionEvent);
            }
        });
    }

    private void ensureDefaultEngineeringCentralMeridian() throws NumberFormatException {
        double d;
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams;
        EngineeringEntity.GaussKrugerParams gaussKrugerParams;
        EngineeringEntity engineeringEntity = this.mEntity;
        if (engineeringEntity == null) {
            return;
        }
        int i = engineeringEntity.projectionType;
        if (i == 1 || i == 3) {
            if (i == 1 && (gaussKrugerParams = engineeringEntity.gaussKrugerParams) != null) {
                d = gaussKrugerParams.lon0;
            } else {
                d = (i != 3 || (transverseMercatorParams = engineeringEntity.transverseMercatorParams) == null) ? 0.0d : transverseMercatorParams.lon0;
            }
            if (d != 0.0d) {
                return;
            }
            double dResolveLonForDefaultCentralMeridian = resolveLonForDefaultCentralMeridian();
            if (dResolveLonForDefaultCentralMeridian == 0.0d) {
                return;
            }
            int centralMeridian = getCentralMeridian(dResolveLonForDefaultCentralMeridian);
            EngineeringEntity engineeringEntity2 = this.mEntity;
            if (engineeringEntity2.projectionType == 1) {
                if (engineeringEntity2.gaussKrugerParams == null) {
                    engineeringEntity2.gaussKrugerParams = new EngineeringEntity.GaussKrugerParams();
                }
                this.mEntity.gaussKrugerParams.lon0 = centralMeridian;
            } else {
                if (engineeringEntity2.transverseMercatorParams == null) {
                    engineeringEntity2.transverseMercatorParams = new EngineeringEntity.TransverseMercatorParams();
                }
                this.mEntity.transverseMercatorParams.lon0 = centralMeridian;
            }
            this.binding.edtLon0.setText(formatDouble(centralMeridian));
            this.databaseManager.updateEngineering(this.mEntity);
            if (this.initEntity != null) {
                Gson gson = this.gson;
                this.initEntity = (EngineeringEntity) gson.fromJson(gson.toJson(this.mEntity), EngineeringEntity.class);
            }
            LogToFile.i("默认工程中央子午线已按坐标更新为：" + centralMeridian);
        }
    }

    private double resolveLonForDefaultCentralMeridian() throws NumberFormatException {
        String string = this.mSp.getString("current_coords", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                double d = Double.parseDouble(string.split(",")[0].trim());
                if (d != 0.0d) {
                    return d;
                }
            } catch (Exception unused) {
            }
        }
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity != null) {
            double d2 = gGAEntity.longitude;
            if (d2 != 0.0d) {
                return d2;
            }
        }
        return 0.0d;
    }

    private void initConverParamsLauncher() {
        this.converParamsLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda3
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                EngineeringCreateActivity.$r8$lambda$k4R5tck9R3ydJE3zCyq9R4YOQeo(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$k4R5tck9R3ydJE3zCyq9R4YOQeo(EngineeringCreateActivity engineeringCreateActivity, ActivityResult activityResult) {
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId;
        engineeringCreateActivity.getClass();
        if (activityResult.getResultCode() == -1 && activityResult.getData() != null) {
            long longExtra = activityResult.getData().getLongExtra("localId", 0L);
            if (longExtra > 0 && (gnssTransParamEntityQueryGnssTransParamByLocalId = engineeringCreateActivity.databaseManager.queryGnssTransParamByLocalId(longExtra)) != null) {
                engineeringCreateActivity.applyTransParamToEntity(gnssTransParamEntityQueryGnssTransParamByLocalId);
                int i = gnssTransParamEntityQueryGnssTransParamByLocalId.paramType;
                engineeringCreateActivity.lastConversionSpinnerPosition = i;
                engineeringCreateActivity.binding.spConversionType.setSelection(i, false);
                engineeringCreateActivity.updateConversionSelectVisibility(gnssTransParamEntityQueryGnssTransParamByLocalId.paramType);
            }
        }
        engineeringCreateActivity.syncConversionParamsInfoBar();
    }

    private void initView() {
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EngineeringCreateActivity.$r8$lambda$AN3NiNcBaoe0QJZnpsP8NsGnp14(this.f$0, view);
            }
        });
        this.binding.ivRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NumberFormatException {
                this.f$0.refreshCentralMeridian();
            }
        });
        this.binding.ivUtmRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NumberFormatException {
                this.f$0.refreshUtmZone();
            }
        });
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                EngineeringCreateActivity.this.mEntity.name = editable.toString().trim();
            }
        });
        this.binding.tvApply.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.applyEngineering();
            }
        });
        getSupportFragmentManager().setFragmentResultListener("defaultname", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda10
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                EngineeringCreateActivity.$r8$lambda$D11K3uOvo_5OfIDVydGu5P1vMkw(this.f$0, str, bundle);
            }
        });
        if (!TextUtils.isEmpty(this.mEntity.name)) {
            this.binding.edtName.setText(this.mEntity.name);
        }
        if (this.mEntity.id < 1) {
            this.binding.ivRefresh.performClick();
        }
        if (isAutoCreatedDefaultEngineering()) {
            return;
        }
        setDefaultCursor();
    }

    public static /* synthetic */ void $r8$lambda$AN3NiNcBaoe0QJZnpsP8NsGnp14(EngineeringCreateActivity engineeringCreateActivity, View view) {
        EngineeringEntity engineeringEntity = engineeringCreateActivity.initEntity;
        if (engineeringEntity == null) {
            return;
        }
        String str = engineeringEntity.name;
        if (str == null) {
            str = "";
        }
        engineeringCreateActivity.binding.edtName.setText(str);
        Editable text = engineeringCreateActivity.binding.edtName.getText();
        if (text != null) {
            engineeringCreateActivity.binding.edtName.setSelection(text.length());
        }
    }

    public static /* synthetic */ void $r8$lambda$D11K3uOvo_5OfIDVydGu5P1vMkw(final EngineeringCreateActivity engineeringCreateActivity, String str, Bundle bundle) {
        engineeringCreateActivity.getClass();
        if (str.equals("defaultname")) {
            boolean z = bundle.getBoolean("confirm");
            boolean z2 = bundle.getBoolean("manual_cancel");
            if (z) {
                engineeringCreateActivity.setDefaultName();
            } else if (z2) {
                engineeringCreateActivity.binding.edtName.requestFocus();
                engineeringCreateActivity.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        EngineeringCreateActivity.$r8$lambda$vd6Iz0Kk7FLSr741m1lZXTwhGFk(this.f$0);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$vd6Iz0Kk7FLSr741m1lZXTwhGFk(EngineeringCreateActivity engineeringCreateActivity) {
        InputMethodManager inputMethodManager = (InputMethodManager) engineeringCreateActivity.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(engineeringCreateActivity.binding.edtName, 1);
        }
    }

    private void setDefaultCursor() {
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                EngineeringCreateActivity.$r8$lambda$iafVsfv5RdB7md6zSTUMWijlDoI(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$iafVsfv5RdB7md6zSTUMWijlDoI(EngineeringCreateActivity engineeringCreateActivity) {
        if (!TextUtils.isEmpty(engineeringCreateActivity.mEntity.name)) {
            engineeringCreateActivity.binding.edtName.setSelection(engineeringCreateActivity.mEntity.name.length());
        }
        engineeringCreateActivity.binding.edtName.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCentralMeridian() throws NumberFormatException {
        EngineeringEntity engineeringEntity;
        double d;
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams;
        EngineeringEntity.GaussKrugerParams gaussKrugerParams;
        if (this.defaultEngineeringReadonly) {
            return;
        }
        if (this.mEntity.id > 0 && (engineeringEntity = this.initEntity) != null) {
            int i = engineeringEntity.projectionType;
            if (i == 1 && (gaussKrugerParams = engineeringEntity.gaussKrugerParams) != null) {
                d = gaussKrugerParams.lon0;
            } else {
                d = (i != 3 || (transverseMercatorParams = engineeringEntity.transverseMercatorParams) == null) ? 0.0d : transverseMercatorParams.lon0;
            }
            if (d != 0.0d) {
                this.binding.edtLon0.setText(formatDouble(d));
                return;
            }
        }
        fillCentralMeridianFromLocation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshUtmZone() throws NumberFormatException {
        EngineeringEntity engineeringEntity;
        EngineeringEntity.UTMParams uTMParams;
        int i;
        if (this.defaultEngineeringReadonly) {
            return;
        }
        if (this.mEntity.id > 0 && (engineeringEntity = this.initEntity) != null && engineeringEntity.projectionType == 2 && (uTMParams = engineeringEntity.utmParams) != null && (i = uTMParams.zone) >= 1 && i <= 60) {
            this.binding.edtUtmZone.setText(String.valueOf(i));
            this.binding.cbIsNorth.setChecked(this.initEntity.utmParams.isNorth);
        } else {
            fillUtmParamsFromLocation();
        }
    }

    private double[] getCurrentLonLat() throws NumberFormatException {
        GGAEntity gGAEntity = this.mGGA;
        double d = gGAEntity != null ? gGAEntity.longitude : 0.0d;
        double d2 = gGAEntity != null ? gGAEntity.latitude : 0.0d;
        if (d == 0.0d && d2 == 0.0d) {
            String string = this.mSp.getString("current_coords", "");
            if (!TextUtils.isEmpty(string)) {
                try {
                    String[] strArrSplit = string.split(",");
                    if (strArrSplit.length > 0) {
                        d = Double.parseDouble(strArrSplit[0]);
                    }
                    if (strArrSplit.length > 1) {
                        d2 = Double.parseDouble(strArrSplit[1]);
                    }
                } catch (Exception unused) {
                }
            }
        }
        if (d == 0.0d && d2 == 0.0d) {
            return null;
        }
        return new double[]{d, d2};
    }

    private void fillCentralMeridianFromLocation() throws NumberFormatException {
        double[] currentLonLat = getCurrentLonLat();
        if (currentLonLat != null) {
            if (currentLonLat[0] != 0.0d) {
                this.binding.edtLon0.setText(formatDouble(getCentralMeridianByZone(r1, this.centralMeridianZoneWidth)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillCentralMeridianPreferLocation() throws NumberFormatException {
        double[] currentLonLat = getCurrentLonLat();
        if (currentLonLat != null) {
            if (currentLonLat[0] != 0.0d) {
                this.binding.edtLon0.setText(formatDouble(getCentralMeridianByZone(r1, this.centralMeridianZoneWidth)));
                return;
            }
        }
        Editable text = this.binding.edtUtmZone.getText();
        if (text == null) {
            return;
        }
        try {
            int i = Integer.parseInt(text.toString().trim());
            if (i < 1 || i > 60) {
                return;
            }
            this.binding.edtLon0.setText(formatDouble(getCentralMeridianByZone((i * 6) - 183, this.centralMeridianZoneWidth)));
        } catch (NumberFormatException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillUtmParamsFromLocation() throws NumberFormatException {
        double[] currentLonLat = getCurrentLonLat();
        if (currentLonLat == null) {
            return;
        }
        double d = currentLonLat[0];
        if (d != 0.0d) {
            this.binding.edtUtmZone.setText(String.valueOf(getUtmZone(d)));
        }
        this.binding.cbIsNorth.setChecked(currentLonLat[1] >= 0.0d);
    }

    private int getCentralMeridianByZone(double d, int i) {
        if (i == 6) {
            return ((((int) Math.floor(d / 6.0d)) + 1) * 6) - 3;
        }
        return getCentralMeridian(d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCentralMeridianZoneLabel(int i) {
        int i2 = i != 6 ? 3 : 6;
        this.centralMeridianZoneWidth = i2;
        this.binding.tvCentralMeridian.setText(getString(R$string.central_meridian_zone, Integer.valueOf(i2)));
    }

    private void setDefaultName() {
        String string;
        EngineeringEntity engineeringEntity;
        List<EngineeringEntity> listQueryAllEngineering = this.databaseManager.queryAllEngineering();
        if (this.mEntity.id > 0 && (engineeringEntity = this.initEntity) != null && !TextUtils.isEmpty(engineeringEntity.name)) {
            string = this.initEntity.name;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(getString(R$string.engineering));
            sb.append(listQueryAllEngineering != null ? 1 + listQueryAllEngineering.size() : 1);
            string = sb.toString();
            if (this.databaseManager.isEntityNameExists("engineering", string) && this.mEntity.id == 0) {
                string = string + "_" + (System.currentTimeMillis() / 1000);
            }
        }
        this.binding.edtName.setText(string);
        Editable text = this.binding.edtName.getText();
        if (text != null) {
            this.binding.edtName.setSelection(text.length());
        }
        this.mEntity.name = string;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initSpinners() {
        this.builtInCoordSystems = CoordSystemUtils.loadBuiltInCoordSystems(this);
        List<EllipsoidOption> listBuildEllipsoidOptions = buildEllipsoidOptions();
        this.ellipsoidOptions = listBuildEllipsoidOptions;
        String[] strArr = new String[listBuildEllipsoidOptions.size()];
        for (int i = 0; i < this.ellipsoidOptions.size(); i++) {
            strArr[i] = this.ellipsoidOptions.get(i).label;
        }
        this.binding.spEllipsoid.setAdapter((SpinnerAdapter) createRtlSpinnerAdapter(strArr));
        EngineeringEntity engineeringEntity = this.mEntity;
        if (engineeringEntity == null || engineeringEntity.id <= 0) {
            this.binding.spEllipsoid.setSelection(2);
        }
        updateCentralMeridianZoneLabel(3);
        this.binding.spEllipsoid.setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return EngineeringCreateActivity.$r8$lambda$O_2Alk8443RqzDYPFxvgoeNGKZY(this.f$0, view, motionEvent);
            }
        });
        this.binding.spEllipsoid.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 >= 5) {
                    int i3 = i2 - 5;
                    if (i3 < 0 || i3 >= EngineeringCreateActivity.this.builtInCoordSystems.size()) {
                        return;
                    }
                    EngineeringCreateActivity engineeringCreateActivity = EngineeringCreateActivity.this;
                    engineeringCreateActivity.applyBuiltInCoordSystem((CoordSystemEntity) engineeringCreateActivity.builtInCoordSystems.get(i3));
                    return;
                }
                EngineeringCreateActivity.this.updateCentralMeridianZoneLabel(3);
                EngineeringCreateActivity.this.binding.llCustomEllipsoid.setVisibility(i2 == 0 ? 0 : 8);
            }
        });
        this.binding.spDeformation.setAdapter((SpinnerAdapter) createRtlSpinnerAdapter(new String[]{getString(R$string.none_deformation), getString(R$string.scale_deformation), getString(R$string.expansion_deformation)}));
        this.binding.spProjectionType.setAdapter((SpinnerAdapter) createRtlSpinnerAdapter(new String[]{getString(R$string.gauss_kruger), getString(R$string.utm), getString(R$string.transverse_mercator)}));
        this.binding.spProjectionType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) throws NumberFormatException {
                EngineeringCreateActivity.this.binding.llGaussParams.setVisibility((i2 == 0 || i2 == 2) ? 0 : 8);
                EngineeringCreateActivity.this.binding.llUtmParams.setVisibility(i2 != 1 ? 8 : 0);
                if (i2 == 1) {
                    Editable text = EngineeringCreateActivity.this.binding.edtUtmZone.getText();
                    if (EngineeringCreateActivity.this.mEntity.id < 1 || text == null || TextUtils.isEmpty(text.toString().trim())) {
                        EngineeringCreateActivity.this.fillUtmParamsFromLocation();
                    }
                } else if ((i2 == 0 || i2 == 2) && EngineeringCreateActivity.this.lastProjectionPosition == 1) {
                    EngineeringCreateActivity.this.fillCentralMeridianPreferLocation();
                }
                EngineeringCreateActivity.this.lastProjectionPosition = i2;
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$O_2Alk8443RqzDYPFxvgoeNGKZY(EngineeringCreateActivity engineeringCreateActivity, View view, MotionEvent motionEvent) {
        if (!engineeringCreateActivity.defaultEngineeringReadonly && motionEvent.getAction() == 1) {
            engineeringCreateActivity.showEllipsoidPicker();
        }
        return true;
    }

    private List<EllipsoidOption> buildEllipsoidOptions() {
        ArrayList arrayList = new ArrayList(this.builtInCoordSystems.size() + 5);
        arrayList.add(new EllipsoidOption(0, getString(R$string.customize), null, null));
        arrayList.add(new EllipsoidOption(1, "WGS-84", null, null));
        arrayList.add(new EllipsoidOption(2, "CGCS2000", "China", "cn"));
        arrayList.add(new EllipsoidOption(3, "XIAN 80", "China", "cn"));
        arrayList.add(new EllipsoidOption(4, "BEIJING 54", "China", "cn"));
        for (int i = 0; i < this.builtInCoordSystems.size(); i++) {
            CoordSystemEntity coordSystemEntity = this.builtInCoordSystems.get(i);
            arrayList.add(new EllipsoidOption(i + 5, coordSystemEntity.displayName(), coordSystemEntity.country, coordSystemEntity.iso));
        }
        return arrayList;
    }

    private void showEllipsoidPicker() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        AlertDialog alertDialog = this.ellipsoidPickerDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            View viewInflate = LayoutInflater.from(this).inflate(R$layout.dialog_ellipsoid_picker, (ViewGroup) null);
            final EditText editText = (EditText) viewInflate.findViewById(R$id.edtSearch);
            final ListView listView = (ListView) viewInflate.findViewById(R$id.lvEllipsoid);
            final int iMax = Math.max(0, this.binding.spEllipsoid.getSelectedItemPosition());
            final EllipsoidPickerAdapter ellipsoidPickerAdapter = new EllipsoidPickerAdapter(this, this.ellipsoidOptions, iMax);
            listView.setAdapter((ListAdapter) ellipsoidPickerAdapter);
            listView.setChoiceMode(1);
            final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).create();
            this.ellipsoidPickerDialog = alertDialogCreate;
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda15
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    EngineeringCreateActivity.m1375$r8$lambda$xUGfEqhvp7t0ytGBojk9XOn6cU(this.f$0, ellipsoidPickerAdapter, editText, alertDialogCreate, adapterView, view, i, j);
                }
            });
            editText.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.4
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    ellipsoidPickerAdapter.getFilter().filter(charSequence, new Filter.FilterListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.4.1
                        @Override // android.widget.Filter.FilterListener
                        public void onFilterComplete(int i4) {
                            if (TextUtils.isEmpty(charSequence)) {
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                EngineeringCreateActivity.this.scrollEllipsoidListToSelected(listView, ellipsoidPickerAdapter, iMax);
                            } else {
                                listView.setSelection(0);
                            }
                        }
                    });
                }
            });
            editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda16
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    return EngineeringCreateActivity.m1372$r8$lambda$jaelt6ccj6Xo8yN_mfrJOSM0(this.f$0, editText, textView, i, keyEvent);
                }
            });
            alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda17
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    EngineeringCreateActivity.m1368$r8$lambda$H2c8hAVEOdqkmHtwroljWMIgAA(this.f$0, editText, alertDialogCreate, dialogInterface);
                }
            });
            alertDialogCreate.show();
            Window window = alertDialogCreate.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(R.color.transparent);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.width = (int) (getResources().getDisplayMetrics().widthPixels * 0.92f);
                attributes.height = (int) (getResources().getDisplayMetrics().heightPixels * 0.72f);
                window.setAttributes(attributes);
            }
            listView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.5
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (listView.getHeight() <= 0) {
                        return;
                    }
                    if (listView.getViewTreeObserver().isAlive()) {
                        listView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    EngineeringCreateActivity.this.scrollEllipsoidListToSelected(listView, ellipsoidPickerAdapter, iMax);
                }
            });
            listView.post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.scrollEllipsoidListToSelected(listView, ellipsoidPickerAdapter, iMax);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$xUGfEqhvp7t0ytGBo-jk9XOn6cU, reason: not valid java name */
    public static /* synthetic */ void m1375$r8$lambda$xUGfEqhvp7t0ytGBojk9XOn6cU(EngineeringCreateActivity engineeringCreateActivity, EllipsoidPickerAdapter ellipsoidPickerAdapter, EditText editText, AlertDialog alertDialog, AdapterView adapterView, View view, int i, long j) {
        engineeringCreateActivity.getClass();
        EllipsoidOption item = ellipsoidPickerAdapter.getItem(i);
        if (item == null) {
            return;
        }
        engineeringCreateActivity.hideSoftInput(editText);
        alertDialog.dismiss();
        engineeringCreateActivity.binding.spEllipsoid.setSelection(item.absoluteIndex);
    }

    /* renamed from: $r8$lambda$jae--lt6ccj6Xo8yN_mf-rJOSM0, reason: not valid java name */
    public static /* synthetic */ boolean m1372$r8$lambda$jaelt6ccj6Xo8yN_mfrJOSM0(EngineeringCreateActivity engineeringCreateActivity, EditText editText, TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3) {
            engineeringCreateActivity.hideSoftInput(editText);
            return true;
        }
        engineeringCreateActivity.getClass();
        return false;
    }

    /* renamed from: $r8$lambda$H2c8hAVEOdqkmHtwroljWMIg-AA, reason: not valid java name */
    public static /* synthetic */ void m1368$r8$lambda$H2c8hAVEOdqkmHtwroljWMIgAA(EngineeringCreateActivity engineeringCreateActivity, EditText editText, AlertDialog alertDialog, DialogInterface dialogInterface) {
        engineeringCreateActivity.hideSoftInput(editText);
        if (engineeringCreateActivity.ellipsoidPickerDialog == alertDialog) {
            engineeringCreateActivity.ellipsoidPickerDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollEllipsoidListToSelected(final ListView listView, final EllipsoidPickerAdapter ellipsoidPickerAdapter, int i) {
        if (listView == null || ellipsoidPickerAdapter == null) {
            return;
        }
        final int iIndexOfAbsolute = ellipsoidPickerAdapter.indexOfAbsolute(i);
        if (iIndexOfAbsolute < 0) {
            iIndexOfAbsolute = 0;
        }
        if (iIndexOfAbsolute < ellipsoidPickerAdapter.getCount()) {
            listView.setItemChecked(iIndexOfAbsolute, true);
        }
        Runnable runnable = new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                EngineeringCreateActivity.m1374$r8$lambda$wXFTLTjMMbkIPFrwXfu8hW4Vuo(ellipsoidPickerAdapter, iIndexOfAbsolute, listView);
            }
        };
        runnable.run();
        listView.post(runnable);
    }

    /* renamed from: $r8$lambda$wXFTLTjMMbkIPFrwXfu8hW4V-uo, reason: not valid java name */
    public static /* synthetic */ void m1374$r8$lambda$wXFTLTjMMbkIPFrwXfu8hW4Vuo(EllipsoidPickerAdapter ellipsoidPickerAdapter, int i, ListView listView) {
        if (ellipsoidPickerAdapter.getCount() == 0 || i >= ellipsoidPickerAdapter.getCount()) {
            return;
        }
        listView.setSelectionFromTop(i, 0);
    }

    private void hideSoftInput(View view) {
        InputMethodManager inputMethodManager;
        if (view == null || (inputMethodManager = (InputMethodManager) getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyBuiltInCoordSystem(CoordSystemEntity coordSystemEntity) {
        if (coordSystemEntity == null) {
            return;
        }
        this.binding.llCustomEllipsoid.setVisibility(0);
        this.binding.edtA.setText(formatParamDouble(coordSystemEntity.a));
        this.binding.edtF.setText(formatParamDouble(coordSystemEntity.flattening()));
        this.binding.spProjectionType.setSelection(2);
        this.binding.llGaussParams.setVisibility(0);
        this.binding.llUtmParams.setVisibility(8);
        updateCentralMeridianZoneLabel(coordSystemEntity.zoneWidthDegrees());
        this.binding.edtLon0.setText(formatParamDouble(resolveCentralMeridian(coordSystemEntity)));
        this.binding.edtLat0.setText(formatParamDouble(resolveOriginLatitude(coordSystemEntity)));
        this.binding.edtFalseEasting.setText(formatParamDouble(coordSystemEntity.fe));
        this.binding.edtFalseNorthing.setText(formatParamDouble(coordSystemEntity.fn));
        NumericEditText numericEditText = this.binding.edtScaleFactor;
        double d = coordSystemEntity.k0;
        numericEditText.setText(d != 0.0d ? formatParamDouble(d) : BuildConfig.VERSION_NAME);
    }

    private double resolveCentralMeridian(CoordSystemEntity coordSystemEntity) {
        String str = coordSystemEntity.projection;
        if ("oblique".equals(str) || "krovak".equals(str)) {
            double d = coordSystemEntity.lonc;
            return d != 0.0d ? d : coordSystemEntity.lon0;
        }
        double d2 = coordSystemEntity.lon0;
        return d2 != 0.0d ? d2 : coordSystemEntity.lonc;
    }

    private double resolveOriginLatitude(CoordSystemEntity coordSystemEntity) {
        String str = coordSystemEntity.projection;
        if ("oblique".equals(str) || "krovak".equals(str)) {
            double d = coordSystemEntity.latc;
            return d != 0.0d ? d : coordSystemEntity.lat0;
        }
        double d2 = coordSystemEntity.lat0;
        return d2 != 0.0d ? d2 : coordSystemEntity.latc;
    }

    private String formatParamDouble(double d) {
        return EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0.m(BigDecimal.valueOf(d)).toPlainString();
    }

    private boolean validateCustomEllipsoidParams(double d, double d2) {
        if (d < 6350000.0d || d > 6400000.0d) {
            showTipDialog(getString(R$string.half_axis_input_error, formatParamDouble(6350000.0d), formatParamDouble(6400000.0d)), getString(R$string.ok), null);
            return false;
        }
        if (d2 > 0.0d && d2 < 1.0d) {
            return true;
        }
        showTipDialog(getString(R$string.flatness_input_error), getString(R$string.ok), null);
        return false;
    }

    private boolean validateCentralMeridian(double d) {
        if (d >= -180.0d && d <= 180.0d) {
            return true;
        }
        showTipDialog(getString(R$string.central_meridian_input_error, formatParamDouble(-180.0d), formatParamDouble(180.0d)), getString(R$string.ok), null);
        return false;
    }

    private boolean validateOriginLatitude(double d) {
        if (d >= -90.0d && d <= 90.0d) {
            return true;
        }
        showTipDialog(getString(R$string.origin_latitude_input_error, formatParamDouble(-90.0d), formatParamDouble(90.0d)), getString(R$string.ok), null);
        return false;
    }

    private void initConversionParamsSpinner() throws NoSuchFieldException, SecurityException {
        this.binding.spConversionType.setAdapter((SpinnerAdapter) createRtlSpinnerAdapter(new String[]{getString(R$string.none_conversion_params), getString(R$string.four_params), getString(R$string.seven_params)}));
        hookConversionSpinnerDropdownClicks();
        this.binding.spConversionType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (!EngineeringCreateActivity.this.conversionSpinnerUserReady) {
                    EngineeringCreateActivity.this.lastConversionSpinnerPosition = i;
                    EngineeringCreateActivity.this.applyConversionTypeSelection(i, false);
                } else {
                    if (i == EngineeringCreateActivity.this.lastConversionSpinnerPosition) {
                        return;
                    }
                    EngineeringCreateActivity.this.lastConversionSpinnerPosition = i;
                    EngineeringCreateActivity.this.applyConversionTypeSelection(i, i > 0);
                }
            }
        });
        this.binding.llConversionSelect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.openConversionParamsList();
            }
        });
        this.lastConversionSpinnerPosition = this.binding.spConversionType.getSelectedItemPosition();
    }

    private ArrayAdapter<String> createRtlSpinnerAdapter(String[] strArr) {
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this, R.layout.simple_spinner_item, strArr) { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.7
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                EngineeringCreateActivity.this.applySpinnerItemStyle(view2);
                return view2;
            }

            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                View dropDownView = super.getDropDownView(i, view, viewGroup);
                EngineeringCreateActivity.this.applySpinnerItemStyle(dropDownView);
                return dropDownView;
            }
        };
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        return arrayAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySpinnerItemStyle(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextColor(ContextCompat.getColor(this, R$color.text_black));
            ConfigLayoutHelper.applySpinnerItemStyle(textView);
        }
    }

    private void hookConversionSpinnerDropdownClicks() throws NoSuchFieldException, SecurityException {
        Object conversionSpinnerPopup = getConversionSpinnerPopup();
        if (conversionSpinnerPopup instanceof ListPopupWindow) {
            ((ListPopupWindow) conversionSpinnerPopup).setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda19
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) throws NoSuchFieldException, SecurityException {
                    this.f$0.onConversionSpinnerDropdownClick(i);
                }
            });
        } else if (conversionSpinnerPopup instanceof android.widget.ListPopupWindow) {
            ((android.widget.ListPopupWindow) conversionSpinnerPopup).setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda20
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) throws NoSuchFieldException, SecurityException {
                    this.f$0.onConversionSpinnerDropdownClick(i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConversionSpinnerDropdownClick(int i) throws NoSuchFieldException, SecurityException {
        this.binding.spConversionType.setSelection(i, false);
        dismissConversionSpinnerDropdown();
        if (!this.conversionSpinnerUserReady) {
            this.lastConversionSpinnerPosition = i;
            applyConversionTypeSelection(i, false);
        } else {
            this.lastConversionSpinnerPosition = i;
            applyConversionTypeSelection(i, i > 0);
        }
    }

    private Object getConversionSpinnerPopup() throws NoSuchFieldException, SecurityException {
        try {
            try {
                Field declaredField = AppCompatSpinner.class.getDeclaredField("mPopup");
                declaredField.setAccessible(true);
                return declaredField.get(this.binding.spConversionType);
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            Field declaredField2 = this.binding.spConversionType.getClass().getDeclaredField("mPopup");
            declaredField2.setAccessible(true);
            return declaredField2.get(this.binding.spConversionType);
        }
    }

    private void dismissConversionSpinnerDropdown() throws NoSuchFieldException, SecurityException {
        Object conversionSpinnerPopup = getConversionSpinnerPopup();
        if (conversionSpinnerPopup instanceof ListPopupWindow) {
            ((ListPopupWindow) conversionSpinnerPopup).dismiss();
        } else if (conversionSpinnerPopup instanceof android.widget.ListPopupWindow) {
            ((android.widget.ListPopupWindow) conversionSpinnerPopup).dismiss();
        } else {
            this.binding.spConversionType.clearFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyConversionTypeSelection(int i, boolean z) {
        updateConversionSelectVisibility(i);
        if (i == 0) {
            this.mEntity.conversionParamsType = 0;
            clearConversionSelection();
            return;
        }
        if (this.mEntity.conversionParamsType != i) {
            clearConversionSelection();
        }
        this.mEntity.conversionParamsType = i;
        if (z) {
            scrollToConversionSelect();
            this.binding.getRoot().post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.openConversionParamsList();
                }
            });
        }
    }

    /* renamed from: $r8$lambda$Ad_fk0T3ZyBWMQ-iBr0d4uTXF_U, reason: not valid java name */
    public static /* synthetic */ void m1367$r8$lambda$Ad_fk0T3ZyBWMQiBr0d4uTXF_U(EngineeringCreateActivity engineeringCreateActivity) {
        ActivityEngineeringCreateBinding activityEngineeringCreateBinding = engineeringCreateActivity.binding;
        activityEngineeringCreateBinding.nsvContent.smoothScrollTo(0, activityEngineeringCreateBinding.llConversionSelect.getBottom());
    }

    private void scrollToConversionSelect() {
        this.binding.llConversionSelect.post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                EngineeringCreateActivity.m1367$r8$lambda$Ad_fk0T3ZyBWMQiBr0d4uTXF_U(this.f$0);
            }
        });
    }

    private void updateConversionSelectVisibility(int i) {
        this.binding.llConversionSelect.setVisibility(i > 0 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openConversionParamsList() {
        int selectedItemPosition;
        if (!this.defaultEngineeringReadonly && (selectedItemPosition = this.binding.spConversionType.getSelectedItemPosition()) > 0) {
            Intent intent = new Intent(this, (Class<?>) ConverParamsListActivity.class);
            intent.putExtra("selectMode", true);
            intent.putExtra("paramType", selectedItemPosition);
            EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
            long j = this.mEntity.id;
            intent.putExtra("showCurrentUse", j > 0 && engineeringEntityQueryCurrentEngineering != null && j == engineeringEntityQueryCurrentEngineering.id);
            this.converParamsLauncher.launch(intent);
        }
    }

    private void clearConversionSelection() {
        EngineeringEntity engineeringEntity = this.mEntity;
        engineeringEntity.transParamId = 0L;
        engineeringEntity.transParamLocalId = 0L;
        engineeringEntity.transParam = null;
        this.binding.tvConversionParams.setText("");
    }

    private void applyTransParamToEntity(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity == null) {
            return;
        }
        EngineeringEntity engineeringEntity = this.mEntity;
        engineeringEntity.conversionParamsType = gnssTransParamEntity.paramType;
        engineeringEntity.transParamLocalId = gnssTransParamEntity.localId;
        engineeringEntity.transParamId = gnssTransParamEntity.transParamId;
        engineeringEntity.transParam = gnssTransParamEntity;
    }

    private void applyTransformParamsToDevice() {
        GnssParamTransform gnssParamTransform = GnssParamTransformManager.getInstance().getGnssParamTransform();
        GnssTransParamEntity gnssTransParamEntityResolveGnssTransParamForEngineering = this.databaseManager.resolveGnssTransParamForEngineering(this.mEntity);
        if (gnssTransParamEntityResolveGnssTransParamForEngineering != null) {
            gnssTransParamEntityResolveGnssTransParamForEngineering.applyToTransform(gnssParamTransform);
        }
    }

    private void uploadTransParamIfNeeded() {
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId;
        EngineeringEntity engineeringEntity = this.mEntity;
        if (engineeringEntity.conversionParamsType > 0) {
            long j = engineeringEntity.transParamLocalId;
            if (j > 0 && (gnssTransParamEntityQueryGnssTransParamByLocalId = this.databaseManager.queryGnssTransParamByLocalId(j)) != null && gnssTransParamEntityQueryGnssTransParamByLocalId.transParamId <= 0) {
                NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntityQueryGnssTransParamByLocalId);
            }
        }
    }

    private void initDataFromEntity() {
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams;
        EngineeringEntity.UTMParams uTMParams;
        EngineeringEntity.GaussKrugerParams gaussKrugerParams;
        EngineeringEntity engineeringEntity = this.mEntity;
        if (engineeringEntity.id <= 0) {
            return;
        }
        int i = engineeringEntity.ellipsoidType;
        if (i >= 0) {
            try {
                Spinner spinner = this.binding.spEllipsoid;
                if (i == 0) {
                    i = 0;
                }
                spinner.setSelection(i);
            } catch (Exception unused) {
            }
        }
        restoreCustomEllipsoidUi();
        this.binding.spEllipsoid.post(new Runnable() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.restoreCustomEllipsoidUi();
            }
        });
        int i2 = this.mEntity.projectionType;
        if (i2 > 0) {
            try {
                this.binding.spProjectionType.setSelection(i2 - 1);
            } catch (Exception unused2) {
            }
        }
        EngineeringEntity engineeringEntity2 = this.mEntity;
        int i3 = engineeringEntity2.projectionType;
        if (i3 == 1 && (gaussKrugerParams = engineeringEntity2.gaussKrugerParams) != null) {
            this.binding.edtLon0.setText(formatDouble(gaussKrugerParams.lon0));
            this.binding.edtLat0.setText(formatParamDouble(gaussKrugerParams.lat0));
            this.binding.edtFalseEasting.setText(formatDouble(gaussKrugerParams.fe));
            this.binding.edtFalseNorthing.setText(String.valueOf(gaussKrugerParams.fn));
            this.binding.edtScaleFactor.setText(String.valueOf(gaussKrugerParams.k0));
            this.binding.edtProjHeight.setText(String.valueOf(gaussKrugerParams.projectionHeight));
            this.binding.spDeformation.setSelection(gaussKrugerParams.deformationMethod);
        } else if (i3 == 2 && (uTMParams = engineeringEntity2.utmParams) != null) {
            this.binding.edtUtmZone.setText(String.valueOf(uTMParams.zone));
            this.binding.cbIsNorth.setChecked(uTMParams.isNorth);
            this.binding.edtProjHeight.setText(String.valueOf(uTMParams.projectionHeight));
            this.binding.spDeformation.setSelection(uTMParams.deformationMethod);
        } else if (i3 == 3 && (transverseMercatorParams = engineeringEntity2.transverseMercatorParams) != null) {
            this.binding.edtLon0.setText(formatDouble(transverseMercatorParams.lon0));
            this.binding.edtLat0.setText(formatParamDouble(transverseMercatorParams.lat0));
            this.binding.edtFalseEasting.setText(formatDouble(transverseMercatorParams.fe));
            this.binding.edtFalseNorthing.setText(String.valueOf(transverseMercatorParams.fn));
            this.binding.edtScaleFactor.setText(String.valueOf(transverseMercatorParams.k0));
            this.binding.edtProjHeight.setText(String.valueOf(transverseMercatorParams.projectionHeight));
            this.binding.spDeformation.setSelection(transverseMercatorParams.deformationMethod);
        }
        int i4 = this.mEntity.conversionParamsType;
        if (i4 >= 0 && i4 <= 2) {
            this.lastConversionSpinnerPosition = i4;
            this.binding.spConversionType.setSelection(i4, false);
            updateConversionSelectVisibility(this.mEntity.conversionParamsType);
        }
        refreshConversionParamsLabel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreCustomEllipsoidUi() {
        EngineeringEntity engineeringEntity = this.mEntity;
        if (engineeringEntity == null || engineeringEntity.ellipsoidType != 0 || engineeringEntity.customEllipsoidParams == null) {
            return;
        }
        this.binding.llCustomEllipsoid.setVisibility(0);
        EngineeringEntity.CustomEllipsoidParams customEllipsoidParams = this.mEntity.customEllipsoidParams;
        this.binding.edtA.setText(formatParamDouble(customEllipsoidParams.a));
        this.binding.edtF.setText(formatParamDouble(customEllipsoidParams.f));
    }

    private void refreshConversionParamsLabel() {
        EngineeringEntity engineeringEntity = this.mEntity;
        if (engineeringEntity.conversionParamsType > 0) {
            long j = engineeringEntity.transParamLocalId;
            if (j > 0) {
                GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId = this.databaseManager.queryGnssTransParamByLocalId(j);
                if (gnssTransParamEntityQueryGnssTransParamByLocalId != null && !TextUtils.isEmpty(gnssTransParamEntityQueryGnssTransParamByLocalId.name)) {
                    this.mEntity.transParam = gnssTransParamEntityQueryGnssTransParamByLocalId;
                    this.binding.tvConversionParams.setText(gnssTransParamEntityQueryGnssTransParamByLocalId.name);
                    return;
                } else {
                    this.binding.tvConversionParams.setText("");
                    return;
                }
            }
        }
        this.binding.tvConversionParams.setText("");
    }

    private void syncConversionParamsInfoBar() {
        EngineeringEntity engineeringEntity;
        int i;
        long j = this.mEntity.transParamLocalId;
        if (j > 0) {
            GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId = this.databaseManager.queryGnssTransParamByLocalId(j);
            if (gnssTransParamEntityQueryGnssTransParamByLocalId == null || ((i = (engineeringEntity = this.mEntity).conversionParamsType) > 0 && gnssTransParamEntityQueryGnssTransParamByLocalId.paramType != i)) {
                clearConversionSelection();
                return;
            } else {
                engineeringEntity.transParam = gnssTransParamEntityQueryGnssTransParamByLocalId;
                engineeringEntity.transParamId = gnssTransParamEntityQueryGnssTransParamByLocalId.transParamId;
            }
        }
        refreshConversionParamsLabel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyEngineering() {
        EngineeringEntity.CustomEllipsoidParams customEllipsoidParams;
        if (this.defaultEngineeringReadonly) {
            return;
        }
        Editable text = this.binding.edtName.getText();
        String strTrim = text != null ? text.toString().trim() : "";
        if (TextUtils.isEmpty(strTrim)) {
            showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "defaultname");
            return;
        }
        EngineeringEntity engineeringEntity = this.initEntity;
        if ((engineeringEntity == null || !strTrim.equals(engineeringEntity.name)) && this.databaseManager.isEngineeringNameExists(strTrim)) {
            showToastDialog(getString(R$string.project_name_already_exists));
            return;
        }
        this.mEntity.name = strTrim;
        int selectedItemPosition = this.binding.spEllipsoid.getSelectedItemPosition();
        if (selectedItemPosition == 0 || selectedItemPosition >= 5) {
            double numericValue = this.binding.edtA.getNumericValue();
            double numericValue2 = this.binding.edtF.getNumericValue();
            if (!validateCustomEllipsoidParams(numericValue, numericValue2)) {
                return;
            }
            this.mEntity.ellipsoidType = 0;
            EngineeringEntity.CustomEllipsoidParams customEllipsoidParams2 = new EngineeringEntity.CustomEllipsoidParams();
            customEllipsoidParams2.a = numericValue;
            customEllipsoidParams2.f = numericValue2;
            this.mEntity.customEllipsoidParams = customEllipsoidParams2;
        } else {
            EngineeringEntity engineeringEntity2 = this.mEntity;
            engineeringEntity2.ellipsoidType = selectedItemPosition;
            engineeringEntity2.customEllipsoidParams = null;
        }
        int selectedItemPosition2 = this.binding.spDeformation.getSelectedItemPosition();
        this.mEntity.projectionType = this.binding.spProjectionType.getSelectedItemPosition() + 1;
        if (this.mEntity.projectionType == 2 || validateCentralMeridian(this.binding.edtLon0.getNumericValue())) {
            if (this.mEntity.projectionType == 2 || validateOriginLatitude(this.binding.edtLat0.getNumericValue())) {
                double numericValue3 = this.binding.edtProjHeight.getNumericValue();
                GnssCoordConvert gnssCoordConvert = GnssCoordConvertManager.getInstance().getGnssCoordConvert();
                EngineeringEntity engineeringEntity3 = this.mEntity;
                int i = engineeringEntity3.ellipsoidType;
                if (i == 0 && (customEllipsoidParams = engineeringEntity3.customEllipsoidParams) != null) {
                    gnssCoordConvert.setEllipsoid(customEllipsoidParams.a, customEllipsoidParams.f);
                } else {
                    gnssCoordConvert.setEllipsoid(i);
                }
                int i2 = this.mEntity.projectionType;
                if (i2 == 2) {
                    EngineeringEntity.UTMParams uTMParams = new EngineeringEntity.UTMParams();
                    double numericValue4 = this.binding.edtUtmZone.getNumericValue();
                    uTMParams.zone = numericValue4 == 0.0d ? 1 : (int) numericValue4;
                    uTMParams.isNorth = this.binding.cbIsNorth.isChecked();
                    uTMParams.projectionHeight = numericValue3;
                    uTMParams.deformationMethod = selectedItemPosition2;
                    this.mEntity.utmParams = uTMParams;
                    GnssCoordConvert.UTMParams uTMParams2 = new GnssCoordConvert.UTMParams();
                    uTMParams2.zone = uTMParams.zone;
                    uTMParams2.isNorth = uTMParams.isNorth;
                    uTMParams2.projectionHeight = uTMParams.projectionHeight;
                    uTMParams2.deformationMethod = uTMParams.deformationMethod;
                    gnssCoordConvert.setProjection(uTMParams2);
                } else if (i2 == 1) {
                    EngineeringEntity.GaussKrugerParams gaussKrugerParams = new EngineeringEntity.GaussKrugerParams();
                    gaussKrugerParams.lon0 = this.binding.edtLon0.getNumericValue();
                    gaussKrugerParams.lat0 = this.binding.edtLat0.getNumericValue();
                    gaussKrugerParams.fe = this.binding.edtFalseEasting.getNumericValue();
                    gaussKrugerParams.fn = this.binding.edtFalseNorthing.getNumericValue();
                    gaussKrugerParams.k0 = this.binding.edtScaleFactor.getNumericValue();
                    gaussKrugerParams.projectionHeight = numericValue3;
                    gaussKrugerParams.deformationMethod = selectedItemPosition2;
                    this.mEntity.gaussKrugerParams = gaussKrugerParams;
                    GnssCoordConvert.GaussKrugerParams gaussKrugerParams2 = new GnssCoordConvert.GaussKrugerParams();
                    gaussKrugerParams2.lon0 = gaussKrugerParams.lon0;
                    gaussKrugerParams2.lat0 = gaussKrugerParams.lat0;
                    gaussKrugerParams2.fe = gaussKrugerParams.fe;
                    gaussKrugerParams2.fn = gaussKrugerParams.fn;
                    gaussKrugerParams2.k0 = gaussKrugerParams.k0;
                    gaussKrugerParams2.projectionHeight = gaussKrugerParams.projectionHeight;
                    gaussKrugerParams2.deformationMethod = gaussKrugerParams.deformationMethod;
                    gnssCoordConvert.setProjection(gaussKrugerParams2);
                } else {
                    EngineeringEntity.TransverseMercatorParams transverseMercatorParams = new EngineeringEntity.TransverseMercatorParams();
                    transverseMercatorParams.lon0 = this.binding.edtLon0.getNumericValue();
                    transverseMercatorParams.lat0 = this.binding.edtLat0.getNumericValue();
                    transverseMercatorParams.fe = this.binding.edtFalseEasting.getNumericValue();
                    transverseMercatorParams.fn = this.binding.edtFalseNorthing.getNumericValue();
                    transverseMercatorParams.k0 = this.binding.edtScaleFactor.getNumericValue();
                    transverseMercatorParams.projectionHeight = numericValue3;
                    transverseMercatorParams.deformationMethod = selectedItemPosition2;
                    this.mEntity.transverseMercatorParams = transverseMercatorParams;
                    GnssCoordConvert.TransverseMercatorParams transverseMercatorParams2 = new GnssCoordConvert.TransverseMercatorParams();
                    transverseMercatorParams2.lon0 = transverseMercatorParams.lon0;
                    transverseMercatorParams2.lat0 = transverseMercatorParams.lat0;
                    transverseMercatorParams2.fe = transverseMercatorParams.fe;
                    transverseMercatorParams2.fn = transverseMercatorParams.fn;
                    transverseMercatorParams2.k0 = transverseMercatorParams.k0;
                    transverseMercatorParams2.projectionHeight = transverseMercatorParams.projectionHeight;
                    transverseMercatorParams2.deformationMethod = transverseMercatorParams.deformationMethod;
                    gnssCoordConvert.setProjection(transverseMercatorParams2);
                }
                int selectedItemPosition3 = this.binding.spConversionType.getSelectedItemPosition();
                EngineeringEntity engineeringEntity4 = this.mEntity;
                engineeringEntity4.conversionParamsType = selectedItemPosition3;
                if (selectedItemPosition3 > 0) {
                    if (!engineeringEntity4.hasConversionParams()) {
                        showToastDialog(getString(R$string.please_select_conversion_params));
                        return;
                    }
                } else {
                    engineeringEntity4.transParamId = 0L;
                    engineeringEntity4.transParamLocalId = 0L;
                    engineeringEntity4.transParam = null;
                }
                applyTransformParamsToDevice();
                uploadTransParamIfNeeded();
                EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
                EngineeringEntity engineeringEntity5 = this.mEntity;
                engineeringEntity5.currentUsage = 1;
                if (engineeringEntity5.id > 0) {
                    this.databaseManager.updateEngineering(engineeringEntity5);
                    Toast.makeText(this, R$string.modify_success, 0).show();
                } else {
                    engineeringEntity5.createTime = System.currentTimeMillis() / 1000;
                    long jInsertEngineering = this.databaseManager.insertEngineering(this.mEntity);
                    if (jInsertEngineering <= 0) {
                        showToastDialog(getString(R$string.save_failed));
                        return;
                    } else {
                        this.mEntity.id = jInsertEngineering;
                        Toast.makeText(this, R$string.saved_successfully, 0).show();
                    }
                }
                this.databaseManager.setCurrentEngineering(this.mEntity.id);
                syncEngineeringToServer(this.mEntity, engineeringEntityQueryCurrentEngineering);
                StringBuilder sb = new StringBuilder();
                sb.append("当前工程：");
                sb.append(GnssCoordConvertManager.getInstance().getCurrentEngineering() != null ? GnssCoordConvertManager.getInstance().getCurrentEngineering().toString() : "");
                LogToFile.i(sb.toString());
                finish();
            }
        }
    }

    private void syncEngineeringToServer(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2) {
        boolean zIsEmpty = TextUtils.isEmpty(UserSession.get().getToken());
        if (engineeringEntity != null && engineeringEntity.id > 0) {
            if (engineeringEntity.engineeringId > 0) {
                NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity);
            } else if (!zIsEmpty) {
                NetworkUserLoader.getInstance().createGnssEngineering(engineeringEntity);
            }
        }
        if (zIsEmpty || engineeringEntity2 == null || engineeringEntity == null || engineeringEntity2.id == engineeringEntity.id || engineeringEntity2.engineeringId <= 0) {
            return;
        }
        engineeringEntity2.currentUsage = 0;
        NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity2);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) throws NumberFormatException {
        if (gGAEntity == null || gGAEntity.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mGGA = gGAEntity;
        if (this.defaultEngineeringReadonly) {
            ensureDefaultEngineeringCentralMeridian();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                EngineeringCreateActivity.$r8$lambda$c0pCQrP_KpEhRs5tqPLomGbVves(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$c0pCQrP_KpEhRs5tqPLomGbVves(EngineeringCreateActivity engineeringCreateActivity, String str, Bundle bundle) {
        engineeringCreateActivity.getClass();
        if ("back".equals(str) && bundle.getBoolean("confirm")) {
            engineeringCreateActivity.finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        showTipDialog(getString(R$string.exit_page), getString(R$string.confirm), getString(R$string.cancel), (TipsDialogFragment.OnConfirmListener) null, "back");
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        AlertDialog alertDialog = this.ellipsoidPickerDialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.ellipsoidPickerDialog.dismiss();
        }
        this.ellipsoidPickerDialog = null;
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class EllipsoidOption {
        final int absoluteIndex;
        final String country;
        final String iso;
        final String label;

        EllipsoidOption(int i, String str, String str2, String str3) {
            this.absoluteIndex = i;
            this.label = str == null ? "" : str;
            this.country = str2;
            this.iso = str3;
        }

        boolean matches(String str) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            String strTrim = str.trim();
            Locale locale = Locale.ROOT;
            String lowerCase = strTrim.toLowerCase(locale);
            return this.label.toLowerCase(locale).contains(lowerCase) || (!TextUtils.isEmpty(this.country) && this.country.toLowerCase(locale).contains(lowerCase)) || (!TextUtils.isEmpty(this.iso) && this.iso.toLowerCase(locale).contains(lowerCase));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class EllipsoidPickerAdapter extends ArrayAdapter<EllipsoidOption> {
        private final List<EllipsoidOption> allItems;
        private final Filter filter;
        private final List<EllipsoidOption> filteredItems;
        private final int selectedAbsoluteIndex;

        EllipsoidPickerAdapter(Context context, List<EllipsoidOption> list, int i) {
            super(context, 0);
            this.filter = new Filter() { // from class: com.qianhe.yct.activity.EngineeringCreateActivity.EllipsoidPickerAdapter.1
                @Override // android.widget.Filter
                protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                    Filter.FilterResults filterResults = new Filter.FilterResults();
                    ArrayList arrayList = new ArrayList();
                    String string = charSequence == null ? "" : charSequence.toString();
                    for (EllipsoidOption ellipsoidOption : EllipsoidPickerAdapter.this.allItems) {
                        if (ellipsoidOption.matches(string)) {
                            arrayList.add(ellipsoidOption);
                        }
                    }
                    filterResults.values = arrayList;
                    filterResults.count = arrayList.size();
                    return filterResults;
                }

                @Override // android.widget.Filter
                protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                    EllipsoidPickerAdapter.this.filteredItems.clear();
                    if (filterResults != null && filterResults.values != null) {
                        EllipsoidPickerAdapter.this.filteredItems.addAll((List) filterResults.values);
                    }
                    EllipsoidPickerAdapter.this.notifyDataSetChanged();
                }
            };
            this.allItems = new ArrayList(list);
            this.filteredItems = new ArrayList(list);
            this.selectedAbsoluteIndex = i;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public int getCount() {
            return this.filteredItems.size();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public EllipsoidOption getItem(int i) {
            if (i < 0 || i >= this.filteredItems.size()) {
                return null;
            }
            return this.filteredItems.get(i);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i) != null ? r0.absoluteIndex : i;
        }

        int indexOfAbsolute(int i) {
            for (int i2 = 0; i2 < this.filteredItems.size(); i2++) {
                if (this.filteredItems.get(i2).absoluteIndex == i) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            boolean z = false;
            if (view instanceof TextView) {
                textView = (TextView) view;
            } else {
                textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_ellipsoid_option, viewGroup, false);
            }
            EllipsoidOption item = getItem(i);
            textView.setText(item != null ? item.label : "");
            ConfigLayoutHelper.applyLocaleNameStyle(textView);
            if (item != null && item.absoluteIndex == this.selectedAbsoluteIndex) {
                z = true;
            }
            textView.setTextColor(ContextCompat.getColor(getContext(), z ? R$color.theme : R$color.text_black));
            return textView;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Filterable
        public Filter getFilter() {
            return this.filter;
        }
    }
}
