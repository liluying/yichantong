package com.qianhe.yct.activity.shuapo;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintSet;
import com.YctDeviceManager;
import com.qh.xcad.XCadView;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.enums.ShuaPoEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.SensorEventHelper;
import com.qianhe.baselib.utils.workchecker.SlopePositionChecker;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivitySpWorkBinding;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoWorkActivity extends BaseActivity {
    private ActivitySpWorkBinding binding;
    private double[] coordA;
    private double[] coordB;
    private double[] coordC;
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
    private boolean pointCOnSlope;
    private SensorEventHelper sensorEventHelper;
    private ShuaPoEntity shuaPoEntity;
    private boolean silentModifyProject;
    private double[] slopeThirdPointGeodetic;
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
        this.binding = ActivitySpWorkBinding.inflate(getLayoutInflater());
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
                double d = Double.parseDouble(string.split(",")[0]);
                insNavi.longitudeR = d;
                insNavi.longitudeM = d;
                insNavi.longitude = d;
                InsNavi insNavi2 = this.mINS;
                double d2 = Double.parseDouble(string.split(",")[1]);
                insNavi2.latitudeR = d2;
                insNavi2.latitudeM = d2;
                insNavi2.latitude = d2;
                InsNavi insNavi3 = this.mINS;
                double d3 = Double.parseDouble(string.split(",")[2]);
                insNavi3.elevationR = d3;
                insNavi3.elevationM = d3;
                insNavi3.elevation = d3;
            } catch (Exception unused) {
            }
        }
        Intent intent = getIntent();
        if (intent != null) {
            long longExtra = intent.getLongExtra("id", 0L);
            if (longExtra > 0) {
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.SHUAPO.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    ShuaPoEntity shuaPoEntity = (ShuaPoEntity) listQueryEntityById.get(0);
                    this.shuaPoEntity = shuaPoEntity;
                    if (TextUtils.isEmpty(shuaPoEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.shuaPoEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
                        instanceH5.updateCurrentProjectInfo(shuaPoEntity2.type, shuaPoEntity2.projectId);
                    }
                    ShuaPoEntity shuaPoEntity3 = this.shuaPoEntity;
                    if (shuaPoEntity3.shovelTipType > 2) {
                        shuaPoEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(shuaPoEntity3.shovelTipType);
                    refreshToothType(this.shuaPoEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            if (this.shuaPoEntity != null) {
                this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.shuaPoEntity.name));
                ShuaPoEntity shuaPoEntity4 = this.shuaPoEntity;
                if (shuaPoEntity4.heigth == 0.0d) {
                    if (shuaPoEntity4.subType == ShuaPoEnum.DOWN.getType()) {
                        this.binding.lltBottomDistance.setVisibility(8);
                    } else {
                        this.binding.lltTopDistance.setVisibility(8);
                    }
                    this.binding.placeView.setVisibility(8);
                    this.shuaPoEntity.heigth = 2.0d;
                }
                ShuaPoEntity shuaPoEntity5 = this.shuaPoEntity;
                if (shuaPoEntity5.flatDistance == 0.0d) {
                    double d4 = shuaPoEntity5.ratio;
                    if (d4 > 0.0d) {
                        double d5 = shuaPoEntity5.heigth;
                        if (d5 > 0.0d) {
                            shuaPoEntity5.flatDistance = d5 / (d4 / 100.0d);
                        }
                    }
                }
                initSlopeThirdPoint();
            } else {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoWorkActivity.this.hasCadPath() && ShuaPoWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ShuaPoWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ShuaPoWorkActivity.this.mINS.longitude, ShuaPoWorkActivity.this.mINS.latitude, ShuaPoWorkActivity.this.mINS.elevation});
                if (ShuaPoWorkActivity.this.mapController != null) {
                    ShuaPoWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoWorkActivity.this.hasCadPath() && ShuaPoWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ShuaPoWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ShuaPoWorkActivity.this.shuaPoEntity.targetLon1, ShuaPoWorkActivity.this.shuaPoEntity.targetLat1, ShuaPoWorkActivity.this.shuaPoEntity.targetElevation1});
                if (ShuaPoWorkActivity.this.mapController != null) {
                    ShuaPoWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoWorkActivity.this.isH5Pro) {
                    return;
                }
                ShuaPoWorkActivity.this.startActivity(new Intent(ShuaPoWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoWorkActivity.this.yMap.getVisibility() == 0) {
                    ShuaPoWorkActivity.this.yMap.setVisibility(8);
                    ShuaPoWorkActivity.this.binding.cadView.setVisibility(8);
                    ShuaPoWorkActivity.this.binding.lltBtn.setVisibility(8);
                } else if (ShuaPoWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ShuaPoWorkActivity.this.binding.cadView.setVisibility(8);
                    ShuaPoWorkActivity.this.yMap.setVisibility(0);
                    ShuaPoWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else if (ShuaPoWorkActivity.this.hasCadPath()) {
                    ShuaPoWorkActivity.this.binding.cadView.setVisibility(0);
                    ShuaPoWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else {
                    ShuaPoWorkActivity.this.yMap.setVisibility(0);
                    ShuaPoWorkActivity.this.binding.cadView.setVisibility(8);
                    ShuaPoWorkActivity.this.binding.lltBtn.setVisibility(0);
                }
            }
        });
        initCadView();
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoWorkActivity.this.binding.ivSound.isSelected()) {
                    if (ShuaPoWorkActivity.this.mBeepPlayer != null) {
                        ShuaPoWorkActivity.this.mBeepPlayer.stop();
                        ShuaPoWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    ShuaPoWorkActivity.this.initPlayer();
                }
                ShuaPoWorkActivity.this.binding.ivSound.setSelected(!ShuaPoWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        ShuaPoEntity shuaPoEntity6 = this.shuaPoEntity;
        double d6 = shuaPoEntity6.targetElevationBenchmark;
        if (d6 != 0.0d && d6 == shuaPoEntity6.targetElevation1) {
            shuaPoEntity6.tickA = 1;
        }
        if (d6 != 0.0d && d6 == shuaPoEntity6.targetElevation2) {
            shuaPoEntity6.tickB = 1;
        }
        if (shuaPoEntity6.subType == ShuaPoEnum.DOWN.getType()) {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_sp_down_work);
            this.binding.ivArm.setImageResource(R$drawable.icon_sp_arm);
            if (isPad()) {
                ConstraintSet constraintSet = new ConstraintSet();
                constraintSet.clone(this.binding.constraintLayout);
                constraintSet.connect(R$id.ivArm, 6, R$id.lineH, 7);
                constraintSet.applyTo(this.binding.constraintLayout);
            }
        } else if (this.shuaPoEntity.subType == ShuaPoEnum.UP.getType()) {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_sp_up_work);
            this.binding.ivArm.setImageResource(R$drawable.icon_sp_arm_r);
            if (isPad()) {
                ConstraintSet constraintSet2 = new ConstraintSet();
                constraintSet2.clone(this.binding.constraintLayout);
                constraintSet2.connect(R$id.ivArm, 7, R$id.lineH, 7);
                constraintSet2.applyTo(this.binding.constraintLayout);
            }
        }
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                ShuaPoWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.7
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = ShuaPoWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        ShuaPoWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    ShuaPoWorkActivity.this.mapController.addPolyline(ShuaPoWorkActivity.this.buildSlopeSurfaceMapPoints(), true, Arrays.asList("A", "B", "C"));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        return shuaPoEntity != null && CadEntityChooseIntent.isCadFileAvailable(shuaPoEntity.cadPath);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<GeoPoint> buildSlopeSurfaceMapPoints() {
        double[] dArr;
        ArrayList arrayList = new ArrayList();
        if (this.pointCOnSlope || (dArr = this.slopeThirdPointGeodetic) == null) {
            dArr = this.coordC;
        }
        double[][] dArr2 = {this.coordA, this.coordB, dArr};
        for (int i = 0; i < 3; i++) {
            double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(dArr2[i]);
            arrayList.add(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
        }
        return arrayList;
    }

    private void initSlopeThirdPoint() {
        double d;
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity == null) {
            return;
        }
        if (shuaPoEntity.tickA == 1) {
            d = shuaPoEntity.targetElevation1;
        } else {
            d = shuaPoEntity.tickB == 1 ? shuaPoEntity.targetElevation2 : 0.0d;
        }
        this.coordA = new double[]{shuaPoEntity.targetLon1, shuaPoEntity.targetLat1, d == 0.0d ? shuaPoEntity.targetElevation1 : d};
        double d2 = shuaPoEntity.targetLon2;
        double d3 = shuaPoEntity.targetLat2;
        if (d == 0.0d) {
            d = shuaPoEntity.targetElevation2;
        }
        this.coordB = new double[]{d2, d3, d};
        this.coordC = new double[]{shuaPoEntity.targetLon3, shuaPoEntity.targetLat3, shuaPoEntity.targetElevation3};
        this.pointCOnSlope = SlopePositionChecker.isPointCOnSlope(shuaPoEntity);
        this.slopeThirdPointGeodetic = SlopePositionChecker.resolveSlopeThirdPointGeodetic(this.coordA, this.coordB, this.coordC, this.shuaPoEntity);
        ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
        this.pointA = new double[]{shuaPoEntity2.east1, shuaPoEntity2.north1, this.coordA[2]};
        this.pointB = new double[]{shuaPoEntity2.east2, shuaPoEntity2.north2, this.coordB[2]};
    }

    private void initCadView() {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.shuaPoEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            double d = shuaPoEntity.east3;
            double d2 = shuaPoEntity.north3;
            if (!this.pointCOnSlope) {
                double[] dArrCalculateSlopeThirdPointEngineering = SlopePositionChecker.calculateSlopeThirdPointEngineering(shuaPoEntity);
                d = dArrCalculateSlopeThirdPointEngineering[0];
                d2 = dArrCalculateSlopeThirdPointEngineering[1];
            }
            XCadView xCadView = this.binding.cadView;
            ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
            xCadView.setXCadItemAreaPoint(new double[]{shuaPoEntity2.east1, shuaPoEntity2.north1, shuaPoEntity2.east2, shuaPoEntity2.north2, d, d2}, true, true, true);
        }
    }

    private void restoreData(Bundle bundle) {
        if (bundle != null) {
            this.binding.ivMapState.setSelected(bundle.getBoolean("ivMapState"));
            this.binding.ivSound.setSelected(bundle.getBoolean("ivSound"));
            this.yMap.setVisibility(bundle.getInt("webview"));
            this.binding.cadView.setVisibility(bundle.getInt("cadView"));
            this.binding.lltBtn.setVisibility(bundle.getInt("lltBtn"));
            this.binding.lltH5.setVisibility(bundle.getInt("lltH5"));
            this.binding.lltH5Pro.setVisibility(bundle.getInt("lltH5Pro"));
            this.binding.tvStatus.setVisibility(bundle.getInt("tvStatus"));
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
        bundle.putInt("webview", this.yMap.getVisibility());
        bundle.putInt("cadView", this.binding.cadView.getVisibility());
        bundle.putInt("lltBtn", this.binding.lltBtn.getVisibility());
        bundle.putInt("lltH5", this.binding.lltH5.getVisibility());
        bundle.putInt("lltH5Pro", this.binding.lltH5Pro.getVisibility());
        bundle.putInt("tvStatus", this.binding.tvStatus.getVisibility());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final BaseStationEntity baseStationEntity) {
        if (!this.isCheckBase && this.mGGA != null) {
            if (YCTApplication.getInstance().getAuthResult().result == 1 || YCTApplication.getInstance().getAuthResult().result == 7) {
                this.isCheckBase = true;
                if (!this.shuaPoEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.shuaPoEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.8
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            ShuaPoWorkActivity.this.startActivity(new Intent(ShuaPoWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            ShuaPoWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.shuaPoEntity.corsName.equals(getString(R$string.x_fixed))) {
                    ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{shuaPoEntity.baseStationLon, shuaPoEntity.baseStationLat, shuaPoEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.shuaPoEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
                        if (shuaPoEntity2.baseStationLon != 0.0d && shuaPoEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.shuaPoEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.9
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    ShuaPoWorkActivity shuaPoWorkActivity = ShuaPoWorkActivity.this;
                                    shuaPoWorkActivity.showTipDialog(shuaPoWorkActivity.getString(R$string.base_station_connected), ShuaPoWorkActivity.this.getString(R$string.connected), ShuaPoWorkActivity.this.getString(R$string.not_connected), ShuaPoWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.9.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(ShuaPoWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                ShuaPoWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(ShuaPoWorkActivity.this, ShuaPoWorkActivity.this.getString(R$string.base) + ShuaPoWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            ShuaPoWorkActivity.this.startActivity(new Intent(ShuaPoWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                ShuaPoWorkActivity.this.startActivity(new Intent(ShuaPoWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    ShuaPoWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.10
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                ShuaPoWorkActivity.this.shuaPoEntity.baseStationLon = Double.parseDouble(ShuaPoWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                ShuaPoWorkActivity.this.shuaPoEntity.baseStationLat = Double.parseDouble(ShuaPoWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                ShuaPoWorkActivity.this.shuaPoEntity.baseStationElev = Double.parseDouble(ShuaPoWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                ShuaPoWorkActivity.this.mDatabaseManager.updateEntityById(ShuaPoWorkActivity.this.shuaPoEntity);
                                NetworkUserLoader.getInstance().modifyProject(ShuaPoWorkActivity.this.mINS, ShuaPoWorkActivity.this.shuaPoEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    ShuaPoWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.shuaPoEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.11
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    ShuaPoWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity.12
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ShuaPoWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        ShuaPoWorkActivity.this.hasCheckBasestation = true;
                    }
                    ShuaPoWorkActivity.this.isCheckBase = false;
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
        this.binding.tvDiff.setText(R$string.data_unavailable);
        this.binding.tvDiff.setText(getString(R$string.data_unavailable));
        this.binding.tvDiff.setTextSize(1, 24.0f);
        this.binding.tvDiffTop.setText(R$string.data_unavailable);
        this.binding.tvDiffTop.setTextSize(1, 20.0f);
        this.binding.tvDiffTop.setSelected(false);
        this.binding.tvDiffBottom.setText(R$string.data_unavailable);
        this.binding.tvDiffBottom.setTextSize(1, 20.0f);
        this.binding.tvDiffBottom.setSelected(false);
        this.binding.tvStatus.setVisibility(4);
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
            AppCompatTextView appCompatTextView = this.binding.tvDistanceDes;
            StringBuilder sb = new StringBuilder();
            sb.append("%s");
            sb.append(LanguagePrefs.isZH(this) ? "" : " ");
            sb.append("%s");
            appCompatTextView.setText(String.format(sb.toString(), string, getString(R$string.vertical_distance_to_slope)));
            this.binding.tvTopDes.setText(getString(R$string.distance_to_top_of_slope));
            this.binding.tvBottomDes.setText(getString(R$string.distance_to_bottom_of_slope));
            this.shuaPoEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity == null || this.mDatabaseManager == null) {
            return;
        }
        shuaPoEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.shuaPoEntity);
        if (!z || TextUtils.isEmpty(this.shuaPoEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.shuaPoEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            if (shuaPoEntity != null && shuaPoEntity.id == baseProEntity.id) {
                shuaPoEntity.projectUUid = baseProEntity.projectUUid;
                shuaPoEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.slope);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        double[] dArr;
        double d;
        double[] dArr2;
        double[] dArr3;
        CheckResult checkResultCheckPositionGeodetic;
        double[] dArr4;
        double d2;
        double d3;
        char c;
        double d4;
        if (insNavi == null) {
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
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            if (shuaPoEntity != null) {
                boolean z = this.pointCOnSlope;
                if (z || (dArr = this.slopeThirdPointGeodetic) == null) {
                    dArr = this.coordC;
                }
                int i = shuaPoEntity.shovelTipType;
                if (i == 0) {
                    double d5 = insNavi.east;
                    double d6 = insNavi.north;
                    d = 0.0d;
                    double d7 = insNavi.elevation;
                    dArr2 = new double[]{d5, d6, d7};
                    dArr3 = new double[]{insNavi.longitude, insNavi.latitude, d7};
                } else {
                    d = 0.0d;
                    if (i == 2) {
                        double d8 = insNavi.eastR;
                        double d9 = insNavi.northR;
                        double d10 = insNavi.elevationR;
                        dArr2 = new double[]{d8, d9, d10};
                        dArr3 = new double[]{insNavi.longitudeR, insNavi.latitudeR, d10};
                    } else {
                        double d11 = insNavi.eastM;
                        double d12 = insNavi.northM;
                        double d13 = insNavi.elevationM;
                        dArr2 = new double[]{d11, d12, d13};
                        dArr3 = new double[]{insNavi.longitudeM, insNavi.latitudeM, d13};
                    }
                }
                if (z) {
                    checkResultCheckPositionGeodetic = SlopePositionChecker.checkPositionGeodetic(this.appConfig.details.work_tolerance, dArr3, this.coordA, this.coordB, this.coordC);
                } else {
                    checkResultCheckPositionGeodetic = SlopePositionChecker.checkPositionGeodetic(this.appConfig.details.work_tolerance, dArr3, this.coordA, this.coordB, dArr);
                }
                double d14 = checkResultCheckPositionGeodetic.verticalDistance;
                String elevationDiffText = formatElevationDiffText(d14);
                this.binding.tvUnit.setText(Math.abs(Math.round(d14)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z2 = ((float) Math.round(Math.abs(d14))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z2) {
                    this.binding.tvStatus.setText(R$string.hold);
                    this.binding.tvDiff.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiff.setSelected(true);
                    }
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatus.setSelected(true);
                    }
                    this.binding.ivStatus.setImageResource(Math.round(Math.abs(d14)) < 1 ? R$drawable.icon_status_v : checkResultCheckPositionGeodetic.verticalDistance > d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else if (d14 > d) {
                    this.binding.tvStatus.setText(getString(R$string.dig));
                    this.binding.tvDiff.setText(elevationDiffText);
                    this.binding.tvDiff.setSelected(false);
                    this.binding.ivStatus.setImageResource(R$drawable.icon_status_dig);
                    this.binding.tvStatus.setSelected(false);
                } else {
                    this.binding.tvStatus.setText(getString(R$string.fill));
                    this.binding.tvDiff.setText(elevationDiffText);
                    this.binding.tvDiff.setSelected(false);
                    this.binding.ivStatus.setImageResource(R$drawable.icon_status_fill);
                    this.binding.tvStatus.setSelected(false);
                }
                if (!this.workPageDataAvailable) {
                    showDataUnAvailable();
                } else {
                    this.binding.tvStatus.setVisibility(0);
                    this.binding.tvDiff.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 90));
                    ViewGroup.LayoutParams layoutParams = this.binding.tvDiff.getLayoutParams();
                    layoutParams.height = DpUtils.dp2px(this, 100.0f);
                    this.binding.tvDiff.setLayoutParams(layoutParams);
                }
                if (this.shuaPoEntity.subType == ShuaPoEnum.DOWN.getType()) {
                    d2 = dArr2[2] - this.pointA[2];
                    this.binding.tvDiffTop.setText(String.valueOf((int) Math.round(Math.abs(d2 * 100.0d))));
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffTop.setSelected(true);
                    }
                    dArr4 = dArr2;
                    d3 = dArr2[2] - (this.pointA[2] - this.shuaPoEntity.heigth);
                    this.binding.tvDiffBottom.setText(String.valueOf((int) Math.round(Math.abs(d3 * 100.0d))));
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffBottom.setSelected(true);
                    }
                    this.binding.ivStatusTop.setImageResource(R$drawable.icon_sp_work_green_down);
                    this.binding.ivStatusBottom.setImageResource(R$drawable.icon_sp_work_green_up);
                } else {
                    dArr4 = dArr2;
                    d2 = dArr4[2] - (this.pointA[2] + this.shuaPoEntity.heigth);
                    this.binding.tvDiffTop.setText(String.valueOf((int) Math.round(Math.abs(d2 * 100.0d))));
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffTop.setSelected(true);
                    }
                    d3 = dArr4[2] - this.pointA[2];
                    this.binding.tvDiffBottom.setText(String.valueOf((int) Math.round(Math.abs(d3 * 100.0d))));
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffBottom.setSelected(true);
                    }
                    this.binding.ivStatusTop.setImageResource(R$drawable.icon_sp_work_green_up);
                    this.binding.ivStatusBottom.setImageResource(R$drawable.icon_sp_work_green_down);
                }
                if (d2 > d) {
                    this.binding.ivStatusTop.setImageResource(R$drawable.icon_sp_work_red_up);
                    this.binding.ivStatusBottom.setImageResource(R$drawable.icon_sp_work_red_up);
                    this.binding.tvDiffTop.setSelected(false);
                    this.binding.tvDiffBottom.setSelected(false);
                } else if (d3 < d) {
                    this.binding.ivStatusTop.setImageResource(R$drawable.icon_sp_work_red_down);
                    this.binding.ivStatusBottom.setImageResource(R$drawable.icon_sp_work_red_down);
                    this.binding.tvDiffTop.setSelected(false);
                    this.binding.tvDiffBottom.setSelected(false);
                }
                if (!this.workPageDataAvailable) {
                    showDataUnAvailable();
                } else {
                    this.binding.tvDiffTop.setTextSize(1, isPad() ? 40.0f : 28.0f);
                    this.binding.tvDiffBottom.setTextSize(1, isPad() ? 40.0f : 28.0f);
                }
                ArmView armView = this.binding.ivArm;
                double d15 = checkResultCheckPositionGeodetic.verticalDistance;
                if (this.isH5Pro) {
                    d4 = insNavi.pitchDegrees;
                    c = 1;
                } else {
                    c = 1;
                    d4 = insNavi.pitchDegrees - this.zeroDegrees;
                }
                armView.updateAnimationValue(d15, d4);
                TextView textView = this.binding.tvStartDistance;
                String string = getString(R$string.distance_from_project_starting);
                double[] dArr5 = dArr4;
                String distance = formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr5, this.pointA));
                Object[] objArr = new Object[2];
                objArr[0] = string;
                objArr[c] = distance;
                textView.setText(String.format("%s：%s", objArr));
                if (!this.workPageDataAvailable || !this.binding.ivSound.isSelected()) {
                    BeepPlayer beepPlayer = this.mBeepPlayer;
                    if (beepPlayer != null) {
                        beepPlayer.pause();
                    }
                } else {
                    BeepPlayer beepPlayer2 = this.mBeepPlayer;
                    if (beepPlayer2 != null) {
                        beepPlayer2.resume();
                        double dAbs = Math.abs(d14);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z2) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (d14 > d) {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.BUZZ);
                                this.mBeepPlayer.start();
                            } else {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.WOOD_FISH);
                                this.mBeepPlayer.start();
                            }
                        }
                    }
                }
                refreshCadView(dArr5, insNavi.headingDegrees);
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
        EventBus.getDefault().unregister(this);
        this.sensorEventHelper.unRegisterSensorListener();
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
