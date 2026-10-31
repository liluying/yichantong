package com.qianhe.yct.activity.multipointarea;

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
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.SensorEventHelper;
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
import com.qianhe.yct.databinding.ActivityMultiPointAreaWorkBinding;
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
public class MultiPointAreaWorkActivity extends BaseActivity {
    private ActivityMultiPointAreaWorkBinding binding;
    private double[] curPositionWgs84;
    private boolean hasCheckBasestation;
    private boolean isCheckBase;
    private boolean isH5Pro;
    private BeepPlayer mBeepPlayer;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private MapController mapController;
    private MultiPointAreaEntity multiPointAreaEntity;
    private List<double[]> pointsList;
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
        this.binding = ActivityMultiPointAreaWorkBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        finishPreviousActivity();
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        SensorEventHelper sensorEventHelper = new SensorEventHelper(this);
        this.sensorEventHelper = sensorEventHelper;
        sensorEventHelper.registerSensorListener();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        String string = this.mSp.getString("current_coords", "");
        this.mINS = new InsNavi();
        if (!TextUtils.isEmpty(string)) {
            try {
                String[] strArrSplit = string.split(",");
                InsNavi insNavi = this.mINS;
                double d = Double.parseDouble(strArrSplit[0]);
                insNavi.longitudeR = d;
                insNavi.longitudeM = d;
                insNavi.longitude = d;
                InsNavi insNavi2 = this.mINS;
                double d2 = Double.parseDouble(strArrSplit[1]);
                insNavi2.latitudeR = d2;
                insNavi2.latitudeM = d2;
                insNavi2.latitude = d2;
                InsNavi insNavi3 = this.mINS;
                double d3 = Double.parseDouble(strArrSplit[2]);
                insNavi3.elevationR = d3;
                insNavi3.elevationM = d3;
                insNavi3.elevation = d3;
            } catch (Exception unused) {
            }
        }
        this.binding.tvArmAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaWorkActivity.$r8$lambda$Y0rv0WnIucLF1_Aw5KkFdp7bKCM(this.f$0, view);
            }
        });
        Intent intent = getIntent();
        if (intent != null) {
            long longExtra = intent.getLongExtra("id", 0L);
            if (longExtra > 0) {
                List<BaseProEntity> listQueryEntityById = DatabaseManager.getInstance(this).queryEntityById(ProjectEnum.MULTI_POINT_AREA.getType(), Long.valueOf(longExtra));
                if (!listQueryEntityById.isEmpty()) {
                    MultiPointAreaEntity multiPointAreaEntity = (MultiPointAreaEntity) listQueryEntityById.get(0);
                    this.multiPointAreaEntity = multiPointAreaEntity;
                    if (TextUtils.isEmpty(multiPointAreaEntity.projectUUid)) {
                        NetworkUserLoader.getInstance().createProject(this.mINS, this.multiPointAreaEntity);
                    } else {
                        YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
                        MultiPointAreaEntity multiPointAreaEntity2 = this.multiPointAreaEntity;
                        instanceH5.updateCurrentProjectInfo(multiPointAreaEntity2.type, multiPointAreaEntity2.projectId);
                    }
                    MultiPointAreaEntity multiPointAreaEntity3 = this.multiPointAreaEntity;
                    if (multiPointAreaEntity3.shovelTipType > 2) {
                        multiPointAreaEntity3.shovelTipType = 0;
                    }
                    this.binding.toothTipView.setToothType(multiPointAreaEntity3.shovelTipType);
                    refreshToothType(this.multiPointAreaEntity.shovelTipType, false);
                }
            }
        }
        if (this.multiPointAreaEntity == null) {
            finish();
            return;
        }
        this.binding.tvProTitle.setText(String.format("%s:%s", getString(R$string.project_name), this.multiPointAreaEntity.name));
        initControls();
        initAreaView();
        initPlayer();
        this.yMap = new YMap();
        MapController mapController = new MapController();
        this.mapController = mapController;
        this.yMap.setMapController(mapController);
        this.yMap.onCreate(bundle);
        this.yMap.setOnLoadMapListener(new OnLoadMapListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.1
            @Override // com.qianhe.yct.view.map.OnLoadMapListener
            public void onLoadMapResult(boolean z) {
                if (z) {
                    double[] dArr = MultiPointAreaWorkActivity.this.curPositionWgs84;
                    if (dArr != null) {
                        MultiPointAreaWorkActivity.this.mapController.updateLocation(new GeoPoint(dArr[1], dArr[0], dArr[2]), true);
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator it = MultiPointAreaWorkActivity.this.pointsList.iterator();
                    while (it.hasNext()) {
                        double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic((double[]) it.next()));
                        arrayList.add(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
                    }
                    MultiPointAreaWorkActivity.this.mapController.addPolyline(arrayList, true);
                    return;
                }
                ZhaoPingWorkActivity.class.getSimpleName();
            }
        });
        restoreData(bundle);
    }

    public static /* synthetic */ void $r8$lambda$Y0rv0WnIucLF1_Aw5KkFdp7bKCM(MultiPointAreaWorkActivity multiPointAreaWorkActivity, View view) {
        if (multiPointAreaWorkActivity.isH5Pro) {
            return;
        }
        multiPointAreaWorkActivity.startActivity(new Intent(multiPointAreaWorkActivity, (Class<?>) ZeroingActivity.class));
    }

    private void initControls() {
        this.binding.ivResetLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaWorkActivity.$r8$lambda$H13qWiGU30CGIfkWpRDRX5fyeUA(this.f$0, view);
            }
        });
        this.binding.ivStartPoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaWorkActivity.$r8$lambda$DbNoFaxYYX7vNp5CYwBFIbU_Rbw(this.f$0, view);
            }
        });
        this.binding.ivMapState.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaWorkActivity.m1675$r8$lambda$b75vhS7uuRsYZiyWv9zI9eangY(this.f$0, view);
            }
        });
        this.binding.ivSound.setSelected(true);
        this.binding.ivSound.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaWorkActivity.$r8$lambda$O64dYdZTs98PyCzYzM3O4z4Bm30(this.f$0, view);
            }
        });
        this.binding.toothTipView.setOnSelectedListener(new ToothTipDropdownView.OnSelectedListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda6
            @Override // com.qianhe.yct.view.ToothTipDropdownView.OnSelectedListener
            public final void onTypeSelected(int i) {
                this.f$0.refreshToothType(i, true);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$H13qWiGU30CGIfkWpRDRX5fyeUA(MultiPointAreaWorkActivity multiPointAreaWorkActivity, View view) {
        if (multiPointAreaWorkActivity.hasCadPath() && multiPointAreaWorkActivity.binding.cadView.getVisibility() == 0) {
            multiPointAreaWorkActivity.binding.cadView.centerVehiclePointLocation();
            return;
        }
        if (multiPointAreaWorkActivity.mINS != null) {
            GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
            InsNavi insNavi = multiPointAreaWorkActivity.mINS;
            double[] dArrConvertToWGS84 = gnssCoordConvertManager.convertToWGS84(new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation});
            MapController mapController = multiPointAreaWorkActivity.mapController;
            if (mapController != null) {
                mapController.centerLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
            }
            multiPointAreaWorkActivity.binding.areaPreview.locateToCurrentPoint();
        }
    }

    public static /* synthetic */ void $r8$lambda$DbNoFaxYYX7vNp5CYwBFIbU_Rbw(MultiPointAreaWorkActivity multiPointAreaWorkActivity, View view) {
        if (multiPointAreaWorkActivity.hasCadPath() && multiPointAreaWorkActivity.binding.cadView.getVisibility() == 0) {
            multiPointAreaWorkActivity.binding.cadView.centerXCadItemAreaPointLocation();
            multiPointAreaWorkActivity.binding.areaPreview.locateToStartPoint();
            return;
        }
        List<double[]> list = multiPointAreaWorkActivity.pointsList;
        if (list != null && !list.isEmpty()) {
            double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(new double[]{multiPointAreaWorkActivity.pointsList.get(0)[0], multiPointAreaWorkActivity.pointsList.get(0)[1], multiPointAreaWorkActivity.pointsList.get(0)[2]});
            MapController mapController = multiPointAreaWorkActivity.mapController;
            if (mapController != null) {
                mapController.centerLocation(new GeoPoint(dArrConvertGAUSSXYToGeodetic[1], dArrConvertGAUSSXYToGeodetic[0], dArrConvertGAUSSXYToGeodetic[2]));
            }
        }
        multiPointAreaWorkActivity.binding.areaPreview.locateToStartPoint();
    }

    /* renamed from: $r8$lambda$b75vhS7uuRsYZiyWv9zI-9eangY, reason: not valid java name */
    public static /* synthetic */ void m1675$r8$lambda$b75vhS7uuRsYZiyWv9zI9eangY(MultiPointAreaWorkActivity multiPointAreaWorkActivity, View view) {
        if (multiPointAreaWorkActivity.yMap.getVisibility() == 0) {
            multiPointAreaWorkActivity.yMap.setVisibility(8);
            multiPointAreaWorkActivity.binding.cadView.setVisibility(8);
            multiPointAreaWorkActivity.binding.lltBtn.setVisibility(8);
        } else if (multiPointAreaWorkActivity.binding.cadView.getVisibility() == 0) {
            multiPointAreaWorkActivity.binding.cadView.setVisibility(8);
            multiPointAreaWorkActivity.yMap.setVisibility(0);
            multiPointAreaWorkActivity.binding.lltBtn.setVisibility(0);
        } else if (multiPointAreaWorkActivity.hasCadPath()) {
            multiPointAreaWorkActivity.binding.cadView.setVisibility(0);
            multiPointAreaWorkActivity.binding.lltBtn.setVisibility(0);
        } else {
            multiPointAreaWorkActivity.yMap.setVisibility(0);
            multiPointAreaWorkActivity.binding.cadView.setVisibility(8);
            multiPointAreaWorkActivity.binding.lltBtn.setVisibility(0);
        }
    }

    public static /* synthetic */ void $r8$lambda$O64dYdZTs98PyCzYzM3O4z4Bm30(MultiPointAreaWorkActivity multiPointAreaWorkActivity, View view) {
        multiPointAreaWorkActivity.binding.ivSound.setSelected(!r2.isSelected());
        if (!multiPointAreaWorkActivity.binding.ivSound.isSelected()) {
            BeepPlayer beepPlayer = multiPointAreaWorkActivity.mBeepPlayer;
            if (beepPlayer != null) {
                beepPlayer.stop();
                multiPointAreaWorkActivity.mBeepPlayer = null;
                return;
            }
            return;
        }
        multiPointAreaWorkActivity.initPlayer();
    }

    private void initAreaView() {
        this.pointsList = (List) new Gson().fromJson(this.multiPointAreaEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.2
        }.getType());
        this.binding.areaPreview.setWorkMode(true);
        this.binding.areaPreview.setProjectPoint(this.pointsList);
        initCadView();
    }

    private boolean hasCadPath() {
        MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
        return multiPointAreaEntity != null && CadEntityChooseIntent.isCadFileAvailable(multiPointAreaEntity.cadPath);
    }

    private void initCadView() {
        List<double[]> list;
        if (!hasCadPath() || (list = this.pointsList) == null || list.size() < 2) {
            return;
        }
        this.binding.cadView.setCadFilePath(this.multiPointAreaEntity.cadPath);
        this.binding.cadView.setFollowVehicle(false);
        this.binding.cadView.setCadTouchEnable(false);
        this.binding.cadView.setSelectSingleLine(false);
        this.binding.cadView.setDrawSelectedLineNumText(false);
        this.binding.cadView.setXCadItemAreaPoint(buildCadItemAreaPoints(), true, true, true);
    }

    private double[] buildCadItemAreaPoints() {
        double[] dArr = new double[this.pointsList.size() * 2];
        for (int i = 0; i < this.pointsList.size(); i++) {
            int i2 = i * 2;
            dArr[i2] = this.pointsList.get(i)[0];
            dArr[i2 + 1] = this.pointsList.get(i)[1];
        }
        return dArr;
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
        bundle.putInt("tvStatus", this.binding.tvStatus.getVisibility());
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
            this.multiPointAreaEntity.shovelTipType = i;
            if (z) {
                persistCurrentProject(true);
            }
        }
    }

    private void persistCurrentProject(boolean z) {
        MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
        if (multiPointAreaEntity == null) {
            return;
        }
        multiPointAreaEntity.updateTime = System.currentTimeMillis() / 1000;
        DatabaseManager.getInstance(this).updateEntityById(this.multiPointAreaEntity);
        if (!z || TextUtils.isEmpty(this.multiPointAreaEntity.projectUUid)) {
            return;
        }
        this.silentModifyProject = true;
        NetworkUserLoader.getInstance().modifyProject(this.mINS, this.multiPointAreaEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        BaseProEntity baseProEntity;
        if (createProjectResponse.state == 0 && (baseProEntity = createProjectResponse.entity) != null) {
            MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
            if (multiPointAreaEntity != null && multiPointAreaEntity.id == baseProEntity.id) {
                multiPointAreaEntity.projectUUid = baseProEntity.projectUUid;
                multiPointAreaEntity.projectId = baseProEntity.projectId;
                persistCurrentProject(true);
            } else {
                baseProEntity.updateTime = System.currentTimeMillis() / 1000;
                DatabaseManager.getInstance(this).updateEntityById(createProjectResponse.entity);
            }
        }
        if (createProjectResponse.entity != null) {
            YctDevice instanceH5 = YctDeviceManager.getInstanceH5();
            BaseProEntity baseProEntity2 = createProjectResponse.entity;
            instanceH5.updateCurrentProjectInfo(baseProEntity2.type, baseProEntity2.projectId);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) throws IllegalStateException {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
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
        updateWorkData(insNavi);
        refreshMapLocation(insNavi);
    }

    private void updateWorkData(InsNavi insNavi) throws IllegalStateException {
        double[] dArr;
        int i = this.multiPointAreaEntity.shovelTipType;
        if (i == 0) {
            dArr = new double[]{insNavi.east, insNavi.north, insNavi.elevation};
        } else if (i == 2) {
            dArr = new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR};
        } else {
            dArr = new double[]{insNavi.eastM, insNavi.northM, insNavi.elevationM};
        }
        List<double[]> list = this.pointsList;
        if (list != null && !list.isEmpty()) {
            double[] dArr2 = this.pointsList.get(0);
            this.binding.tvStartDistance.setText(String.format(Locale.ROOT, "%s %.2fm", getString(R$string.start_distance), Double.valueOf(Math.sqrt(Math.pow(dArr[0] - dArr2[0], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d)))));
        }
        double dCalculateVerticalDiff = MultiPointAreaChecker.calculateVerticalDiff(this.appConfig.details.work_tolerance, dArr, this.pointsList);
        if (Double.isNaN(dCalculateVerticalDiff)) {
            this.binding.tvBoundTip.setVisibility(0);
            this.binding.tvDiff.setText("---");
            this.binding.tvDiff.setSelected(false);
            this.binding.tvStatus.setSelected(false);
            this.binding.ivStatus.setSelected(false);
            this.binding.tvStatus.setVisibility(4);
            BeepPlayer beepPlayer = this.mBeepPlayer;
            if (beepPlayer != null) {
                beepPlayer.pause();
            }
        } else {
            this.binding.tvBoundTip.setVisibility(8);
            double d = dCalculateVerticalDiff * 100.0d;
            String elevationDiffText = formatElevationDiffText(d);
            this.binding.tvDiff.setText(elevationDiffText);
            this.binding.tvUnitV.setText(Math.abs(Math.round(d)) < 1000 ? R$string.unit_cm : R$string.unit_m);
            boolean z = ((float) Math.round(Math.abs(d))) <= this.appConfig.details.work_tolerance * 100.0f;
            if (z) {
                this.binding.tvDiff.setSelected(this.workPageDataAvailable);
                this.binding.tvStatus.setSelected(this.workPageDataAvailable);
                this.binding.ivStatus.setSelected(this.workPageDataAvailable);
                this.binding.tvStatus.setText(R$string.hold);
                this.binding.ivStatus.setImageResource(Math.round(Math.abs(d)) < 1 ? R$drawable.icon_status_v : d > 0.0d ? R$drawable.icon_status_hold_dig : R$drawable.icon_status_hold_fill);
            } else {
                this.binding.tvDiff.setSelected(false);
                this.binding.tvStatus.setSelected(false);
                this.binding.ivStatus.setSelected(false);
                if (d > 0.0d) {
                    this.binding.tvStatus.setText(R$string.dig);
                    this.binding.ivStatus.setImageResource(R$drawable.icon_status_dig);
                } else {
                    this.binding.tvStatus.setText(R$string.fill);
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
            if (!this.workPageDataAvailable || !this.binding.ivSound.isSelected()) {
                BeepPlayer beepPlayer2 = this.mBeepPlayer;
                if (beepPlayer2 != null) {
                    beepPlayer2.resume();
                }
            } else {
                BeepPlayer beepPlayer3 = this.mBeepPlayer;
                if (beepPlayer3 != null) {
                    beepPlayer3.resume();
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
        }
        this.binding.areaPreview.setCurrentPoint(new double[]{insNavi.east, insNavi.north, insNavi.elevation}, new double[]{insNavi.eastR, insNavi.northR, insNavi.elevationR});
        refreshCadView(dArr, insNavi.headingDegrees);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void bluetoothStatus(int i) throws IllegalStateException {
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

    private void showDataUnAvailable() throws IllegalStateException {
        this.binding.tvDiff.setText(R$string.data_unavailable);
        this.binding.tvDiff.setTextSize(1, 24.0f);
        this.binding.tvDiff.setSelected(false);
        this.binding.tvStatus.setSelected(false);
        this.binding.ivStatus.setSelected(false);
        this.binding.tvStatus.setVisibility(4);
        BeepPlayer beepPlayer = this.mBeepPlayer;
        if (beepPlayer != null) {
            beepPlayer.pause();
        }
    }

    private void refreshMapLocation(InsNavi insNavi) {
        double[] dArrConvertToWGS84 = GnssCoordConvertManager.getInstance().convertToWGS84(new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation});
        this.curPositionWgs84 = dArrConvertToWGS84;
        if (!this.yMap.isInit()) {
            this.yMap.init(this.binding.mapContainer, new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]));
        } else {
            this.mapController.updateLocation(new GeoPoint(dArrConvertToWGS84[1], dArrConvertToWGS84[0], dArrConvertToWGS84[2]), false);
        }
    }

    private void initPlayer() {
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
        this.binding.topBar.tvTitle.setText(R$string.multi_point_area);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        this.yMap.onResume();
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

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onBackPressed();
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final BaseStationEntity baseStationEntity) {
        if (!this.isCheckBase && this.mGGA != null) {
            if (YCTApplication.getInstance().getAuthResult().result == 1 || YCTApplication.getInstance().getAuthResult().result == 7) {
                this.isCheckBase = true;
                if (!this.multiPointAreaEntity.corsHost.equals(YCTApplication.getInstance().getAuthResult().diffConfig.ntrip_host)) {
                    CorsChangesDialogFragment corsChangesDialogFragment = new CorsChangesDialogFragment();
                    corsChangesDialogFragment.show(getSupportFragmentManager(), "CorsChangesDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("baseProEntity", this.multiPointAreaEntity);
                    bundle.putSerializable("diffConfig", YCTApplication.getInstance().getAuthResult().diffConfig);
                    corsChangesDialogFragment.setArguments(bundle);
                    corsChangesDialogFragment.setOnConfirmListener(new CorsChangesDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.3
                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            MultiPointAreaWorkActivity.this.startActivity(new Intent(MultiPointAreaWorkActivity.this, (Class<?>) DiffDataConfigActivity.class));
                        }

                        @Override // com.qianhe.yct.dialog.CorsChangesDialogFragment.OnConfirmListener
                        public void onClose() {
                            MultiPointAreaWorkActivity.this.hasCheckBasestation = true;
                        }
                    });
                    return;
                }
                if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) == NtripTypeEnum.NTRIP.getType() && !this.multiPointAreaEntity.corsName.equals(getString(R$string.x_fixed))) {
                    MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
                    double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{multiPointAreaEntity.baseStationLon, multiPointAreaEntity.baseStationLat, multiPointAreaEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                    LogToFile.i("基站相差距离：" + this.multiPointAreaEntity.name + " -> " + new DecimalFormat("0.000").format(dCalculateGeodeticDistance3D));
                    if (dCalculateGeodeticDistance3D > this.appConfig.details.base_mobility_threshold) {
                        MultiPointAreaEntity multiPointAreaEntity2 = this.multiPointAreaEntity;
                        if (multiPointAreaEntity2.baseStationLon != 0.0d && multiPointAreaEntity2.baseStationLat != 0.0d) {
                            CheckBasestationDialogFragment checkBasestationDialogFragment = new CheckBasestationDialogFragment();
                            checkBasestationDialogFragment.show(getSupportFragmentManager(), "CheckBasestationDialogFragment");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("content", getString(R$string.base_station_have_changed));
                            bundle2.putSerializable("baseProEntity", this.multiPointAreaEntity);
                            bundle2.putSerializable("baseStationEntity", baseStationEntity);
                            checkBasestationDialogFragment.setArguments(bundle2);
                            checkBasestationDialogFragment.setOnConfirmListener(new CheckBasestationDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.4
                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    MultiPointAreaWorkActivity multiPointAreaWorkActivity = MultiPointAreaWorkActivity.this;
                                    multiPointAreaWorkActivity.showTipDialog(multiPointAreaWorkActivity.getString(R$string.base_station_connected), MultiPointAreaWorkActivity.this.getString(R$string.connected), MultiPointAreaWorkActivity.this.getString(R$string.not_connected), MultiPointAreaWorkActivity.this.getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.4.1
                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onConfirm() {
                                            if (MultiBluetoothManager.getInstance(MultiPointAreaWorkActivity.this).isDeviceConnected(DeviceType.BASE)) {
                                                MultiPointAreaWorkActivity.this.showFixedCoordinateStartupDialog();
                                                return;
                                            }
                                            Toast.makeText(MultiPointAreaWorkActivity.this, MultiPointAreaWorkActivity.this.getString(R$string.base) + MultiPointAreaWorkActivity.this.getString(R$string.not_connected), 0).show();
                                            MultiPointAreaWorkActivity.this.startActivity(new Intent(MultiPointAreaWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                        }

                                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                        public void onClose(boolean z) {
                                            if (z) {
                                                MultiPointAreaWorkActivity.this.startActivity(new Intent(MultiPointAreaWorkActivity.this, (Class<?>) BluetoothActivity.class));
                                            }
                                        }
                                    });
                                }

                                @Override // com.qianhe.yct.dialog.CheckBasestationDialogFragment.OnConfirmListener
                                public void onClose() {
                                    MultiPointAreaWorkActivity.this.hasCheckBasestation = true;
                                }
                            });
                            return;
                        }
                        showTipDialog(getString(R$string.lack_base_info), getString(R$string.save), getString(R$string.ignore), getString(R$string.base_station_inspection_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.5
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                MultiPointAreaWorkActivity.this.multiPointAreaEntity.baseStationLon = Double.parseDouble(MultiPointAreaWorkActivity.this.formatCoords(baseStationEntity.lon, 8));
                                MultiPointAreaWorkActivity.this.multiPointAreaEntity.baseStationLat = Double.parseDouble(MultiPointAreaWorkActivity.this.formatCoords(baseStationEntity.lat, 8));
                                MultiPointAreaWorkActivity.this.multiPointAreaEntity.baseStationElev = Double.parseDouble(MultiPointAreaWorkActivity.this.formatCoords(baseStationEntity.elev, 3));
                                DatabaseManager.getInstance(MultiPointAreaWorkActivity.this).updateEntityById(MultiPointAreaWorkActivity.this.multiPointAreaEntity);
                                NetworkUserLoader.getInstance().modifyProject(MultiPointAreaWorkActivity.this.mINS, MultiPointAreaWorkActivity.this.multiPointAreaEntity);
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                                if (z) {
                                    MultiPointAreaWorkActivity.this.hasCheckBasestation = true;
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
            bundle.putSerializable("baseProEntity", this.multiPointAreaEntity);
            fixedCoordinateStartupDialog.setArguments(bundle);
            fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.6
                @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
                public void onClose(int i) {
                    MultiPointAreaWorkActivity.this.hasCheckBasestation = true;
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
            showTipDialog(getString(R$string.connected_base_whether_start_config), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity.7
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    MultiPointAreaWorkActivity.this.showFixedCoordinateStartupDialog();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        MultiPointAreaWorkActivity.this.hasCheckBasestation = true;
                    }
                    MultiPointAreaWorkActivity.this.isCheckBase = false;
                }
            });
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
