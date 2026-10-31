package com.qianhe.yct.activity.curvedslope;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.YctDeviceManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
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
import com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityCurvedSlopeWorkBinding;
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
import com.qianhe.yct.view.CurvedSlopePreview;
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
public class CurvedSlopeWorkActivity extends BaseActivity {
    private ActivityCurvedSlopeWorkBinding binding;
    private double[] curPositionWgs84;
    private CurvedSlopeChecker curvedSlopeChecker;
    private CurvedSlopeEntity curvedSlopeEntity;
    private CurvedSlopePreview curvedSlopePreview;
    private boolean hasCheckBasestation;
    private boolean isCheckBase;
    private boolean isH5Pro;
    private List<CurvedSlopeChecker.Point3D> list3D;
    private BeepPlayer mBeepPlayer;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private List<double[]> mPointList;
    private MapController mapController;
    private double[] point2Bottom;
    private double[] pointA;
    private double[] pointTop;
    private CurvedSlopeChecker.Point3D refBottom;
    private CurvedSlopeChecker.Point3D refTop;
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
        this.binding = ActivityCurvedSlopeWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.CURVEDSLOPE.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    CurvedSlopeEntity curvedSlopeEntity = (CurvedSlopeEntity) listQueryEntityById.get(0);
                    this.curvedSlopeEntity = curvedSlopeEntity;
                    if (TextUtils.isEmpty(curvedSlopeEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.curvedSlopeEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        CurvedSlopeEntity curvedSlopeEntity2 = this.curvedSlopeEntity;
                        instanceH5.updateCurrentProjectInfo(curvedSlopeEntity2.type, curvedSlopeEntity2.projectId);
                    }
                    CurvedSlopeEntity curvedSlopeEntity3 = this.curvedSlopeEntity;
                    if (curvedSlopeEntity3.shovelTipType > 2) {
                        curvedSlopeEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(curvedSlopeEntity3.shovelTipType);
                    refreshToothType(this.curvedSlopeEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{CurvedSlopeWorkActivity.this.mINS.longitude, CurvedSlopeWorkActivity.this.mINS.latitude, CurvedSlopeWorkActivity.this.mINS.elevation});
                if (CurvedSlopeWorkActivity.this.mapController != null) {
                    CurvedSlopeWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                if (CurvedSlopeWorkActivity.this.curvedSlopePreview != null) {
                    CurvedSlopeWorkActivity.this.curvedSlopePreview.locateToCurrentPoint();
                }
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic((double[]) CurvedSlopeWorkActivity.this.mPointList.get(0)));
                if (CurvedSlopeWorkActivity.this.mapController != null) {
                    CurvedSlopeWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                if (CurvedSlopeWorkActivity.this.curvedSlopePreview != null) {
                    CurvedSlopeWorkActivity.this.curvedSlopePreview.locateToStartPoint();
                }
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CurvedSlopeWorkActivity.this.isH5Pro) {
                    return;
                }
                CurvedSlopeWorkActivity.this.startActivity(new Intent(CurvedSlopeWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setSelected(false);
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CurvedSlopeWorkActivity.this.binding.ivMapState.setSelected(!CurvedSlopeWorkActivity.this.binding.ivMapState.isSelected());
                if (CurvedSlopeWorkActivity.this.binding.ivMapState.isSelected()) {
                    CurvedSlopeWorkActivity.this.yMap.setVisibility(0);
                } else {
                    CurvedSlopeWorkActivity.this.yMap.setVisibility(8);
                }
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CurvedSlopeWorkActivity.this.binding.ivSound.isSelected()) {
                    if (CurvedSlopeWorkActivity.this.mBeepPlayer != null) {
                        CurvedSlopeWorkActivity.this.mBeepPlayer.stop();
                        CurvedSlopeWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    CurvedSlopeWorkActivity.this.initPlayer();
                }
                CurvedSlopeWorkActivity.this.binding.ivSound.setSelected(!CurvedSlopeWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point == 1 ? 0 : 8);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                CurvedSlopeWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.7
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = CurvedSlopeWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        CurvedSlopeWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic((double[]) CurvedSlopeWorkActivity.this.mPointList.get(0)));
                    CurvedSlopeWorkActivity.this.mapController.addMarker(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
        if (this.curvedSlopeEntity != null) {
            this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.curvedSlopeEntity.name));
            this.mPointList = (List) new Gson().fromJson(this.curvedSlopeEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.8
            });
            this.list3D = new ArrayList();
            for (double[] dArr : this.mPointList) {
                this.list3D.add(new CurvedSlopeChecker.Point3D(dArr[0], dArr[1], dArr[2]));
            }
            this.curvedSlopeChecker = new CurvedSlopeChecker();
            CurvedSlopeEntity curvedSlopeEntity4 = this.curvedSlopeEntity;
            this.pointTop = new double[]{curvedSlopeEntity4.east1, curvedSlopeEntity4.north1, curvedSlopeEntity4.elev1 + curvedSlopeEntity4.depthA};
            this.point2Bottom = new double[]{curvedSlopeEntity4.east2, curvedSlopeEntity4.north2, curvedSlopeEntity4.elev2 + curvedSlopeEntity4.depthB};
            this.pointA = this.mPointList.get(0);
            double[] dArr2 = this.pointTop;
            this.refTop = new CurvedSlopeChecker.Point3D(dArr2[0], dArr2[1], dArr2[2]);
            double[] dArr3 = this.point2Bottom;
            this.refBottom = new CurvedSlopeChecker.Point3D(dArr3[0], dArr3[1], dArr3[2]);
            CurvedSlopePreview curvedSlopePreview = this.binding.curvedSlopePreview;
            this.curvedSlopePreview = curvedSlopePreview;
            curvedSlopePreview.refreshToothType(this.curvedSlopeEntity.shovelTipType);
            double dSlopeRatioFromAC = CurvedSlopeChecker.slopeRatioFromAC(this.refTop, this.refBottom);
            this.curvedSlopePreview.setSlopeData(this.list3D, CurvedSlopeChecker.buildSlopeFaces(this.list3D, dSlopeRatioFromAC, false, 3.0d), CurvedSlopeChecker.buildArcTransitions(this.list3D, dSlopeRatioFromAC, false, 3.0d));
            this.curvedSlopePreview.locateToStartPoint();
            return;
        }
        showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
    }

    private void restoreData(Bundle bundle) {
        if (bundle != null) {
            this.binding.ivMapState.setSelected(bundle.getBoolean("ivMapState"));
            this.binding.ivSound.setSelected(bundle.getBoolean("ivSound"));
            this.yMap.setVisibility(bundle.getInt("webview"));
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
                if (!this.curvedSlopeEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.curvedSlopeEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.9
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            CurvedSlopeWorkActivity.this.startActivity(new Intent(CurvedSlopeWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            CurvedSlopeWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.curvedSlopeEntity.corsName.equals(getString(R$string.x_fixed))) {
                    CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{curvedSlopeEntity.baseStationLon, curvedSlopeEntity.baseStationLat, curvedSlopeEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.curvedSlopeEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        CurvedSlopeEntity curvedSlopeEntity2 = this.curvedSlopeEntity;
                        if (curvedSlopeEntity2.baseStationLon != 0.0d && curvedSlopeEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.curvedSlopeEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.10
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    CurvedSlopeWorkActivity curvedSlopeWorkActivity = CurvedSlopeWorkActivity.this;
                                    curvedSlopeWorkActivity.showTipDialog(curvedSlopeWorkActivity.getString(R$string.base_station_connected), CurvedSlopeWorkActivity.this.getString(R$string.connected), CurvedSlopeWorkActivity.this.getString(R$string.not_connected), CurvedSlopeWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.10.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(CurvedSlopeWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                CurvedSlopeWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(CurvedSlopeWorkActivity.this, CurvedSlopeWorkActivity.this.getString(R$string.base) + CurvedSlopeWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            CurvedSlopeWorkActivity.this.startActivity(new Intent(CurvedSlopeWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                CurvedSlopeWorkActivity.this.startActivity(new Intent(CurvedSlopeWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    CurvedSlopeWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.11
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                CurvedSlopeWorkActivity.this.curvedSlopeEntity.baseStationLon = Double.parseDouble(CurvedSlopeWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                CurvedSlopeWorkActivity.this.curvedSlopeEntity.baseStationLat = Double.parseDouble(CurvedSlopeWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                CurvedSlopeWorkActivity.this.curvedSlopeEntity.baseStationElev = Double.parseDouble(CurvedSlopeWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                CurvedSlopeWorkActivity.this.mDatabaseManager.updateEntityById(CurvedSlopeWorkActivity.this.curvedSlopeEntity);
                                NetworkUserLoader.getInstance().modifyProject(CurvedSlopeWorkActivity.this.mINS, CurvedSlopeWorkActivity.this.curvedSlopeEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    CurvedSlopeWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.curvedSlopeEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.12
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    CurvedSlopeWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity.13
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    CurvedSlopeWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        CurvedSlopeWorkActivity.this.hasCheckBasestation = true;
                    }
                    CurvedSlopeWorkActivity.this.isCheckBase = false;
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
            this.curvedSlopeEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
            CurvedSlopePreview curvedSlopePreview = this.curvedSlopePreview;
            if (curvedSlopePreview != null) {
                curvedSlopePreview.refreshToothType(i);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        if (curvedSlopeEntity == null || this.mDatabaseManager == null) {
            return;
        }
        curvedSlopeEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.curvedSlopeEntity);
        if (!z || TextUtils.isEmpty(this.curvedSlopeEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.curvedSlopeEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
            if (curvedSlopeEntity != null && curvedSlopeEntity.id == baseProEntity.id) {
                curvedSlopeEntity.projectUUid = baseProEntity.projectUUid;
                curvedSlopeEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.curved_slope);
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
        double[] dArrConvertToGAUSSXY;
        double[] dArr;
        if (insNavi == null) {
            return;
        }
        if (insNavi.longitude != 0.0d && insNavi.latitude != 0.0d) {
            this.mINS = insNavi;
        }
        try {
            this.binding.rollAngleView.setCurrnetAngle(insNavi.rollDegrees);
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
            CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
            if (curvedSlopeEntity != null) {
                double[] dArr2 = new double[3];
                int i = curvedSlopeEntity.shovelTipType;
                if (i == 0) {
                    double d = insNavi.elevation;
                    dArr2[0] = insNavi.east;
                    dArr2[1] = insNavi.north;
                    dArr2[2] = d;
                } else if (i == 2) {
                    double d2 = insNavi.elevationR;
                    dArr2[0] = insNavi.eastR;
                    dArr2[1] = insNavi.northR;
                    dArr2[2] = d2;
                } else {
                    double d3 = insNavi.elevationM;
                    dArr2[0] = insNavi.eastM;
                    dArr2[1] = insNavi.northM;
                    dArr2[2] = d3;
                }
                CurvedSlopeChecker.SlopeResult slopeResultCalculate = this.curvedSlopeChecker.calculate(new CurvedSlopeChecker.Point3D(dArr2[0], dArr2[1], dArr2[2]), this.list3D, this.refTop, this.refBottom, this.curvedSlopeEntity.subType == 0);
                double d4 = slopeResultCalculate.distanceCm;
                String elevationDiffText = formatElevationDiffText(d4);
                this.binding.tvDiff.setText(elevationDiffText);
                this.binding.tvUnitV.setText(Math.abs(Math.round(d4)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z = ((float) Math.round(Math.abs(d4))) <= this.appConfig.details.work_tolerance * 100.0f;
                this.binding.tvBoundTip.setVisibility(slopeResultCalculate.isOutOfSlopeRange ? 0 : 8);
                if (z) {
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiff.setSelected(true);
                    }
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatus.setSelected(true);
                    }
                    this.binding.tvStatus.setText(getString(R$string.hold));
                    this.binding.ivStatus.setImageResource(Math.round(Math.abs(d4)) < 1 ? R$drawable.icon_status_v : d4 > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else {
                    this.binding.tvDiff.setSelected(false);
                    this.binding.tvStatus.setSelected(false);
                    if (slopeResultCalculate.isCut) {
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
                    this.binding.tvDiff.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 90));
                    ViewGroup.LayoutParams layoutParams = this.binding.tvDiff.getLayoutParams();
                    layoutParams.height = DpUtils.dp2px(this, 100.0f);
                    this.binding.tvDiff.setLayoutParams(layoutParams);
                }
                this.binding.ivArm.updateAnimationValue(slopeResultCalculate.distanceCm, this.isH5Pro ? insNavi.pitchDegrees : insNavi.pitchDegrees - this.zeroDegrees);
                this.binding.tvStartDistance.setText(String.format("%s：%s", getString(R$string.distance_from_project_starting), formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr2, this.pointA))));
                if (!this.workPageDataAvailable || !this.binding.ivSound.isSelected()) {
                    BeepPlayer beepPlayer = this.mBeepPlayer;
                    if (beepPlayer != null) {
                        beepPlayer.pause();
                    }
                } else {
                    BeepPlayer beepPlayer2 = this.mBeepPlayer;
                    if (beepPlayer2 != null) {
                        beepPlayer2.resume();
                        double dAbs = Math.abs(slopeResultCalculate.distanceCm);
                        if (z) {
                            this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DI_LONG);
                            this.mBeepPlayer.setUrgency(0.5f);
                            this.mBeepPlayer.start();
                        } else {
                            this.mBeepPlayer.setUrgencyByDistanceCm((float) dAbs);
                            if (slopeResultCalculate.distanceCm > 0) {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.DIDI);
                                this.mBeepPlayer.start();
                            } else {
                                this.mBeepPlayer.setSoundType(BeepPlayer.SoundType.WOOD_FISH);
                                this.mBeepPlayer.start();
                            }
                        }
                    }
                }
                if (this.curvedSlopePreview != null) {
                    if (this.workPageDataAvailable) {
                        dArrConvertToGAUSSXY = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                        dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                    } else {
                        GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
                        InsNavi insNavi2 = this.mINS;
                        dArrConvertToGAUSSXY = gnssCoordConvertManager.convertToGAUSSXY(new double[]{insNavi2.longitude, insNavi2.latitude, insNavi2.elevation});
                        dArr = dArrConvertToGAUSSXY;
                    }
                    this.curvedSlopePreview.setCurrentPoint(dArrConvertToGAUSSXY, dArr);
                }
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
