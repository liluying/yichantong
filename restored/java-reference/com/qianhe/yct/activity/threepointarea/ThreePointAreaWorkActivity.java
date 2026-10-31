package com.qianhe.yct.activity.threepointarea;

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
import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
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
import com.qianhe.baselib.utils.workchecker.ThreePointAreaChecker;
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
import com.qianhe.yct.databinding.ActivityThreepointAreaWorkBinding;
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
public class ThreePointAreaWorkActivity extends BaseActivity {
    private ActivityThreepointAreaWorkBinding binding;
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
    private SensorEventHelper sensorEventHelper;
    private boolean silentModifyProject;
    private ThreePointAreaEntity threePointAreaEntity;
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
        this.binding = ActivityThreepointAreaWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.THREEPOINTAREA.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    ThreePointAreaEntity threePointAreaEntity = (ThreePointAreaEntity) listQueryEntityById.get(0);
                    this.threePointAreaEntity = threePointAreaEntity;
                    if (TextUtils.isEmpty(threePointAreaEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.threePointAreaEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        ThreePointAreaEntity threePointAreaEntity2 = this.threePointAreaEntity;
                        instanceH5.updateCurrentProjectInfo(threePointAreaEntity2.type, threePointAreaEntity2.projectId);
                    }
                    ThreePointAreaEntity threePointAreaEntity3 = this.threePointAreaEntity;
                    if (threePointAreaEntity3.shovelTipType > 2) {
                        threePointAreaEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(threePointAreaEntity3.shovelTipType);
                    refreshToothType(this.threePointAreaEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            if (this.threePointAreaEntity != null) {
                this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.threePointAreaEntity.name));
                ThreePointAreaEntity threePointAreaEntity4 = this.threePointAreaEntity;
                double[] dArr = {threePointAreaEntity4.lon1, threePointAreaEntity4.lat1, threePointAreaEntity4.elev1 + threePointAreaEntity4.depthA};
                this.coordA = dArr;
                this.coordB = new double[]{threePointAreaEntity4.lon2, threePointAreaEntity4.lat2, threePointAreaEntity4.elev2 + threePointAreaEntity4.depthB};
                this.coordC = new double[]{threePointAreaEntity4.lon3, threePointAreaEntity4.lat3, threePointAreaEntity4.elev3 + threePointAreaEntity4.depthC};
                this.pointA = new double[]{threePointAreaEntity4.east1, threePointAreaEntity4.north1, dArr[2]};
            } else {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ThreePointAreaWorkActivity.this.hasCadPath() && ThreePointAreaWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ThreePointAreaWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ThreePointAreaWorkActivity.this.mINS.longitude, ThreePointAreaWorkActivity.this.mINS.latitude, ThreePointAreaWorkActivity.this.mINS.elevation});
                if (ThreePointAreaWorkActivity.this.mapController != null) {
                    ThreePointAreaWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ThreePointAreaWorkActivity.this.hasCadPath() && ThreePointAreaWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ThreePointAreaWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{ThreePointAreaWorkActivity.this.threePointAreaEntity.lon1, ThreePointAreaWorkActivity.this.threePointAreaEntity.lat1, ThreePointAreaWorkActivity.this.threePointAreaEntity.elev1});
                if (ThreePointAreaWorkActivity.this.mapController != null) {
                    ThreePointAreaWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ThreePointAreaWorkActivity.this.isH5Pro) {
                    return;
                }
                ThreePointAreaWorkActivity.this.startActivity(new Intent(ThreePointAreaWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ThreePointAreaWorkActivity.this.yMap.getVisibility() == 0) {
                    ThreePointAreaWorkActivity.this.yMap.setVisibility(8);
                    ThreePointAreaWorkActivity.this.binding.cadView.setVisibility(8);
                    ThreePointAreaWorkActivity.this.binding.lltBtn.setVisibility(8);
                } else if (ThreePointAreaWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    ThreePointAreaWorkActivity.this.binding.cadView.setVisibility(8);
                    ThreePointAreaWorkActivity.this.yMap.setVisibility(0);
                    ThreePointAreaWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else if (ThreePointAreaWorkActivity.this.hasCadPath()) {
                    ThreePointAreaWorkActivity.this.binding.cadView.setVisibility(0);
                    ThreePointAreaWorkActivity.this.binding.lltBtn.setVisibility(0);
                } else {
                    ThreePointAreaWorkActivity.this.yMap.setVisibility(0);
                    ThreePointAreaWorkActivity.this.binding.cadView.setVisibility(8);
                    ThreePointAreaWorkActivity.this.binding.lltBtn.setVisibility(0);
                }
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ThreePointAreaWorkActivity.this.binding.ivSound.isSelected()) {
                    if (ThreePointAreaWorkActivity.this.mBeepPlayer != null) {
                        ThreePointAreaWorkActivity.this.mBeepPlayer.stop();
                        ThreePointAreaWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    ThreePointAreaWorkActivity.this.initPlayer();
                }
                ThreePointAreaWorkActivity.this.binding.ivSound.setSelected(!ThreePointAreaWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                ThreePointAreaWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.7
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr2 = ThreePointAreaWorkActivity.this.curPositionWgs84;
                    if (dArr2 != null) {
                        ThreePointAreaWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr2[1], dArr2[0], dArr2[2]), true);
                    }
                    ThreePointAreaWorkActivity.this.mapController.addPolyline(ThreePointAreaWorkActivity.this.buildThreePointAreaMapPoints(), true, Arrays.asList("A", "B", "C"));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
        initCadView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<GeoPoint> buildThreePointAreaMapPoints() {
        ArrayList arrayList = new ArrayList();
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        double[][] dArr = {new double[]{threePointAreaEntity.lon1, threePointAreaEntity.lat1, threePointAreaEntity.elev1}, new double[]{threePointAreaEntity.lon2, threePointAreaEntity.lat2, threePointAreaEntity.elev2}, new double[]{threePointAreaEntity.lon3, threePointAreaEntity.lat3, threePointAreaEntity.elev3}};
        for (int i = 0; i < 3; i++) {
            double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(dArr[i]);
            arrayList.add(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        return threePointAreaEntity != null && CadEntityChooseIntent.isCadFileAvailable(threePointAreaEntity.cadPath);
    }

    private void initCadView() {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.threePointAreaEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            XCadView xCadView = this.binding.cadView;
            ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
            xCadView.setXCadItemAreaPoint(new double[]{threePointAreaEntity.east1, threePointAreaEntity.north1, threePointAreaEntity.east2, threePointAreaEntity.north2, threePointAreaEntity.east3, threePointAreaEntity.north3}, true, true, true);
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
                if (!this.threePointAreaEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.threePointAreaEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.8
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            ThreePointAreaWorkActivity.this.startActivity(new Intent(ThreePointAreaWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            ThreePointAreaWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.threePointAreaEntity.corsName.equals(getString(R$string.x_fixed))) {
                    ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{threePointAreaEntity.baseStationLon, threePointAreaEntity.baseStationLat, threePointAreaEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.threePointAreaEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        ThreePointAreaEntity threePointAreaEntity2 = this.threePointAreaEntity;
                        if (threePointAreaEntity2.baseStationLon != 0.0d && threePointAreaEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.threePointAreaEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.9
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    ThreePointAreaWorkActivity threePointAreaWorkActivity = ThreePointAreaWorkActivity.this;
                                    threePointAreaWorkActivity.showTipDialog(threePointAreaWorkActivity.getString(R$string.base_station_connected), ThreePointAreaWorkActivity.this.getString(R$string.connected), ThreePointAreaWorkActivity.this.getString(R$string.not_connected), ThreePointAreaWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.9.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(ThreePointAreaWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                ThreePointAreaWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(ThreePointAreaWorkActivity.this, ThreePointAreaWorkActivity.this.getString(R$string.base) + ThreePointAreaWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            ThreePointAreaWorkActivity.this.startActivity(new Intent(ThreePointAreaWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                ThreePointAreaWorkActivity.this.startActivity(new Intent(ThreePointAreaWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    ThreePointAreaWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.10
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                ThreePointAreaWorkActivity.this.threePointAreaEntity.baseStationLon = Double.parseDouble(ThreePointAreaWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                ThreePointAreaWorkActivity.this.threePointAreaEntity.baseStationLat = Double.parseDouble(ThreePointAreaWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                ThreePointAreaWorkActivity.this.threePointAreaEntity.baseStationElev = Double.parseDouble(ThreePointAreaWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                ThreePointAreaWorkActivity.this.mDatabaseManager.updateEntityById(ThreePointAreaWorkActivity.this.threePointAreaEntity);
                                NetworkUserLoader.getInstance().modifyProject(ThreePointAreaWorkActivity.this.mINS, ThreePointAreaWorkActivity.this.threePointAreaEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    ThreePointAreaWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.threePointAreaEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.11
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    ThreePointAreaWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity.12
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ThreePointAreaWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        ThreePointAreaWorkActivity.this.hasCheckBasestation = true;
                    }
                    ThreePointAreaWorkActivity.this.isCheckBase = false;
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
            this.threePointAreaEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        if (threePointAreaEntity == null || this.mDatabaseManager == null) {
            return;
        }
        threePointAreaEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.threePointAreaEntity);
        if (!z || TextUtils.isEmpty(this.threePointAreaEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.threePointAreaEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
            if (threePointAreaEntity != null && threePointAreaEntity.id == baseProEntity.id) {
                threePointAreaEntity.projectUUid = baseProEntity.projectUUid;
                threePointAreaEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.three_point_area);
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
        double[] dArr2;
        char c;
        char c2;
        double d;
        double d2;
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
            ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
            if (threePointAreaEntity != null) {
                int i = threePointAreaEntity.shovelTipType;
                if (i == 0) {
                    double d3 = insNavi.east;
                    double d4 = insNavi.north;
                    double d5 = insNavi.elevation;
                    dArr = new double[]{d3, d4, d5};
                    dArr2 = new double[]{insNavi.longitude, insNavi.latitude, d5};
                } else if (i == 2) {
                    double d6 = insNavi.eastR;
                    double d7 = insNavi.northR;
                    double d8 = insNavi.elevationR;
                    dArr = new double[]{d6, d7, d8};
                    dArr2 = new double[]{insNavi.longitudeR, insNavi.latitudeR, d8};
                } else {
                    double d9 = insNavi.eastM;
                    double d10 = insNavi.northM;
                    double d11 = insNavi.elevationM;
                    dArr = new double[]{d9, d10, d11};
                    dArr2 = new double[]{insNavi.longitudeM, insNavi.latitudeM, d11};
                }
                CheckResult checkResultCheck = ThreePointAreaChecker.check(this.appConfig.details.work_tolerance, dArr2, this.coordA, this.coordB, this.coordC);
                double d12 = checkResultCheck.verticalDistance;
                String elevationDiffText = formatElevationDiffText(d12);
                this.binding.tvUnitV.setText(Math.abs(Math.round(d12)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z = ((float) Math.round(Math.abs(d12))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z) {
                    this.binding.tvStatus.setText(R$string.hold);
                    this.binding.tvDiff.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiff.setSelected(true);
                    }
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatus.setSelected(true);
                    }
                    this.binding.ivStatus.setImageResource(Math.round(Math.abs(d12)) < 1 ? R$drawable.icon_status_v : d12 > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else if (checkResultCheck.position > 0) {
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
                    this.binding.tvStatus.setVisibility(0);
                    this.binding.tvDiff.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 90));
                    ViewGroup.LayoutParams layoutParams = this.binding.tvDiff.getLayoutParams();
                    layoutParams.height = DpUtils.dp2px(this, 100.0f);
                    this.binding.tvDiff.setLayoutParams(layoutParams);
                }
                ArmView armView = this.binding.ivArm;
                double d13 = checkResultCheck.verticalDistance;
                if (this.isH5Pro) {
                    c = 1;
                    d2 = insNavi.pitchDegrees;
                    d = 0.0d;
                    c2 = 0;
                } else {
                    c = 1;
                    c2 = 0;
                    d = 0.0d;
                    d2 = insNavi.pitchDegrees - this.zeroDegrees;
                }
                armView.updateAnimationValue(d13, d2);
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
                        double dAbs = Math.abs(d12);
                        this.mBeepPlayer.setUrgency(0.5f);
                        if (z) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (d12 > d) {
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
            e.printStackTrace();
            LogToFile.e(e + "");
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
    protected void onStart() {
        super.onStart();
        this.yMap.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.yMap.onStop();
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
