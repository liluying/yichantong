package com.qianhe.yct.activity.arabitraryline;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.YctDeviceManager;
import com.qh.xcad.XCadView;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.SensorEventHelper;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityArbitrarylineWorkBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.CheckBasestationDialogFragment;
import com.qianhe.yct.dialog.CorsChangesDialogFragment;
import com.qianhe.yct.dialog.FixedCoordinateStartupDialog;
import com.qianhe.yct.dialog.TipsDialogFragment;
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
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ArbitrarylineWorkActivity extends BaseActivity {
    private ArbitraryLineEntity arbitraryLineEntity;
    private ActivityArbitrarylineWorkBinding binding;
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
        this.binding = ActivityArbitrarylineWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.ARBITRARYLINE.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    ArbitraryLineEntity arbitraryLineEntity = (ArbitraryLineEntity) listQueryEntityById.get(0);
                    this.arbitraryLineEntity = arbitraryLineEntity;
                    if (TextUtils.isEmpty(arbitraryLineEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.arbitraryLineEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        ArbitraryLineEntity arbitraryLineEntity2 = this.arbitraryLineEntity;
                        instanceH5.updateCurrentProjectInfo(arbitraryLineEntity2.type, arbitraryLineEntity2.projectId);
                    }
                    ArbitraryLineEntity arbitraryLineEntity3 = this.arbitraryLineEntity;
                    if (arbitraryLineEntity3.shovelTipType > 2) {
                        arbitraryLineEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(arbitraryLineEntity3.shovelTipType);
                    refreshToothType(this.arbitraryLineEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            if (this.arbitraryLineEntity != null) {
                this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.arbitraryLineEntity.name));
                ArbitraryLineEntity arbitraryLineEntity4 = this.arbitraryLineEntity;
                this.pointA = new double[]{arbitraryLineEntity4.east, arbitraryLineEntity4.north, arbitraryLineEntity4.elev + arbitraryLineEntity4.depth};
            } else {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ArbitrarylineWorkActivity.this.hasCadPath() && ArbitrarylineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ArbitrarylineWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ArbitrarylineWorkActivity.this.mINS.longitude, ArbitrarylineWorkActivity.this.mINS.latitude, ArbitrarylineWorkActivity.this.mINS.elevation});
                if (ArbitrarylineWorkActivity.this.mapController != null) {
                    ArbitrarylineWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ArbitrarylineWorkActivity.this.hasCadPath() && ArbitrarylineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ArbitrarylineWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ArbitrarylineWorkActivity.this.arbitraryLineEntity.lon, ArbitrarylineWorkActivity.this.arbitraryLineEntity.lat, ArbitrarylineWorkActivity.this.arbitraryLineEntity.elev + ArbitrarylineWorkActivity.this.arbitraryLineEntity.depth});
                if (ArbitrarylineWorkActivity.this.mapController != null) {
                    ArbitrarylineWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ArbitrarylineWorkActivity.this.isH5Pro) {
                    return;
                }
                ArbitrarylineWorkActivity.this.startActivity(new Intent(ArbitrarylineWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ArbitrarylineWorkActivity.this.yMap.getVisibility() == 0) {
                    ArbitrarylineWorkActivity.this.yMap.setVisibility(8);
                    ArbitrarylineWorkActivity.this.binding.cadView.setVisibility(8);
                    ArbitrarylineWorkActivity.this.binding.lltBtn.setVisibility(8);
                } else if (ArbitrarylineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ArbitrarylineWorkActivity.this.binding.cadView.setVisibility(8);
                    ArbitrarylineWorkActivity.this.yMap.setVisibility(0);
                    ArbitrarylineWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else if (ArbitrarylineWorkActivity.this.hasCadPath()) {
                    ArbitrarylineWorkActivity.this.binding.cadView.setVisibility(0);
                    ArbitrarylineWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else {
                    ArbitrarylineWorkActivity.this.yMap.setVisibility(0);
                    ArbitrarylineWorkActivity.this.binding.cadView.setVisibility(8);
                    ArbitrarylineWorkActivity.this.binding.lltBtn.setVisibility(0);
                }
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ArbitrarylineWorkActivity.this.binding.ivSound.isSelected()) {
                    if (ArbitrarylineWorkActivity.this.mBeepPlayer != null) {
                        ArbitrarylineWorkActivity.this.mBeepPlayer.stop();
                        ArbitrarylineWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    ArbitrarylineWorkActivity.this.initPlayer();
                }
                ArbitrarylineWorkActivity.this.binding.ivSound.setSelected(!ArbitrarylineWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                ArbitrarylineWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.7
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = ArbitrarylineWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        ArbitrarylineWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ArbitrarylineWorkActivity.this.arbitraryLineEntity.lon, ArbitrarylineWorkActivity.this.arbitraryLineEntity.lat, ArbitrarylineWorkActivity.this.arbitraryLineEntity.elev + ArbitrarylineWorkActivity.this.arbitraryLineEntity.depth});
                    ArbitrarylineWorkActivity.this.mapController.addMarker(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        initCadView();
        restoreData(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        ArbitraryLineEntity arbitraryLineEntity = this.arbitraryLineEntity;
        return arbitraryLineEntity != null && CadEntityChooseIntent.isCadFileAvailable(arbitraryLineEntity.cadPath);
    }

    private void initCadView() {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.arbitraryLineEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            XCadView xCadView = this.binding.cadView;
            ArbitraryLineEntity arbitraryLineEntity = this.arbitraryLineEntity;
            xCadView.setXCadItemAreaPoint(new double[]{arbitraryLineEntity.east, arbitraryLineEntity.north}, true);
        }
    }

    private void refreshCadView(double[] dArr, double d) {
        if (hasCadPath()) {
            this.binding.cadView.setXCadVehiclePosition(dArr[0], dArr[1], d);
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
                if (!this.arbitraryLineEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.arbitraryLineEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.8
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            ArbitrarylineWorkActivity.this.startActivity(new Intent(ArbitrarylineWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            ArbitrarylineWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.arbitraryLineEntity.corsName.equals(getString(R$string.x_fixed))) {
                    ArbitraryLineEntity arbitraryLineEntity = this.arbitraryLineEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{arbitraryLineEntity.baseStationLon, arbitraryLineEntity.baseStationLat, arbitraryLineEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.arbitraryLineEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        ArbitraryLineEntity arbitraryLineEntity2 = this.arbitraryLineEntity;
                        if (arbitraryLineEntity2.baseStationLon != 0.0d && arbitraryLineEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.arbitraryLineEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.9
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    ArbitrarylineWorkActivity arbitrarylineWorkActivity = ArbitrarylineWorkActivity.this;
                                    arbitrarylineWorkActivity.showTipDialog(arbitrarylineWorkActivity.getString(R$string.base_station_connected), ArbitrarylineWorkActivity.this.getString(R$string.connected), ArbitrarylineWorkActivity.this.getString(R$string.not_connected), ArbitrarylineWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.9.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(ArbitrarylineWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                ArbitrarylineWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(ArbitrarylineWorkActivity.this, ArbitrarylineWorkActivity.this.getString(R$string.base) + ArbitrarylineWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            ArbitrarylineWorkActivity.this.startActivity(new Intent(ArbitrarylineWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                ArbitrarylineWorkActivity.this.startActivity(new Intent(ArbitrarylineWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    ArbitrarylineWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.10
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                ArbitrarylineWorkActivity.this.arbitraryLineEntity.baseStationLon = Double.parseDouble(ArbitrarylineWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                ArbitrarylineWorkActivity.this.arbitraryLineEntity.baseStationLat = Double.parseDouble(ArbitrarylineWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                ArbitrarylineWorkActivity.this.arbitraryLineEntity.baseStationElev = Double.parseDouble(ArbitrarylineWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                ArbitrarylineWorkActivity.this.mDatabaseManager.updateEntityById(ArbitrarylineWorkActivity.this.arbitraryLineEntity);
                                NetworkUserLoader.getInstance().modifyProject(ArbitrarylineWorkActivity.this.mINS, ArbitrarylineWorkActivity.this.arbitraryLineEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    ArbitrarylineWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.arbitraryLineEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.11
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    ArbitrarylineWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.12
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ArbitrarylineWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        ArbitrarylineWorkActivity.this.hasCheckBasestation = true;
                    }
                    ArbitrarylineWorkActivity.this.isCheckBase = false;
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
            this.arbitraryLineEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        ArbitraryLineEntity arbitraryLineEntity = this.arbitraryLineEntity;
        if (arbitraryLineEntity == null || this.mDatabaseManager == null) {
            return;
        }
        arbitraryLineEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.arbitraryLineEntity);
        if (!z || TextUtils.isEmpty(this.arbitraryLineEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.arbitraryLineEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            ArbitraryLineEntity arbitraryLineEntity = this.arbitraryLineEntity;
            if (arbitraryLineEntity != null && arbitraryLineEntity.id == baseProEntity.id) {
                arbitraryLineEntity.projectUUid = baseProEntity.projectUUid;
                arbitraryLineEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.arbitrary_line);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02bf A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ff A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0118 A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0157 A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015a A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x017b A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c0 A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0203 A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0207 A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0238 A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x023b A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02bb A[Catch: Exception -> 0x0047, TryCatch #0 {Exception -> 0x0047, blocks: (B:10:0x001b, B:12:0x002d, B:14:0x0038, B:18:0x0058, B:17:0x004a, B:19:0x0071, B:21:0x007c, B:23:0x0083, B:27:0x00ab, B:29:0x00be, B:35:0x00d5, B:37:0x00ff, B:39:0x0109, B:49:0x0138, B:51:0x0157, B:53:0x015c, B:58:0x017b, B:60:0x017f, B:61:0x0186, B:63:0x018a, B:64:0x0191, B:66:0x01b0, B:71:0x01bc, B:76:0x01ff, B:78:0x0203, B:80:0x0230, B:82:0x0238, B:84:0x0241, B:86:0x026b, B:89:0x0276, B:91:0x027a, B:93:0x028a, B:94:0x0297, B:96:0x02a1, B:97:0x02ae, B:101:0x02c2, B:98:0x02bb, B:100:0x02bf, B:83:0x023b, B:79:0x0207, B:69:0x01b7, B:70:0x01ba, B:72:0x01c0, B:74:0x01d2, B:75:0x01e9, B:52:0x015a, B:43:0x0118, B:45:0x0122, B:32:0x00ca, B:25:0x0092, B:26:0x009f, B:102:0x02c7), top: B:106:0x001b }] */
    @Override // com.qianhe.yct.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onINsNavi(com.qianhe.baselib.bean.InsNavi r22) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity.onINsNavi(com.qianhe.baselib.bean.InsNavi):void");
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
