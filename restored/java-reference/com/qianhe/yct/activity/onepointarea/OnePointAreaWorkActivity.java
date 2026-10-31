package com.qianhe.yct.activity.onepointarea;

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
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.SensorEventHelper;
import com.qianhe.baselib.utils.workchecker.OnePointPlaneChecker;
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
import com.qianhe.yct.databinding.ActivityOnepointAreaWorkBinding;
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
public class OnePointAreaWorkActivity extends BaseActivity {
    private ActivityOnepointAreaWorkBinding binding;
    private double[] curPositionWgs84;
    private boolean hasCheckBasestation;
    private boolean isCheckBase;
    private boolean isH5Pro;
    private BeepPlayer mBeepPlayer;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private OnePointPlaneChecker mOnePointPlaneChecker;
    private MapController mapController;
    private OnePointAreaEntity onePointAreaEntity;
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
        this.binding = ActivityOnepointAreaWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.ONEPOINTAREA.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    OnePointAreaEntity onePointAreaEntity = (OnePointAreaEntity) listQueryEntityById.get(0);
                    this.onePointAreaEntity = onePointAreaEntity;
                    if (TextUtils.isEmpty(onePointAreaEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.onePointAreaEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        OnePointAreaEntity onePointAreaEntity2 = this.onePointAreaEntity;
                        instanceH5.updateCurrentProjectInfo(onePointAreaEntity2.type, onePointAreaEntity2.projectId);
                    }
                    OnePointAreaEntity onePointAreaEntity3 = this.onePointAreaEntity;
                    if (onePointAreaEntity3.shovelTipType > 2) {
                        onePointAreaEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(onePointAreaEntity3.shovelTipType);
                    refreshToothType(this.onePointAreaEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OnePointAreaWorkActivity.this.hasCadPath() && OnePointAreaWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    OnePointAreaWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{OnePointAreaWorkActivity.this.mINS.longitude, OnePointAreaWorkActivity.this.mINS.latitude, OnePointAreaWorkActivity.this.mINS.elevation});
                if (OnePointAreaWorkActivity.this.mapController != null) {
                    OnePointAreaWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OnePointAreaWorkActivity.this.hasCadPath() && OnePointAreaWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    OnePointAreaWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{OnePointAreaWorkActivity.this.onePointAreaEntity.lon, OnePointAreaWorkActivity.this.onePointAreaEntity.lat, OnePointAreaWorkActivity.this.onePointAreaEntity.elev});
                if (OnePointAreaWorkActivity.this.mapController != null) {
                    OnePointAreaWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OnePointAreaWorkActivity.this.isH5Pro) {
                    return;
                }
                OnePointAreaWorkActivity.this.startActivity(new Intent(OnePointAreaWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OnePointAreaWorkActivity.this.yMap.getVisibility() == 0) {
                    OnePointAreaWorkActivity.this.yMap.setVisibility(8);
                    OnePointAreaWorkActivity.this.binding.cadView.setVisibility(8);
                    OnePointAreaWorkActivity.this.binding.lltBtn.setVisibility(8);
                } else if (OnePointAreaWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    OnePointAreaWorkActivity.this.binding.cadView.setVisibility(8);
                    OnePointAreaWorkActivity.this.yMap.setVisibility(0);
                    OnePointAreaWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else if (OnePointAreaWorkActivity.this.hasCadPath()) {
                    OnePointAreaWorkActivity.this.binding.cadView.setVisibility(0);
                    OnePointAreaWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else {
                    OnePointAreaWorkActivity.this.yMap.setVisibility(0);
                    OnePointAreaWorkActivity.this.binding.cadView.setVisibility(8);
                    OnePointAreaWorkActivity.this.binding.lltBtn.setVisibility(0);
                }
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OnePointAreaWorkActivity.this.binding.ivSound.isSelected()) {
                    if (OnePointAreaWorkActivity.this.mBeepPlayer != null) {
                        OnePointAreaWorkActivity.this.mBeepPlayer.stop();
                        OnePointAreaWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    OnePointAreaWorkActivity.this.initPlayer();
                }
                OnePointAreaWorkActivity.this.binding.ivSound.setSelected(!OnePointAreaWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point == 1 ? 0 : 8);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                OnePointAreaWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.7
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = OnePointAreaWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        OnePointAreaWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{OnePointAreaWorkActivity.this.onePointAreaEntity.lon, OnePointAreaWorkActivity.this.onePointAreaEntity.lat, OnePointAreaWorkActivity.this.onePointAreaEntity.elev});
                    OnePointAreaWorkActivity.this.mapController.addMarker(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
        if (this.onePointAreaEntity != null) {
            this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.onePointAreaEntity.name));
            OnePointPlaneChecker onePointPlaneChecker = new OnePointPlaneChecker();
            this.mOnePointPlaneChecker = onePointPlaneChecker;
            OnePointAreaEntity onePointAreaEntity4 = this.onePointAreaEntity;
            onePointPlaneChecker.calculatePlane(onePointAreaEntity4.lon, onePointAreaEntity4.lat, onePointAreaEntity4.depth + onePointAreaEntity4.elev, onePointAreaEntity4.ratioE / 100.0d, onePointAreaEntity4.ratioN / 100.0d);
            OnePointAreaEntity onePointAreaEntity5 = this.onePointAreaEntity;
            this.pointA = new double[]{onePointAreaEntity5.east, onePointAreaEntity5.north, onePointAreaEntity5.elev + onePointAreaEntity5.depth};
            initCadView();
            return;
        }
        showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
        return onePointAreaEntity != null && CadEntityChooseIntent.isCadFileAvailable(onePointAreaEntity.cadPath);
    }

    private void initCadView() {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.onePointAreaEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            XCadView xCadView = this.binding.cadView;
            OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
            xCadView.setXCadItemAreaPoint(new double[]{onePointAreaEntity.east, onePointAreaEntity.north}, true);
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
                if (!this.onePointAreaEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.onePointAreaEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.8
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            OnePointAreaWorkActivity.this.startActivity(new Intent(OnePointAreaWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            OnePointAreaWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.onePointAreaEntity.corsName.equals(getString(R$string.x_fixed))) {
                    OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{onePointAreaEntity.baseStationLon, onePointAreaEntity.baseStationLat, onePointAreaEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.onePointAreaEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        OnePointAreaEntity onePointAreaEntity2 = this.onePointAreaEntity;
                        if (onePointAreaEntity2.baseStationLon != 0.0d && onePointAreaEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.onePointAreaEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.9
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    OnePointAreaWorkActivity onePointAreaWorkActivity = OnePointAreaWorkActivity.this;
                                    onePointAreaWorkActivity.showTipDialog(onePointAreaWorkActivity.getString(R$string.base_station_connected), OnePointAreaWorkActivity.this.getString(R$string.connected), OnePointAreaWorkActivity.this.getString(R$string.not_connected), OnePointAreaWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.9.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(OnePointAreaWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                OnePointAreaWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(OnePointAreaWorkActivity.this, OnePointAreaWorkActivity.this.getString(R$string.base) + OnePointAreaWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            OnePointAreaWorkActivity.this.startActivity(new Intent(OnePointAreaWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                OnePointAreaWorkActivity.this.startActivity(new Intent(OnePointAreaWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    OnePointAreaWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.10
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                OnePointAreaWorkActivity.this.onePointAreaEntity.baseStationLon = Double.parseDouble(OnePointAreaWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                OnePointAreaWorkActivity.this.onePointAreaEntity.baseStationLat = Double.parseDouble(OnePointAreaWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                OnePointAreaWorkActivity.this.onePointAreaEntity.baseStationElev = Double.parseDouble(OnePointAreaWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                OnePointAreaWorkActivity.this.mDatabaseManager.updateEntityById(OnePointAreaWorkActivity.this.onePointAreaEntity);
                                NetworkUserLoader.getInstance().modifyProject(OnePointAreaWorkActivity.this.mINS, OnePointAreaWorkActivity.this.onePointAreaEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    OnePointAreaWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.onePointAreaEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.11
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    OnePointAreaWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity.12
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    OnePointAreaWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        OnePointAreaWorkActivity.this.hasCheckBasestation = true;
                    }
                    OnePointAreaWorkActivity.this.isCheckBase = false;
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
            this.onePointAreaEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
        if (onePointAreaEntity == null || this.mDatabaseManager == null) {
            return;
        }
        onePointAreaEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.onePointAreaEntity);
        if (!z || TextUtils.isEmpty(this.onePointAreaEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.onePointAreaEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
            if (onePointAreaEntity != null && onePointAreaEntity.id == baseProEntity.id) {
                onePointAreaEntity.projectUUid = baseProEntity.projectUUid;
                onePointAreaEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.one_point_area);
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
            OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
            if (onePointAreaEntity != null) {
                double[] dArr2 = new double[3];
                int i = onePointAreaEntity.shovelTipType;
                if (i == 0) {
                    dArr2[0] = insNavi.longitude;
                    dArr2[1] = insNavi.latitude;
                    dArr2[2] = insNavi.elevation;
                } else if (i == 2) {
                    dArr2[0] = insNavi.longitudeR;
                    dArr2[1] = insNavi.latitudeR;
                    dArr2[2] = insNavi.elevationR;
                } else {
                    dArr2[0] = insNavi.longitudeM;
                    dArr2[1] = insNavi.latitudeM;
                    dArr2[2] = insNavi.elevationM;
                }
                double dCalculateSignedDistance = this.mOnePointPlaneChecker.calculateSignedDistance(dArr2);
                String elevationDiffText = formatElevationDiffText(dCalculateSignedDistance);
                this.binding.tvUnitV.setText(Math.abs(Math.round(dCalculateSignedDistance)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                this.binding.tvDiff.setText(elevationDiffText);
                boolean z = ((float) Math.round(Math.abs(dCalculateSignedDistance))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z) {
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiff.setSelected(true);
                    }
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatus.setSelected(true);
                    }
                    this.binding.tvStatus.setText(getString(R$string.hold));
                    this.binding.ivStatus.setImageResource(Math.round(Math.abs(dCalculateSignedDistance)) < 1 ? R$drawable.icon_status_v : dCalculateSignedDistance > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else {
                    this.binding.tvDiff.setSelected(false);
                    this.binding.tvStatus.setSelected(false);
                    if (dCalculateSignedDistance > 0.0d) {
                        this.binding.tvStatus.setText(getString(R$string.dig));
                        this.binding.ivStatus.setImageResource(R$drawable.icon_status_dig);
                    } else {
                        this.binding.tvStatus.setText(getString(R$string.fill));
                        this.binding.ivStatus.setImageResource(R$drawable.icon_status_fill);
                    }
                }
                if (!this.workPageDataAvailable) {
                    showDataUnAvailable();
                } else {
                    this.binding.tvStatus.setVisibility(0);
                    this.binding.tvStatus.setVisibility(0);
                    this.binding.tvDiff.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 90));
                    ViewGroup.LayoutParams layoutParams = this.binding.tvDiff.getLayoutParams();
                    layoutParams.height = DpUtils.dp2px(this, 100.0f);
                    this.binding.tvDiff.setLayoutParams(layoutParams);
                }
                this.binding.ivArm.updateAnimationValue(dCalculateSignedDistance, this.isH5Pro ? insNavi.pitchDegrees : insNavi.pitchDegrees - this.zeroDegrees);
                int i2 = this.onePointAreaEntity.shovelTipType;
                if (i2 == 0) {
                    c = 0;
                    c2 = 1;
                    dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                } else {
                    c = 0;
                    c2 = 1;
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
                objArr[c] = string;
                objArr[c2] = distance;
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
                        double dAbs = Math.abs(dCalculateSignedDistance);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (dCalculateSignedDistance > 0.0d) {
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
