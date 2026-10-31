package com.qianhe.yct.activity.polyline;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.YctDeviceManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qh.xcad.XCadItemAreaPoint;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.PolyLineEntity;
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
import com.qianhe.baselib.utils.workchecker.PolyLinePositionChecker;
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
import com.qianhe.yct.databinding.ActivityPolylineWorkBinding;
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
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PolyLineWorkActivity extends BaseActivity {
    private ActivityPolylineWorkBinding binding;
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
    private List<double[]> pointsList;
    private PolyLineEntity polyLineEntity;
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
        this.binding = ActivityPolylineWorkBinding.inflate(getLayoutInflater());
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
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(ProjectEnum.POLY_LINE.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    PolyLineEntity polyLineEntity = (PolyLineEntity) listQueryEntityById.get(0);
                    this.polyLineEntity = polyLineEntity;
                    if (TextUtils.isEmpty(polyLineEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.polyLineEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        PolyLineEntity polyLineEntity2 = this.polyLineEntity;
                        instanceH5.updateCurrentProjectInfo(polyLineEntity2.type, polyLineEntity2.projectId);
                    }
                    PolyLineEntity polyLineEntity3 = this.polyLineEntity;
                    if (polyLineEntity3.shovelTipType > 2) {
                        polyLineEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(polyLineEntity3.shovelTipType);
                    refreshToothType(this.polyLineEntity.shovelTipType, false);
                }
            } else {
                showToastDialog(getString(R$string.data_exception));
            }
            if (this.polyLineEntity != null) {
                this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.polyLineEntity.name));
            } else {
                showTipDialog(getString(R$string.data_exception), getString(R$string.ok), null);
                return;
            }
        }
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineWorkActivity.this.hasCadPath() && PolyLineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    PolyLineWorkActivity.this.binding.cadView.centerVehiclePointLocation();
                    return;
                }
                double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{PolyLineWorkActivity.this.mINS.longitude, PolyLineWorkActivity.this.mINS.latitude, PolyLineWorkActivity.this.mINS.elevation});
                if (PolyLineWorkActivity.this.mapController != null) {
                    PolyLineWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                }
                PolyLineWorkActivity.this.binding.polyLineView.locateToCurrentPoint();
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineWorkActivity.this.hasCadPath() && PolyLineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    PolyLineWorkActivity.this.binding.cadView.centerXCadItemAreaPointLocation();
                    return;
                }
                double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(new double[]{((double[]) PolyLineWorkActivity.this.pointsList.get(0))[0], ((double[]) PolyLineWorkActivity.this.pointsList.get(0))[1], ((double[]) PolyLineWorkActivity.this.pointsList.get(0))[2]});
                if (PolyLineWorkActivity.this.mapController != null) {
                    PolyLineWorkActivity.this.mapController.centerLocation(new GeoPoint(dArrConvertGAUSSXYToGeodetic[1], dArrConvertGAUSSXYToGeodetic[0], dArrConvertGAUSSXYToGeodetic[2]));
                }
                PolyLineWorkActivity.this.binding.polyLineView.locateToStartPoint();
            }
        });
        this.binding.ivDirection.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PolyLineWorkActivity.this.binding.ivDirection.setSelected(!PolyLineWorkActivity.this.binding.ivDirection.isSelected());
                PolyLineWorkActivity.this.binding.polyLineView.toggleDirection();
            }
        });
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineWorkActivity.this.isH5Pro) {
                    return;
                }
                PolyLineWorkActivity.this.startActivity(new Intent(PolyLineWorkActivity.this, (Class<?>) ZeroingActivity.class));
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineWorkActivity.this.yMap.getVisibility() == 0) {
                    PolyLineWorkActivity.this.yMap.setVisibility(8);
                    PolyLineWorkActivity.this.binding.cadView.setVisibility(8);
                    PolyLineWorkActivity.this.binding.polyLineView.setVisibility(0);
                } else if (PolyLineWorkActivity.this.binding.cadView.getVisibility() == 0) {
                    PolyLineWorkActivity.this.binding.cadView.setVisibility(8);
                    PolyLineWorkActivity.this.binding.polyLineView.setVisibility(8);
                    PolyLineWorkActivity.this.yMap.setVisibility(0);
                } else if (PolyLineWorkActivity.this.hasCadPath()) {
                    PolyLineWorkActivity.this.binding.polyLineView.setVisibility(8);
                    PolyLineWorkActivity.this.binding.cadView.setVisibility(0);
                } else {
                    PolyLineWorkActivity.this.binding.polyLineView.setVisibility(8);
                    PolyLineWorkActivity.this.yMap.setVisibility(0);
                    PolyLineWorkActivity.this.binding.cadView.setVisibility(8);
                }
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineWorkActivity.this.binding.ivSound.isSelected()) {
                    if (PolyLineWorkActivity.this.mBeepPlayer != null) {
                        PolyLineWorkActivity.this.mBeepPlayer.stop();
                        PolyLineWorkActivity.this.mBeepPlayer = null;
                    }
                } else {
                    PolyLineWorkActivity.this.initPlayer();
                }
                PolyLineWorkActivity.this.binding.ivSound.setSelected(!PolyLineWorkActivity.this.binding.ivSound.isSelected());
            }
        });
        this.binding.tvArmAngle.setSelected(false);
        this.binding.tvArmAngle.setClickable(true);
        initPlayer();
        this.binding.lltH5.setVisibility(this.isH5Pro ? 8 : 0);
        this.binding.lltH5Pro.setVisibility(this.isH5Pro ? 0 : 8);
        this.binding.tvStartDistance.setVisibility(this.appConfig.details.display_distance_starting_point != 1 ? 8 : 0);
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.7
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public void onTypeSelected(int i) {
                PolyLineWorkActivity.this.refreshToothType(i, true);
            }
        });
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.8
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = PolyLineWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        PolyLineWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator it = PolyLineWorkActivity.this.pointsList.iterator();
                    while (it.hasNext()) {
                        double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic((double[]) it.next()));
                        arrayList.add(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                    }
                    PolyLineWorkActivity.this.mapController.addPolyline(arrayList);
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
        initPolyLineView();
    }

    private void initPolyLineView() {
        List<double[]> list = (List) new Gson().fromJson(this.polyLineEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.9
        }.getType());
        this.pointsList = list;
        this.pointA = new double[]{list.get(0)[0], this.pointsList.get(0)[1], this.pointsList.get(0)[2]};
        List<double[]> list2 = this.pointsList;
        double d = list2.get(list2.size() - 1)[0];
        List<double[]> list3 = this.pointsList;
        double d2 = list3.get(list3.size() - 1)[1];
        List<double[]> list4 = this.pointsList;
        double[] dArr = {d, d2, list4.get(list4.size() - 1)[2]};
        this.pointB = dArr;
        this.binding.tvProjectDistance.setText(String.format("%s%s", getString(R$string.project_length), formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(this.pointA, dArr))));
        this.binding.polyLineView.setWorkMode(true);
        this.binding.polyLineView.setProjectPoint(this.pointsList, this.polyLineEntity.width);
        initCadView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPath() {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        return polyLineEntity != null && CadEntityChooseIntent.isCadFileAvailable(polyLineEntity.cadPath);
    }

    private void initCadView() {
        if (hasCadPath()) {
            this.binding.cadView.setCadFilePath(this.polyLineEntity.cadPath);
            this.binding.cadView.setFollowVehicle(false);
            this.binding.cadView.setCadTouchEnable(false);
            this.binding.cadView.setSelectSingleLine(false);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            List<double[]> list = this.pointsList;
            if (list == null || list.size() < 2) {
                return;
            }
            this.binding.cadView.setXCadItemAreaPoint(buildCadItemAreaPoints(), true, false, false);
        }
    }

    private XCadItemAreaPoint.XCadItemPointInfo[] buildCadItemAreaPoints() {
        int size = this.pointsList.size();
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr = new XCadItemAreaPoint.XCadItemPointInfo[size];
        for (int i = 0; i < size; i++) {
            double d = this.pointsList.get(i)[0];
            double d2 = this.pointsList.get(i)[1];
            if (i == 0) {
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(d, d2, getString(R$string.starting_point));
            } else if (i == size - 1) {
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(d, d2, getString(R$string.ending_point));
            } else {
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(d, d2);
            }
        }
        return xCadItemPointInfoArr;
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
            this.binding.tvStatusV.setVisibility(bundle.getInt("tvStatus"));
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
        bundle.putInt("tvStatus", this.binding.tvStatusV.getVisibility());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final BaseStationEntity baseStationEntity) {
        if (!this.isCheckBase && this.mGGA != null) {
            if (YCTApplication.getInstance().getAuthResult().result == 1 || YCTApplication.getInstance().getAuthResult().result == 7) {
                this.isCheckBase = true;
                if (!this.polyLineEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.polyLineEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.10
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            PolyLineWorkActivity.this.startActivity(new Intent(PolyLineWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            PolyLineWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.polyLineEntity.corsName.equals(getString(R$string.x_fixed))) {
                    PolyLineEntity polyLineEntity = this.polyLineEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{polyLineEntity.baseStationLon, polyLineEntity.baseStationLat, polyLineEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.polyLineEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        PolyLineEntity polyLineEntity2 = this.polyLineEntity;
                        if (polyLineEntity2.baseStationLon != 0.0d && polyLineEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.polyLineEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.11
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    PolyLineWorkActivity polyLineWorkActivity = PolyLineWorkActivity.this;
                                    polyLineWorkActivity.showTipDialog(polyLineWorkActivity.getString(R$string.base_station_connected), PolyLineWorkActivity.this.getString(R$string.connected), PolyLineWorkActivity.this.getString(R$string.not_connected), PolyLineWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.11.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(PolyLineWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                PolyLineWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(PolyLineWorkActivity.this, PolyLineWorkActivity.this.getString(R$string.base) + PolyLineWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            PolyLineWorkActivity.this.startActivity(new Intent(PolyLineWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                PolyLineWorkActivity.this.startActivity(new Intent(PolyLineWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    PolyLineWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.12
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                PolyLineWorkActivity.this.polyLineEntity.baseStationLon = Double.parseDouble(PolyLineWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                PolyLineWorkActivity.this.polyLineEntity.baseStationLat = Double.parseDouble(PolyLineWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                PolyLineWorkActivity.this.polyLineEntity.baseStationElev = Double.parseDouble(PolyLineWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                PolyLineWorkActivity.this.mDatabaseManager.updateEntityById(PolyLineWorkActivity.this.polyLineEntity);
                                NetworkUserLoader.getInstance().modifyProject(PolyLineWorkActivity.this.mINS, PolyLineWorkActivity.this.polyLineEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    PolyLineWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.polyLineEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.13
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    PolyLineWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineWorkActivity.14
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    PolyLineWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        PolyLineWorkActivity.this.hasCheckBasestation = true;
                    }
                    PolyLineWorkActivity.this.isCheckBase = false;
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
        this.binding.tvDiffV.setText(R$string.data_unavailable);
        this.binding.tvDiffH.setText(R$string.data_unavailable);
        this.binding.tvDiffV.setTextSize(1, 24.0f);
        this.binding.tvDiffH.setTextSize(1, 24.0f);
        this.binding.tvDiffV.setSelected(false);
        this.binding.tvStatusV.setVisibility(4);
        this.binding.tvDiffH.setSelected(false);
        this.binding.tvStatusH.setVisibility(4);
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
            AppCompatTextView appCompatTextView = this.binding.tvDistanceDesV;
            StringBuilder sb = new StringBuilder();
            sb.append("%s");
            sb.append(LanguagePrefs.isZH(this) ? "" : " ");
            sb.append("%s");
            appCompatTextView.setText(String.format(sb.toString(), string, getString(R$string.vertical_distance_to_target)));
            this.binding.polyLineView.refreshToothType(i);
            this.polyLineEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        if (polyLineEntity == null || this.mDatabaseManager == null) {
            return;
        }
        polyLineEntity.updateTime = System.currentTimeMillis() / 1000;
        this.mDatabaseManager.updateEntityById(this.polyLineEntity);
        if (!z || TextUtils.isEmpty(this.polyLineEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.polyLineEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            PolyLineEntity polyLineEntity = this.polyLineEntity;
            if (polyLineEntity != null && polyLineEntity.id == baseProEntity.id) {
                polyLineEntity.projectUUid = baseProEntity.projectUUid;
                polyLineEntity.projectId = baseProEntity.projectId;
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
        this.binding.topBar.tvTitle.setText(R$string.polyline);
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
            PolyLineEntity polyLineEntity = this.polyLineEntity;
            if (polyLineEntity != null) {
                int i = polyLineEntity.shovelTipType;
                if (i == 0) {
                    dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                } else if (i == 2) {
                    dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                } else {
                    dArr = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
                }
                this.binding.tvStartDistance.setText(String.format("%s%s", getString(R$string.start_distance), formatDistance(CoordsCalculUtils.calculateDistanceGAUSS(dArr, this.pointA))));
                CheckResult checkResultSlopeDitch = slopeDitch(insNavi, this.pointA, this.pointB);
                double d2 = checkResultSlopeDitch.verticalDistance;
                String elevationDiffText = formatElevationDiffText(d2);
                this.binding.tvUnitV.setText(Math.abs(Math.round(d2)) < 1000 ? R$string.unit_cm : R$string.unit_m);
                boolean z = ((float) Math.round(Math.abs(d2))) <= this.appConfig.details.work_tolerance * 100.0f;
                if (z) {
                    this.binding.tvStatusV.setText(R$string.hold);
                    if (this.workPageDataAvailable) {
                        this.binding.tvStatusV.setSelected(true);
                    }
                    this.binding.tvDiffV.setText(elevationDiffText);
                    if (this.workPageDataAvailable) {
                        this.binding.tvDiffV.setSelected(true);
                    }
                    this.binding.ivStatusV.setImageResource(Math.round(Math.abs(d2)) < 1 ? R$drawable.icon_status_v : d2 > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
                } else if (d2 > 0.0d) {
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
                if (!this.workPageDataAvailable) {
                    showDataUnAvailable();
                    d = 0.0d;
                } else {
                    this.binding.tvDiffV.setTextSize(1, getElevationDiffTextSize(elevationDiffText, 80));
                    d = 0.0d;
                    this.binding.tvDiffH.setTextSize(1, getElevationDiffTextSize(formatElevationDiffText(checkResultSlopeDitch.distanceH), 80));
                    this.binding.tvStatusV.setVisibility(0);
                    this.binding.tvStatusH.setVisibility(0);
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
                if (this.workPageDataAvailable) {
                    dArrConvertToGAUSSXY = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
                    dArr2 = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
                } else {
                    GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
                    InsNavi insNavi2 = this.mINS;
                    dArrConvertToGAUSSXY = gnssCoordConvertManager.convertToGAUSSXY(new double[]{insNavi2.longitude, insNavi2.latitude, insNavi2.elevation});
                    dArr2 = dArrConvertToGAUSSXY;
                }
                if (dArrConvertToGAUSSXY != null) {
                    this.binding.polyLineView.setCurrentPoint(dArrConvertToGAUSSXY, dArr2);
                }
                refreshCadView(dArr, insNavi.headingDegrees);
            }
            refreshTianDiMap(insNavi);
        } catch (Exception e) {
            LogToFile.e("onINsNavi：" + e);
        }
    }

    private CheckResult slopeDitch(InsNavi insNavi, double[] dArr, double[] dArr2) {
        double[] dArr3;
        double[] dArr4;
        int i = this.polyLineEntity.shovelTipType;
        if (i == 0) {
            dArr3 = new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation};
        } else if (i == 2) {
            dArr3 = new double[]{insNavi.longitudeR, insNavi.latitudeR, insNavi.elevationR};
        } else {
            dArr3 = new double[]{insNavi.longitudeM, insNavi.latitudeM, insNavi.elevationM};
        }
        double[] dArr5 = dArr3;
        if (i == 0) {
            dArr4 = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
        } else if (i == 2) {
            dArr4 = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
        } else {
            dArr4 = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
        }
        CheckResult checkResultCheckSegmentSlopeVertical = PolyLinePositionChecker.checkSegmentSlopeVertical(this.appConfig.details.work_tolerance, dArr5, this.pointsList, PolyLinePositionChecker.findNearestSegmentIndex(dArr4, this.pointsList), this.polyLineEntity.width);
        PolyLinePositionChecker.checkPolyLineHorizontal(checkResultCheckSegmentSlopeVertical, dArr4, this.pointsList, this.polyLineEntity.width, this.appConfig.details.work_tolerance, this.binding.polyLineView.isDirectionReverse());
        String elevationDiffText = formatElevationDiffText(checkResultCheckSegmentSlopeVertical.distanceH);
        this.binding.tvUnitH.setText(Math.abs(Math.round(checkResultCheckSegmentSlopeVertical.distanceH)) < 1000 ? R$string.unit_cm : R$string.unit_m);
        this.binding.tvDiffH.setText(elevationDiffText);
        this.binding.tvBoundTip.setVisibility(checkResultCheckSegmentSlopeVertical.inBounds ? 8 : 0);
        if (checkResultCheckSegmentSlopeVertical.distanceH <= this.appConfig.details.work_tolerance * 100.0f) {
            this.binding.tvStatusH.setText(getString(R$string.hold));
            this.binding.tvStatusH.setSelected(true);
            this.binding.tvDiffH.setSelected(true);
            this.binding.ivStatusH.setImageResource(R$drawable.icon_status_h);
            return checkResultCheckSegmentSlopeVertical;
        }
        if (checkResultCheckSegmentSlopeVertical.isLeft) {
            this.binding.tvStatusH.setText(getString(R$string.left_leaning));
            this.binding.tvStatusH.setSelected(false);
            this.binding.tvDiffH.setSelected(false);
            this.binding.ivStatusH.setImageResource(R$drawable.icon_status_l);
            return checkResultCheckSegmentSlopeVertical;
        }
        this.binding.tvStatusH.setText(getString(R$string.right_leaning));
        this.binding.tvStatusH.setSelected(false);
        this.binding.tvDiffH.setSelected(false);
        this.binding.ivStatusH.setImageResource(R$drawable.icon_status_r);
        return checkResultCheckSegmentSlopeVertical;
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
