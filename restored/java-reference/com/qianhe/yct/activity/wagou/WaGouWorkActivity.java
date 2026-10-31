package com.qianhe.yct.activity.wagou;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.YctDeviceManager;
import com.qh.xcad.XCadItemAreaPoint;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.PositionResult;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.enums.WaGouEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.SensorEventHelper;
import com.qianhe.baselib.utils.TrianglefunctionUtils;
import com.qianhe.baselib.utils.workchecker.DitchPositionChecker;
import com.qianhe.baselib.utils.workchecker.SlopePositionChecker;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityWgWorkBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.CheckBasestationDialogFragment;
import com.qianhe.yct.dialog.CorsChangesDialogFragment;
import com.qianhe.yct.dialog.FixedCoordinateStartupDialog;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.InsStatusEnum;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.CreateProjectResponse;
import com.qianhe.yct.event.HasCheckBasestation;
import com.qianhe.yct.event.ModifyProjectResponse;
import com.qianhe.yct.utils.BeepPlayer;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.ArmView;
import com.qianhe.yct.view.ToothTipDropdownView;
import com.qianhe.yct.view.map.GeoPoint;
import com.qianhe.yct.view.map.MapController;
import com.qianhe.yct.view.map.OnLoadMapListener;
import com.qianhe.yct.view.map.YMap;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouWorkActivity extends BaseActivity {
    private double baseX;
    private double baseY;
    private ActivityWgWorkBinding binding;
    private double[] curPositionWgs84;
    private boolean hasCheckBasestation;
    private boolean isCheckBase;
    private boolean isH5Pro;
    private BeepPlayer mBeepPlayer;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private MapController mapController;
    private double[] pointA;
    private double[] pointB;
    private SensorEventHelper sensorEventHelper;
    private boolean silentModifyProject;
    private WaGouEntity waGouEntity;
    private YMap yMap;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void onCreate(Bundle bundle) throws NumberFormatException {
        char c;
        WaGouEnum waGouEnum;
        double d;
        double dCalculateDistanceGAUSS;
        this.binding = ActivityWgWorkBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        finishPreviousActivity();
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        SensorEventHelper sensorEventHelper = new SensorEventHelper(this);
        this.sensorEventHelper = sensorEventHelper;
        sensorEventHelper.registerSensorListener();
        this.isH5Pro = ((YCTApplication) getApplication()).isH5Pro();
        String string = this.mSp.getString("current_coords", "");
        this.mINS = new InsNavi();
        if (!TextUtils.isEmpty(string)) {
            try {
                InsNavi insNavi = this.mINS;
                double d2 = Double.parseDouble(string.split(",")[0]);
                insNavi.longitudeR = d2;
                insNavi.longitudeM = d2;
                insNavi.longitude = d2;
                InsNavi insNavi2 = this.mINS;
                double d3 = Double.parseDouble(string.split(",")[1]);
                insNavi2.latitudeR = d3;
                insNavi2.latitudeM = d3;
                insNavi2.latitude = d3;
                InsNavi insNavi3 = this.mINS;
                double d4 = Double.parseDouble(string.split(",")[2]);
                insNavi3.elevationR = d4;
                insNavi3.elevationM = d4;
                insNavi3.elevation = d4;
            } catch (Exception unused) {
            }
        }
        Intent intent = getIntent();
        if (intent != null) {
            long longExtra = intent.getLongExtra("id", 0L);
            if (longExtra > 0) {
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.WAGOU.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    WaGouEntity waGouEntity = (WaGouEntity) listQueryEntityById.get(0);
                    this.waGouEntity = waGouEntity;
                    if (TextUtils.isEmpty(waGouEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.waGouEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        WaGouEntity waGouEntity2 = this.waGouEntity;
                        instanceH5.updateCurrentProjectInfo(waGouEntity2.type, waGouEntity2.projectId);
                    }
                    WaGouEntity waGouEntity3 = this.waGouEntity;
                    if (waGouEntity3.shovelTipType > 2) {
                        waGouEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(waGouEntity3.shovelTipType);
                    refreshToothType(this.waGouEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            WaGouEntity waGouEntity4 = this.waGouEntity;
            if (waGouEntity4 == null) {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
            this.binding.tvProTitle.setText(waGouEntity4.name);
        }
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WaGouWorkActivity.this.isH5Pro) {
                    return;
                }
                WaGouWorkActivity.this.startActivity(new Intent(WaGouWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WaGouWorkActivity.this.hasCadPath() && WaGouWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    WaGouWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{WaGouWorkActivity.this.mINS.longitude, WaGouWorkActivity.this.mINS.latitude, WaGouWorkActivity.this.mINS.elevation});
                if (WaGouWorkActivity.this.mapController != null) {
                    WaGouWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                WaGouWorkActivity.this.binding.workView.resetLocation();
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WaGouWorkActivity.this.hasCadPath() && WaGouWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    WaGouWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{WaGouWorkActivity.this.waGouEntity.targetLon1, WaGouWorkActivity.this.waGouEntity.targetLat1, WaGouWorkActivity.this.waGouEntity.targetElevation1});
                if (WaGouWorkActivity.this.mapController != null) {
                    WaGouWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                WaGouWorkActivity.this.binding.workView.locateToStartPoint();
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WaGouWorkActivity.this.yMap.getVisibility() == 0) {
                    WaGouWorkActivity.this.yMap.setVisibility(8);
                    WaGouWorkActivity.this.binding.cadView.setVisibility(8);
                    WaGouWorkActivity.this.binding.fltWorkView.setVisibility(0);
                } else if (WaGouWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    WaGouWorkActivity.this.binding.cadView.setVisibility(8);
                    WaGouWorkActivity.this.binding.fltWorkView.setVisibility(8);
                    WaGouWorkActivity.this.yMap.setVisibility(0);
                } else if (WaGouWorkActivity.this.hasCadPath()) {
                    WaGouWorkActivity.this.binding.fltWorkView.setVisibility(8);
                    WaGouWorkActivity.this.binding.cadView.setVisibility(0);
                } else {
                    WaGouWorkActivity.this.binding.fltWorkView.setVisibility(8);
                    WaGouWorkActivity.this.yMap.setVisibility(0);
                    WaGouWorkActivity.this.binding.cadView.setVisibility(8);
                }
            }
        });
        this.binding.ivZoom.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouWorkActivity.this.binding.ivZoom.setSelected(!WaGouWorkActivity.this.binding.ivZoom.isSelected());
                WaGouWorkActivity.this.binding.lltLeft.setVisibility(WaGouWorkActivity.this.binding.lltLeft.getVisibility() == 0 ? 8 : 0);
                WaGouWorkActivity.this.binding.workView.requestLocateToStartPoint();
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WaGouWorkActivity.this.binding.ivSound.isSelected()) {
                    if (WaGouWorkActivity.this.mBeepPlayer != null) {
                        WaGouWorkActivity.this.mBeepPlayer.stop();
                        WaGouWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    WaGouWorkActivity.this.initPlayer();
                }
                WaGouWorkActivity.this.binding.ivSound.setSelected(!WaGouWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.ivDirection.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouWorkActivity.this.binding.ivDirection.setSelected(!WaGouWorkActivity.this.binding.ivDirection.isSelected());
                WaGouWorkActivity.this.binding.workView.resfreshDirection(WaGouWorkActivity.this.binding.ivDirection.isSelected() ? 1 : 0);
            }
        });
        int i = this.waGouEntity.subType;
        WaGouEnum waGouEnum2 = WaGouEnum.DOWN;
        if (i == waGouEnum2.getType()) {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_wg_down);
            this.binding.ivArm.setImageResource(R$drawable.icon_wg_arm);
        } else if (this.waGouEntity.subType == WaGouEnum.UP.getType()) {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_wg_up);
            this.binding.ivArm.setImageResource(R$drawable.icon_wg_arm_r);
        } else {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_wg_flat);
            this.binding.ivArm.setImageResource(R$drawable.icon_wg_arm);
        }
        WaGouEntity waGouEntity5 = this.waGouEntity;
        if (waGouEntity5.subType == 0) {
            waGouEntity5.subType = WaGouEnum.FLAT.getType();
        }
        int i2 = this.waGouEntity.subType;
        WaGouEnum waGouEnum3 = WaGouEnum.FLAT;
        if (i2 == waGouEnum3.getType()) {
            this.waGouEntity.ratio = 0.0d;
        }
        WaGouEntity waGouEntity6 = this.waGouEntity;
        double d5 = waGouEntity6.targetElevationBenchmark;
        if (d5 != 0.0d && d5 == waGouEntity6.targetElevation1 && waGouEntity6.subType == waGouEnum3.getType()) {
            WaGouEntity waGouEntity7 = this.waGouEntity;
            waGouEntity7.tickA = 1;
            waGouEntity7.depthB = 0.0d;
        }
        WaGouEntity waGouEntity8 = this.waGouEntity;
        double d6 = waGouEntity8.targetElevationBenchmark;
        if (d6 != 0.0d && d6 == waGouEntity8.targetElevation2 && waGouEntity8.subType == waGouEnum3.getType()) {
            WaGouEntity waGouEntity9 = this.waGouEntity;
            waGouEntity9.tickB = 1;
            waGouEntity9.depthA = 0.0d;
        }
        WaGouEntity waGouEntity10 = this.waGouEntity;
        if (waGouEntity10.id <= 0 || waGouEntity10.length != 0.0d) {
            c = 0;
        } else {
            if (waGouEntity10.subType == waGouEnum3.getType()) {
                WaGouEntity waGouEntity11 = this.waGouEntity;
                waGouEntity11.length = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{waGouEntity11.east1, waGouEntity11.north1, waGouEntity11.targetElevation1}, new double[]{waGouEntity11.east2, waGouEntity11.north2, waGouEntity11.targetElevation2});
            } else {
                WaGouEntity waGouEntity12 = this.waGouEntity;
                double d7 = waGouEntity12.depth;
                if (d7 != 0.0d && waGouEntity12.ratio != 0.0d) {
                    double d8 = waGouEntity12.targetElevationBenchmark;
                    double d9 = waGouEntity12.targetElevation1;
                    if (d8 == d9) {
                        d = (d9 - d7) - waGouEntity12.targetElevation2;
                        waGouEnum = waGouEnum2;
                        c = 0;
                    } else {
                        waGouEnum = waGouEnum2;
                        c = 0;
                        double d10 = waGouEntity12.targetElevation2;
                        d = d8 == d10 ? d9 - (d10 - d7) : 0.0d;
                    }
                    if (d != 0.0d) {
                        dCalculateDistanceGAUSS = Math.abs(d) / (this.waGouEntity.ratio / 100.0d);
                    } else {
                        double d11 = waGouEntity12.east1;
                        double d12 = waGouEntity12.north1;
                        double[] dArr = new double[3];
                        dArr[c] = d11;
                        dArr[1] = d12;
                        dArr[2] = d9;
                        double d13 = waGouEntity12.east2;
                        double d14 = waGouEntity12.north2;
                        double d15 = waGouEntity12.targetElevation2;
                        double[] dArr2 = new double[3];
                        dArr2[c] = d13;
                        dArr2[1] = d14;
                        dArr2[2] = d15;
                        dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2);
                    }
                    waGouEntity12.length = dCalculateDistanceGAUSS;
                    this.waGouEntity.subType = d > 0.0d ? waGouEnum.getType() : WaGouEnum.UP.getType();
                }
            }
            c = 0;
        }
        WaGouEntity waGouEntity13 = this.waGouEntity;
        double d16 = waGouEntity13.east1;
        double d17 = waGouEntity13.north1;
        double d18 = waGouEntity13.targetElevation1;
        double[] dArr3 = new double[3];
        dArr3[c] = d16;
        dArr3[1] = d17;
        dArr3[2] = d18;
        this.pointA = dArr3;
        double d19 = waGouEntity13.east2;
        double d20 = waGouEntity13.north2;
        double d21 = waGouEntity13.targetElevation2;
        double[] dArr4 = new double[3];
        dArr4[c] = d19;
        dArr4[1] = d20;
        dArr4[2] = d21;
        this.pointB = dArr4;
        TextView textView = this.binding.tvProjectDistance;
        String string2 = getString(R$string.project_length);
        String distance = formatDistance(this.waGouEntity.length);
        Object[] objArr = new Object[2];
        objArr[c] = string2;
        objArr[1] = distance;
        textView.setText(String.format("%s%s", objArr));
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point == 1 ? 0 : 8);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.8
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i3) {
                WaGouWorkActivity.this.refreshToothType(i3, true);
            }
        });
        initPlayer();
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.9
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr5 = WaGouWorkActivity.this.curPositionWgs84;
                    if (dArr5 != null) {
                        WaGouWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr5[1], dArr5[0], dArr5[2]), true);
                    }
                    double[] dArr6 = {WaGouWorkActivity.this.waGouEntity.targetLon1, WaGouWorkActivity.this.waGouEntity.targetLat1, WaGouWorkActivity.this.waGouEntity.targetElevation1};
                    double[] dArr7 = {WaGouWorkActivity.this.waGouEntity.targetLon2, WaGouWorkActivity.this.waGouEntity.targetLat2, WaGouWorkActivity.this.waGouEntity.targetElevation2};
                    double dCalculateHypotenuse = TrianglefunctionUtils.calculateHypotenuse((WaGouWorkActivity.this.getLongitudinalRatio() / 100.0d) * WaGouWorkActivity.this.waGouEntity.length, WaGouWorkActivity.this.waGouEntity.length);
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(dArr6);
                    double[] dArrConvertToWGS842 = GnssCoordConvertManager.getInstance().convertToWGS84(CoordsCalculUtils.calculatePointOnLineDirection(dArr6, dArr7, dCalculateHypotenuse));
                    WaGouWorkActivity.this.mapController.addMarkerOrRoute(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]), new GeoPoint(dArrConvertToWGS842[1], dArrConvertToWGS842[0], dArrConvertToWGS842[2]));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
        initWorkView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        WaGouEntity waGouEntity = this.waGouEntity;
        return waGouEntity != null && CadEntityChooseIntent.isCadFileAvailable(waGouEntity.cadPath);
    }

    private void initCadView(double[] dArr, double[] dArr2) {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.waGouEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            this.binding.cadView.setXCadItemAreaPoint(new XCadItemAreaPoint.XCadItemPointInfo[]{new XCadItemAreaPoint.XCadItemPointInfo(dArr[0], dArr[1], getString(R$string.starting_point)), new XCadItemAreaPoint.XCadItemPointInfo(dArr2[0], dArr2[1], getString(R$string.ending_point))}, true, true, false);
        }
    }

    private void restoreData(Bundle bundle) {
        if (bundle != null) {
            this.binding.ivMapState.setSelected(bundle.getBoolean("ivMapState"));
            this.binding.ivSound.setSelected(bundle.getBoolean("ivSound"));
            this.binding.ivDirection.setSelected(bundle.getBoolean("ivDirection"));
            this.yMap.setVisibility(bundle.getInt("webview"));
            this.binding.cadView.setVisibility(bundle.getInt("cadView"));
            this.binding.lltBtn.setVisibility(bundle.getInt("lltBtn"));
            this.binding.lltH5.setVisibility(bundle.getInt("lltH5"));
            this.binding.lltH5Pro.setVisibility(bundle.getInt("lltH5Pro"));
            this.binding.tvStatusV.setVisibility(bundle.getInt("tvStatusV"));
            this.binding.tvStatusH.setVisibility(bundle.getInt("tvStatusH"));
            ActivityWgWorkBinding activityWgWorkBinding = this.binding;
            activityWgWorkBinding.workView.resfreshDirection(activityWgWorkBinding.ivDirection.isSelected() ? 1 : 0);
            if (this.binding.ivSound.isSelected()) {
                BeepPlayer beepPlayer = this.mBeepPlayer;
                if (beepPlayer != null) {
                    beepPlayer.stop();
                    this.mBeepPlayer = null;
                }
                initPlayer();
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("ivMapState", this.binding.ivMapState.isSelected());
        bundle.putBoolean("ivSound", this.binding.ivSound.isSelected());
        bundle.putBoolean("ivDirection", this.binding.ivDirection.isSelected());
        bundle.putInt("webview", this.yMap.getVisibility());
        bundle.putInt("cadView", this.binding.cadView.getVisibility());
        bundle.putInt("lltBtn", this.binding.lltBtn.getVisibility());
        bundle.putInt("lltH5", this.binding.lltH5.getVisibility());
        bundle.putInt("lltH5Pro", this.binding.lltH5Pro.getVisibility());
        bundle.putInt("tvStatusV", this.binding.tvStatusV.getVisibility());
        bundle.putInt("tvStatusH", this.binding.tvStatusH.getVisibility());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final BaseStationEntity baseStationEntity) {
        if (!this.isCheckBase && this.mGGA != null) {
            if (YCTApplication.getInstance().getAuthResult().result == 1 || YCTApplication.getInstance().getAuthResult().result == 7) {
                this.isCheckBase = true;
                if (!this.waGouEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.waGouEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.10
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            WaGouWorkActivity.this.startActivity(new Intent(WaGouWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            WaGouWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.waGouEntity.corsName.equals(getString(R$string.x_fixed))) {
                    WaGouEntity waGouEntity = this.waGouEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{waGouEntity.baseStationLon, waGouEntity.baseStationLat, waGouEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.waGouEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        WaGouEntity waGouEntity2 = this.waGouEntity;
                        if (waGouEntity2.baseStationLon != 0.0d && waGouEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.waGouEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.11
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    WaGouWorkActivity waGouWorkActivity = WaGouWorkActivity.this;
                                    waGouWorkActivity.showTipDialog(waGouWorkActivity.getString(R$string.base_station_connected), WaGouWorkActivity.this.getString(R$string.connected), WaGouWorkActivity.this.getString(R$string.not_connected), WaGouWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.11.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(WaGouWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                WaGouWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(WaGouWorkActivity.this, WaGouWorkActivity.this.getString(R$string.base) + WaGouWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            WaGouWorkActivity.this.startActivity(new Intent(WaGouWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                WaGouWorkActivity.this.startActivity(new Intent(WaGouWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    WaGouWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.12
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                WaGouWorkActivity.this.waGouEntity.baseStationLon = Double.parseDouble(WaGouWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                WaGouWorkActivity.this.waGouEntity.baseStationLat = Double.parseDouble(WaGouWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                WaGouWorkActivity.this.waGouEntity.baseStationElev = Double.parseDouble(WaGouWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                WaGouWorkActivity.this.mDatabaseManager.updateEntityById(WaGouWorkActivity.this.waGouEntity);
                                NetworkUserLoader.getInstance().modifyProject(WaGouWorkActivity.this.mINS, WaGouWorkActivity.this.waGouEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    WaGouWorkActivity.this.hasCheckBasestation = true;
                                }
                            }
                        });
                        return;
                    }
                    this.hasCheckBasestation = true;
                    return;
                }
                this.hasCheckBasestation = true;
                return;
            }
            if (YCTApplication.getInstance().isDemo() || this.mSp.getString("obtain_difference_type", "bluetooth").equals("radio")) {
                this.hasCheckBasestation = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFixedCoordinateStartupDialog() {
        if (this.isCheckBase) {
            FixedCoordinateStartupDialog fixedCoordinateStartupDialog = new FixedCoordinateStartupDialog();
            fixedCoordinateStartupDialog.show(getSupportFragmentManager(), "FixedCoordinateStartupDialog");
            Bundle bundle = new Bundle();
            bundle.putSerializable("baseProEntity", this.waGouEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.13
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    WaGouWorkActivity.this.hasCheckBasestation = true;
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(HasCheckBasestation hasCheckBasestation) {
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE)) {
            showStartSetBase();
        } else {
            this.hasCheckBasestation = true;
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        super.onEventMessage(bluetoothConnectStateEvent);
        MyBluetoothDevice myBluetoothDevice = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice != null && myBluetoothDevice.state == BluetoothStateEnum.CONNECTED.getState() && bluetoothConnectStateEvent.myDevice.deviceType == DeviceType.BASE) {
            showStartSetBase();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(ModifyProjectResponse modifyProjectResponse) {
        if (this.silentModifyProject) {
            this.silentModifyProject = false;
        } else {
            this.hasCheckBasestation = true;
            Toast.makeText(this, R$string.saved_successfully, 1).show();
        }
    }

    private void showStartSetBase() {
        if (this.isCheckBase) {
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.wagou.WaGouWorkActivity.14
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    WaGouWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        WaGouWorkActivity.this.hasCheckBasestation = true;
                    }
                    WaGouWorkActivity.this.isCheckBase = false;
                }
            });
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void bluetoothStatus(int i) {
        super.bluetoothStatus(i);
        if (i == BluetoothStateEnum.DISCONNECT.getState()) {
            BeepPlayer beepPlayer = this.mBeepPlayer;
            if (beepPlayer != null) {
                beepPlayer.stop();
                this.mBeepPlayer = null;
            }
            showDataUnAvailable();
        }
    }

    private void showDataUnAvailable() {
        this.binding.tvDiffH.setText(R$string.data_unavailable);
        this.binding.tvDiffV.setText(R$string.data_unavailable);
        this.binding.tvDiffH.setTextSize(1, 22.0f);
        this.binding.tvDiffV.setTextSize(1, 22.0f);
        this.binding.tvStatusH.setSelected(false);
        this.binding.tvStatusV.setSelected(false);
        this.binding.tvStatusH.setVisibility(8);
        this.binding.tvStatusV.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshToothType(int i, boolean z) {
        String string;
        if (this.isH5Pro) {
            if (i == 0) {
                string = getString(R$string.left_tooth);
            } else if (i == 2) {
                string = getString(R$string.rigth_tooth);
            } else {
                string = getString(R$string.center_tooth);
            }
            AppCompatTextView appCompatTextView = this.binding.tvDistanceDesH;
            StringBuilder sb = new StringBuilder();
            sb.append("%s");
            sb.append(LanguagePrefs.isZH(this) ? "" : " ");
            sb.append("%s");
            appCompatTextView.setText(String.format(sb.toString(), string, getString(R$string.Horizontal_distance_to_centralline)));
            AppCompatTextView appCompatTextView2 = this.binding.tvDistanceDesV;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("%s");
            sb2.append(LanguagePrefs.isZH(this) ? "" : " ");
            sb2.append("%s");
            appCompatTextView2.setText(String.format(sb2.toString(), string, getString(R$string.vertical_distance_to_target)));
            AppCompatTextView appCompatTextView3 = this.binding.tvDistanceDesM;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("%s");
            sb3.append(LanguagePrefs.isZH(this) ? "" : " ");
            sb3.append("%s");
            appCompatTextView3.setText(String.format(sb3.toString(), getString(R$string.center_tooth), getString(R$string.Horizontal_distance_to_centralline)));
            this.binding.workView.refreshToothType(i);
            this.waGouEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity == null || this.mDatabaseManager == null) {
            return;
        }
        waGouEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.waGouEntity);
        if (!z || TextUtils.isEmpty(this.waGouEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.waGouEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            WaGouEntity waGouEntity = this.waGouEntity;
            if (waGouEntity != null && waGouEntity.id == baseProEntity.id) {
                waGouEntity.projectUUid = baseProEntity.projectUUid;
                waGouEntity.projectId = baseProEntity.projectId;
                persistCurrentProject(true);
            } else {
                baseProEntity.updateTime = System.currentTimeMillis() / 1000;
                DatabaseManager databaseManager = this.mDatabaseManager;
                if (databaseManager != null) {
                    databaseManager.updateEntityById(createProjectResponse.entity);
                }
            }
        }
        if (createProjectResponse.entity != null) {
            YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
            BaseProEntity baseProEntity2 = createProjectResponse.entity;
            instanceH5.updateCurrentProjectInfo(baseProEntity2.type, baseProEntity2.projectId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initPlayer() {
        if (this.mBeepPlayer == null) {
            this.mBeepPlayer = new BeepPlayer();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.ditch);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getLongitudinalRatio() {
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            return 0.0d;
        }
        return this.waGouEntity.ratio;
    }

    private boolean hasAdvancedCrossSection() {
        WaGouEntity waGouEntity = this.waGouEntity;
        int i = waGouEntity.advancedType;
        return i == 1 ? (waGouEntity.leftBottomWidth == 0.0d && waGouEntity.rightBottomWidth == 0.0d) ? false : true : i == 0 ? (waGouEntity.leftSlopeRatio == 0.0d && waGouEntity.rightSlopeRatio == 0.0d) ? false : true : (waGouEntity.leftBottomWidth == 0.0d && waGouEntity.rightBottomWidth == 0.0d && waGouEntity.leftSlopeRatio == 0.0d && waGouEntity.rightSlopeRatio == 0.0d) ? false : true;
    }

    private boolean isBottomWidthMode() {
        WaGouEntity waGouEntity = this.waGouEntity;
        int i = waGouEntity.advancedType;
        if (i == 1) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        return (waGouEntity.leftBottomWidth > 0.0d || waGouEntity.rightBottomWidth > 0.0d) && waGouEntity.leftSlopeRatio == 0.0d && waGouEntity.rightSlopeRatio == 0.0d;
    }

    private double resolveFlatCenterElev() {
        double d;
        double d2;
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.tickA == 1 || waGouEntity.depthA != 0.0d) {
            d = waGouEntity.targetElevation1;
            d2 = waGouEntity.depthA;
        } else {
            d = waGouEntity.targetElevation2;
            d2 = waGouEntity.depthB;
        }
        return d + d2;
    }

    private double resolveCrossSectionDepth(double[] dArr, double[] dArr2, double[] dArr3) {
        double d = 0.0d;
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            WaGouEntity waGouEntity = this.waGouEntity;
            if (waGouEntity.tickA == 1 || waGouEntity.depthA != 0.0d) {
                return Math.abs(waGouEntity.depthA);
            }
            return Math.abs(waGouEntity.depthB);
        }
        double dProjectParamOnLine = CoordsCalculUtils.projectParamOnLine(dArr, dArr2, dArr3 != null ? dArr3 : dArr);
        double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2);
        WaGouEntity waGouEntity2 = this.waGouEntity;
        double dCalculateDistanceGAUSS2 = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{waGouEntity2.east1, waGouEntity2.north1}, new double[]{waGouEntity2.east2, waGouEntity2.north2});
        if (dCalculateDistanceGAUSS2 <= 0.0d) {
            dCalculateDistanceGAUSS2 = dCalculateDistanceGAUSS;
        }
        double d2 = dCalculateDistanceGAUSS > 0.0d ? (dCalculateDistanceGAUSS * dProjectParamOnLine) / dCalculateDistanceGAUSS2 : dProjectParamOnLine;
        if (d2 > 1.0d) {
            d = 1.0d;
        } else if (d2 >= 0.0d) {
            d = d2;
        }
        WaGouEntity waGouEntity3 = this.waGouEntity;
        double d3 = waGouEntity3.targetElevation1;
        double d4 = d3 + ((waGouEntity3.targetElevation2 - d3) * d);
        double d5 = dArr[2];
        return Math.abs(d4 - (d5 + ((dArr2[2] - d5) * dProjectParamOnLine)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r0 > 0.0d) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        return resolveConfiguredDepthAtLowerEntityEnd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
    
        if (r2 > 0.0d) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double resolveLowerEndCrossSectionDepth(double[] r10, double[] r11) {
        /*
            r9 = this;
            double r0 = r9.resolveCrossSectionDepth(r10, r11, r10)
            double r2 = r9.resolveCrossSectionDepth(r10, r11, r11)
            r4 = 2
            r5 = r10[r4]
            r10 = r11[r4]
            r7 = 0
            int r4 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r4 > 0) goto L1d
            int r10 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r10 <= 0) goto L18
            goto L26
        L18:
            int r10 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r10 <= 0) goto L27
            goto L21
        L1d:
            int r10 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r10 <= 0) goto L22
        L21:
            return r2
        L22:
            int r10 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r10 <= 0) goto L27
        L26:
            return r0
        L27:
            double r10 = r9.resolveConfiguredDepthAtLowerEntityEnd()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.wagou.WaGouWorkActivity.resolveLowerEndCrossSectionDepth(double[], double[]):double");
    }

    private double resolveConfiguredDepthAtLowerEntityEnd() {
        WaGouEntity waGouEntity = this.waGouEntity;
        double d = waGouEntity.targetElevation1;
        double d2 = waGouEntity.depthA;
        double d3 = d + d2;
        double d4 = waGouEntity.targetElevation2;
        double d5 = waGouEntity.depthB;
        if (d3 <= d4 + d5) {
            double dAbs = Math.abs(d2);
            WaGouEntity waGouEntity2 = this.waGouEntity;
            return dAbs > 0.0d ? Math.abs(waGouEntity2.depthA) : Math.abs(waGouEntity2.depthB);
        }
        double dAbs2 = Math.abs(d5);
        WaGouEntity waGouEntity3 = this.waGouEntity;
        return dAbs2 > 0.0d ? Math.abs(waGouEntity3.depthB) : Math.abs(waGouEntity3.depthA);
    }

    private double resolveSlopeBottomWidthFromRatio(double d, double d2, double d3) {
        if (d3 <= 0.0d) {
            return d2;
        }
        double dCalcBottomWidthFromSlope = DitchPositionChecker.calcBottomWidthFromSlope(d, d2, d3);
        if (dCalcBottomWidthFromSlope < 1.0E-4d) {
            return 1.0E-4d;
        }
        return dCalcBottomWidthFromSlope;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double[] buildCenterlinePointB(double[] r18) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.wagou.WaGouWorkActivity.buildCenterlinePointB(double[]):double[]");
    }

    private double[][] resolveSectionEndpoints() {
        double[] dArr;
        double[] dArrBuildCenterlinePointB;
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            this.waGouEntity.ratio = 0.0d;
            double dResolveFlatCenterElev = resolveFlatCenterElev();
            WaGouEntity waGouEntity = this.waGouEntity;
            dArr = new double[]{waGouEntity.east1, waGouEntity.north1, dResolveFlatCenterElev};
            dArrBuildCenterlinePointB = new double[]{waGouEntity.east2, waGouEntity.north2, dResolveFlatCenterElev};
        } else {
            WaGouEntity waGouEntity2 = this.waGouEntity;
            dArr = new double[]{waGouEntity2.east1, waGouEntity2.north1, waGouEntity2.targetElevation1 + waGouEntity2.depthA};
            dArrBuildCenterlinePointB = buildCenterlinePointB(dArr);
        }
        if (this.binding.ivDirection.isSelected()) {
            return new double[][]{dArrBuildCenterlinePointB, dArr};
        }
        return new double[][]{dArr, dArrBuildCenterlinePointB};
    }

    private int computeFillCutCm(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double d) {
        if (hasAdvancedCrossSection()) {
            return calculateAdvancedFillCut(dArr, dArr2, dArr3, dArr4, d);
        }
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            return (int) Math.round(DitchPositionChecker.compareElevation(dArr[2], dArr3[2]) * 100.0d);
        }
        return DitchPositionChecker.calculateFlatBottomDitchFillCut(this.appConfig.details.work_tolerance, dArr, dArr2, dArr3, dArr4, resolveCrossSectionDepth(dArr, dArr2, dArr3), resolveCrossSectionDepth(dArr, dArr2, dArr), d, false, 0.0d, 0.0d, 0.0d, 0.0d);
    }

    private int updateFillCut(InsNavi insNavi, double[] dArr, double[] dArr2, boolean z) {
        double[][] dArrResolveSectionEndpoints = resolveSectionEndpoints();
        return computeFillCutCm(dArrResolveSectionEndpoints[0], dArrResolveSectionEndpoints[1], dArr, dArr2, this.waGouEntity.width);
    }

    private int calculateAdvancedFillCut(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double d) {
        WaGouWorkActivity waGouWorkActivity;
        double d2;
        double d3;
        double d4;
        double dCalcSlopeFromBottomWidth;
        double dCalcSlopeFromBottomWidth2;
        double[] dArr5 = dArr4 != null ? dArr4 : dArr3;
        double dResolveCrossSectionDepth = resolveCrossSectionDepth(dArr, dArr2, dArr3);
        double dResolveCrossSectionDepth2 = resolveCrossSectionDepth(dArr, dArr2, dArr);
        double d5 = d / 2.0d;
        boolean zIsBottomWidthMode = isBottomWidthMode();
        if (zIsBottomWidthMode) {
            WaGouEntity waGouEntity = this.waGouEntity;
            double d6 = waGouEntity.leftBottomWidth;
            double d7 = waGouEntity.rightBottomWidth;
            d3 = d7;
            d4 = d6;
            dCalcSlopeFromBottomWidth2 = DitchPositionChecker.calcSlopeFromBottomWidth(dResolveCrossSectionDepth, d5, d6);
            waGouWorkActivity = this;
            d2 = dResolveCrossSectionDepth;
            dCalcSlopeFromBottomWidth = DitchPositionChecker.calcSlopeFromBottomWidth(dResolveCrossSectionDepth, d5, d7);
        } else {
            double dResolveLowerEndCrossSectionDepth = resolveLowerEndCrossSectionDepth(dArr, dArr2);
            WaGouEntity waGouEntity2 = this.waGouEntity;
            double d8 = waGouEntity2.leftSlopeRatio / 100.0d;
            double d9 = waGouEntity2.rightSlopeRatio / 100.0d;
            double dResolveSlopeBottomWidthFromRatio = resolveSlopeBottomWidthFromRatio(dResolveLowerEndCrossSectionDepth, d5, d8);
            double dResolveSlopeBottomWidthFromRatio2 = resolveSlopeBottomWidthFromRatio(dResolveLowerEndCrossSectionDepth, d5, d9);
            waGouWorkActivity = this;
            d2 = dResolveCrossSectionDepth;
            double dCalcSlopeFromBottomWidth3 = DitchPositionChecker.calcSlopeFromBottomWidth(d2, d5, dResolveSlopeBottomWidthFromRatio);
            d3 = dResolveSlopeBottomWidthFromRatio2;
            d4 = dResolveSlopeBottomWidthFromRatio;
            dCalcSlopeFromBottomWidth = DitchPositionChecker.calcSlopeFromBottomWidth(d2, d5, dResolveSlopeBottomWidthFromRatio2);
            dCalcSlopeFromBottomWidth2 = dCalcSlopeFromBottomWidth3;
            zIsBottomWidthMode = true;
        }
        return DitchPositionChecker.calculateFlatBottomDitchFillCut(waGouWorkActivity.appConfig.details.work_tolerance, dArr, dArr2, dArr3, dArr5, d2, dResolveCrossSectionDepth2, d, zIsBottomWidthMode, dCalcSlopeFromBottomWidth2, dCalcSlopeFromBottomWidth, d4, d3);
    }

    private double[] calculateProjectEndOnCenterline(double[] dArr, double[] dArr2) {
        double dCalculateDistanceGAUSS = this.waGouEntity.length;
        if (dCalculateDistanceGAUSS <= 0.0d) {
            dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2);
        }
        return SlopePositionChecker.calculatePointOnLineDirectionGAUSS(dArr[0], dArr[1], dArr2[0], dArr2[1], dCalculateDistanceGAUSS);
    }

    private void applyWorkViewProjectData() {
        PointF pointF;
        PointF pointF2;
        WaGouEntity waGouEntity = this.waGouEntity;
        double[] dArr = {waGouEntity.east1, waGouEntity.north1, waGouEntity.targetElevation1};
        double[] dArr2 = {waGouEntity.east2, waGouEntity.north2, waGouEntity.targetElevation2};
        if (this.binding.ivDirection.isSelected()) {
            double[] dArrCalculateProjectEndOnCenterline = calculateProjectEndOnCenterline(dArr2, dArr);
            pointF = new PointF((float) (dArr2[0] - this.baseX), (float) (dArr2[1] - this.baseY));
            pointF2 = new PointF((float) (dArrCalculateProjectEndOnCenterline[0] - this.baseX), (float) (dArrCalculateProjectEndOnCenterline[1] - this.baseY));
            initCadView(dArr2, dArrCalculateProjectEndOnCenterline);
        } else {
            double[] dArrCalculateProjectEndOnCenterline2 = calculateProjectEndOnCenterline(dArr, dArr2);
            pointF = new PointF((float) (dArr[0] - this.baseX), (float) (dArr[1] - this.baseY));
            pointF2 = new PointF((float) (dArrCalculateProjectEndOnCenterline2[0] - this.baseX), (float) (dArrCalculateProjectEndOnCenterline2[1] - this.baseY));
            initCadView(dArr, dArrCalculateProjectEndOnCenterline2);
        }
        this.binding.workView.setProjectData(pointF, pointF2, this.waGouEntity.width);
        this.binding.workView.setUseBitmap(true);
        ActivityWgWorkBinding activityWgWorkBinding = this.binding;
        activityWgWorkBinding.workView.resfreshDirection(activityWgWorkBinding.ivDirection.isSelected() ? 1 : 0);
    }

    private void initWorkView() {
        if (this.baseX == 0.0d) {
            WaGouEntity waGouEntity = this.waGouEntity;
            double[] dArr = {waGouEntity.east1, waGouEntity.north1, waGouEntity.targetElevation1};
            this.baseX = dArr[0];
            this.baseY = dArr[1];
            applyWorkViewProjectData();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        double[] dArr;
        double d;
        char c;
        char c2;
        PositionResult positionResultCalculatePosition;
        PositionResult positionResult;
        double d2;
        char c3;
        double d3;
        double[] dArrConvertToGAUSSXY;
        double[] dArr2;
        if (insNavi == null || this.mGGA == null) {
            return;
        }
        if (insNavi.longitude != 0.0d && insNavi.latitude != 0.0d) {
            this.mINS = insNavi;
        }
        try {
            this.binding.rollAngleView.setCurrnetAngle(insNavi.rollDegrees);
            resolveWorkPageAvailable(insNavi, BaseActivity.WorkInsAvailabilityMode.FULL);
            if (!this.isH5Pro) {
                if ((insNavi.insStaus & InsStatusEnum.VERTICAL.getStatus()) != 0) {
                    this.binding.tvArmAngle.setSelected(true);
                    this.binding.tvArmAngle.setClickable(false);
                } else {
                    this.binding.tvArmAngle.setSelected(false);
                    this.binding.tvArmAngle.setClickable(true);
                }
                this.binding.tvArmAngle.setText(String.format(Locale.ROOT, "%.2f°", Double.valueOf(this.pitchAngle)));
            }
            handleWorkInsCalibrateTips(insNavi, this.workPageDataAvailable, this.hasCheckBasestation);
            WaGouEntity waGouEntity = this.waGouEntity;
            if (waGouEntity != null) {
                int i = waGouEntity.shovelTipType;
                if (i == 0) {
                    dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                } else if (i == 2) {
                    dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                } else {
                    dArr = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
                }
                this.binding.tvStartDistance.setText(String.format("%s%s", getString(R$string.start_distance), formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr, this.pointA))));
                if (this.binding.ivDirection.isSelected()) {
                    d = 0.0d;
                    c = 0;
                    c2 = 2;
                    positionResultCalculatePosition = DitchPositionChecker.calculatePosition(this.appConfig.details.work_tolerance, this.pointB, this.pointA, dArr, new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM});
                } else {
                    d = 0.0d;
                    c = 0;
                    c2 = 2;
                    positionResultCalculatePosition = DitchPositionChecker.calculatePosition(this.appConfig.details.work_tolerance, this.pointA, this.pointB, dArr, new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM});
                }
                boolean z = positionResultCalculatePosition.distance <= (this.waGouEntity.width * 100.0d) / 2.0d;
                this.binding.tvBoundTip.setVisibility(z ? 8 : 0);
                double d4 = insNavi.eastM;
                double d5 = insNavi.northM;
                double d6 = insNavi.elevationM;
                double[] dArr3 = new double[3];
                dArr3[c] = d4;
                dArr3[1] = d5;
                dArr3[c2] = d6;
                double dUpdateFillCut = updateFillCut(insNavi, dArr, dArr3, z);
                ArmView armView = this.binding.ivArm;
                double d7 = dUpdateFillCut / 2.0d;
                if (this.isH5Pro) {
                    d2 = insNavi.pitchDegrees;
                    positionResult = positionResultCalculatePosition;
                } else {
                    positionResult = positionResultCalculatePosition;
                    d2 = insNavi.pitchDegrees - this.zeroDegrees;
                }
                armView.updateAnimationValue(d7, d2);
                String elevationDiffText = formatElevationDiffText(dUpdateFillCut);
                this.binding.tvUnitV.setText(Math.abs(Math.round(dUpdateFillCut)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z2 = ((float) Math.round(Math.abs(dUpdateFillCut))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z2) {
                    this.binding.tvStatusV.setText(R$string.hold);
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatusV.setSelected(true);
                    }
                    this.binding.tvDiffV.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffV.setSelected(true);
                    }
                    this.binding.ivStatusV.setImageResource(Math.round(Math.abs(dUpdateFillCut)) < 1 ? R$drawable.icon_status_v : dUpdateFillCut > d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else if (dUpdateFillCut > d) {
                    this.binding.tvStatusV.setText(getString(R$string.dig));
                    this.binding.tvStatusV.setSelected(false);
                    this.binding.tvDiffV.setText(elevationDiffText);
                    this.binding.tvDiffV.setSelected(false);
                    this.binding.ivStatusV.setImageResource(R$drawable.icon_status_dig);
                } else {
                    this.binding.tvStatusV.setText(getString(R$string.fill));
                    this.binding.tvStatusV.setSelected(false);
                    this.binding.tvDiffV.setText(elevationDiffText);
                    this.binding.tvDiffV.setSelected(false);
                    this.binding.ivStatusV.setImageResource(R$drawable.icon_status_fill);
                }
                PositionResult positionResult2 = positionResult;
                String elevationDiffText2 = formatElevationDiffText(positionResult2.distance);
                this.binding.tvDiffH.setText(elevationDiffText2);
                this.binding.tvUnitH.setText(Math.abs(Math.round(positionResult2.distance)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                int i2 = positionResult2.position;
                if (i2 == 1) {
                    this.binding.tvDiffH.setSelected(false);
                    this.binding.tvStatusH.setSelected(false);
                    this.binding.tvStatusH.setText(getString(R$string.left_leaning));
                    this.binding.ivStatusH.setImageResource(R$drawable.icon_status_l);
                } else if (i2 == -1) {
                    this.binding.tvDiffH.setSelected(false);
                    this.binding.tvStatusH.setSelected(false);
                    this.binding.tvStatusH.setText(getString(R$string.right_leaning));
                    this.binding.ivStatusH.setImageResource(R$drawable.icon_status_r);
                } else {
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffH.setSelected(true);
                    }
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatusH.setSelected(true);
                    }
                    this.binding.tvStatusH.setText(getString(R$string.center));
                    this.binding.ivStatusH.setImageResource(R$drawable.icon_status_h);
                }
                if (!this.workPageDataAvailable) {
                    this.binding.ivBucket.setDiffValue(positionResult2.positionM, (float) positionResult2.distanceM, false);
                    showDataUnAvailable();
                    d3 = d;
                    c3 = 1;
                } else {
                    this.binding.tvDiffH.setTextSize(1, getElevationDiffTextSize(elevationDiffText2, 80));
                    this.binding.tvDiffV.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 80));
                    this.binding.tvStatusH.setVisibility(0);
                    this.binding.tvStatusV.setVisibility(0);
                    this.binding.ivBucket.setDiffValue(positionResult2.positionM, (float) positionResult2.distanceM);
                    double d8 = insNavi.east;
                    double d9 = insNavi.north;
                    double d10 = insNavi.elevation;
                    c3 = 1;
                    double[] dArr4 = new double[3];
                    dArr4[0] = d8;
                    dArr4[1] = d9;
                    dArr4[c2] = d10;
                    double d11 = insNavi.eastR;
                    double d12 = insNavi.northR;
                    double d13 = insNavi.elevationR;
                    d3 = d;
                    double[] dArr5 = new double[3];
                    dArr5[0] = d11;
                    dArr5[1] = d12;
                    dArr5[c2] = d13;
                    double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr4, dArr5);
                    this.binding.ivBucket.setIconWidth(dCalculateDistanceGAUSS == d3 ? 100.0d : dCalculateDistanceGAUSS * 100.0d);
                }
                if (!this.workPageDataAvailable || !this.binding.ivSound.isSelected()) {
                    BeepPlayer beepPlayer = this.mBeepPlayer;
                    if (beepPlayer != null) {
                        beepPlayer.pause();
                    }
                } else {
                    BeepPlayer beepPlayer2 = this.mBeepPlayer;
                    if (beepPlayer2 != null) {
                        beepPlayer2.resume();
                        double dAbs = Math.abs(dUpdateFillCut / 100.0d);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z2) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (dUpdateFillCut > d3) {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.BUZZ);
                                this.mBeepPlayer.start();
                            } else {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.WOOD_FISH);
                                this.mBeepPlayer.start();
                            }
                        }
                    }
                }
                if (this.baseX != d3 && this.baseY != d3) {
                    if (this.workPageDataAvailable) {
                        double d14 = insNavi.east;
                        double d15 = insNavi.north;
                        double d16 = insNavi.elevation;
                        dArrConvertToGAUSSXY = new double[3];
                        dArrConvertToGAUSSXY[0] = d14;
                        dArrConvertToGAUSSXY[c3] = d15;
                        dArrConvertToGAUSSXY[c2] = d16;
                        double d17 = insNavi.eastR;
                        double d18 = insNavi.northR;
                        double d19 = insNavi.elevationR;
                        dArr2 = new double[3];
                        dArr2[0] = d17;
                        dArr2[c3] = d18;
                        dArr2[c2] = d19;
                    } else {
                        GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
                        InsNavi insNavi2 = this.mINS;
                        double d20 = insNavi2.longitude;
                        double d21 = insNavi2.latitude;
                        double d22 = insNavi2.elevation;
                        double[] dArr6 = new double[3];
                        dArr6[0] = d20;
                        dArr6[c3] = d21;
                        dArr6[c2] = d22;
                        dArrConvertToGAUSSXY = gnssCoordConvertManager.convertToGAUSSXY(dArr6);
                        dArr2 = dArrConvertToGAUSSXY;
                    }
                    if (dArrConvertToGAUSSXY != null && dArr2 != null) {
                        this.binding.workView.setLocationPoint(new PointF((float) (dArrConvertToGAUSSXY[0] - this.baseX), (float) (dArrConvertToGAUSSXY[c3] - this.baseY)), new PointF((float) (dArr2[0] - this.baseX), (float) (dArr2[c3] - this.baseY)), CoordsCalculUtils.calculateDistanceGAUSS(dArrConvertToGAUSSXY, dArr2), z);
                    }
                }
                refreshCadView(dArr, insNavi.headingDegrees);
            }
            refreshTianDiMap(insNavi);
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e(e + "");
        }
    }

    private void refreshCadView(double[] dArr, double d) {
        if (hasCadPath()) {
            this.binding.cadView.setXCadVehiclePosition(dArr[0], dArr[1], d);
        }
    }

    private void refreshTianDiMap(InsNavi insNavi) {
        double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation});
        this.curPositionWgs84 = dArrConvertToWGS84;
        if (!this.yMap.isInit()) {
            this.yMap.init(this.binding.mapContainer, new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
        } else {
            this.mapController.updateLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]), false);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        this.yMap.onResume();
        initPlayer();
        if (YCTApplication.getInstance().getCurrentDevice() == null || YCTApplication.getInstance().getCurrentDevice().bluetoothDevice == null) {
            return;
        }
        this.binding.tvMachineNumber.setText(YCTApplication.getInstance().getCurrentDevice().bluetoothDevice.getName());
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.yMap.onPause();
        BeepPlayer beepPlayer = this.mBeepPlayer;
        if (beepPlayer != null) {
            beepPlayer.stop();
            this.mBeepPlayer = null;
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.yMap.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.yMap.onStop();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        YMap yMap = this.yMap;
        if (yMap != null && yMap.getVisibility() == 0 && this.yMap.onBackPressed()) {
            return;
        }
        super.onBackPressed();
        BeepPlayer beepPlayer = this.mBeepPlayer;
        if (beepPlayer != null) {
            beepPlayer.stop();
            this.mBeepPlayer = null;
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.yMap.onDestroy();
        YctDeviceManager.getInstanceH5().updateCurrentProjectInfo(-1, -1L);
        this.sensorEventHelper.unRegisterSensorListener();
        EventBus.getDefault().unregister(this);
        BeepPlayer beepPlayer = this.mBeepPlayer;
        if (beepPlayer != null) {
            beepPlayer.stop();
            this.mBeepPlayer = null;
        }
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        YMap yMap = this.yMap;
        if (yMap != null) {
            yMap.onLowMemory();
        }
    }
}
