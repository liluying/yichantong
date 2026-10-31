package com.qianhe.yct.activity.basestation;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.WorkModeEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.AntennaHeigthEntity;
import com.qianhe.rtkclientlib.event.BaseDiffListResponse;
import com.qianhe.rtkclientlib.event.BaseTooFarEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetBaseStationResponse;
import com.qianhe.rtkclientlib.event.GetBaseWorkModeResponse;
import com.qianhe.rtkclientlib.event.RoverStationResponse;
import com.qianhe.rtkclientlib.event.SetAntennaHeightResponse;
import com.qianhe.rtkclientlib.event.SetBaseStationResponse;
import com.qianhe.rtkclientlib.event.SetRoverStationResponse;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBasestationWorkmodeBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.ChooseProjectDialogFragment;
import com.qianhe.yct.dialog.FixedCoordinateStartupDialog;
import com.qianhe.yct.dialog.TipsDialogFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStationWorkModeConfigActivity extends BaseActivity {
    private double antennaHeight;
    private AntennaHeigthEntity antennaHeigthEntity;
    private ActivityBasestationWorkmodeBinding binding;
    private boolean checkTooFar;
    private boolean currentGetBase;
    private boolean currentSetBase;
    private String[] diffFormats;
    private FixedCoordinateStartupDialog fixedCoordinateStartupDialog;
    private boolean isSetAntennaHeight;
    private BaseProEntity projectEntity;
    private boolean startupChange;
    private DeviceType deviceType = DeviceType.BASE;
    private GetBaseStationResponse baseInfo = new GetBaseStationResponse();

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBasestationWorkmodeBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.BASE;
        if (!multiBluetoothManager.isDeviceConnected(deviceType)) {
            deviceType = DeviceType.ZPY;
        }
        this.deviceType = deviceType;
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,SERIAL"));
        this.binding.tvWorkMode.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.binding.tvAdvanced.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationWorkModeConfigActivity.this.binding.tvAdvanced.setSelected(!BaseStationWorkModeConfigActivity.this.binding.tvAdvanced.isSelected());
                BaseStationWorkModeConfigActivity.this.binding.lltAdvanced.setVisibility(BaseStationWorkModeConfigActivity.this.binding.tvAdvanced.isSelected() ? 0 : 8);
            }
        });
        this.binding.tvCutoffAngle.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationWorkModeConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationWorkModeConfigActivity.this.getString(R$string.please_select_height_cutoff_angle));
                ArrayList<String> arrayList = new ArrayList<>(BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{"0°", "5°", "10°", "15°", "20°", "25°", "30°", "35°", "40°", "45°"}));
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", arrayList.indexOf(BaseStationWorkModeConfigActivity.this.binding.tvCutoffAngle.getText().toString().trim()));
                bundle2.putString("requestKey", "basecutoffangle");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvDiffType.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BaseStationWorkModeConfigActivity.this.diffFormats != null) {
                    ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                    chooseListDialogFragment.show(BaseStationWorkModeConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(Proj4Keyword.title, BaseStationWorkModeConfigActivity.this.getString(R$string.please_select_differential_type));
                    ArrayList<String> arrayList = new ArrayList<>(Arrays.asList(BaseStationWorkModeConfigActivity.this.diffFormats));
                    bundle2.putStringArrayList("list", arrayList);
                    bundle2.putInt("currentIndex", arrayList.indexOf(BaseStationWorkModeConfigActivity.this.binding.tvDiffType.getText().toString().trim()));
                    bundle2.putString("requestKey", "basedifftype");
                    chooseListDialogFragment.setArguments(bundle2);
                }
            }
        });
        this.binding.tvStartMode.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationWorkModeConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationWorkModeConfigActivity.this.getString(R$string.please_select_startup_mode));
                bundle2.putStringArrayList("list", new ArrayList<>(BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{BaseStationWorkModeConfigActivity.this.getString(R$string.project_base_station_coordinates_start), BaseStationWorkModeConfigActivity.this.getString(R$string.current_coordinates_start)})));
                bundle2.putString("requestKey", "basestartmode");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.lltCurrentCoord.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationWorkModeConfigActivity.this.binding.ivCurrent.setSelected(!BaseStationWorkModeConfigActivity.this.binding.ivCurrent.isSelected());
            }
        });
        this.binding.tvAntennaHeigthType.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationWorkModeConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationWorkModeConfigActivity.this.getString(R$string.please_select_antenna_height_measurement_method));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(BaseStationWorkModeConfigActivity.this.getString(R$string.high_phase_center));
                arrayList.add(BaseStationWorkModeConfigActivity.this.getString(R$string.slant_height));
                arrayList.add(BaseStationWorkModeConfigActivity.this.getString(R$string.vertical_height));
                arrayList.add(BaseStationWorkModeConfigActivity.this.getString(R$string.bottom_height));
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", arrayList.indexOf(BaseStationWorkModeConfigActivity.this.binding.tvAntennaHeigthType.getText().toString().trim()));
                bundle2.putString("requestKey", "baseantennaheigthtype");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MultiBluetoothManager.getInstance(BaseStationWorkModeConfigActivity.this).isDeviceConnected(DeviceType.BASE)) {
                    if (BaseStationWorkModeConfigActivity.this.binding.tvAdvanced.isSelected()) {
                        BaseStationWorkModeConfigActivity baseStationWorkModeConfigActivity = BaseStationWorkModeConfigActivity.this;
                        String str = "SET,ANTENNA_HEIGHT," + baseStationWorkModeConfigActivity.getAntennaHeigthType(baseStationWorkModeConfigActivity.binding.tvAntennaHeigthType.getText().toString().trim()) + "," + BaseStationWorkModeConfigActivity.this.binding.tvAntennaHeigth.getNumericValue();
                        BaseStationWorkModeConfigActivity.this.isSetAntennaHeight = true;
                        EventBus.getDefault().post(new OrderBean(BaseStationWorkModeConfigActivity.this.deviceType, str));
                        return;
                    }
                    BaseStationWorkModeConfigActivity.this.setWorkModeConfig();
                    return;
                }
                BaseStationWorkModeConfigActivity baseStationWorkModeConfigActivity2 = BaseStationWorkModeConfigActivity.this;
                baseStationWorkModeConfigActivity2.showTipDialog(baseStationWorkModeConfigActivity2.getString(R$string.not_connected_basestation), BaseStationWorkModeConfigActivity.this.getString(R$string.ok), "", (TipsDialogFragment.OnConfirmListener) null);
            }
        });
        this.binding.edtBaseName.setText(this.mSp.getString("base_deviceSn", ""));
        if (bundle != null) {
            restoreData(bundle);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        showLoadingDialog(getString(R$string.loading));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,ANTENNA_HEIGHT"));
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("workMode", this.binding.tvWorkMode.getText().toString().trim());
        bundle.putString("baseName", this.binding.edtBaseName.getText().toString().trim());
        bundle.putString("cutoffAngle", this.binding.tvCutoffAngle.getText().toString().trim());
        bundle.putString("pdop", formatDouble(this.binding.edtPDOP.getNumericValue()));
        bundle.putString("diffType", this.binding.tvDiffType.getText().toString().trim());
        bundle.putString("startMode", this.binding.tvStartMode.getText().toString().trim());
        bundle.putString("antennaHeigthType", this.binding.tvAntennaHeigthType.getText().toString().trim());
        bundle.putString("antennaHeigth", formatDouble(this.binding.tvAntennaHeigth.getNumericValue()));
        bundle.putBoolean("isCurrentSel", this.binding.ivCurrent.isSelected());
        bundle.putString("lon", formatDouble(this.binding.edtLon.getNumericValue()));
        bundle.putString("lat", formatDouble(this.binding.edtLat.getNumericValue()));
        bundle.putString("elev", formatDouble(this.binding.edtMeasureEllipsoidHeight.getNumericValue()));
        bundle.putString("diffAge", formatDouble(this.binding.edtDiffAge.getNumericValue()));
        bundle.putInt("baseVisible", this.binding.lltBase.getVisibility());
        bundle.putInt("roverVisible", this.binding.lltRover.getVisibility());
        bundle.putInt("staticVisible", this.binding.lltFixedStartup.getVisibility());
    }

    private void restoreData(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.binding.tvWorkMode.setText(bundle.getString("workMode"));
        this.binding.lltBase.setVisibility(WorkModeEnum.BASE.name().equals(bundle.getString("workMode")) ? 0 : 8);
        this.binding.edtBaseName.setText(bundle.getString("baseName"));
        this.binding.tvCutoffAngle.setText(bundle.getString("cutoffAngle"));
        this.binding.edtPDOP.setText(bundle.getString("pdop"));
        this.binding.tvDiffType.setText(bundle.getString("diffType"));
        this.binding.tvStartMode.setText(bundle.getString("startMode"));
        this.binding.tvAntennaHeigthType.setText(bundle.getString("antennaHeigthType"));
        this.binding.tvAntennaHeigth.setText(bundle.getString("antennaHeigth"));
        this.binding.ivCurrent.setSelected(bundle.getBoolean("isCurrentSel"));
        this.binding.edtLon.setText(bundle.getString("lon"));
        this.binding.edtLat.setText(bundle.getString("lat"));
        this.binding.edtMeasureEllipsoidHeight.setText(bundle.getString("elev"));
        this.binding.edtDiffAge.setText(bundle.getString("diffAge"));
        this.binding.lltRover.setVisibility(bundle.getInt("roverVisible"));
        this.binding.lltFixedStartup.setVisibility(bundle.getInt("staticVisible"));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("baseworkmode", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.9
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (!"baseworkmode".equals(str) || stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                int i = bundle.getInt("index");
                BaseStationWorkModeConfigActivity.this.binding.tvWorkMode.setText(stringArrayList.get(i));
                BaseStationWorkModeConfigActivity.this.binding.lltBase.setVisibility(i == 0 ? 0 : 8);
                BaseStationWorkModeConfigActivity.this.binding.lltRover.setVisibility(i == 1 ? 0 : 8);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("basecutoffangle", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.10
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (!"basecutoffangle".equals(str) || stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                BaseStationWorkModeConfigActivity.this.binding.tvCutoffAngle.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
        getSupportFragmentManager().setFragmentResultListener("basedifftype", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.11
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (!"basedifftype".equals(str) || stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                try {
                    BaseStationWorkModeConfigActivity.this.binding.tvDiffType.setText(stringArrayList.get(bundle.getInt("index")));
                } catch (Exception e) {
                    LogToFile.e("选择差分类型异常：" + e);
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("basestartmode", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.12
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (!"basestartmode".equals(str) || stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                int i = bundle.getInt("index");
                try {
                    BaseStationWorkModeConfigActivity.this.binding.tvStartMode.setText(stringArrayList.get(i));
                    BaseStationWorkModeConfigActivity.this.startupChange = true;
                    if (i != 0) {
                        if (i == 1) {
                            BaseStationWorkModeConfigActivity.this.projectEntity = null;
                            BaseStationWorkModeConfigActivity.this.binding.lltFixedStartup.setVisibility(0);
                            return;
                        } else {
                            BaseStationWorkModeConfigActivity.this.projectEntity = null;
                            BaseStationWorkModeConfigActivity.this.binding.lltFixedStartup.setVisibility(8);
                            return;
                        }
                    }
                    BaseStationWorkModeConfigActivity.this.binding.lltFixedStartup.setVisibility(0);
                    ChooseProjectDialogFragment chooseProjectDialogFragment = new ChooseProjectDialogFragment();
                    chooseProjectDialogFragment.show(BaseStationWorkModeConfigActivity.this.getSupportFragmentManager(), "ChooseProjectDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(Proj4Keyword.title, BaseStationWorkModeConfigActivity.this.getString(R$string.please_select_project));
                    bundle2.putBoolean("multiple", false);
                    bundle2.putString("requestKey", "selectedproject");
                    chooseProjectDialogFragment.setArguments(bundle2);
                } catch (Exception e) {
                    LogToFile.e("选择启动模式异常：" + e);
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("selectedproject", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                BaseStationWorkModeConfigActivity.m1565$r8$lambda$5r4869CTCI_ZwX4fBgHipprsxk(this.f$0, str, bundle);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("baseantennaheigthtype", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.13
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (!"baseantennaheigthtype".equals(str) || stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                try {
                    BaseStationWorkModeConfigActivity.this.binding.tvAntennaHeigthType.setText(stringArrayList.get(bundle.getInt("index")));
                } catch (Exception e) {
                    LogToFile.e("选择天线高类型异常：" + e);
                }
            }
        });
    }

    /* renamed from: $r8$lambda$-5r4869CTCI_ZwX4fBgHipprsxk, reason: not valid java name */
    public static /* synthetic */ void m1565$r8$lambda$5r4869CTCI_ZwX4fBgHipprsxk(BaseStationWorkModeConfigActivity baseStationWorkModeConfigActivity, String str, Bundle bundle) {
        BaseProEntity baseProEntity;
        baseStationWorkModeConfigActivity.getClass();
        if (str.equals("selectedproject") && bundle.getInt("action") == 0 && (baseProEntity = (BaseProEntity) bundle.getSerializable("baseProEntity")) != null) {
            List<BaseProEntity> listQueryEntityById = DatabaseManager.getInstance(baseStationWorkModeConfigActivity).queryEntityById(baseProEntity.type, Long.valueOf(baseProEntity.id));
            if (listQueryEntityById.isEmpty()) {
                return;
            }
            baseStationWorkModeConfigActivity.projectEntity = listQueryEntityById.get(0);
        }
    }

    private void showFixedCoordinateStartupDialog(GetBaseStationResponse getBaseStationResponse) {
        FixedCoordinateStartupDialog fixedCoordinateStartupDialog = new FixedCoordinateStartupDialog();
        this.fixedCoordinateStartupDialog = fixedCoordinateStartupDialog;
        fixedCoordinateStartupDialog.show(getSupportFragmentManager(), "FixedCoordinateStartupDialog");
        Bundle bundle = new Bundle();
        bundle.putSerializable("baseProEntity", this.projectEntity);
        bundle.putSerializable("newInfo", getBaseStationResponse);
        this.fixedCoordinateStartupDialog.setArguments(bundle);
        this.fixedCoordinateStartupDialog.setOnCloseListener(new FixedCoordinateStartupDialog.OnCloseListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.14
            @Override // com.qianhe.yct.dialog.FixedCoordinateStartupDialog.OnCloseListener
            public void onClose(int i) {
                if (i == 0) {
                    BaseStationWorkModeConfigActivity.this.startupChange = false;
                    EventBus.getDefault().post(new OrderBean(BaseStationWorkModeConfigActivity.this.deviceType, "GET,ANTENNA_HEIGHT"));
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.mode_config);
        return this.binding.topBar.getRoot();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetBaseWorkModeResponse getBaseWorkModeResponse) {
        cancelLoadingDialog();
        this.binding.tvWorkMode.setText(getModeDes(getBaseWorkModeResponse.mode));
        if (getBaseWorkModeResponse.mode.equals(WorkModeEnum.BASE.name())) {
            this.currentGetBase = true;
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,BASE"));
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,BASE_DIFF_LIST"));
        } else if (getBaseWorkModeResponse.mode.equals(WorkModeEnum.ROVER.name())) {
            if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE)) {
                showFixedCoordinateStartupDialog(null);
            } else {
                showTipDialog(getString(R$string.not_connected_basestation), getString(R$string.ok), "", (TipsDialogFragment.OnConfirmListener) null);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetBaseStationResponse setBaseStationResponse) {
        this.checkTooFar = false;
        this.startupChange = false;
        if (this.currentSetBase) {
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,ANTENNA_HEIGHT"));
            if (setBaseStationResponse.result.contains("OK")) {
                Toast.makeText(this, R$string.config_success, 0).show();
                finish();
            } else if (this.diffFormats == null) {
                showTipDialog(getString(R$string.base_not_support_encrypted_diff), getString(R$string.ok), "", (TipsDialogFragment.OnConfirmListener) null);
            } else {
                showTipDialog(getString(R$string.config_fail), getString(R$string.ok), "", (TipsDialogFragment.OnConfirmListener) null);
            }
        }
        this.currentSetBase = false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseTooFarEvent baseTooFarEvent) {
        if (this.checkTooFar) {
            return;
        }
        this.checkTooFar = true;
        FixedCoordinateStartupDialog fixedCoordinateStartupDialog = this.fixedCoordinateStartupDialog;
        if (fixedCoordinateStartupDialog != null) {
            fixedCoordinateStartupDialog.dismiss();
            this.fixedCoordinateStartupDialog = null;
        }
        TipsDialogFragment tipsDialogFragment = new TipsDialogFragment();
        tipsDialogFragment.show(getSupportFragmentManager(), "TipsDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString("tip", getString(R$string.base_too_far));
        bundle.putString("btnStr", getString(R$string.ok));
        tipsDialogFragment.setArguments(bundle);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetBaseStationResponse getBaseStationResponse) {
        this.baseInfo = getBaseStationResponse;
        if (this.currentGetBase) {
            this.currentGetBase = false;
            this.binding.lltBase.setVisibility(0);
            this.binding.lltRover.setVisibility(8);
            this.binding.tvCutoffAngle.setText(String.format("%s°", fomatDouble(getBaseStationResponse.cutoffAngle)));
            this.binding.edtPDOP.setText(formatDouble(getBaseStationResponse.PDOP));
            this.binding.tvStartMode.setText(getString(getBaseStationResponse.startMode.equals("REPEAT") ? R$string.current_coordinates_start : R$string.dynamic_coordinate_startup));
            this.binding.lltFixedStartup.setVisibility(getBaseStationResponse.startMode.equals("REPEAT") ? 0 : 8);
            this.binding.edtLon.setText(formatCoords(getBaseStationResponse.lon, 8));
            this.binding.edtLat.setText(formatCoords(getBaseStationResponse.lat, 8));
            this.binding.edtMeasureEllipsoidHeight.setText(formatCoords(getBaseStationResponse.elev - this.antennaHeight, 3));
            String[] strArr = this.diffFormats;
            if (strArr != null) {
                this.binding.tvDiffType.setEnabled(strArr.length > 1);
            }
            this.mSp.edit().putString("base_id", this.baseInfo.id).apply();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseDiffListResponse baseDiffListResponse) {
        if (TextUtils.isEmpty(baseDiffListResponse.dataformatList)) {
            return;
        }
        this.diffFormats = baseDiffListResponse.dataformatList.split("\\|");
        this.binding.tvDiffType.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, ContextCompat.getDrawable(this, R$drawable.icon_arrow_bottom_black), (Drawable) null);
        if (TextUtils.isEmpty(this.diffFormats[0])) {
            return;
        }
        this.binding.tvDiffType.setText(this.diffFormats[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetRoverStationResponse setRoverStationResponse) {
        showTipDialog(getString(setRoverStationResponse.result.contains("OK") ? R$string.config_success : R$string.config_fail), getString(R$string.ok), "", (TipsDialogFragment.OnConfirmListener) null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RoverStationResponse roverStationResponse) {
        this.binding.lltBase.setVisibility(8);
        this.binding.lltRover.setVisibility(0);
        this.binding.tvCutoffAngle.setText(String.format("%s°", fomatDouble(roverStationResponse.cutoffAngle)));
        this.binding.edtDiffAge.setText(String.valueOf(roverStationResponse.diffAge));
    }

    private String fomatDouble(float f) {
        int i = (int) f;
        return f == ((float) i) ? String.format("%s", Integer.valueOf(i)) : String.valueOf(f);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AntennaHeigthEntity antennaHeigthEntity) {
        this.antennaHeight = antennaHeigthEntity.height;
        this.antennaHeigthEntity = antennaHeigthEntity;
        this.binding.tvAntennaHeigthType.setText(getAntennaHeigthTypeDes(antennaHeigthEntity.way));
        this.binding.tvAntennaHeigth.setText(String.valueOf(this.antennaHeight));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,MODE"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetAntennaHeightResponse setAntennaHeightResponse) {
        if (this.isSetAntennaHeight) {
            this.isSetAntennaHeight = false;
            if (setAntennaHeightResponse.line.contains("OK")) {
                this.antennaHeight = setAntennaHeightResponse.heigth;
                setWorkModeConfig();
            } else {
                showTipDialog(getString(R$string.antenna_config_fail), getString(R$string.ok), "", (TipsDialogFragment.OnConfirmListener) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setWorkModeConfig() {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.setWorkModeConfig():void");
    }

    private String getAntennaHeigthTypeDes(String str) {
        if (str.equals("PHASE")) {
            return getString(R$string.high_phase_center);
        }
        if (str.equals("SLOPE")) {
            return getString(R$string.slant_height);
        }
        if (str.equals("VERTICAL")) {
            return getString(R$string.vertical_height);
        }
        if (str.equals("BOTTOM")) {
            return getString(R$string.bottom_height);
        }
        return "未知";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAntennaHeigthType(String str) {
        if (str.equals(getString(R$string.high_phase_center))) {
            return "PHASE";
        }
        if (str.equals(getString(R$string.slant_height))) {
            return "SLOPE";
        }
        if (str.equals(getString(R$string.vertical_height))) {
            return "VERTICAL";
        }
        if (str.equals(getString(R$string.bottom_height))) {
            return "BOTTOM";
        }
        return "";
    }

    private String getModeDes(String str) {
        if (str.equals(WorkModeEnum.ROVER.name())) {
            return getString(R$string.mobile_station);
        }
        if (str.equals(WorkModeEnum.BASE.name())) {
            return getString(R$string.base_station);
        }
        return getString(R$string.static_station);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity != null) {
            DeviceType deviceType = DeviceType.NONE;
        }
    }

    public void showTipDialog(String str, String str2, String str3, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        if (isDestroyed()) {
            return;
        }
        TipsDialogFragment tipsDialogFragment = new TipsDialogFragment();
        tipsDialogFragment.show(getSupportFragmentManager(), "TipsDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        bundle.putString("btnStr", str2);
        bundle.putString("cancelStr", str3);
        tipsDialogFragment.setArguments(bundle);
        tipsDialogFragment.setOnConfirmListener(onConfirmListener);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        GetBaseStationResponse getBaseStationResponse = this.baseInfo;
        if (getBaseStationResponse != null && getBaseStationResponse.startMode.equals("AUTO")) {
            TipsDialogFragment tipsDialogFragment = new TipsDialogFragment();
            tipsDialogFragment.show(getSupportFragmentManager(), "TipsDialogFragment");
            Bundle bundle = new Bundle();
            bundle.putString("tip", getString(R$string.base_mode_error));
            bundle.putString("btnStr", getString(R$string.confirm));
            bundle.putString("cancelStr", getString(R$string.ignore));
            tipsDialogFragment.setArguments(bundle);
            tipsDialogFragment.setOnConfirmListener(new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.15
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    BaseStationWorkModeConfigActivity.this.binding.tvStartMode.performClick();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    BaseStationWorkModeConfigActivity.this.finish();
                }
            });
            return;
        }
        if (this.startupChange || Integer.parseInt(this.binding.tvCutoffAngle.getText().toString().trim().replace("°", "")) != this.baseInfo.cutoffAngle || this.binding.edtPDOP.getNumericValue() != this.baseInfo.PDOP || !this.binding.tvAntennaHeigthType.getText().toString().equals(getAntennaHeigthTypeDes(this.antennaHeigthEntity.way)) || this.binding.tvAntennaHeigth.getNumericValue() != this.antennaHeight) {
            TipsDialogFragment tipsDialogFragment2 = new TipsDialogFragment();
            tipsDialogFragment2.show(getSupportFragmentManager(), "TipsDialogFragment");
            Bundle bundle2 = new Bundle();
            bundle2.putString("tip", getString(R$string.parameter_changes));
            bundle2.putString("btnStr", getString(R$string.confirm));
            bundle2.putString("cancelStr", getString(R$string.ignore));
            tipsDialogFragment2.setArguments(bundle2);
            tipsDialogFragment2.setOnConfirmListener(new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity.16
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    BaseStationWorkModeConfigActivity.this.binding.tvSave.performClick();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    BaseStationWorkModeConfigActivity.this.finish();
                }
            });
            return;
        }
        super.onBackPressed();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
