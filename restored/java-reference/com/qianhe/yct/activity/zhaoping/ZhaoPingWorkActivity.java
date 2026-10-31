package com.qianhe.yct.activity.zhaoping;

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
import com.YctDeviceManager;
import com.qh.xcad.XCadView;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.enums.ZhaoPingEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.SensorEventHelper;
import com.qianhe.baselib.utils.workchecker.PlanePositionChecker;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityZpWorkBinding;
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
public class ZhaoPingWorkActivity extends BaseActivity {
    private ActivityZpWorkBinding binding;
    private double[] curPositionWgs84;
    private boolean hasCheckBasestation;
    private boolean isCheckBase;
    private boolean isH5Pro;
    private BeepPlayer mBeepPlayer;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private double mTarget;
    private MapController mapController;
    private double[] pointA;
    private SensorEventHelper sensorEventHelper;
    private boolean silentModifyProject;
    private YMap yMap;
    private ZhaoPingEntity zhaoPingEntity;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void onCreate(Bundle bundle) throws NumberFormatException {
        this.binding = ActivityZpWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.ZHAOPING.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    ZhaoPingEntity zhaoPingEntity = (ZhaoPingEntity) listQueryEntityById.get(0);
                    this.zhaoPingEntity = zhaoPingEntity;
                    if (TextUtils.isEmpty(zhaoPingEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.zhaoPingEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        ZhaoPingEntity zhaoPingEntity2 = this.zhaoPingEntity;
                        instanceH5.updateCurrentProjectInfo(zhaoPingEntity2.type, zhaoPingEntity2.projectId);
                    }
                    ZhaoPingEntity zhaoPingEntity3 = this.zhaoPingEntity;
                    if (zhaoPingEntity3.shovelTipType > 2) {
                        zhaoPingEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(zhaoPingEntity3.shovelTipType);
                    refreshToothType(this.zhaoPingEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            ZhaoPingEntity zhaoPingEntity4 = this.zhaoPingEntity;
            if (zhaoPingEntity4 != null) {
                this.mTarget = zhaoPingEntity4.targetElevation + zhaoPingEntity4.depth;
                this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.zhaoPingEntity.name));
                ZhaoPingEntity zhaoPingEntity5 = this.zhaoPingEntity;
                this.pointA = new double[]{zhaoPingEntity5.east, zhaoPingEntity5.north, zhaoPingEntity5.targetElevation};
            } else {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ZhaoPingWorkActivity.this.hasCadPath() && ZhaoPingWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ZhaoPingWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ZhaoPingWorkActivity.this.mINS.longitude, ZhaoPingWorkActivity.this.mINS.latitude, ZhaoPingWorkActivity.this.mINS.elevation});
                if (ZhaoPingWorkActivity.this.mapController != null) {
                    ZhaoPingWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ZhaoPingWorkActivity.this.hasCadPath() && ZhaoPingWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ZhaoPingWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ZhaoPingWorkActivity.this.zhaoPingEntity.targetLon, ZhaoPingWorkActivity.this.zhaoPingEntity.targetLat, ZhaoPingWorkActivity.this.zhaoPingEntity.targetElevation});
                if (ZhaoPingWorkActivity.this.mapController != null) {
                    ZhaoPingWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ZhaoPingWorkActivity.this.isH5Pro) {
                    return;
                }
                ZhaoPingWorkActivity.this.startActivity(new Intent(ZhaoPingWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ZhaoPingWorkActivity.this.yMap.getVisibility() == 0) {
                    ZhaoPingWorkActivity.this.yMap.setVisibility(8);
                    ZhaoPingWorkActivity.this.binding.cadView.setVisibility(8);
                    ZhaoPingWorkActivity.this.binding.lltBtn.setVisibility(8);
                } else if (ZhaoPingWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ZhaoPingWorkActivity.this.binding.cadView.setVisibility(8);
                    ZhaoPingWorkActivity.this.yMap.setVisibility(0);
                    ZhaoPingWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else if (ZhaoPingWorkActivity.this.hasCadPath()) {
                    ZhaoPingWorkActivity.this.binding.cadView.setVisibility(0);
                    ZhaoPingWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else {
                    ZhaoPingWorkActivity.this.yMap.setVisibility(0);
                    ZhaoPingWorkActivity.this.binding.cadView.setVisibility(8);
                    ZhaoPingWorkActivity.this.binding.lltBtn.setVisibility(0);
                }
            }
        });
        initCadView();
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ZhaoPingWorkActivity.this.binding.ivSound.isSelected()) {
                    if (ZhaoPingWorkActivity.this.mBeepPlayer != null) {
                        ZhaoPingWorkActivity.this.mBeepPlayer.stop();
                        ZhaoPingWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    ZhaoPingWorkActivity.this.initPlayer();
                }
                ZhaoPingWorkActivity.this.binding.ivSound.setSelected(!ZhaoPingWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        ZhaoPingEntity zhaoPingEntity6 = this.zhaoPingEntity;
        if (zhaoPingEntity6 != null && zhaoPingEntity6.subType == 0) {
            if (zhaoPingEntity6.depth != 0.0d) {
                zhaoPingEntity6.subType = ZhaoPingEnum.DIG.getType();
            } else if (zhaoPingEntity6.height != 0.0d) {
                zhaoPingEntity6.subType = ZhaoPingEnum.FILL.getType();
                ZhaoPingEntity zhaoPingEntity7 = this.zhaoPingEntity;
                zhaoPingEntity7.depth = zhaoPingEntity7.height;
            } else {
                zhaoPingEntity6.subType = ZhaoPingEnum.LEVEING.getType();
            }
        }
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                ZhaoPingWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.7
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = ZhaoPingWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        ZhaoPingWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ZhaoPingWorkActivity.this.zhaoPingEntity.targetLon, ZhaoPingWorkActivity.this.zhaoPingEntity.targetLat, ZhaoPingWorkActivity.this.zhaoPingEntity.targetElevation});
                    ZhaoPingWorkActivity.this.mapController.addMarker(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
        return zhaoPingEntity != null && CadEntityChooseIntent.isCadFileAvailable(zhaoPingEntity.cadPath);
    }

    private void initCadView() {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.zhaoPingEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            XCadView xCadView = this.binding.cadView;
            ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
            xCadView.setXCadItemAreaPoint(new double[]{zhaoPingEntity.east, zhaoPingEntity.north}, true);
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
                if (!this.zhaoPingEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.zhaoPingEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.8
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            ZhaoPingWorkActivity.this.startActivity(new Intent(ZhaoPingWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            ZhaoPingWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.zhaoPingEntity.corsName.equals(getString(R$string.x_fixed))) {
                    ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{zhaoPingEntity.baseStationLon, zhaoPingEntity.baseStationLat, zhaoPingEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.zhaoPingEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        ZhaoPingEntity zhaoPingEntity2 = this.zhaoPingEntity;
                        if (zhaoPingEntity2.baseStationLon != 0.0d && zhaoPingEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.zhaoPingEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.9
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    ZhaoPingWorkActivity zhaoPingWorkActivity = ZhaoPingWorkActivity.this;
                                    zhaoPingWorkActivity.showTipDialog(zhaoPingWorkActivity.getString(R$string.base_station_connected), ZhaoPingWorkActivity.this.getString(R$string.connected), ZhaoPingWorkActivity.this.getString(R$string.not_connected), ZhaoPingWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.9.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(ZhaoPingWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                ZhaoPingWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(ZhaoPingWorkActivity.this, ZhaoPingWorkActivity.this.getString(R$string.base) + ZhaoPingWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            ZhaoPingWorkActivity.this.startActivity(new Intent(ZhaoPingWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                ZhaoPingWorkActivity.this.startActivity(new Intent(ZhaoPingWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    ZhaoPingWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.10
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                ZhaoPingWorkActivity.this.zhaoPingEntity.baseStationLon = Double.parseDouble(ZhaoPingWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                ZhaoPingWorkActivity.this.zhaoPingEntity.baseStationLat = Double.parseDouble(ZhaoPingWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                ZhaoPingWorkActivity.this.zhaoPingEntity.baseStationElev = Double.parseDouble(ZhaoPingWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                ZhaoPingWorkActivity.this.mDatabaseManager.updateEntityById(ZhaoPingWorkActivity.this.zhaoPingEntity);
                                NetworkUserLoader.getInstance().modifyProject(ZhaoPingWorkActivity.this.mINS, ZhaoPingWorkActivity.this.zhaoPingEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    ZhaoPingWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.zhaoPingEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.11
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    ZhaoPingWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity.12
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ZhaoPingWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        ZhaoPingWorkActivity.this.hasCheckBasestation = true;
                    }
                    ZhaoPingWorkActivity.this.isCheckBase = false;
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
        this.binding.tvDiff.setTextSize(1, 24.0f);
        this.binding.tvDiff.setSelected(false);
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
            appCompatTextView.setText(String.format(sb.toString(), string, getString(R$string.vertical_distance_to_target)));
            this.zhaoPingEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
        if (zhaoPingEntity == null || this.mDatabaseManager == null) {
            return;
        }
        zhaoPingEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.zhaoPingEntity);
        if (!z || TextUtils.isEmpty(this.zhaoPingEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.zhaoPingEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
            if (zhaoPingEntity != null && zhaoPingEntity.id == baseProEntity.id) {
                zhaoPingEntity.projectUUid = baseProEntity.projectUUid;
                zhaoPingEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.leveling);
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
        double dCompareElevation;
        char c;
        char c2;
        double[] dArr;
        if (insNavi == null) {
            return;
        }
        if (insNavi.longitude != 0.0d && insNavi.latitude != 0.0d) {
            this.mINS = insNavi;
        }
        try {
            this.binding.rollAngleView.setCurrnetAngle(insNavi.rollDegrees);
            BaseActivity.WorkInsAvailabilityMode workInsAvailabilityMode = BaseActivity.WorkInsAvailabilityMode.ELEVATION_ONLY;
            resolveWorkPageAvailable(insNavi, workInsAvailabilityMode);
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
            handleWorkInsCalibrateTips(insNavi, this.workPageDataAvailable, this.hasCheckBasestation, workInsAvailabilityMode);
            ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
            if (zhaoPingEntity != null) {
                int i = zhaoPingEntity.shovelTipType;
                if (i == 0) {
                    dCompareElevation = PlanePositionChecker.compareElevation(this.mTarget, insNavi.elevation);
                } else if (i == 2) {
                    dCompareElevation = PlanePositionChecker.compareElevation(this.mTarget, insNavi.elevationR);
                } else {
                    dCompareElevation = PlanePositionChecker.compareElevation(this.mTarget, insNavi.elevationM);
                }
                double d = dCompareElevation * 100.0d;
                String elevationDiffText = formatElevationDiffText(d);
                this.binding.tvUnit.setText(Math.abs(Math.round(d)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z = ((float) Math.round(Math.abs(d))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z) {
                    this.binding.tvDiff.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiff.setSelected(true);
                    }
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatus.setSelected(true);
                    }
                    this.binding.tvStatus.setText(getString(R$string.hold));
                    this.binding.ivStatus.setImageResource(Math.round(Math.abs(d)) < 1 ? R$drawable.icon_status_v : d > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else {
                    this.binding.tvDiff.setSelected(false);
                    this.binding.tvStatus.setSelected(false);
                    if (d > 0.0d) {
                        this.binding.tvDiff.setText(elevationDiffText);
                        this.binding.tvStatus.setText(getString(R$string.dig));
                        this.binding.ivStatus.setImageResource(R$drawable.icon_status_dig);
                    } else {
                        this.binding.tvDiff.setText(elevationDiffText);
                        this.binding.tvStatus.setText(getString(R$string.fill));
                        this.binding.ivStatus.setImageResource(R$drawable.icon_status_fill);
                    }
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
                this.binding.ivArm.updateAnimationValue(d, this.isH5Pro ? insNavi.pitchDegrees : insNavi.pitchDegrees - this.zeroDegrees);
                ArmView armView = this.binding.ivArm2;
                if (armView != null) {
                    armView.updateAnimationValue(d, insNavi.rollDegrees);
                }
                int i2 = this.zhaoPingEntity.shovelTipType;
                if (i2 == 0) {
                    c = 1;
                    c2 = 0;
                    dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                } else {
                    c = 1;
                    c2 = 0;
                    if (i2 == 2) {
                        dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                    } else {
                        dArr = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
                    }
                }
                TextView textView = this.binding.tvStartDistance;
                String string = getString(R$string.distance_from_project_starting);
                String distance = formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr, this.pointA));
                Object[] objArr = new Object[2];
                objArr[c2] = string;
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
                        double dAbs = Math.abs(d);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (d > 0.0d) {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.BUZZ);
                                this.mBeepPlayer.start();
                            } else {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.WOOD_FISH);
                                this.mBeepPlayer.start();
                            }
                        }
                    }
                }
                refreshCadView(dArr, insNavi.headingDegrees);
            }
            refreshTianDiMap(insNavi);
        } catch (Exception e) {
            LogToFile.e("onINsNavi：" + e);
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
