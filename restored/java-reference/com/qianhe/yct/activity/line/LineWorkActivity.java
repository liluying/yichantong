package com.qianhe.yct.activity.line;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.YctDeviceManager;
import com.qh.xcad.XCadItemAreaPoint;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.PositionResult;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
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
import com.qianhe.yct.databinding.ActivityLineWorkBinding;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineWorkActivity extends BaseActivity {
    private double baseX;
    private double baseY;
    private ActivityLineWorkBinding binding;
    private double[] curPositionWgs84;
    private boolean hasCheckBasestation;
    private boolean isCheckBase;
    private boolean isH5Pro;
    private LineEntity lineEntity;
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
        this.binding = ActivityLineWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.LINE.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    LineEntity lineEntity = (LineEntity) listQueryEntityById.get(0);
                    this.lineEntity = lineEntity;
                    if (TextUtils.isEmpty(lineEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.lineEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        LineEntity lineEntity2 = this.lineEntity;
                        instanceH5.updateCurrentProjectInfo(lineEntity2.type, lineEntity2.projectId);
                    }
                    LineEntity lineEntity3 = this.lineEntity;
                    if (lineEntity3.shovelTipType > 2) {
                        lineEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(lineEntity3.shovelTipType);
                    refreshToothType(this.lineEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            if (this.lineEntity == null) {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
            this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.lineEntity.name));
            LineEntity lineEntity4 = this.lineEntity;
            this.pointA = new double[]{lineEntity4.east1, lineEntity4.north1, lineEntity4.targetElevation1};
            this.pointB = new double[]{lineEntity4.east2, lineEntity4.north2, lineEntity4.targetElevation2};
            this.binding.tvProjectDistance.setText(String.format("%s%s", getString(R$string.project_length), formatDistance(this.lineEntity.length)));
        }
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineWorkActivity.this.isH5Pro) {
                    return;
                }
                LineWorkActivity.this.startActivity(new Intent(LineWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineWorkActivity.this.hasCadPath() && LineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    LineWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{LineWorkActivity.this.mINS.longitude, LineWorkActivity.this.mINS.latitude, LineWorkActivity.this.mINS.elevation});
                if (LineWorkActivity.this.mapController != null) {
                    LineWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                LineWorkActivity.this.binding.workView.resetLocation();
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineWorkActivity.this.hasCadPath() && LineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    LineWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{LineWorkActivity.this.lineEntity.targetLon1, LineWorkActivity.this.lineEntity.targetLat1, LineWorkActivity.this.lineEntity.targetElevation1});
                if (LineWorkActivity.this.mapController != null) {
                    LineWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                LineWorkActivity.this.binding.workView.locateToStartPoint();
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineWorkActivity.this.yMap.getVisibility() == 0) {
                    LineWorkActivity.this.yMap.setVisibility(8);
                    LineWorkActivity.this.binding.cadView.setVisibility(8);
                    LineWorkActivity.this.binding.workView.setVisibility(0);
                } else if (LineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    LineWorkActivity.this.binding.cadView.setVisibility(8);
                    LineWorkActivity.this.binding.workView.setVisibility(8);
                    LineWorkActivity.this.yMap.setVisibility(0);
                } else if (LineWorkActivity.this.hasCadPath()) {
                    LineWorkActivity.this.binding.workView.setVisibility(8);
                    LineWorkActivity.this.binding.cadView.setVisibility(0);
                } else {
                    LineWorkActivity.this.binding.workView.setVisibility(8);
                    LineWorkActivity.this.yMap.setVisibility(0);
                    LineWorkActivity.this.binding.cadView.setVisibility(8);
                }
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineWorkActivity.this.binding.ivSound.isSelected()) {
                    if (LineWorkActivity.this.mBeepPlayer != null) {
                        LineWorkActivity.this.mBeepPlayer.stop();
                        LineWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    LineWorkActivity.this.initPlayer();
                }
                LineWorkActivity.this.binding.ivSound.setSelected(!LineWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.ivDirection.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LineWorkActivity.this.binding.ivDirection.setSelected(!LineWorkActivity.this.binding.ivDirection.isSelected());
                if (LineWorkActivity.this.binding.ivDirection.isSelected()) {
                    LineWorkActivity.this.binding.workView.resfreshDirection(1);
                } else {
                    LineWorkActivity.this.binding.workView.resfreshDirection(0);
                }
            }
        });
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.7
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                LineWorkActivity.this.refreshToothType(i, true);
            }
        });
        initPlayer();
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.8
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = LineWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        LineWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    double[] dArr2 = {LineWorkActivity.this.lineEntity.targetLon1, LineWorkActivity.this.lineEntity.targetLat1, LineWorkActivity.this.lineEntity.targetElevation1};
                    double[] dArr3 = {LineWorkActivity.this.lineEntity.targetLon2, LineWorkActivity.this.lineEntity.targetLat2, LineWorkActivity.this.lineEntity.targetElevation2};
                    double dCalculateHypotenuse = TrianglefunctionUtils.calculateHypotenuse((LineWorkActivity.this.lineEntity.ratio / 100.0d) * LineWorkActivity.this.lineEntity.length, LineWorkActivity.this.lineEntity.length);
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(dArr2);
                    double[] dArrConvertToWGS842 = GnssCoordConvertManager.getInstance().convertToWGS84(CoordsCalculUtils.calculatePointOnLineDirection(dArr2, dArr3, dCalculateHypotenuse));
                    LineWorkActivity.this.mapController.addMarkerOrRoute(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]), new GeoPoint(dArrConvertToWGS842[1], dArrConvertToWGS842[0], dArrConvertToWGS842[2]));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
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
            ActivityLineWorkBinding activityLineWorkBinding = this.binding;
            activityLineWorkBinding.workView.resfreshDirection(activityLineWorkBinding.ivDirection.isSelected() ? 1 : 0);
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
                if (!this.lineEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.lineEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.9
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            LineWorkActivity.this.startActivity(new Intent(LineWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            LineWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.lineEntity.corsName.equals(getString(R$string.x_fixed))) {
                    LineEntity lineEntity = this.lineEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{lineEntity.baseStationLon, lineEntity.baseStationLat, lineEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.lineEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        LineEntity lineEntity2 = this.lineEntity;
                        if (lineEntity2.baseStationLon != 0.0d && lineEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.lineEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.10
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    LineWorkActivity lineWorkActivity = LineWorkActivity.this;
                                    lineWorkActivity.showTipDialog(lineWorkActivity.getString(R$string.base_station_connected), LineWorkActivity.this.getString(R$string.connected), LineWorkActivity.this.getString(R$string.not_connected), LineWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.10.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(LineWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                LineWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(LineWorkActivity.this, LineWorkActivity.this.getString(R$string.base) + LineWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            LineWorkActivity.this.startActivity(new Intent(LineWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                LineWorkActivity.this.startActivity(new Intent(LineWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    LineWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.11
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                LineWorkActivity.this.lineEntity.baseStationLon = Double.parseDouble(LineWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                LineWorkActivity.this.lineEntity.baseStationLat = Double.parseDouble(LineWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                LineWorkActivity.this.lineEntity.baseStationElev = Double.parseDouble(LineWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                LineWorkActivity.this.mDatabaseManager.updateEntityById(LineWorkActivity.this.lineEntity);
                                NetworkUserLoader.getInstance().modifyProject(LineWorkActivity.this.mINS, LineWorkActivity.this.lineEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    LineWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.lineEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.12
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    LineWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.line.LineWorkActivity.13
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    LineWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        LineWorkActivity.this.hasCheckBasestation = true;
                    }
                    LineWorkActivity.this.isCheckBase = false;
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
        this.binding.tvDiffH.setTextSize(1, 24.0f);
        this.binding.tvDiffV.setTextSize(1, 24.0f);
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
            this.binding.workView.refreshToothType(i);
            this.lineEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        LineEntity lineEntity = this.lineEntity;
        if (lineEntity == null || this.mDatabaseManager == null) {
            return;
        }
        lineEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.lineEntity);
        if (!z || TextUtils.isEmpty(this.lineEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.lineEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            LineEntity lineEntity = this.lineEntity;
            if (lineEntity != null && lineEntity.id == baseProEntity.id) {
                lineEntity.projectUUid = baseProEntity.projectUUid;
                lineEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.line);
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
        double[] dArr4;
        double[] dArr5;
        CheckResult checkResultCheckPositionGeodetic;
        LineEntity lineEntity = this.lineEntity;
        int i = lineEntity.shovelTipType;
        if (i == 0) {
            dArr3 = new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation};
        } else if (i == 2) {
            dArr3 = new double[]{insNavi.longitudeR, insNavi.latitudeR, insNavi.elevationR};
        } else {
            dArr3 = new double[]{insNavi.longitudeM, insNavi.latitudeM, insNavi.elevationM};
        }
        double[] dArr6 = dArr3;
        double d = lineEntity.ratio / 100.0d;
        double d2 = lineEntity.length;
        double d3 = d * d2;
        double degrees = Math.toDegrees(Math.atan2(d3, d2));
        double d4 = dArr[2];
        LineEntity lineEntity2 = this.lineEntity;
        double d5 = d4 + lineEntity2.depthA;
        double d6 = dArr2[2] + lineEntity2.depthB;
        if (d5 >= d6) {
            dArr4 = new double[]{dArr[0], dArr[1], d5};
            double[] dArrCalculatePointOnLineDirectionGAUSS = SlopePositionChecker.calculatePointOnLineDirectionGAUSS(dArr[0], dArr[1], dArr2[0], dArr2[1], lineEntity2.length);
            double[] dArr7 = {dArrCalculatePointOnLineDirectionGAUSS[0], dArrCalculatePointOnLineDirectionGAUSS[1], d5 - d3};
            double[][] ditchFence = DitchPositionChecker.getDitchFence(dArr4, new double[]{dArr2[0], dArr2[1], d6}, this.lineEntity.width / 2.0d);
            LineEntity lineEntity3 = this.lineEntity;
            double[] dArr8 = {lineEntity3.targetLon1, lineEntity3.targetLat1, d5};
            double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(ditchFence[0]);
            LineEntity lineEntity4 = this.lineEntity;
            checkResultCheckPositionGeodetic = SlopePositionChecker.checkPositionGeodetic(this.appConfig.details.work_tolerance, degrees, dArr6, dArr8, dArrConvertGAUSSXYToGeodetic, new double[]{lineEntity4.targetLon2, lineEntity4.targetLat2, d6});
            dArr5 = dArr7;
        } else {
            dArr4 = new double[]{dArr[0], dArr[1], d5};
            double[] dArrCalculatePointOnLineDirectionGAUSS2 = SlopePositionChecker.calculatePointOnLineDirectionGAUSS(dArr[0], dArr[1], dArr2[0], dArr2[1], lineEntity2.length);
            dArr5 = new double[]{dArrCalculatePointOnLineDirectionGAUSS2[0], dArrCalculatePointOnLineDirectionGAUSS2[1], d5 - d3};
            double[][] ditchFence2 = DitchPositionChecker.getDitchFence(new double[]{dArr2[0], dArr2[1], d6}, dArr4, this.lineEntity.width / 2.0d);
            LineEntity lineEntity5 = this.lineEntity;
            double[] dArr9 = {lineEntity5.targetLon2, lineEntity5.targetLat2, d6};
            double[] dArrConvertGAUSSXYToGeodetic2 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(ditchFence2[0]);
            LineEntity lineEntity6 = this.lineEntity;
            checkResultCheckPositionGeodetic = SlopePositionChecker.checkPositionGeodetic(this.appConfig.details.work_tolerance, degrees, dArr6, dArr9, dArrConvertGAUSSXYToGeodetic2, new double[]{lineEntity6.targetLon1, lineEntity6.targetLat1, d5});
        }
        if (this.baseX == 0.0d) {
            initWorkView(dArr4, dArr5);
            initCadView(dArr4, dArr5);
        }
        return checkResultCheckPositionGeodetic.verticalDistance;
    }

    private void initWorkView(double[] dArr, double[] dArr2) {
        this.baseX = dArr[0];
        this.baseY = dArr[1];
        this.binding.workView.setProjectData(new PointF((float) (dArr[0] - this.baseX), (float) (dArr[1] - this.baseY)), new PointF((float) (dArr2[0] - this.baseX), (float) (dArr2[1] - this.baseY)), 0.0d);
        this.binding.workView.setPileSpacing(this.lineEntity.pileSpacing);
        this.binding.workView.setUseBitmap(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        LineEntity lineEntity = this.lineEntity;
        return lineEntity != null && CadEntityChooseIntent.isCadFileAvailable(lineEntity.cadPath);
    }

    private void initCadView(double[] dArr, double[] dArr2) {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.lineEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            this.binding.cadView.setXCadItemAreaPoint(buildCadItemAreaPoints(dArr, dArr2), true, true, false);
        }
    }

    private XCadItemAreaPoint.XCadItemPointInfo[] buildCadItemAreaPoints(double[] dArr, double[] dArr2) {
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = dArr2[0];
        double d4 = dArr2[1];
        double d5 = this.lineEntity.pileSpacing;
        double d6 = d3 - d;
        double d7 = d4 - d2;
        double dSqrt = Math.sqrt((d6 * d6) + (d7 * d7));
        if (dSqrt == 0.0d || d5 <= 0.0d) {
            return new XCadItemAreaPoint.XCadItemPointInfo[]{new XCadItemAreaPoint.XCadItemPointInfo(d, d2, getString(R$string.starting_point)), new XCadItemAreaPoint.XCadItemPointInfo(d3, d4, getString(R$string.ending_point))};
        }
        double d8 = d6 / dSqrt;
        double d9 = d7 / dSqrt;
        ArrayList arrayList = new ArrayList();
        for (double d10 = 0.0d; d10 <= dSqrt; d10 += d5) {
            arrayList.add(Double.valueOf(d + (d8 * d10)));
            arrayList.add(Double.valueOf(d2 + (d9 * d10)));
        }
        double dDoubleValue = ((Double) arrayList.get(arrayList.size() - 2)).doubleValue();
        double dDoubleValue2 = ((Double) arrayList.get(arrayList.size() - 1)).doubleValue();
        if (Math.abs(dDoubleValue - d3) > 1.0E-6d || Math.abs(dDoubleValue2 - d4) > 1.0E-6d) {
            arrayList.add(Double.valueOf(d3));
            arrayList.add(Double.valueOf(d4));
        }
        int size = arrayList.size() / 2;
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr = new XCadItemAreaPoint.XCadItemPointInfo[size];
        for (int i = 0; i < size; i++) {
            int i2 = i * 2;
            double dDoubleValue3 = ((Double) arrayList.get(i2)).doubleValue();
            double dDoubleValue4 = ((Double) arrayList.get(i2 + 1)).doubleValue();
            if (i == 0) {
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(dDoubleValue3, dDoubleValue4, getString(R$string.starting_point));
            } else if (i == size - 1) {
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(dDoubleValue3, dDoubleValue4, getString(R$string.ending_point));
            } else {
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(dDoubleValue3, dDoubleValue4);
            }
        }
        return xCadItemPointInfoArr;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        double[] dArr;
        double d;
        long j;
        char c;
        double d2;
        PositionResult positionResultCalculatePosition;
        double[] dArrConvertToGAUSSXY;
        double[] dArr2;
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
            LineEntity lineEntity = this.lineEntity;
            if (lineEntity != null) {
                int i = lineEntity.shovelTipType;
                if (i == 0) {
                    dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                } else if (i == 2) {
                    dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                } else {
                    dArr = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
                }
                this.binding.tvStartDistance.setText(String.format("%s%s", getString(R$string.start_distance), formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr, this.pointA))));
                double dSlopeDitch = slopeDitch(insNavi, this.pointA, this.pointB);
                String elevationDiffText = formatElevationDiffText(dSlopeDitch);
                this.binding.tvUnitV.setText(Math.abs(Math.round(dSlopeDitch)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z = ((float) Math.round(Math.abs(dSlopeDitch))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z) {
                    this.binding.tvStatusV.setText(R$string.hold);
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatusV.setSelected(true);
                    }
                    this.binding.tvDiffV.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffV.setSelected(true);
                    }
                    this.binding.ivStatusV.setImageResource(Math.round(Math.abs(dSlopeDitch)) < 1 ? R$drawable.icon_status_v : dSlopeDitch > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else if (dSlopeDitch > 0.0d) {
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
                if (this.binding.ivDirection.isSelected()) {
                    c = 2;
                    d = 0.0d;
                    j = 1000;
                    positionResultCalculatePosition = DitchPositionChecker.calculatePosition(this.appConfig.details.work_tolerance, this.pointB, this.pointA, dArr, new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM});
                    d2 = dSlopeDitch;
                } else {
                    d = 0.0d;
                    j = 1000;
                    c = 2;
                    d2 = dSlopeDitch;
                    positionResultCalculatePosition = DitchPositionChecker.calculatePosition(this.appConfig.details.work_tolerance, this.pointA, this.pointB, dArr, new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM});
                }
                boolean z2 = positionResultCalculatePosition.distance <= (this.lineEntity.width * 100.0d) / 2.0d;
                this.binding.tvBoundTip.setVisibility(z2 ? 8 : 0);
                String elevationDiffText2 = formatElevationDiffText(positionResultCalculatePosition.distance);
                this.binding.tvUnitH.setText(Math.abs(Math.round(positionResultCalculatePosition.distance)) < j ? R$string.unit_cm : R$string.unit_m);
                this.binding.tvDiffH.setText(elevationDiffText2);
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
                    showDataUnAvailable();
                } else {
                    this.binding.tvDiffH.setTextSize(1, getElevationDiffTextSize(elevationDiffText2, 80));
                    this.binding.tvDiffV.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 80));
                    this.binding.tvStatusH.setVisibility(0);
                    this.binding.tvStatusV.setVisibility(0);
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
                        double dAbs = Math.abs(d2);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (d2 > d) {
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
                        double d3 = insNavi.east;
                        double d4 = insNavi.north;
                        double d5 = insNavi.elevation;
                        dArrConvertToGAUSSXY = new double[3];
                        dArrConvertToGAUSSXY[0] = d3;
                        dArrConvertToGAUSSXY[1] = d4;
                        dArrConvertToGAUSSXY[c] = d5;
                        double d6 = insNavi.eastR;
                        double d7 = insNavi.northR;
                        double d8 = insNavi.elevationR;
                        dArr2 = new double[3];
                        dArr2[0] = d6;
                        dArr2[1] = d7;
                        dArr2[c] = d8;
                    } else {
                        GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
                        InsNavi insNavi2 = this.mINS;
                        double d9 = insNavi2.longitude;
                        double d10 = insNavi2.latitude;
                        double d11 = insNavi2.elevation;
                        double[] dArr3 = new double[3];
                        dArr3[0] = d9;
                        dArr3[1] = d10;
                        dArr3[c] = d11;
                        dArrConvertToGAUSSXY = gnssCoordConvertManager.convertToGAUSSXY(dArr3);
                        dArr2 = dArrConvertToGAUSSXY;
                    }
                    if (dArrConvertToGAUSSXY != null && dArr2 != null) {
                        this.binding.workView.setLocationPoint(new PointF((float) (dArrConvertToGAUSSXY[0] - this.baseX), (float) (dArrConvertToGAUSSXY[1] - this.baseY)), new PointF((float) (dArr2[0] - this.baseX), (float) (dArr2[1] - this.baseY)), CoordsCalculUtils.calculateDistanceGAUSS(dArrConvertToGAUSSXY, dArr2), z2);
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
