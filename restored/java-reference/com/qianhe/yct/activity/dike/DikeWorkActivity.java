package com.qianhe.yct.activity.dike;

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
import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.PositionResult;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.DikeEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
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
import com.qianhe.yct.databinding.ActivityDikeWorkBinding;
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
public class DikeWorkActivity extends BaseActivity {
    private double baseX;
    private double baseY;
    private ActivityDikeWorkBinding binding;
    private double[] curPositionWgs84;
    private DikeEntity dikeEntity;
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
        this.binding = ActivityDikeWorkBinding.inflate(getLayoutInflater());
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Intent intent = getIntent();
        if (intent != null) {
            long longExtra = intent.getLongExtra("id", 0L);
            if (longExtra > 0) {
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.DIKE.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    DikeEntity dikeEntity = (DikeEntity) listQueryEntityById.get(0);
                    this.dikeEntity = dikeEntity;
                    if (TextUtils.isEmpty(dikeEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.dikeEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        DikeEntity dikeEntity2 = this.dikeEntity;
                        instanceH5.updateCurrentProjectInfo(dikeEntity2.type, dikeEntity2.projectId);
                    }
                    DikeEntity dikeEntity3 = this.dikeEntity;
                    if (dikeEntity3.shovelTipType > 2) {
                        dikeEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(dikeEntity3.shovelTipType);
                    refreshToothType(this.dikeEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            DikeEntity dikeEntity4 = this.dikeEntity;
            if (dikeEntity4 == null) {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
            this.binding.tvProTitle.setText(dikeEntity4.name);
            DikeEntity dikeEntity5 = this.dikeEntity;
            this.pointA = new double[]{dikeEntity5.east1, dikeEntity5.north1, dikeEntity5.targetElevation1};
            this.pointB = new double[]{dikeEntity5.east2, dikeEntity5.north2, dikeEntity5.targetElevation2};
            this.binding.tvProjectDistance.setText(String.format("%s%s", getString(R$string.project_length), formatDistance(this.dikeEntity.length)));
        }
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DikeWorkActivity.this.isH5Pro) {
                    return;
                }
                DikeWorkActivity.this.startActivity(new Intent(DikeWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DikeWorkActivity.this.hasCadPath() && DikeWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    DikeWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{DikeWorkActivity.this.mINS.longitude, DikeWorkActivity.this.mINS.latitude, DikeWorkActivity.this.mINS.elevation});
                if (DikeWorkActivity.this.mapController != null) {
                    DikeWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                DikeWorkActivity.this.binding.workView.resetLocation();
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DikeWorkActivity.this.hasCadPath() && DikeWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    DikeWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{DikeWorkActivity.this.dikeEntity.targetLon1, DikeWorkActivity.this.dikeEntity.targetLat1, DikeWorkActivity.this.dikeEntity.targetElevation1});
                if (DikeWorkActivity.this.mapController != null) {
                    DikeWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                DikeWorkActivity.this.binding.workView.locateToStartPoint();
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DikeWorkActivity.this.yMap.getVisibility() == 0) {
                    DikeWorkActivity.this.yMap.setVisibility(8);
                    DikeWorkActivity.this.binding.cadView.setVisibility(8);
                    DikeWorkActivity.this.binding.workView.setVisibility(0);
                } else if (DikeWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    DikeWorkActivity.this.binding.cadView.setVisibility(8);
                    DikeWorkActivity.this.binding.workView.setVisibility(8);
                    DikeWorkActivity.this.yMap.setVisibility(0);
                } else if (DikeWorkActivity.this.hasCadPath()) {
                    DikeWorkActivity.this.binding.workView.setVisibility(8);
                    DikeWorkActivity.this.binding.cadView.setVisibility(0);
                } else {
                    DikeWorkActivity.this.binding.workView.setVisibility(8);
                    DikeWorkActivity.this.yMap.setVisibility(0);
                    DikeWorkActivity.this.binding.cadView.setVisibility(8);
                }
            }
        });
        this.binding.ivZoom.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeWorkActivity.this.binding.ivZoom.setSelected(!DikeWorkActivity.this.binding.ivZoom.isSelected());
                DikeWorkActivity.this.binding.lltLeft.setVisibility(DikeWorkActivity.this.binding.lltLeft.getVisibility() == 0 ? 8 : 0);
                DikeWorkActivity.this.binding.workView.requestLocateToStartPoint();
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DikeWorkActivity.this.binding.ivSound.isSelected()) {
                    if (DikeWorkActivity.this.mBeepPlayer != null) {
                        DikeWorkActivity.this.mBeepPlayer.stop();
                        DikeWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    DikeWorkActivity.this.initPlayer();
                }
                DikeWorkActivity.this.binding.ivSound.setSelected(!DikeWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.ivDirection.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeWorkActivity.this.binding.ivDirection.setSelected(!DikeWorkActivity.this.binding.ivDirection.isSelected());
                if (DikeWorkActivity.this.baseX != 0.0d) {
                    DikeWorkActivity.this.applyWorkViewProjectData();
                } else {
                    DikeWorkActivity.this.binding.workView.resfreshDirection(DikeWorkActivity.this.binding.ivDirection.isSelected() ? 1 : 0);
                }
            }
        });
        if (this.dikeEntity.subType != DikeEnum.DOWN.getType() && this.dikeEntity.subType == DikeEnum.UP.getType()) {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_dike_flat);
            this.binding.ivArm.setImageResource(R$drawable.icon_wg_arm_r);
        } else {
            this.binding.ivSlopeType.setBackgroundResource(R$drawable.bg_dike_flat);
            this.binding.ivArm.setImageResource(R$drawable.icon_wg_arm);
        }
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.8
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                DikeWorkActivity.this.refreshToothType(i, true);
            }
        });
        initPlayer();
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.9
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = DikeWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        DikeWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    double[] dArr2 = {DikeWorkActivity.this.dikeEntity.targetLon1, DikeWorkActivity.this.dikeEntity.targetLat1, DikeWorkActivity.this.dikeEntity.targetElevation1};
                    double[] dArr3 = {DikeWorkActivity.this.dikeEntity.targetLon2, DikeWorkActivity.this.dikeEntity.targetLat2, DikeWorkActivity.this.dikeEntity.targetElevation2};
                    double dCalculateHypotenuse = TrianglefunctionUtils.calculateHypotenuse((DikeWorkActivity.this.dikeEntity.ratio / 100.0d) * DikeWorkActivity.this.dikeEntity.length, DikeWorkActivity.this.dikeEntity.length);
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(dArr2);
                    double[] dArrConvertToWGS842 = GnssCoordConvertManager.getInstance().convertToWGS84(CoordsCalculUtils.calculatePointOnLineDirection(dArr2, dArr3, dCalculateHypotenuse));
                    DikeWorkActivity.this.mapController.addMarkerOrRoute(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]), new GeoPoint(dArrConvertToWGS842[1], dArrConvertToWGS842[0], dArrConvertToWGS842[2]));
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
        DikeEntity dikeEntity = this.dikeEntity;
        return dikeEntity != null && CadEntityChooseIntent.isCadFileAvailable(dikeEntity.cadPath);
    }

    private void initCadView(double[] dArr, double[] dArr2) {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.dikeEntity.cadPath);
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
            ActivityDikeWorkBinding activityDikeWorkBinding = this.binding;
            activityDikeWorkBinding.workView.resfreshDirection(activityDikeWorkBinding.ivDirection.isSelected() ? 1 : 0);
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
                if (!this.dikeEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.dikeEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.10
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            DikeWorkActivity.this.startActivity(new Intent(DikeWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            DikeWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.dikeEntity.corsName.equals(getString(R$string.x_fixed))) {
                    DikeEntity dikeEntity = this.dikeEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{dikeEntity.baseStationLon, dikeEntity.baseStationLat, dikeEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.dikeEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        DikeEntity dikeEntity2 = this.dikeEntity;
                        if (dikeEntity2.baseStationLon != 0.0d && dikeEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.dikeEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.11
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    DikeWorkActivity dikeWorkActivity = DikeWorkActivity.this;
                                    dikeWorkActivity.showTipDialog(dikeWorkActivity.getString(R$string.base_station_connected), DikeWorkActivity.this.getString(R$string.connected), DikeWorkActivity.this.getString(R$string.not_connected), DikeWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.11.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(DikeWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                DikeWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(DikeWorkActivity.this, DikeWorkActivity.this.getString(R$string.base) + DikeWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            DikeWorkActivity.this.startActivity(new Intent(DikeWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                DikeWorkActivity.this.startActivity(new Intent(DikeWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    DikeWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.12
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                DikeWorkActivity.this.dikeEntity.baseStationLon = Double.parseDouble(DikeWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                DikeWorkActivity.this.dikeEntity.baseStationLat = Double.parseDouble(DikeWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                DikeWorkActivity.this.dikeEntity.baseStationElev = Double.parseDouble(DikeWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                DikeWorkActivity.this.mDatabaseManager.updateEntityById(DikeWorkActivity.this.dikeEntity);
                                NetworkUserLoader.getInstance().modifyProject(DikeWorkActivity.this.mINS, DikeWorkActivity.this.dikeEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    DikeWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.dikeEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.13
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    DikeWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.dike.DikeWorkActivity.14
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    DikeWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        DikeWorkActivity.this.hasCheckBasestation = true;
                    }
                    DikeWorkActivity.this.isCheckBase = false;
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
            this.dikeEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        DikeEntity dikeEntity = this.dikeEntity;
        if (dikeEntity == null || this.mDatabaseManager == null) {
            return;
        }
        dikeEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.dikeEntity);
        if (!z || TextUtils.isEmpty(this.dikeEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.dikeEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            DikeEntity dikeEntity = this.dikeEntity;
            if (dikeEntity != null && dikeEntity.id == baseProEntity.id) {
                dikeEntity.projectUUid = baseProEntity.projectUUid;
                dikeEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.dike);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    private double slopeDitch(InsNavi insNavi, double[] dArr, double[] dArr2) {
        double[] dArr3;
        CheckResult checkResultCheckPositionGeodetic;
        int i = this.dikeEntity.shovelTipType;
        if (i == 0) {
            dArr3 = new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation};
        } else if (i == 2) {
            dArr3 = new double[]{insNavi.longitudeR, insNavi.latitudeR, insNavi.elevationR};
        } else {
            dArr3 = new double[]{insNavi.longitudeM, insNavi.latitudeM, insNavi.elevationM};
        }
        double[] dArr4 = dArr3;
        double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2);
        double dAbs = Math.abs(calculateRatio(dArr, dArr2, dCalculateDistanceGAUSS)) * dCalculateDistanceGAUSS;
        double degrees = Math.toDegrees(Math.atan2(dAbs, dCalculateDistanceGAUSS));
        if (this.dikeEntity.subType == DikeEnum.DOWN.getType()) {
            double dCalculateElevA = calculateElevA();
            double dCalculateElevB = calculateElevB(dCalculateElevA, dAbs, degrees);
            double d = dArr[0];
            double d2 = dArr[1];
            double[] dArrCalculatePointOnLineDirectionGAUSS = SlopePositionChecker.calculatePointOnLineDirectionGAUSS(d, d2, dArr2[0], dArr2[1], dCalculateDistanceGAUSS);
            double[][] ditchFence = DitchPositionChecker.getDitchFence(new double[]{d, d2, dCalculateElevA}, new double[]{dArrCalculatePointOnLineDirectionGAUSS[0], dArrCalculatePointOnLineDirectionGAUSS[1], dCalculateElevB}, this.dikeEntity.width / 2.0d);
            DikeEntity dikeEntity = this.dikeEntity;
            double[] dArr5 = {dikeEntity.targetLon1, dikeEntity.targetLat1, dCalculateElevA};
            double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(ditchFence[0]);
            DikeEntity dikeEntity2 = this.dikeEntity;
            checkResultCheckPositionGeodetic = SlopePositionChecker.checkPositionGeodetic(this.appConfig.details.work_tolerance, degrees, dArr4, dArr5, dArrConvertGAUSSXYToGeodetic, new double[]{dikeEntity2.targetLon2, dikeEntity2.targetLat2, dCalculateElevB});
        } else {
            double dCalculateElevA2 = calculateElevA();
            double dCalculateElevB2 = calculateElevB(dCalculateElevA2, dAbs, degrees);
            double d3 = dArr[0];
            double d4 = dArr[1];
            double[] dArrCalculatePointOnLineDirectionGAUSS2 = SlopePositionChecker.calculatePointOnLineDirectionGAUSS(d3, d4, dArr2[0], dArr2[1], dCalculateDistanceGAUSS);
            double[] dArr6 = {dArrCalculatePointOnLineDirectionGAUSS2[0], dArrCalculatePointOnLineDirectionGAUSS2[1], dCalculateElevB2};
            double[][] ditchFence2 = DitchPositionChecker.getDitchFence(dArr6, new double[]{d3, d4, dCalculateElevA2}, this.dikeEntity.width / 2.0d);
            double[] dArrConvertGAUSSXYToGeodetic2 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(dArr6);
            double[] dArrConvertGAUSSXYToGeodetic3 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(ditchFence2[0]);
            DikeEntity dikeEntity3 = this.dikeEntity;
            checkResultCheckPositionGeodetic = SlopePositionChecker.checkPositionGeodetic(this.appConfig.details.work_tolerance, degrees, dArr4, dArrConvertGAUSSXYToGeodetic2, dArrConvertGAUSSXYToGeodetic3, new double[]{dikeEntity3.targetLon1, dikeEntity3.targetLat1, dCalculateElevA2});
        }
        return checkResultCheckPositionGeodetic.verticalDistance;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double calculateRatio(double[] r9, double[] r10, double r11) {
        /*
            r8 = this;
            com.qianhe.baselib.bean.DikeEntity r0 = r8.dikeEntity
            double r1 = r0.ratio
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto Le
            r9 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r1 = r1 / r9
            return r1
        Le:
            int r1 = r0.tickA
            r2 = 1
            r5 = 2
            if (r1 != r2) goto L23
            int r6 = r0.tickB
            if (r6 != r2) goto L23
            r0 = r9[r5]
            r9 = r10[r5]
            double r0 = r0 - r9
            double r9 = java.lang.Math.abs(r0)
        L21:
            double r9 = r9 / r11
            return r9
        L23:
            if (r1 != r2) goto L3a
            double r6 = r0.depthB
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 == 0) goto L3a
            r0 = r9[r5]
            r9 = r10[r5]
            double r9 = r9 + r6
            double r9 = java.lang.Math.abs(r9)
            double r0 = r0 - r9
            double r9 = java.lang.Math.abs(r0)
            goto L21
        L3a:
            int r1 = r0.tickB
            if (r1 != r2) goto L53
            double r1 = r0.depthA
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 == 0) goto L53
            r3 = r10[r5]
            r5 = r9[r5]
            double r5 = r5 + r1
            double r9 = java.lang.Math.abs(r5)
            double r3 = r3 - r9
            double r9 = java.lang.Math.abs(r3)
            goto L21
        L53:
            double r1 = r0.depthA
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 == 0) goto L77
            double r6 = r0.depthB
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 == 0) goto L77
            r3 = r9[r5]
            double r3 = r3 + r1
            double r0 = java.lang.Math.abs(r3)
            r9 = r10[r5]
            com.qianhe.baselib.bean.DikeEntity r2 = r8.dikeEntity
            double r2 = r2.depthB
            double r9 = r9 + r2
            double r9 = java.lang.Math.abs(r9)
            double r0 = r0 - r9
            double r9 = java.lang.Math.abs(r0)
            goto L21
        L77:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.dike.DikeWorkActivity.calculateRatio(double[], double[], double):double");
    }

    private double calculateElevA() {
        DikeEntity dikeEntity = this.dikeEntity;
        if (dikeEntity.tickA == 1) {
            return dikeEntity.targetElevation1;
        }
        double d = dikeEntity.depthA;
        if (d != 0.0d) {
            return dikeEntity.targetElevation1 + d;
        }
        return 0.0d;
    }

    private double calculateElevB(double d, double d2, double d3) {
        double d4;
        double d5;
        if (this.dikeEntity.subType == DikeEnum.DOWN.getType()) {
            DikeEntity dikeEntity = this.dikeEntity;
            if (dikeEntity.tickB == 1) {
                return dikeEntity.targetElevation2;
            }
            d4 = dikeEntity.depthB;
            if (d4 == 0.0d) {
                return d - d2;
            }
            d5 = dikeEntity.targetElevation2;
        } else {
            DikeEntity dikeEntity2 = this.dikeEntity;
            if (dikeEntity2.tickB == 1) {
                return dikeEntity2.targetElevation2;
            }
            d4 = dikeEntity2.depthB;
            if (d4 == 0.0d) {
                return d + d2;
            }
            d5 = dikeEntity2.targetElevation2;
        }
        return d5 + d4;
    }

    private double flatDitch(InsNavi insNavi) {
        double d;
        double d2;
        double d3;
        DikeEntity dikeEntity = this.dikeEntity;
        if (dikeEntity.tickA == 1) {
            d = dikeEntity.targetElevation1;
        } else if (dikeEntity.tickB == 1) {
            d = dikeEntity.targetElevation2;
        } else {
            double d4 = dikeEntity.depthA;
            if (d4 != 0.0d) {
                d2 = dikeEntity.targetElevation1;
            } else {
                d4 = dikeEntity.depthB;
                if (d4 != 0.0d) {
                    d2 = dikeEntity.targetElevation2;
                } else {
                    d = dikeEntity.targetElevation1;
                }
            }
            d = d4 + d2;
        }
        int i = dikeEntity.shovelTipType;
        if (i == 0) {
            d3 = insNavi.elevation;
        } else if (i == 2) {
            d3 = insNavi.elevationR;
        } else {
            d3 = insNavi.elevationM;
        }
        return DitchPositionChecker.compareElevation(d, d3) * 100.0d;
    }

    private double[] calculateProjectEndOnCenterline(double[] dArr, double[] dArr2) {
        double dCalculateDistanceGAUSS = this.dikeEntity.length;
        if (dCalculateDistanceGAUSS <= 0.0d) {
            dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2);
        }
        return SlopePositionChecker.calculatePointOnLineDirectionGAUSS(dArr[0], dArr[1], dArr2[0], dArr2[1], dCalculateDistanceGAUSS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyWorkViewProjectData() {
        PointF pointF;
        PointF pointF2;
        DikeEntity dikeEntity = this.dikeEntity;
        double[] dArr = {dikeEntity.east1, dikeEntity.north1, dikeEntity.targetElevation1};
        double[] dArr2 = {dikeEntity.east2, dikeEntity.north2, dikeEntity.targetElevation2};
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
        this.binding.workView.setProjectData(pointF, pointF2, this.dikeEntity.width);
        this.binding.workView.setUseBitmap(true);
        ActivityDikeWorkBinding activityDikeWorkBinding = this.binding;
        activityDikeWorkBinding.workView.resfreshDirection(activityDikeWorkBinding.ivDirection.isSelected() ? 1 : 0);
    }

    private void initWorkView() {
        if (this.baseX == 0.0d) {
            DikeEntity dikeEntity = this.dikeEntity;
            double[] dArr = {dikeEntity.east1, dikeEntity.north1, dikeEntity.targetElevation1};
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
        double dSlopeDitch;
        char c3;
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
            DikeEntity dikeEntity = this.dikeEntity;
            if (dikeEntity != null) {
                int i = dikeEntity.shovelTipType;
                if (i == 0) {
                    dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                } else if (i == 2) {
                    dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                } else {
                    dArr = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
                }
                if (this.binding.ivDirection.isSelected()) {
                    d = 0.0d;
                    c = 1;
                    c2 = 0;
                    positionResultCalculatePosition = DitchPositionChecker.calculatePosition(this.appConfig.details.work_tolerance, this.pointB, this.pointA, dArr, new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM});
                } else {
                    d = 0.0d;
                    c = 1;
                    c2 = 0;
                    positionResultCalculatePosition = DitchPositionChecker.calculatePosition(this.appConfig.details.work_tolerance, this.pointA, this.pointB, dArr, new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM});
                }
                boolean z = positionResultCalculatePosition.distance <= (this.dikeEntity.width * 100.0d) / 2.0d;
                this.binding.tvBoundTip.setVisibility(z ? 8 : 0);
                TextView textView = this.binding.tvStartDistance;
                String string = getString(R$string.start_distance);
                String distance = formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr, this.pointA));
                Object[] objArr = new Object[2];
                objArr[c2] = string;
                objArr[c] = distance;
                textView.setText(String.format("%s%s", objArr));
                if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
                    dSlopeDitch = flatDitch(insNavi);
                } else {
                    dSlopeDitch = (this.dikeEntity.subType == DikeEnum.DOWN.getType() || this.dikeEntity.subType == DikeEnum.UP.getType()) ? slopeDitch(insNavi, this.pointA, this.pointB) : Double.MAX_VALUE;
                }
                this.binding.ivArm.updateAnimationValue(dSlopeDitch / 2.0d, this.isH5Pro ? insNavi.pitchDegrees : insNavi.pitchDegrees - this.zeroDegrees);
                String elevationDiffText = formatElevationDiffText(dSlopeDitch);
                this.binding.tvUnitV.setText(Math.abs(Math.round(dSlopeDitch)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z2 = ((float) Math.round(Math.abs(dSlopeDitch))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z2) {
                    this.binding.tvStatusV.setText(getString(R$string.hold));
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatusV.setSelected(true);
                    }
                    this.binding.tvDiffV.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffV.setSelected(true);
                    }
                    this.binding.ivStatusV.setImageResource(Math.round(Math.abs(dSlopeDitch)) < 1 ? R$drawable.icon_status_v : dSlopeDitch > d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else if (dSlopeDitch > d) {
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
                String elevationDiffText2 = formatElevationDiffText(positionResultCalculatePosition.distance);
                this.binding.tvDiffH.setText(elevationDiffText2);
                this.binding.tvUnitH.setText(Math.abs(Math.round(positionResultCalculatePosition.distance)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                int i2 = positionResultCalculatePosition.position;
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
                    this.binding.ivBucket.setDiffValue(positionResultCalculatePosition.positionM, (float) positionResultCalculatePosition.distanceM, false);
                    showDataUnAvailable();
                    c3 = 2;
                } else {
                    this.binding.tvDiffH.setTextSize(1, getElevationDiffTextSize(elevationDiffText2, 80));
                    this.binding.tvDiffV.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 80));
                    this.binding.tvStatusH.setVisibility(0);
                    this.binding.tvStatusV.setVisibility(0);
                    this.binding.ivBucket.setDiffValue(positionResultCalculatePosition.positionM, (float) positionResultCalculatePosition.distanceM);
                    c3 = 2;
                    double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{insNavi.east, insNavi.north, insNavi.elevation}, new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR});
                    this.binding.ivBucket.setIconWidth(dCalculateDistanceGAUSS == d ? 100.0d : dCalculateDistanceGAUSS * 100.0d);
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
                        double dAbs = Math.abs(dSlopeDitch);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z2) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (dSlopeDitch > d) {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.BUZZ);
                                this.mBeepPlayer.start();
                            } else {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.WOOD_FISH);
                                this.mBeepPlayer.start();
                            }
                        }
                    }
                }
                if (this.baseX != d && this.baseY != d) {
                    if (this.workPageDataAvailable) {
                        double d2 = insNavi.east;
                        double d3 = insNavi.north;
                        double d4 = insNavi.elevation;
                        dArrConvertToGAUSSXY = new double[3];
                        dArrConvertToGAUSSXY[0] = d2;
                        dArrConvertToGAUSSXY[1] = d3;
                        dArrConvertToGAUSSXY[c3] = d4;
                        double d5 = insNavi.eastR;
                        double d6 = insNavi.northR;
                        double d7 = insNavi.elevationR;
                        dArr2 = new double[3];
                        dArr2[0] = d5;
                        dArr2[1] = d6;
                        dArr2[c3] = d7;
                    } else {
                        GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
                        InsNavi insNavi2 = this.mINS;
                        double d8 = insNavi2.longitude;
                        double d9 = insNavi2.latitude;
                        double d10 = insNavi2.elevation;
                        double[] dArr3 = new double[3];
                        dArr3[0] = d8;
                        dArr3[1] = d9;
                        dArr3[c3] = d10;
                        dArrConvertToGAUSSXY = gnssCoordConvertManager.convertToGAUSSXY(dArr3);
                        dArr2 = dArrConvertToGAUSSXY;
                    }
                    if (dArrConvertToGAUSSXY != null && dArr2 != null) {
                        this.binding.workView.setLocationPoint(new PointF((float) (dArrConvertToGAUSSXY[0] - this.baseX), (float) (dArrConvertToGAUSSXY[1] - this.baseY)), new PointF((float) (dArr2[0] - this.baseX), (float) (dArr2[1] - this.baseY)), CoordsCalculUtils.calculateDistanceGAUSS(dArrConvertToGAUSSXY, dArr2), z);
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
