package com.qianhe.yct.activity.basestation;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.fragment.app.FragmentResultListener;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.ntripclientlib.client.config.NtripClientConfig;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.BaseNetworkResponse;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetDataLinkResponse;
import com.qianhe.rtkclientlib.event.GetRadioChannelEvent;
import com.qianhe.rtkclientlib.event.GetRadioEvent;
import com.qianhe.rtkclientlib.event.GetRadioPowerListEvent;
import com.qianhe.rtkclientlib.event.GetRadioProtocolListEvent;
import com.qianhe.rtkclientlib.event.SetBaseNetworkResponse;
import com.qianhe.rtkclientlib.event.SetBaseRadioResponse;
import com.qianhe.rtkclientlib.event.SetDataLinkResponse;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBasestationDatalinkBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.DataLinkEnum;
import com.qianhe.yct.enums.RadioPowerEnum;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.LocationUtils;
import com.qianhe.yct.utils.RadioChannelUtils;
import com.qianhe.yct.utils.RadioProtocolUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStationDataLinkConfigActivity extends BaseActivity {
    private ActivityBasestationDatalinkBinding binding;
    private String[] channelArray;
    private String currentDataLinkType;
    private ScheduledExecutorService executor;
    private long failCount;
    private boolean isBaseSupportMobile;
    private boolean isBaseSupportRadio;
    private boolean isBaseSupportWifi;
    private boolean isH5SupportNtrip;
    private boolean isH5SupportRadio;
    private String mDefaultHost;
    private int mMode;
    private boolean mSave;
    private boolean networkDatalinkAutoApplied;
    private boolean networkParamsRequested;
    private String[] peerProtocolArray;
    private boolean pendingNetworkParamsFetch;
    private boolean pendingRadioParamsFetch;
    private String[] powerArray;
    private String[] protocolArray;
    private boolean radioDatalinkAutoApplied;
    private GetRadioEvent radioInfo;
    private boolean radioParamsRequested;
    private ScheduledFuture<?> scheduledFuture;
    private DeviceType deviceType = DeviceType.BASE;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final LoadingFragment.OnCloseListener onCloseListener = new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.15
        @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
        public void onClose(int i) {
            if (i == 1) {
                EventBus.getDefault().post("diffClientDisconnect");
            }
        }
    };

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        String fromAssets;
        this.binding = ActivityBasestationDatalinkBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mMode = this.mSp.getInt("mode", ConnectModeEnum.BLE.getType());
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.BASE;
        if (!multiBluetoothManager.isDeviceConnected(deviceType)) {
            deviceType = DeviceType.ZPY;
        }
        this.deviceType = deviceType;
        this.binding.tvDataLink.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationDataLinkConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationDataLinkConfigActivity.this.getString(R$string.please_select_data_link));
                ArrayList<String> arrayList = new ArrayList<>();
                if (BaseStationDataLinkConfigActivity.this.isBaseSupportMobile || BaseStationDataLinkConfigActivity.this.mMode == ConnectModeEnum.DEMO.getType()) {
                    arrayList.add(BaseStationDataLinkConfigActivity.this.getString(R$string.device_internet));
                }
                if (BaseStationDataLinkConfigActivity.this.isBaseSupportRadio || BaseStationDataLinkConfigActivity.this.mMode == ConnectModeEnum.DEMO.getType()) {
                    arrayList.add(BaseStationDataLinkConfigActivity.this.getString(R$string.radio_station));
                }
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", arrayList.indexOf(BaseStationDataLinkConfigActivity.this.binding.tvDataLink.getText().toString().trim()));
                bundle2.putString("requestKey", "datalink");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvConnectType.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationDataLinkConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationDataLinkConfigActivity.this.getString(R$string.please_select_connection_type));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add("NTRIP");
                arrayList.add("TCP");
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", arrayList.indexOf(BaseStationDataLinkConfigActivity.this.binding.tvConnectType.getText().toString().trim()));
                bundle2.putString("requestKey", "baseconnecttype");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvChannel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationDataLinkConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationDataLinkConfigActivity.this.getString(R$string.please_select_channel));
                BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                bundle2.putStringArrayList("list", RadioChannelUtils.buildChannelLabelList(baseStationDataLinkConfigActivity, baseStationDataLinkConfigActivity.channelArray));
                BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity2 = BaseStationDataLinkConfigActivity.this;
                bundle2.putInt("currentIndex", RadioChannelUtils.getChannelIndex(baseStationDataLinkConfigActivity2, baseStationDataLinkConfigActivity2.binding.tvChannel.getText().toString().trim(), BaseStationDataLinkConfigActivity.this.channelArray));
                bundle2.putString("requestKey", "radio_channel");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvProtocol.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationDataLinkConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationDataLinkConfigActivity.this.getString(R$string.please_select_radio_protocol));
                ArrayList<String> arrayListBuildProtocolNameList = RadioProtocolUtils.buildProtocolNameList(BaseStationDataLinkConfigActivity.this.getSelectableProtocolArray());
                bundle2.putStringArrayList("list", arrayListBuildProtocolNameList);
                bundle2.putInt("currentIndex", arrayListBuildProtocolNameList.indexOf(BaseStationDataLinkConfigActivity.this.binding.tvProtocol.getText().toString().trim()));
                bundle2.putString("requestKey", ChooseListDialogFragment.RADIO_PROTOCOL);
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvSendPower.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity;
                int i;
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(BaseStationDataLinkConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, BaseStationDataLinkConfigActivity.this.getString(R$string.please_select_power));
                ArrayList<String> arrayList = new ArrayList<>();
                if (BaseStationDataLinkConfigActivity.this.powerArray == null) {
                    BaseStationDataLinkConfigActivity.this.powerArray = new String[0];
                }
                for (String str : BaseStationDataLinkConfigActivity.this.powerArray) {
                    if (str.equals(RadioPowerEnum.HIGH.name())) {
                        baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                        i = R$string.high;
                    } else if (str.equals(RadioPowerEnum.MIDDLE.name())) {
                        baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                        i = R$string.middle;
                    } else {
                        baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                        i = R$string.low;
                    }
                    arrayList.add(baseStationDataLinkConfigActivity.getString(i));
                }
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", arrayList.indexOf(BaseStationDataLinkConfigActivity.this.binding.tvSendPower.getText().toString().trim()));
                bundle2.putString("requestKey", "radio_power");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str;
                String string;
                String str2;
                BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                baseStationDataLinkConfigActivity.showLoadingDialog(baseStationDataLinkConfigActivity.getString(R$string.please_wait));
                String strTrim = BaseStationDataLinkConfigActivity.this.binding.tvConnectType.getText().toString().trim();
                String strTrim2 = BaseStationDataLinkConfigActivity.this.binding.edtHost.getText().toString().trim();
                String str3 = "";
                String strTrim3 = strTrim.equals("NTRIP") ? BaseStationDataLinkConfigActivity.this.binding.edtMountPoint.getText().toString().trim() : "";
                String strTrim4 = strTrim.equals("NTRIP") ? BaseStationDataLinkConfigActivity.this.binding.edtUserName.getText().toString().trim() : "";
                String strTrim5 = strTrim.equals("NTRIP") ? BaseStationDataLinkConfigActivity.this.binding.edtPassword.getText().toString().trim() : "";
                String strTrim6 = BaseStationDataLinkConfigActivity.this.binding.edtAPNuser.getText().toString().trim();
                String strTrim7 = BaseStationDataLinkConfigActivity.this.binding.edtAPNname.getText().toString().trim();
                String strTrim8 = BaseStationDataLinkConfigActivity.this.binding.edtAPNPsw.getText().toString().trim();
                String strTrim9 = BaseStationDataLinkConfigActivity.this.binding.tvDataLink.getText().toString().trim();
                if (strTrim9.equals(BaseStationDataLinkConfigActivity.this.getString(R$string.device_internet))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SET,NETWORK,");
                    sb.append(strTrim);
                    sb.append(",");
                    sb.append(strTrim2);
                    sb.append(",");
                    BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity2 = BaseStationDataLinkConfigActivity.this;
                    sb.append(baseStationDataLinkConfigActivity2.formatDouble(baseStationDataLinkConfigActivity2.binding.edtPort.getNumericValue()));
                    sb.append(",");
                    sb.append(strTrim3);
                    sb.append(",");
                    sb.append(strTrim4);
                    sb.append(",");
                    sb.append(strTrim5);
                    sb.append(",");
                    sb.append(strTrim7);
                    sb.append(",");
                    sb.append(strTrim6);
                    sb.append(",");
                    sb.append(strTrim8);
                    sb.append(",2.0");
                    string = sb.toString();
                    str2 = "SET,DATALINK,NETWORK";
                } else if (strTrim9.equals(BaseStationDataLinkConfigActivity.this.getString(R$string.radio_station))) {
                    BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity3 = BaseStationDataLinkConfigActivity.this;
                    int channelIndex = RadioChannelUtils.getChannelIndex(baseStationDataLinkConfigActivity3, baseStationDataLinkConfigActivity3.binding.tvChannel.getText().toString().trim(), BaseStationDataLinkConfigActivity.this.channelArray);
                    if (BaseStationDataLinkConfigActivity.this.protocolArray != null) {
                        String[] strArr = BaseStationDataLinkConfigActivity.this.protocolArray;
                        int length = strArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                break;
                            }
                            String str4 = strArr[i];
                            if (str4.contains(BaseStationDataLinkConfigActivity.this.binding.tvProtocol.getText().toString().trim())) {
                                str3 = str4.split("\\|")[0];
                                break;
                            }
                            i++;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SET,RADIO,");
                        sb2.append(channelIndex + 1);
                        sb2.append(",");
                        sb2.append(str3);
                        sb2.append(",");
                        sb2.append((BaseStationDataLinkConfigActivity.this.binding.tvSendPower.getText().toString().trim().equals(BaseStationDataLinkConfigActivity.this.getString(R$string.high)) ? RadioPowerEnum.HIGH : BaseStationDataLinkConfigActivity.this.binding.tvSendPower.getText().toString().trim().equals(BaseStationDataLinkConfigActivity.this.getString(R$string.middle)) ? RadioPowerEnum.MIDDLE : RadioPowerEnum.LOW).name());
                        string = sb2.toString();
                        str2 = "SET,DATALINK,RADIO";
                    } else {
                        BaseStationDataLinkConfigActivity.this.cancelLoadingDialog();
                        BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity4 = BaseStationDataLinkConfigActivity.this;
                        baseStationDataLinkConfigActivity4.showTipDialog(baseStationDataLinkConfigActivity4.getString(R$string.please_reset_base_before_config), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), null);
                        return;
                    }
                } else {
                    str = "";
                    EventBus.getDefault().post(new OrderBean(BaseStationDataLinkConfigActivity.this.deviceType, str3));
                    EventBus.getDefault().post(new OrderBean(BaseStationDataLinkConfigActivity.this.deviceType, str));
                }
                String str5 = string;
                str3 = str2;
                str = str5;
                EventBus.getDefault().post(new OrderBean(BaseStationDataLinkConfigActivity.this.deviceType, str3));
                EventBus.getDefault().post(new OrderBean(BaseStationDataLinkConfigActivity.this.deviceType, str));
            }
        });
        String string = this.mSp.getString("current_coords", "");
        if (!TextUtils.isEmpty(string) && LocationUtils.isChinaMainland(Double.parseDouble(string.split(",")[1]), Double.parseDouble(string.split(",")[0]))) {
            fromAssets = readFromAssets("cors.json");
        } else {
            fromAssets = readFromAssets("cors_en.json");
        }
        Iterator it = ((List) new Gson().fromJson(fromAssets, new TypeToken<List<CorsEntity>>() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.7
        }.getType())).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CorsEntity corsEntity = (CorsEntity) it.next();
            if (corsEntity.corsName.equalsIgnoreCase("XFIX")) {
                String str = corsEntity.host;
                this.mDefaultHost = str;
                this.binding.edtHost.setText(str);
                break;
            }
        }
        String string2 = this.mSp.getString("base_deviceSn", "");
        this.binding.edtPort.setText("6060");
        this.binding.edtMountPoint.setText(string2);
        this.binding.edtUserName.setText(string2);
        if (string2.length() > 6) {
            this.binding.edtPassword.setText(string2.substring(string2.length() - 6));
        }
        if (bundle == null) {
            showLoadingDialog(getString(R$string.loading));
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,DATALINK"));
        } else {
            restoreData(bundle);
        }
        EventBus.getDefault().post(new OrderBean("GET,FEATURES"));
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("dataLink", this.binding.tvDataLink.getText().toString().trim());
        bundle.putString("connectType", this.binding.tvConnectType.getText().toString().trim());
        bundle.putString("host", this.binding.edtHost.getText().toString().trim());
        bundle.putString("port", String.valueOf(this.binding.edtPort.getNumericValue()));
        bundle.putString("mountPoint", this.binding.edtMountPoint.getText().toString().trim());
        bundle.putString("userName", this.binding.edtUserName.getText().toString().trim());
        bundle.putString("password", this.binding.edtPassword.getText().toString().trim());
        bundle.putString("APNname", this.binding.edtAPNname.getText().toString().trim());
        bundle.putString("APNuser", this.binding.edtAPNuser.getText().toString().trim());
        bundle.putString("APNPsw", this.binding.edtAPNPsw.getText().toString().trim());
        bundle.putString("channel", this.binding.tvChannel.getText().toString().trim());
        bundle.putString("protocol", this.binding.tvProtocol.getText().toString().trim());
        bundle.putString("sendPower", this.binding.tvSendPower.getText().toString().trim());
        bundle.putInt("networkItemVisible", this.binding.lltNetworkItem.getVisibility());
        bundle.putInt("radioItemVisible", this.binding.lltRadioItem.getVisibility());
        bundle.putInt("ntripItemVisible", this.binding.lltNtripItem.getVisibility());
    }

    private void restoreData(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.binding.tvDataLink.setText(bundle.getString("dataLink"));
        this.binding.tvConnectType.setText(bundle.getString("connectType"));
        this.binding.edtHost.setText(bundle.getString("host"));
        this.binding.edtPort.setText(bundle.getString("port"));
        this.binding.edtMountPoint.setText(bundle.getString("mountPoint"));
        this.binding.edtUserName.setText(bundle.getString("userName"));
        this.binding.edtPassword.setText(bundle.getString("password"));
        this.binding.edtAPNname.setText(bundle.getString("APNname"));
        this.binding.edtAPNuser.setText(bundle.getString("APNuser"));
        this.binding.edtAPNPsw.setText(bundle.getString("APNPsw"));
        this.binding.tvChannel.setText(bundle.getString("channel"));
        this.binding.tvProtocol.setText(bundle.getString("protocol"));
        this.binding.tvSendPower.setText(bundle.getString("sendPower"));
        this.binding.lltNetworkItem.setVisibility(bundle.getInt("networkItemVisible"));
        this.binding.lltRadioItem.setVisibility(bundle.getInt("radioItemVisible"));
        this.binding.lltNtripItem.setVisibility(bundle.getInt("ntripItemVisible"));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("datalink", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.8
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals("datalink") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                int i = bundle.getInt("index");
                BaseStationDataLinkConfigActivity.this.binding.tvDataLink.setText(stringArrayList.get(i));
                BaseStationDataLinkConfigActivity.this.binding.lltNetworkItem.setVisibility(8);
                BaseStationDataLinkConfigActivity.this.binding.lltRadioItem.setVisibility(8);
                if (stringArrayList.get(i).equals(BaseStationDataLinkConfigActivity.this.getString(R$string.device_internet))) {
                    BaseStationDataLinkConfigActivity.this.binding.lltNetworkItem.setVisibility(0);
                } else if (stringArrayList.get(i).equals(BaseStationDataLinkConfigActivity.this.getString(R$string.radio_station))) {
                    EventBus.getDefault().post(new OrderBean(BaseStationDataLinkConfigActivity.this.deviceType, "GET,RADIO_CHANNEL"));
                    BaseStationDataLinkConfigActivity.this.binding.lltRadioItem.setVisibility(0);
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("baseconnecttype", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.9
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals("baseconnecttype") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                int i = bundle.getInt("index");
                BaseStationDataLinkConfigActivity.this.binding.tvConnectType.setText(stringArrayList.get(i));
                BaseStationDataLinkConfigActivity.this.binding.lltNtripItem.setVisibility(i == 0 ? 0 : 8);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("appliedtoh5network", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.10
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("appliedtoh5network")) {
                    if (bundle.getBoolean("confirm")) {
                        if (MultiBluetoothManager.getInstance(BaseStationDataLinkConfigActivity.this).isDeviceConnected(DeviceType.ZPY)) {
                            BaseStationDataLinkConfigActivity.this.mSave = true;
                            BaseStationDataLinkConfigActivity.this.failCount = 0L;
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                            baseStationDataLinkConfigActivity.showLoadingDialog(baseStationDataLinkConfigActivity.getString(R$string.connecting));
                            BaseStationDataLinkConfigActivity.this.connectNtrip();
                            return;
                        }
                        BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity2 = BaseStationDataLinkConfigActivity.this;
                        baseStationDataLinkConfigActivity2.showTipDialog(baseStationDataLinkConfigActivity2.getString(R$string.disconnected_device), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), null);
                        return;
                    }
                    BaseStationDataLinkConfigActivity.this.finish();
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("appliedtoh5radio", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.11
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                String str2;
                if (str.equals("appliedtoh5radio")) {
                    if (bundle.getBoolean("confirm")) {
                        if (MultiBluetoothManager.getInstance(BaseStationDataLinkConfigActivity.this).isDeviceConnected(DeviceType.ZPY)) {
                            BaseStationDataLinkConfigActivity.this.mSave = true;
                            BaseStationDataLinkConfigActivity.this.failCount = 0L;
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                            baseStationDataLinkConfigActivity.showLoadingDialog(baseStationDataLinkConfigActivity.getString(R$string.please_wait));
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity2 = BaseStationDataLinkConfigActivity.this;
                            int channelIndex = RadioChannelUtils.getChannelIndex(baseStationDataLinkConfigActivity2, baseStationDataLinkConfigActivity2.binding.tvChannel.getText().toString().trim(), BaseStationDataLinkConfigActivity.this.channelArray);
                            String[] strArr = BaseStationDataLinkConfigActivity.this.protocolArray;
                            int length = strArr.length;
                            int i = 0;
                            while (true) {
                                if (i >= length) {
                                    str2 = "";
                                    break;
                                }
                                String str3 = strArr[i];
                                if (str3.contains(BaseStationDataLinkConfigActivity.this.binding.tvProtocol.getText().toString().trim())) {
                                    str2 = str3.split("\\|")[0];
                                    break;
                                }
                                i++;
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append("SET,RADIO,");
                            sb.append(channelIndex + 1);
                            sb.append(",");
                            sb.append(str2);
                            sb.append(",");
                            sb.append((BaseStationDataLinkConfigActivity.this.binding.tvSendPower.getText().toString().trim().equals(BaseStationDataLinkConfigActivity.this.getString(R$string.high)) ? RadioPowerEnum.HIGH : BaseStationDataLinkConfigActivity.this.binding.tvSendPower.getText().toString().trim().equals(BaseStationDataLinkConfigActivity.this.getString(R$string.middle)) ? RadioPowerEnum.MIDDLE : RadioPowerEnum.LOW).name());
                            final String string = sb.toString();
                            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "SET,DATALINK,RADIO"));
                            BaseStationDataLinkConfigActivity.this.binding.tvSave.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.11.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, string));
                                }
                            }, 500L);
                            return;
                        }
                        BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity3 = BaseStationDataLinkConfigActivity.this;
                        baseStationDataLinkConfigActivity3.showTipDialog(baseStationDataLinkConfigActivity3.getString(R$string.disconnected_device), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), null);
                        return;
                    }
                    BaseStationDataLinkConfigActivity.this.finish();
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("radio_channel", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.12
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals("radio_channel") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                BaseStationDataLinkConfigActivity.this.binding.tvChannel.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
        getSupportFragmentManager().setFragmentResultListener(ChooseListDialogFragment.RADIO_PROTOCOL, this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.13
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals(ChooseListDialogFragment.RADIO_PROTOCOL) || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                BaseStationDataLinkConfigActivity.this.binding.tvProtocol.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
        getSupportFragmentManager().setFragmentResultListener("radio_power", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.14
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals("radio_power") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                BaseStationDataLinkConfigActivity.this.binding.tvSendPower.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectNtrip() {
        NtripClientConfig ntripClientConfig = new NtripClientConfig();
        ntripClientConfig.ntrip_host = this.binding.edtHost.getText().toString().trim();
        ntripClientConfig.ntrip_port = (int) this.binding.edtPort.getNumericValue();
        ntripClientConfig.mount_point = this.binding.edtMountPoint.getText().toString().trim();
        ntripClientConfig.username = this.binding.edtUserName.getText().toString().trim();
        String strTrim = this.binding.edtPassword.getText().toString().trim();
        if (!TextUtils.isEmpty(strTrim) && strTrim.matches("\\*+")) {
            strTrim = ntripClientConfig.username;
            if (strTrim.length() > 6) {
                strTrim = strTrim.substring(strTrim.length() - 6);
            }
        }
        ntripClientConfig.password = strTrim;
        EventBus.getDefault().post(ntripClientConfig);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.data_link));
        return this.binding.topBar.getRoot();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetDataLinkResponse getDataLinkResponse) {
        if (getDataLinkResponse.deviceType != DeviceType.BASE) {
            return;
        }
        cancelLoadingDialog();
        this.currentDataLinkType = getDataLinkResponse.type;
        if (applyRadioDatalinkIfUnsupportedNetwork() || applyNetworkDatalinkIfUnsupportedRadio()) {
            return;
        }
        this.binding.tvDataLink.setText(getDataLinkDes(getDataLinkResponse.type));
        this.binding.lltNetworkItem.setVisibility(8);
        this.binding.lltRadioItem.setVisibility(8);
        if (getDataLinkResponse.type.equals(DataLinkEnum.NETWORK.name())) {
            this.binding.lltNetworkItem.setVisibility(0);
            requestNetworkParamsIfNeeded();
        } else if (getDataLinkResponse.type.equals(DataLinkEnum.RADIO.name())) {
            this.binding.lltRadioItem.setVisibility(0);
            requestRadioParamsIfNeeded();
        }
    }

    private boolean applyRadioDatalinkIfUnsupportedNetwork() {
        boolean z = false;
        if (!this.isBaseSupportMobile && this.isBaseSupportRadio) {
            this.binding.tvDataLink.setText(getString(R$string.radio_station));
            this.binding.lltNetworkItem.setVisibility(8);
            this.binding.lltRadioItem.setVisibility(0);
            z = true;
            if (!this.radioDatalinkAutoApplied) {
                if (DataLinkEnum.RADIO.name().equals(this.currentDataLinkType)) {
                    this.radioDatalinkAutoApplied = true;
                    requestRadioParamsIfNeeded();
                } else if (this.currentDataLinkType != null) {
                    this.radioDatalinkAutoApplied = true;
                    this.pendingRadioParamsFetch = true;
                    EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,DATALINK,RADIO"));
                }
            }
        }
        return z;
    }

    private boolean applyNetworkDatalinkIfUnsupportedRadio() {
        boolean z = false;
        if (!this.isBaseSupportRadio && this.isBaseSupportMobile) {
            this.binding.tvDataLink.setText(getString(R$string.device_internet));
            this.binding.lltRadioItem.setVisibility(8);
            this.binding.lltNetworkItem.setVisibility(0);
            z = true;
            if (!this.networkDatalinkAutoApplied) {
                if (DataLinkEnum.NETWORK.name().equals(this.currentDataLinkType)) {
                    this.networkDatalinkAutoApplied = true;
                    requestNetworkParamsIfNeeded();
                } else if (this.currentDataLinkType != null) {
                    this.networkDatalinkAutoApplied = true;
                    this.pendingNetworkParamsFetch = true;
                    EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,DATALINK,NETWORK"));
                }
            }
        }
        return z;
    }

    private void requestRadioParamsIfNeeded() {
        if (this.radioParamsRequested) {
            return;
        }
        this.radioParamsRequested = true;
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,RADIO_CHANNEL"));
    }

    private void requestNetworkParamsIfNeeded() {
        if (this.networkParamsRequested) {
            return;
        }
        this.networkParamsRequested = true;
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,NETWORK"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioChannelEvent getRadioChannelEvent) {
        if (getRadioChannelEvent.deviceType != this.deviceType) {
            return;
        }
        this.channelArray = getRadioChannelEvent.channelArray;
        requestRadioProtocolLists();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioProtocolListEvent getRadioProtocolListEvent) {
        DeviceType deviceType = getRadioProtocolListEvent.deviceType;
        DeviceType deviceType2 = this.deviceType;
        if (deviceType == deviceType2) {
            this.protocolArray = getRadioProtocolListEvent.protocolArray;
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,RADIO_POWER_LIST,"));
        } else if (deviceType == RadioProtocolUtils.getPeerDeviceType(deviceType2)) {
            this.peerProtocolArray = getRadioProtocolListEvent.protocolArray;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioPowerListEvent getRadioPowerListEvent) {
        if (getRadioPowerListEvent.deviceType != this.deviceType) {
            return;
        }
        this.powerArray = getRadioPowerListEvent.powerArray;
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,RADIO"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioEvent getRadioEvent) {
        if (getRadioEvent.deviceType != this.deviceType) {
            return;
        }
        this.radioInfo = getRadioEvent;
        this.binding.tvChannel.setText(RadioChannelUtils.getChannelLabel(this, getRadioEvent.channelNumber - 1, this.channelArray));
        String strFindProtocolNameByNumber = RadioProtocolUtils.findProtocolNameByNumber(this.protocolArray, this.radioInfo.protocolNumber);
        if (!TextUtils.isEmpty(strFindProtocolNameByNumber)) {
            this.binding.tvProtocol.setText(strFindProtocolNameByNumber);
        }
        this.binding.tvSendPower.setText(getString(this.radioInfo.power.equals(RadioPowerEnum.HIGH.name()) ? R$string.high : this.radioInfo.power.equals(RadioPowerEnum.MIDDLE.name()) ? R$string.middle : R$string.low));
    }

    private void requestRadioProtocolLists() {
        this.peerProtocolArray = null;
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,RADIO_PROTOCOL_LIST"));
        if (isBothRadioDevicesConnected()) {
            EventBus.getDefault().post(new OrderBean(RadioProtocolUtils.getPeerDeviceType(this.deviceType), "GET,RADIO_PROTOCOL_LIST"));
        }
    }

    private boolean isBothRadioDevicesConnected() {
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        return multiBluetoothManager.isDeviceConnected(DeviceType.ZPY) && multiBluetoothManager.isDeviceConnected(DeviceType.BASE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getSelectableProtocolArray() {
        return RadioProtocolUtils.getSelectableProtocols(this.protocolArray, this.peerProtocolArray, isBothRadioDevicesConnected());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetDataLinkResponse setDataLinkResponse) {
        String str;
        if (setDataLinkResponse.deviceType == DeviceType.BASE && (str = setDataLinkResponse.result) != null && str.contains("OK")) {
            if (this.pendingRadioParamsFetch && setDataLinkResponse.result.contains("RADIO")) {
                this.pendingRadioParamsFetch = false;
                requestRadioParamsIfNeeded();
            } else if (this.pendingNetworkParamsFetch && setDataLinkResponse.result.contains("NETWORK")) {
                this.pendingNetworkParamsFetch = false;
                requestNetworkParamsIfNeeded();
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AuthResult authResult) throws JSONException {
        String str;
        if (this.mSave) {
            int i = authResult.result;
            if (i == 3) {
                startTimer();
                if (this.failCount == 0) {
                    showLoadingDialog(getString(R$string.connecting), this.onCloseListener);
                    return;
                }
                return;
            }
            if (i == 4) {
                stopTimer();
                showLoadingDialog(getString(R$string.authenticating), this.onCloseListener);
                return;
            }
            if (i == 1) {
                this.handler.removeCallbacksAndMessages(null);
                AppConfigManager.getInstance().setCors(authResult.diffConfig);
                cancelLoadingDialog();
                this.mSave = false;
                if (authResult.isInit) {
                    return;
                }
                Toast.makeText(this, R$string.auth_successful, 1).show();
                finish();
                return;
            }
            if (i == 2) {
                if (this.failCount == 0) {
                    showLoadingDialog(getString(R$string.authenticating), this.onCloseListener);
                    return;
                }
                return;
            }
            if (i != 0) {
                if (i == 7) {
                    cancelLoadingDialog();
                    return;
                }
                return;
            }
            long j = this.failCount + 1;
            this.failCount = j;
            if (j > 3) {
                this.mSave = false;
                this.handler.removeCallbacksAndMessages(null);
                EventBus.getDefault().post("diffClientDisconnect");
                String str2 = authResult.reason;
                if (str2 != null && str2.contains("Bad Password")) {
                    authResult.reason = getString(R$string.cors_input_error);
                }
                cancelLoadingDialog();
                StringBuilder sb = new StringBuilder();
                sb.append(getString(R$string.cors_auth_failed));
                if (TextUtils.isEmpty(authResult.reason)) {
                    str = "";
                } else {
                    str = "：" + authResult.reason;
                }
                sb.append(str);
                showTipDialog(sb.toString(), getString(R$string.ok), null);
                return;
            }
            this.handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.16
                @Override // java.lang.Runnable
                public void run() {
                    BaseStationDataLinkConfigActivity.this.connectNtrip();
                }
            }, 2000L);
        }
    }

    private void saveCors() {
        long jInsertCORS;
        CorsEntity corsEntity = new CorsEntity();
        corsEntity.corsName = getString(R$string.customize);
        corsEntity.ntripType = NtripTypeEnum.NTRIP.getType();
        corsEntity.host = this.binding.edtHost.getText().toString().trim();
        Editable text = this.binding.edtPort.getText();
        Objects.requireNonNull(text);
        corsEntity.port = Integer.parseInt(text.toString().trim());
        corsEntity.userName = this.binding.edtUserName.getText().toString().trim();
        corsEntity.password = this.binding.edtPassword.getText().toString().trim();
        corsEntity.mount = this.binding.edtMountPoint.getText().toString().trim();
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        List<CorsEntity> listQueryCORSByName = databaseManager.queryCORSByName(corsEntity.corsName);
        if (listQueryCORSByName.isEmpty()) {
            jInsertCORS = databaseManager.insertCORS(corsEntity);
            if (jInsertCORS > 0) {
                LogToFile.i("cors数据插入成功");
            }
        } else {
            CorsEntity corsEntity2 = listQueryCORSByName.get(0);
            corsEntity.id = corsEntity2.id;
            if (!corsEntity2.equals(corsEntity)) {
                if (databaseManager.updateCORS(corsEntity) > 0) {
                    jInsertCORS = corsEntity2.id;
                    LogToFile.i("cors数据更新成功");
                } else {
                    jInsertCORS = -1;
                }
            } else {
                jInsertCORS = corsEntity2.id;
            }
        }
        if (jInsertCORS == -1) {
            Toast.makeText(this, R$string.save_failed, 0).show();
            LogToFile.i("cors数据保存失败");
        }
    }

    private void startTimer() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.executor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.scheduledFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.17
            @Override // java.lang.Runnable
            public void run() {
                EventBus.getDefault().post("diffClientDisconnect");
                BaseStationDataLinkConfigActivity.this.cancelLoadingDialog();
                BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.cors_connect_failed), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), null);
            }
        }, 5000L, TimeUnit.MILLISECONDS);
    }

    private void stopTimer() {
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = this.executor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    private String getDataLinkDes(String str) {
        if (str.equals(DataLinkEnum.NETWORK.name())) {
            return getString(R$string.device_internet);
        }
        if (str.equals(DataLinkEnum.RADIO.name())) {
            return getString(R$string.radio_station);
        }
        return "";
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseNetworkResponse baseNetworkResponse) {
        if (baseNetworkResponse.deviceType != DeviceType.BASE) {
            return;
        }
        this.binding.tvConnectType.setText(baseNetworkResponse.type);
        this.binding.edtHost.setText(!TextUtils.isEmpty(baseNetworkResponse.host) ? baseNetworkResponse.host : this.mDefaultHost);
        int i = baseNetworkResponse.port;
        if (i != 0) {
            this.binding.edtPort.setText(String.valueOf(i));
        }
        this.binding.edtPort.setEnabled(!baseNetworkResponse.host.equals(this.mDefaultHost));
        this.binding.edtMountPoint.setEnabled(!baseNetworkResponse.host.equals(this.mDefaultHost));
        this.binding.edtMountPoint.setText(baseNetworkResponse.mountpoint);
        this.binding.edtUserName.setText(baseNetworkResponse.userName);
        this.binding.edtPassword.setText(baseNetworkResponse.password);
        this.binding.edtAPNname.setText(baseNetworkResponse.apnName);
        this.binding.edtAPNuser.setText(baseNetworkResponse.apnUser);
        this.binding.edtAPNPsw.setText((TextUtils.isEmpty(baseNetworkResponse.apnName) && TextUtils.isEmpty(baseNetworkResponse.apnUser)) ? "" : baseNetworkResponse.apnPassword);
        this.binding.lltNtripItem.setVisibility(baseNetworkResponse.type.equals("NTRIP") ? 0 : 8);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) {
        if (featuresEvent.deviceType == DeviceType.ZPY) {
            if (featuresEvent.value.contains("NO_NTRIP")) {
                this.isH5SupportNtrip = false;
            } else {
                this.isH5SupportNtrip = true;
            }
            if (featuresEvent.value.contains("RADIO")) {
                this.isH5SupportRadio = true;
            } else {
                this.isH5SupportRadio = false;
            }
        }
        if (featuresEvent.deviceType == DeviceType.BASE) {
            if (featuresEvent.value.contains("WIFI")) {
                this.isBaseSupportWifi = true;
            } else {
                this.isBaseSupportWifi = false;
            }
            if (featuresEvent.value.contains("MOBILE")) {
                this.isBaseSupportMobile = true;
            } else {
                this.isBaseSupportMobile = false;
            }
            if (featuresEvent.value.contains("RADIO")) {
                this.isBaseSupportRadio = true;
            } else {
                this.isBaseSupportRadio = false;
            }
            applyRadioDatalinkIfUnsupportedNetwork();
            applyNetworkDatalinkIfUnsupportedRadio();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetBaseNetworkResponse setBaseNetworkResponse) {
        if (setBaseNetworkResponse.deviceType != DeviceType.BASE) {
            return;
        }
        cancelLoadingDialog();
        if (setBaseNetworkResponse.line.contains("OK")) {
            if (this.binding.tvDataLink.getText().toString().trim().equals(getString(R$string.device_internet)) && this.binding.tvConnectType.getText().toString().trim().equals("NTRIP")) {
                if (this.isH5SupportNtrip) {
                    this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.18
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                            baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.is_applied_to_h5), BaseStationDataLinkConfigActivity.this.getString(R$string.confirm), null, "appliedtoh5network");
                        }
                    });
                } else {
                    this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.19
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                            baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.config_success), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.19.1
                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                }

                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    BaseStationDataLinkConfigActivity.this.finish();
                                }
                            });
                        }
                    });
                }
            } else {
                this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.20
                    @Override // java.lang.Runnable
                    public void run() {
                        BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                        baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.config_success), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.20.1
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                BaseStationDataLinkConfigActivity.this.finish();
                            }
                        });
                    }
                });
            }
            saveCors();
            return;
        }
        this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.21
            @Override // java.lang.Runnable
            public void run() {
                BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.config_fail), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), null);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final SetBaseRadioResponse setBaseRadioResponse) {
        DeviceType deviceType = setBaseRadioResponse.deviceType;
        if (deviceType == DeviceType.BASE) {
            cancelLoadingDialog();
            if (setBaseRadioResponse.line.contains("OK")) {
                if (this.isH5SupportRadio) {
                    this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.22
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                            baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.is_applied_to_h5), BaseStationDataLinkConfigActivity.this.getString(R$string.confirm), null, "appliedtoh5radio");
                        }
                    });
                    return;
                } else {
                    this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.23
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                            baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.config_success), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.23.1
                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                }

                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    BaseStationDataLinkConfigActivity.this.finish();
                                }
                            });
                        }
                    });
                    return;
                }
            }
            this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.24
                @Override // java.lang.Runnable
                public void run() {
                    BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                    baseStationDataLinkConfigActivity.showTipDialog(baseStationDataLinkConfigActivity.getString(R$string.config_fail), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), null);
                }
            });
            return;
        }
        if (deviceType == DeviceType.ZPY) {
            cancelLoadingDialog();
            this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.25
                @Override // java.lang.Runnable
                public void run() {
                    BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity;
                    int i;
                    BaseStationDataLinkConfigActivity baseStationDataLinkConfigActivity2 = BaseStationDataLinkConfigActivity.this;
                    if (setBaseRadioResponse.line.contains("OK")) {
                        baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                        i = R$string.config_success;
                    } else {
                        baseStationDataLinkConfigActivity = BaseStationDataLinkConfigActivity.this;
                        i = R$string.config_fail;
                    }
                    baseStationDataLinkConfigActivity2.showTipDialog(baseStationDataLinkConfigActivity.getString(i), BaseStationDataLinkConfigActivity.this.getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity.25.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            if (setBaseRadioResponse.line.contains("OK")) {
                                BaseStationDataLinkConfigActivity.this.finish();
                            }
                        }
                    });
                }
            });
            if (setBaseRadioResponse.line.contains("OK")) {
                EventBus.getDefault().post("diffClientDisconnect");
                this.mSp.edit().putString("obtain_difference_type", "radio").putInt(Constant.NTRIPTYPE, NtripTypeEnum.NONE.getType()).apply();
            }
        }
    }

    private String readFromAssets(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getAssets().open(str)));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
            }
            bufferedReader.close();
        } catch (IOException e) {
            LogToFile.e("读取assets文件失败：" + e);
            e.printStackTrace();
        }
        return sb.toString();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        stopTimer();
        EventBus.getDefault().unregister(this);
        this.handler.removeCallbacksAndMessages(null);
    }
}
