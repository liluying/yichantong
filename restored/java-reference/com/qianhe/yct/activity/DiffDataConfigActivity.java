package com.qianhe.yct.activity;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.ntripclientlib.client.NtripClient;
import com.qianhe.ntripclientlib.client.config.NtripClientConfig;
import com.qianhe.ntripclientlib.client.config.SdkClientConfig;
import com.qianhe.ntripclientlib.event.MountPointsEvent;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetRadioChannelEvent;
import com.qianhe.rtkclientlib.event.GetRadioEvent;
import com.qianhe.rtkclientlib.event.GetRadioPowerListEvent;
import com.qianhe.rtkclientlib.event.GetRadioProtocolListEvent;
import com.qianhe.rtkclientlib.event.SetBaseRadioResponse;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.ActivityDiffDataConfigBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ChooseCorsHostDialogFragment;
import com.qianhe.yct.dialog.ChooseCorsPortDialogFragment;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.CorsProviderInputDialogFragment;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.RadioPowerEnum;
import com.qianhe.yct.event.CorsExpireEpochEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.CorsPortUtils;
import com.qianhe.yct.utils.LocationUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.RadioChannelUtils;
import com.qianhe.yct.utils.RadioProtocolUtils;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
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
public class DiffDataConfigActivity extends BaseActivity {
    private boolean applyingToBase;
    private ActivityDiffDataConfigBinding binding;
    private String[] channelArray;
    private ScheduledExecutorService executor;
    private CorsEntity initCorsBean;
    private boolean isAdd;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private boolean mSave;
    private NtripClientConfig ntripClientConfig;
    private String[] peerProtocolArray;
    private String[] powerArray;
    private String[] protocolArray;
    private GetRadioEvent radioInfo;
    private ScheduledFuture<?> scheduledFuture;
    private long totalBytes;
    private List<CorsEntity> corsListDb = new ArrayList();
    private final LoadingFragment.OnCloseListener onCloseListener = new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.1
        @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
        public void onClose(int i) {
            if (i == 1) {
                EventBus.getDefault().post("diffClientDisconnect");
                if (DiffDataConfigActivity.this.mSave) {
                    DiffDataConfigActivity.this.mSave = false;
                }
            }
        }
    };

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws NumberFormatException {
        AppConfig.Details details;
        this.binding = ActivityDiffDataConfigBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.mDatabaseManager = databaseManager;
        this.corsListDb = databaseManager.queryCORS(null);
        LinearLayout linearLayout = this.binding.lltContent;
        int i = this.appConfig.details.ntrip_type;
        NtripTypeEnum ntripTypeEnum = NtripTypeEnum.NTRIP;
        linearLayout.setVisibility(i == ntripTypeEnum.getType() ? 0 : 8);
        NtripClientConfig ntripClientConfig = new NtripClientConfig();
        this.ntripClientConfig = ntripClientConfig;
        AppConfig appConfig = this.appConfig;
        if (appConfig != null && (details = appConfig.details) != null) {
            ntripClientConfig.setHost(details.ntrip_host);
            this.ntripClientConfig.setPort(this.appConfig.details.ntrip_port);
            this.ntripClientConfig.setMountPoint(this.appConfig.details.ntrip_mount_point);
            this.ntripClientConfig.setUsername(this.appConfig.details.ntrip_username);
            this.ntripClientConfig.setPassword(this.appConfig.details.ntrip_password);
            this.ntripClientConfig.ntripType = this.appConfig.details.ntrip_type;
        }
        CorsEntity corsEntity = new CorsEntity();
        this.initCorsBean = corsEntity;
        int i2 = this.appConfig.details.ntrip_type;
        corsEntity.ntripType = i2;
        NtripClientConfig ntripClientConfig2 = this.ntripClientConfig;
        corsEntity.host = ntripClientConfig2.ntrip_host;
        corsEntity.port = ntripClientConfig2.ntrip_port;
        corsEntity.userName = ntripClientConfig2.username;
        corsEntity.password = ntripClientConfig2.password;
        corsEntity.mount = ntripClientConfig2.mount_point;
        if (i2 == ntripTypeEnum.getType()) {
            CorsEntity corsEntityFindCorsMatchingAppConfig = findCorsMatchingAppConfig(this.corsListDb);
            if (corsEntityFindCorsMatchingAppConfig != null) {
                CorsEntity corsEntity2 = this.initCorsBean;
                corsEntity2.id = corsEntityFindCorsMatchingAppConfig.id;
                corsEntity2.corsName = corsEntityFindCorsMatchingAppConfig.corsName;
            } else if (!this.corsListDb.isEmpty()) {
                this.initCorsBean.id = this.corsListDb.get(0).id;
                this.initCorsBean.corsName = this.corsListDb.get(0).corsName;
            }
        }
        String string = this.mSp.getString("current_coords", "");
        String string2 = this.mSp.getString("obtain_difference_type", "bluetooth");
        if (!TextUtils.isEmpty(string)) {
            if (LocationUtils.isChinaMainland(Double.parseDouble(string.split(",")[1]), Double.parseDouble(string.split(",")[0])) && !"radio".equals(string2)) {
                this.binding.rltRenew.setVisibility(this.appConfig.details.ntrip_type != ntripTypeEnum.getType() ? 0 : 8);
                this.binding.rltOrderList.setVisibility((isWeChatInstalled() && this.binding.rltRenew.getVisibility() == 0) ? 0 : 8);
                this.binding.tvCorsName.setText(this.appConfig.details.ntrip_type == ntripTypeEnum.getType() ? this.initCorsBean.corsName : getString(R$string.x_fixed));
                this.binding.edtHost.setText(this.ntripClientConfig.ntrip_host);
                EditText editText = this.binding.edtPort;
                int i3 = this.ntripClientConfig.ntrip_port;
                editText.setText(i3 != 0 ? String.valueOf(i3) : "");
            } else {
                this.binding.rltRenew.setVisibility(8);
                this.binding.rltOrderList.setVisibility(8);
                this.binding.tvCorsName.setText("XFIX");
                this.binding.edtHost.setText(this.ntripClientConfig.ntrip_host);
                EditText editText2 = this.binding.edtPort;
                int i4 = this.ntripClientConfig.ntrip_port;
                editText2.setText(i4 != 0 ? String.valueOf(i4) : "");
            }
        } else if (LanguagePrefs.isZH_CN(this)) {
            this.binding.rltRenew.setVisibility(this.appConfig.details.ntrip_type != ntripTypeEnum.getType() ? 0 : 8);
            this.binding.rltOrderList.setVisibility((isWeChatInstalled() && this.binding.rltRenew.getVisibility() == 0) ? 0 : 8);
            this.binding.tvCorsName.setText(this.appConfig.details.ntrip_type == ntripTypeEnum.getType() ? this.initCorsBean.corsName : getString(R$string.x_fixed));
            this.binding.edtHost.setText(this.ntripClientConfig.ntrip_host);
            EditText editText3 = this.binding.edtPort;
            int i5 = this.ntripClientConfig.ntrip_port;
            editText3.setText(i5 != 0 ? String.valueOf(i5) : "");
        } else {
            this.binding.rltRenew.setVisibility(8);
            this.binding.rltOrderList.setVisibility(8);
            this.binding.tvCorsName.setText("XFIX");
            this.binding.edtHost.setText(this.ntripClientConfig.ntrip_host);
            EditText editText4 = this.binding.edtPort;
            int i6 = this.ntripClientConfig.ntrip_port;
            editText4.setText(i6 != 0 ? String.valueOf(i6) : "");
        }
        this.binding.edtMountpoint.setText(this.ntripClientConfig.mount_point);
        this.binding.edtUsername.setText(this.ntripClientConfig.username);
        this.binding.edtPassword.setText(this.ntripClientConfig.password);
        updateChoosePortVisibility();
        initView();
    }

    private void initView() throws NumberFormatException {
        final ArrayList<String> arrayList = new ArrayList<>();
        if (isInChinaMainlandByStoredCoords()) {
            arrayList.add(getString(R$string.x_fixed));
        }
        if (this.mSp.getBoolean("SUPPORT_NTRIP", false)) {
            arrayList.add(getString(R$string.custom_cors));
        }
        if (YCTApplication.getInstance().isH5SupportRadioains()) {
            arrayList.add(getString(R$string.radio_station));
        }
        applyDiffSourceByName(resolveInitialDiffSource(arrayList));
        this.binding.tvDiffSource.setEnabled(arrayList.size() > 1);
        this.binding.tvDiffSource.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, arrayList.size() > 1 ? AppCompatResources.getDrawable(this, R$drawable.icon_arrow_bottom_black) : null, (Drawable) null);
        this.binding.tvDiffSource.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DiffDataConfigActivity.this.getString(R$string.difference_source));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", DiffDataConfigActivity.this.resolveDiffSourceCurrentIndex(arrayList));
                bundle.putString("requestKey", "DIFF_SOURCE");
                chooseListDialogFragment.setArguments(bundle);
                chooseListDialogFragment.show(DiffDataConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
            }
        });
        this.binding.tvChannel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DiffDataConfigActivity.this.channelArray == null) {
                    return;
                }
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(DiffDataConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DiffDataConfigActivity.this.getString(R$string.please_select_channel));
                DiffDataConfigActivity diffDataConfigActivity = DiffDataConfigActivity.this;
                bundle.putStringArrayList("list", RadioChannelUtils.buildChannelLabelList(diffDataConfigActivity, diffDataConfigActivity.channelArray));
                DiffDataConfigActivity diffDataConfigActivity2 = DiffDataConfigActivity.this;
                bundle.putInt("currentIndex", RadioChannelUtils.getChannelIndex(diffDataConfigActivity2, diffDataConfigActivity2.binding.tvChannel.getText().toString().trim(), DiffDataConfigActivity.this.channelArray));
                bundle.putString("requestKey", "radio_channel");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvProtocol.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DiffDataConfigActivity.this.protocolArray == null) {
                    return;
                }
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(DiffDataConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DiffDataConfigActivity.this.getString(R$string.please_select_radio_protocol));
                ArrayList<String> arrayListBuildProtocolNameList = RadioProtocolUtils.buildProtocolNameList(DiffDataConfigActivity.this.getSelectableProtocolArray());
                bundle.putStringArrayList("list", arrayListBuildProtocolNameList);
                bundle.putInt("currentIndex", arrayListBuildProtocolNameList.indexOf(DiffDataConfigActivity.this.binding.tvProtocol.getText().toString().trim()));
                bundle.putString("requestKey", ChooseListDialogFragment.RADIO_PROTOCOL);
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvSendPower.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DiffDataConfigActivity diffDataConfigActivity;
                int i;
                if (DiffDataConfigActivity.this.powerArray == null) {
                    return;
                }
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(DiffDataConfigActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DiffDataConfigActivity.this.getString(R$string.please_select_power));
                ArrayList<String> arrayList2 = new ArrayList<>();
                for (String str : DiffDataConfigActivity.this.powerArray) {
                    if (str.equals(RadioPowerEnum.HIGH.name())) {
                        diffDataConfigActivity = DiffDataConfigActivity.this;
                        i = R$string.high;
                    } else if (str.equals(RadioPowerEnum.MIDDLE.name())) {
                        diffDataConfigActivity = DiffDataConfigActivity.this;
                        i = R$string.middle;
                    } else {
                        diffDataConfigActivity = DiffDataConfigActivity.this;
                        i = R$string.low;
                    }
                    arrayList2.add(diffDataConfigActivity.getString(i));
                }
                bundle.putStringArrayList("list", arrayList2);
                bundle.putInt("currentIndex", arrayList2.indexOf(DiffDataConfigActivity.this.binding.tvSendPower.getText().toString().trim()));
                bundle.putString("requestKey", "radio_power");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.lltChooseCors.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) DiffDataConfigActivity.this).mSp.getBoolean("SUPPORT_NTRIP", false)) {
                    DiffDataConfigActivity.this.showChooseCorsDialog(false);
                }
            }
        });
        this.binding.fltChoosePort.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                final ChooseCorsPortDialogFragment chooseCorsPortDialogFragment = new ChooseCorsPortDialogFragment();
                chooseCorsPortDialogFragment.show(DiffDataConfigActivity.this.getSupportFragmentManager(), "ChooseCorsPortDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DiffDataConfigActivity.this.getString(R$string.select_coordinates_system));
                bundle.putString("host", DiffDataConfigActivity.this.binding.edtHost.getText().toString());
                chooseCorsPortDialogFragment.setArguments(bundle);
                chooseCorsPortDialogFragment.setOnConfirmListener(new ChooseCorsPortDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.7.1
                    @Override // com.qianhe.yct.dialog.ChooseCorsPortDialogFragment.OnConfirmListener
                    public void onConfirm(CorsEntity.PortEntity portEntity) {
                        DiffDataConfigActivity.this.binding.edtPort.setText(String.valueOf(portEntity.port));
                        DiffDataConfigActivity.this.ntripClientConfig.ntrip_port = portEntity.port;
                        DiffDataConfigActivity.this.ntripClientConfig.coordinateSystem = portEntity.coordinateSystem;
                    }

                    @Override // com.qianhe.yct.dialog.ChooseCorsPortDialogFragment.OnConfirmListener
                    public void empty() {
                        chooseCorsPortDialogFragment.dismiss();
                        DiffDataConfigActivity.this.updateChoosePortVisibility();
                        DiffDataConfigActivity diffDataConfigActivity = DiffDataConfigActivity.this;
                        diffDataConfigActivity.showToastDialog(diffDataConfigActivity.getString(R$string.no_preset_port));
                    }
                });
            }
        });
        this.binding.edtHost.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DiffDataConfigActivity.this.updateChoosePortVisibility();
            }
        });
        this.binding.fltMountpoint.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws NumberFormatException {
                try {
                    String strTrim = DiffDataConfigActivity.this.binding.edtHost.getText().toString().trim();
                    if (!TextUtils.isEmpty(strTrim)) {
                        DiffDataConfigActivity.this.ntripClientConfig.ntrip_host = strTrim;
                        String strTrim2 = DiffDataConfigActivity.this.binding.edtPort.getText().toString().trim();
                        if (!TextUtils.isEmpty(strTrim2)) {
                            int i = Integer.parseInt(strTrim2);
                            if (i > 0) {
                                DiffDataConfigActivity diffDataConfigActivity = DiffDataConfigActivity.this;
                                diffDataConfigActivity.showLoadingDialog(diffDataConfigActivity.getString(R$string.getting_mounting_points));
                                DiffDataConfigActivity.this.ntripClientConfig.setPort(i);
                                DiffDataConfigActivity.this.ntripClientConfig.setUsername(DiffDataConfigActivity.this.binding.edtUsername.getText().toString().trim());
                                DiffDataConfigActivity.this.ntripClientConfig.setPassword(DiffDataConfigActivity.this.binding.edtPassword.getText().toString().trim());
                                new NtripClient().getMountPoints(DiffDataConfigActivity.this.ntripClientConfig);
                                return;
                            }
                            DiffDataConfigActivity diffDataConfigActivity2 = DiffDataConfigActivity.this;
                            diffDataConfigActivity2.showToastDialog(diffDataConfigActivity2.getString(R$string.port_error));
                            return;
                        }
                        DiffDataConfigActivity diffDataConfigActivity3 = DiffDataConfigActivity.this;
                        diffDataConfigActivity3.showToastDialog(diffDataConfigActivity3.getString(R$string.port_empty));
                        return;
                    }
                    DiffDataConfigActivity diffDataConfigActivity4 = DiffDataConfigActivity.this;
                    diffDataConfigActivity4.showToastDialog(diffDataConfigActivity4.getString(R$string.enter_service_provider));
                } catch (Exception e) {
                    LogToFile.e("挂载点异常:" + e);
                }
            }
        });
        this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) DiffDataConfigActivity.this).mSp.getInt("mode", ConnectModeEnum.BLE.getType());
                if (DiffDataConfigActivity.this.binding.tvDiffSource.getText().toString().trim().equals(DiffDataConfigActivity.this.getString(R$string.radio_station))) {
                    if (DiffDataConfigActivity.this.channelArray == null || DiffDataConfigActivity.this.protocolArray == null || DiffDataConfigActivity.this.powerArray == null) {
                        DiffDataConfigActivity diffDataConfigActivity = DiffDataConfigActivity.this;
                        diffDataConfigActivity.showToastDialog(diffDataConfigActivity.getString(R$string.data_anomaly));
                        return;
                    } else {
                        DiffDataConfigActivity diffDataConfigActivity2 = DiffDataConfigActivity.this;
                        diffDataConfigActivity2.showLoadingDialog(diffDataConfigActivity2.getString(R$string.please_wait));
                        DiffDataConfigActivity.this.sendRadioConfig(DeviceType.ZPY);
                        return;
                    }
                }
                try {
                    if (DiffDataConfigActivity.this.ntripClientConfig.ntripType != NtripTypeEnum.NTRIP.getType()) {
                        if (YCTApplication.getInstance().isDemo()) {
                            DiffDataConfigActivity diffDataConfigActivity3 = DiffDataConfigActivity.this;
                            diffDataConfigActivity3.showTipDialog(diffDataConfigActivity3.getString(R$string.xfixed_not_supported_in_demo_mode), DiffDataConfigActivity.this.getString(R$string.ok), null);
                            return;
                        }
                        SdkClientConfig sdkClientConfig = new SdkClientConfig();
                        sdkClientConfig.ntripType = NtripTypeEnum.SDK.getType();
                        if (DiffDataConfigActivity.this.mGGA != null && DiffDataConfigActivity.this.mGGA.quality > 0) {
                            DiffDataConfigActivity diffDataConfigActivity4 = DiffDataConfigActivity.this;
                            diffDataConfigActivity4.showLoadingDialog(diffDataConfigActivity4.getString(R$string.connecting));
                            DiffDataConfigActivity.this.mSave = true;
                            EventBus.getDefault().post(sdkClientConfig);
                            return;
                        }
                        DiffDataConfigActivity diffDataConfigActivity5 = DiffDataConfigActivity.this;
                        diffDataConfigActivity5.showTipDialog(diffDataConfigActivity5.getString(R$string.solution_invalid), DiffDataConfigActivity.this.getString(R$string.ok), null);
                        return;
                    }
                    if (DiffDataConfigActivity.this.isProviderNameMissing()) {
                        DiffDataConfigActivity diffDataConfigActivity6 = DiffDataConfigActivity.this;
                        diffDataConfigActivity6.showCorsProviderInputDialog(diffDataConfigActivity6.isAdd ? -1L : DiffDataConfigActivity.this.initCorsBean.id, false);
                        return;
                    }
                    String strTrim = DiffDataConfigActivity.this.binding.edtUsername.getText().toString().trim();
                    String strTrim2 = DiffDataConfigActivity.this.binding.edtPassword.getText().toString().trim();
                    DiffDataConfigActivity.this.ntripClientConfig.ntrip_host = DiffDataConfigActivity.this.binding.edtHost.getText().toString().trim();
                    if (!TextUtils.isEmpty(DiffDataConfigActivity.this.binding.edtPort.getText().toString().trim())) {
                        DiffDataConfigActivity.this.ntripClientConfig.ntrip_port = Integer.parseInt(DiffDataConfigActivity.this.binding.edtPort.getText().toString().trim());
                    }
                    DiffDataConfigActivity.this.ntripClientConfig.mount_point = DiffDataConfigActivity.this.binding.edtMountpoint.getText().toString().trim();
                    DiffDataConfigActivity.this.ntripClientConfig.username = DiffDataConfigActivity.this.binding.edtUsername.getText().toString().trim();
                    DiffDataConfigActivity.this.ntripClientConfig.password = DiffDataConfigActivity.this.binding.edtPassword.getText().toString().trim();
                    if (TextUtils.isEmpty(DiffDataConfigActivity.this.ntripClientConfig.ntrip_host)) {
                        DiffDataConfigActivity diffDataConfigActivity7 = DiffDataConfigActivity.this;
                        diffDataConfigActivity7.showToastDialog(diffDataConfigActivity7.getString(R$string.domain_name_empty));
                        return;
                    }
                    if (DiffDataConfigActivity.this.ntripClientConfig.ntrip_port != 0 && !TextUtils.isEmpty(DiffDataConfigActivity.this.binding.edtPort.getText().toString().trim())) {
                        if (TextUtils.isEmpty(strTrim)) {
                            DiffDataConfigActivity diffDataConfigActivity8 = DiffDataConfigActivity.this;
                            diffDataConfigActivity8.showToastDialog(diffDataConfigActivity8.getString(R$string.username_empty));
                            return;
                        }
                        if (TextUtils.isEmpty(strTrim2)) {
                            DiffDataConfigActivity diffDataConfigActivity9 = DiffDataConfigActivity.this;
                            diffDataConfigActivity9.showToastDialog(diffDataConfigActivity9.getString(R$string.password_empty));
                            return;
                        }
                        if (TextUtils.isEmpty(DiffDataConfigActivity.this.ntripClientConfig.mount_point)) {
                            DiffDataConfigActivity diffDataConfigActivity10 = DiffDataConfigActivity.this;
                            diffDataConfigActivity10.showToastDialog(diffDataConfigActivity10.getString(R$string.mount_point_empty));
                            return;
                        }
                        DiffDataConfigActivity diffDataConfigActivity11 = DiffDataConfigActivity.this;
                        diffDataConfigActivity11.saveCorsToDatabase(diffDataConfigActivity11.ntripClientConfig, true);
                        AppConfigManager.getInstance().setCors(DiffDataConfigActivity.this.ntripClientConfig);
                        if (DiffDataConfigActivity.this.mGGA != null && DiffDataConfigActivity.this.mGGA.quality > 0) {
                            DiffDataConfigActivity diffDataConfigActivity12 = DiffDataConfigActivity.this;
                            diffDataConfigActivity12.showLoadingDialog(diffDataConfigActivity12.getString(R$string.connecting), DiffDataConfigActivity.this.onCloseListener);
                            DiffDataConfigActivity.this.mSave = true;
                            EventBus.getDefault().post(DiffDataConfigActivity.this.ntripClientConfig);
                            return;
                        }
                        DiffDataConfigActivity diffDataConfigActivity13 = DiffDataConfigActivity.this;
                        diffDataConfigActivity13.showTipDialog(diffDataConfigActivity13.getString(R$string.solution_invalid), DiffDataConfigActivity.this.getString(R$string.ok), null);
                        return;
                    }
                    DiffDataConfigActivity diffDataConfigActivity14 = DiffDataConfigActivity.this;
                    diffDataConfigActivity14.showToastDialog(diffDataConfigActivity14.getString(R$string.port_empty));
                } catch (Exception e) {
                    LogToFile.e("差分数据源配置异常：" + e);
                }
            }
        });
        this.binding.edtMountpoint.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.11
            private boolean isUpdating = false;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.isUpdating) {
                    return;
                }
                String string = editable.toString();
                String strReplaceAll = string.replaceAll("[\\u4e00-\\u9fa5]", "");
                if (string.equals(strReplaceAll)) {
                    return;
                }
                this.isUpdating = true;
                int selectionStart = DiffDataConfigActivity.this.binding.edtMountpoint.getSelectionStart();
                editable.replace(0, editable.length(), strReplaceAll);
                DiffDataConfigActivity.this.binding.edtMountpoint.setSelection(Math.min(selectionStart, strReplaceAll.length()));
                this.isUpdating = false;
            }
        });
        this.binding.rltRenew.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DiffDataConfigActivity.this.startActivity(new Intent(DiffDataConfigActivity.this, (Class<?>) CorsRenewActivity.class));
            }
        });
        this.binding.rltOrderList.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DiffDataConfigActivity.this.startActivity(new Intent(DiffDataConfigActivity.this, (Class<?>) OrderRecordListActivity.class));
            }
        });
        getSupportFragmentManager().setFragmentResultListener("DIFF_SOURCE", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.14
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) throws NumberFormatException {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                String str2 = stringArrayList.get(bundle.getInt("index"));
                if (str2.equals(DiffDataConfigActivity.this.getString(R$string.custom_cors))) {
                    DiffDataConfigActivity.this.showChooseCorsDialog(true);
                    return;
                }
                DiffDataConfigActivity.this.binding.tvDiffSource.setText(str2);
                if (str2.equals(DiffDataConfigActivity.this.getString(R$string.x_fixed))) {
                    DiffDataConfigActivity.this.applyXFixedDiffSource();
                } else if (str2.equals(DiffDataConfigActivity.this.getString(R$string.radio_station))) {
                    DiffDataConfigActivity.this.applyRadioDiffSource();
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("radio_channel", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.15
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                DiffDataConfigActivity.this.binding.tvChannel.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
        getSupportFragmentManager().setFragmentResultListener(ChooseListDialogFragment.RADIO_PROTOCOL, this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.16
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                DiffDataConfigActivity.this.binding.tvProtocol.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
        getSupportFragmentManager().setFragmentResultListener("radio_power", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.17
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                DiffDataConfigActivity.this.binding.tvSendPower.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
        getSupportFragmentManager().setFragmentResultListener("appliedtobaseradio", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.18
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("appliedtobaseradio")) {
                    if (bundle.getBoolean("confirm")) {
                        DiffDataConfigActivity.this.applyRadioConfigToBase();
                    } else {
                        DiffDataConfigActivity.this.finish();
                    }
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws JSONException, IOException {
        super.onResume();
        NetworkUserLoader.getInstance().getCorsExpirationTime(getClass().getName(), this.mSp.getString("deviceSn", ""));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CorsExpireEpochEvent corsExpireEpochEvent) {
        if (corsExpireEpochEvent.state == 0) {
            this.mSp.edit().putLong("corsAccountExpireEpoch", corsExpireEpochEvent.expireEpoch * 1000).commit();
            this.binding.tvCorsAccountExpire.setText(getExpireDate(System.currentTimeMillis(), corsExpireEpochEvent.expireEpoch * 1000));
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        if (this.appConfig.details.ntrip_type == NtripTypeEnum.NTRIP.getType()) {
            this.binding.lltCorsAccountExpire.setVisibility(8);
            this.binding.rltRenew.setVisibility(8);
            this.binding.rltOrderList.setVisibility(8);
        }
        this.binding.tvCorsAccountExpire.setText(getExpireDate(System.currentTimeMillis(), this.mSp.getLong("corsAccountExpireEpoch", -2L)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int resolveDiffSourceCurrentIndex(ArrayList<String> arrayList) {
        String strTrim = this.binding.tvDiffSource.getText().toString().trim();
        int iIndexOf = arrayList.indexOf(strTrim);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        if (strTrim.equals(getString(R$string.cors))) {
            return arrayList.indexOf(getString(this.appConfig.details.ntrip_type == NtripTypeEnum.NTRIP.getType() ? R$string.custom_cors : R$string.x_fixed));
        }
        return 0;
    }

    private String resolveInitialDiffSource(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return getString(R$string.x_fixed);
        }
        if (arrayList.size() == 1) {
            return arrayList.get(0);
        }
        if ("radio".equals(this.mSp.getString("obtain_difference_type", "bluetooth")) && arrayList.contains(getString(R$string.radio_station))) {
            return getString(R$string.radio_station);
        }
        if (this.appConfig.details.ntrip_type == NtripTypeEnum.NTRIP.getType() && arrayList.contains(getString(R$string.custom_cors))) {
            return getString(R$string.custom_cors);
        }
        if (arrayList.contains(getString(R$string.x_fixed))) {
            return getString(R$string.x_fixed);
        }
        if (arrayList.contains(getString(R$string.custom_cors))) {
            return getString(R$string.custom_cors);
        }
        return arrayList.get(0);
    }

    private void applyDiffSourceByName(String str) throws NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.binding.tvDiffSource.setText(str);
        if (str.equals(getString(R$string.custom_cors))) {
            applyCustomCorsUiShell();
            applyOverseasXfixProviderIfNeeded();
        } else if (str.equals(getString(R$string.x_fixed))) {
            applyXFixedDiffSource();
        } else if (str.equals(getString(R$string.radio_station))) {
            applyRadioDiffSource();
        }
    }

    private void applyOverseasXfixProviderIfNeeded() {
        String str;
        AppConfig.Details details;
        AppConfig.Details details2;
        int i;
        if (isInChinaMainlandByStoredCoords() || !shouldSwitchToOverseasXfix()) {
            return;
        }
        int i2 = 0;
        String str2 = "XFIX";
        CorsEntity corsEntityFindPresetByName = CorsPortUtils.findPresetByName(this, false, "XFIX");
        if (corsEntityFindPresetByName == null || TextUtils.isEmpty(corsEntityFindPresetByName.host)) {
            AppConfig appConfig = this.appConfig;
            str = (appConfig == null || (details = appConfig.details) == null) ? "" : details.base_host_xfix;
        } else {
            str = corsEntityFindPresetByName.host;
        }
        if (corsEntityFindPresetByName == null || (i = corsEntityFindPresetByName.port) == 0) {
            AppConfig appConfig2 = this.appConfig;
            if (appConfig2 != null && (details2 = appConfig2.details) != null) {
                i2 = details2.base_port;
            }
        } else {
            i2 = i;
        }
        CorsEntity corsEntityFindLocalCorsByHost = findLocalCorsByHost(str);
        if (corsEntityFindLocalCorsByHost != null) {
            applyLocalCorsSelection(corsEntityFindLocalCorsByHost);
            return;
        }
        this.isAdd = true;
        if (corsEntityFindPresetByName != null && !TextUtils.isEmpty(corsEntityFindPresetByName.corsName)) {
            str2 = corsEntityFindPresetByName.corsName;
        }
        this.binding.tvCorsName.setText(str2);
        this.binding.edtHost.setText(str);
        this.binding.edtPort.setText(i2 != 0 ? String.valueOf(i2) : "");
        this.binding.edtMountpoint.setText("");
        this.binding.edtUsername.setText("");
        this.binding.edtPassword.setText("");
        if (this.ntripClientConfig == null) {
            this.ntripClientConfig = new NtripClientConfig();
        }
        this.ntripClientConfig.ntripType = NtripTypeEnum.NTRIP.getType();
        this.ntripClientConfig.setHost(str);
        this.ntripClientConfig.setPort(i2);
        this.ntripClientConfig.setMountPoint("");
        this.ntripClientConfig.setUsername("");
        this.ntripClientConfig.setPassword("");
        updateChoosePortVisibility();
    }

    private boolean shouldSwitchToOverseasXfix() {
        AppConfig.Details details;
        NtripClientConfig ntripClientConfig = this.ntripClientConfig;
        if (ntripClientConfig == null || ntripClientConfig.ntripType != NtripTypeEnum.NTRIP.getType()) {
            return true;
        }
        String str = this.ntripClientConfig.ntrip_host;
        if (TextUtils.isEmpty(str) || "rss.rtkiot.cn".equals(str)) {
            return true;
        }
        AppConfig appConfig = this.appConfig;
        if (appConfig != null && (details = appConfig.details) != null) {
            if (str.equals(details.base_host_xfix)) {
                return false;
            }
            if (str.equals(this.appConfig.details.base_host)) {
                return true;
            }
        }
        CorsEntity corsEntityFindPresetByName = CorsPortUtils.findPresetByName(this, true, "XFIX");
        return corsEntityFindPresetByName != null && str.equals(corsEntityFindPresetByName.host);
    }

    private CorsEntity findLocalCorsByHost(String str) {
        List<CorsEntity> list;
        if (!TextUtils.isEmpty(str) && (list = this.corsListDb) != null) {
            for (CorsEntity corsEntity : list) {
                if (str.equals(corsEntity.host)) {
                    return corsEntity;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyXFixedDiffSource() throws NumberFormatException {
        int i = 8;
        this.binding.lltRadioItem.setVisibility(8);
        this.binding.lltCorsConfig.setVisibility(8);
        this.binding.lltReceptionData.setVisibility(0);
        this.isAdd = false;
        this.binding.lltContent.setVisibility(8);
        this.ntripClientConfig.ntripType = NtripTypeEnum.SDK.getType();
        this.binding.tvCorsName.setText(R$string.x_fixed);
        boolean zIsInChinaMainlandByStoredCoords = isInChinaMainlandByStoredCoords();
        this.binding.lltCorsAccountExpire.setVisibility(zIsInChinaMainlandByStoredCoords ? 0 : 8);
        this.binding.rltRenew.setVisibility(zIsInChinaMainlandByStoredCoords ? 0 : 8);
        RelativeLayout relativeLayout = this.binding.rltOrderList;
        if (zIsInChinaMainlandByStoredCoords && isWeChatInstalled()) {
            i = 0;
        }
        relativeLayout.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyCustomCorsUiShell() {
        this.binding.lltRadioItem.setVisibility(8);
        this.binding.lltCorsConfig.setVisibility(0);
        this.binding.lltReceptionData.setVisibility(0);
        this.binding.lltCorsAccountExpire.setVisibility(8);
        this.binding.rltRenew.setVisibility(8);
        this.binding.rltOrderList.setVisibility(8);
        this.binding.lltContent.setVisibility(0);
        NtripClientConfig ntripClientConfig = this.ntripClientConfig;
        if (ntripClientConfig != null) {
            ntripClientConfig.ntripType = NtripTypeEnum.NTRIP.getType();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showChooseCorsDialog(final boolean z) {
        ChooseCorsHostDialogFragment chooseCorsHostDialogFragment = new ChooseCorsHostDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.choose_provider));
        bundle.putSerializable("gga", this.mGGA);
        long j = this.initCorsBean.id;
        if (j > 0) {
            bundle.putLong("currentUsedCorsId", j);
        }
        String strTrim = this.binding.tvCorsName.getText().toString().trim();
        if (!isProviderNameMissing()) {
            bundle.putString("currentUsedCorsName", strTrim);
        }
        chooseCorsHostDialogFragment.setArguments(bundle);
        chooseCorsHostDialogFragment.setOnConfirmListener(new ChooseCorsHostDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.19
            @Override // com.qianhe.yct.dialog.ChooseCorsHostDialogFragment.OnConfirmListener
            public void onConfirm(CorsEntity corsEntity) throws NumberFormatException {
                if (z) {
                    if (DiffDataConfigActivity.this.isXFixedProvider(corsEntity)) {
                        DiffDataConfigActivity.this.binding.tvDiffSource.setText(R$string.x_fixed);
                        DiffDataConfigActivity.this.applyXFixedDiffSource();
                    } else {
                        DiffDataConfigActivity.this.binding.tvDiffSource.setText(R$string.custom_cors);
                        DiffDataConfigActivity.this.applyCustomCorsUiShell();
                    }
                }
                if (corsEntity.id > 0) {
                    DiffDataConfigActivity.this.applyLocalCorsSelection(corsEntity);
                    return;
                }
                if ("闪电固定".equals(corsEntity.corsName)) {
                    corsEntity.corsName = DiffDataConfigActivity.this.getString(R$string.x_fixed);
                }
                DiffDataConfigActivity.this.binding.tvCorsName.setText(corsEntity.corsName);
                if (DiffDataConfigActivity.this.isXFixedProvider(corsEntity)) {
                    DiffDataConfigActivity.this.isAdd = false;
                    DiffDataConfigActivity.this.binding.lltContent.setVisibility(8);
                    DiffDataConfigActivity.this.ntripClientConfig.ntripType = NtripTypeEnum.SDK.getType();
                    DiffDataConfigActivity.this.binding.lltCorsAccountExpire.setVisibility(0);
                    DiffDataConfigActivity.this.binding.rltRenew.setVisibility(DiffDataConfigActivity.this.appConfig.details.ntrip_type != NtripTypeEnum.NTRIP.getType() ? 0 : 8);
                    DiffDataConfigActivity.this.binding.rltOrderList.setVisibility(DiffDataConfigActivity.this.binding.rltRenew.getVisibility() != 0 ? 8 : 0);
                    return;
                }
                DiffDataConfigActivity.this.isAdd = true;
                DiffDataConfigActivity.this.binding.lltContent.setVisibility(0);
                DiffDataConfigActivity.this.binding.lltCorsAccountExpire.setVisibility(8);
                DiffDataConfigActivity.this.binding.rltRenew.setVisibility(8);
                DiffDataConfigActivity.this.binding.rltOrderList.setVisibility(8);
                DiffDataConfigActivity.this.ntripClientConfig = new NtripClientConfig();
                DiffDataConfigActivity.this.ntripClientConfig.ntripType = NtripTypeEnum.NTRIP.getType();
                DiffDataConfigActivity.this.binding.edtHost.setText(corsEntity.host);
                DiffDataConfigActivity.this.ntripClientConfig.setHost(corsEntity.host);
                DiffDataConfigActivity.this.ntripClientConfig.setPort(corsEntity.port);
                EditText editText = DiffDataConfigActivity.this.binding.edtPort;
                int i = corsEntity.port;
                editText.setText(i != 0 ? String.valueOf(i) : "");
                DiffDataConfigActivity.this.binding.edtMountpoint.setText("");
                DiffDataConfigActivity.this.binding.edtUsername.setText("");
                DiffDataConfigActivity.this.binding.edtPassword.setText("");
                DiffDataConfigActivity.this.updateChoosePortVisibility();
            }

            @Override // com.qianhe.yct.dialog.ChooseCorsHostDialogFragment.OnConfirmListener
            public void onCustom() {
                if (z) {
                    DiffDataConfigActivity.this.binding.tvDiffSource.setText(R$string.custom_cors);
                    DiffDataConfigActivity.this.applyCustomCorsUiShell();
                }
                DiffDataConfigActivity.this.resetCustomCorsForm(null);
                DiffDataConfigActivity.this.showCorsProviderInputDialog(-1L, true);
            }
        });
        chooseCorsHostDialogFragment.show(getSupportFragmentManager(), "ChooseCorsDialogFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isXFixedProvider(CorsEntity corsEntity) {
        return corsEntity.corsName.equals(getString(R$string.x_fixed)) || corsEntity.corsName.equals("闪电固定");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCorsProviderInputDialog(long j, final boolean z) {
        DialogFragment dialogFragment = (DialogFragment) getSupportFragmentManager().findFragmentByTag("CorsProviderInputDialogFragment");
        if (dialogFragment != null) {
            dialogFragment.dismissAllowingStateLoss();
        }
        CorsProviderInputDialogFragment corsProviderInputDialogFragment = new CorsProviderInputDialogFragment();
        Bundle bundle = new Bundle();
        if (j > 0) {
            bundle.putLong("excludeCorsId", j);
        }
        corsProviderInputDialogFragment.setArguments(bundle);
        corsProviderInputDialogFragment.setOnConfirmListener(new CorsProviderInputDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.dialog.CorsProviderInputDialogFragment.OnConfirmListener
            public final void onConfirm(String str) {
                DiffDataConfigActivity.$r8$lambda$5OBne2J06Y2oS2QeYgmDA27zPQE(this.f$0, z, str);
            }
        });
        corsProviderInputDialogFragment.show(getSupportFragmentManager(), "CorsProviderInputDialogFragment");
    }

    public static /* synthetic */ void $r8$lambda$5OBne2J06Y2oS2QeYgmDA27zPQE(DiffDataConfigActivity diffDataConfigActivity, boolean z, String str) {
        if (z) {
            diffDataConfigActivity.applyCustomCorsConfig(str);
        } else {
            diffDataConfigActivity.binding.tvCorsName.setText(str);
            diffDataConfigActivity.binding.tvSave.performClick();
        }
    }

    private void applyCustomCorsConfig(String str) {
        resetCustomCorsForm(str);
        this.binding.lltContent.setVisibility(0);
        this.binding.lltCorsAccountExpire.setVisibility(8);
        this.binding.rltRenew.setVisibility(8);
        this.binding.rltOrderList.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetCustomCorsForm(String str) {
        this.isAdd = true;
        CorsEntity corsEntity = new CorsEntity();
        this.initCorsBean = corsEntity;
        NtripTypeEnum ntripTypeEnum = NtripTypeEnum.NTRIP;
        corsEntity.ntripType = ntripTypeEnum.getType();
        NtripClientConfig ntripClientConfig = new NtripClientConfig();
        this.ntripClientConfig = ntripClientConfig;
        ntripClientConfig.ntripType = ntripTypeEnum.getType();
        TextView textView = this.binding.tvCorsName;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        textView.setText(str);
        this.binding.edtHost.setText("");
        this.binding.edtPort.setText("");
        this.binding.edtMountpoint.setText("");
        this.binding.edtUsername.setText("");
        this.binding.edtPassword.setText("");
        updateChoosePortVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isProviderNameMissing() {
        String strTrim = this.binding.tvCorsName.getText().toString().trim();
        return TextUtils.isEmpty(strTrim) || strTrim.equals(getString(R$string.customize));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyLocalCorsSelection(CorsEntity corsEntity) {
        this.corsListDb = this.mDatabaseManager.queryCORS(null);
        this.isAdd = false;
        try {
            if (this.ntripClientConfig == null) {
                this.ntripClientConfig = new NtripClientConfig();
            }
            this.ntripClientConfig.ntripType = NtripTypeEnum.NTRIP.getType();
            CorsEntity corsEntity2 = new CorsEntity();
            this.initCorsBean = corsEntity2;
            corsEntity2.id = corsEntity.id;
            corsEntity2.corsName = corsEntity.corsName;
            corsEntity2.ntripType = this.appConfig.details.ntrip_type;
            corsEntity2.host = corsEntity.host;
            corsEntity2.port = corsEntity.port;
            corsEntity2.userName = corsEntity.userName;
            corsEntity2.password = corsEntity.password;
            corsEntity2.mount = corsEntity.mount;
            this.binding.lltContent.setVisibility(0);
            this.binding.lltCorsAccountExpire.setVisibility(8);
            this.binding.rltRenew.setVisibility(8);
            this.binding.rltOrderList.setVisibility(8);
            this.binding.edtHost.setText(corsEntity.host);
            this.ntripClientConfig.setHost(corsEntity.host);
            this.ntripClientConfig.setPort(corsEntity.port);
            this.ntripClientConfig.setUsername(corsEntity.userName);
            this.ntripClientConfig.setPassword(corsEntity.password);
            this.ntripClientConfig.setMountPoint(corsEntity.mount);
            this.binding.tvCorsName.setText(TextUtils.isEmpty(corsEntity.corsName) ? getString(R$string.customize) : corsEntity.corsName);
            this.binding.edtPort.setText(String.valueOf(corsEntity.port));
            this.binding.edtUsername.setText(corsEntity.userName);
            this.binding.edtPassword.setText(corsEntity.password);
            this.binding.edtMountpoint.setText(corsEntity.mount);
        } catch (Exception e) {
            LogToFile.e("CORS数据异常：" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRadioDiffSource() {
        this.binding.lltRadioItem.setVisibility(0);
        this.binding.lltCorsConfig.setVisibility(8);
        this.binding.lltReceptionData.setVisibility(8);
        this.binding.lltCorsAccountExpire.setVisibility(8);
        this.binding.rltRenew.setVisibility(8);
        this.binding.rltOrderList.setVisibility(8);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "GET,RADIO_CHANNEL"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChoosePortVisibility() {
        this.binding.fltChoosePort.setVisibility(CorsPortUtils.hasPresetPort(this, this.binding.edtHost.getText().toString().trim()) ? 0 : 4);
    }

    private boolean isInChinaMainlandByStoredCoords() throws NumberFormatException {
        String string = this.mSp.getString("current_coords", "");
        if (!TextUtils.isEmpty(string)) {
            return LocationUtils.isChinaMainland(Double.parseDouble(string.split(",")[1]), Double.parseDouble(string.split(",")[0]));
        }
        return LanguagePrefs.isZH_CN(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.diff_config);
        return this.binding.topBar.getRoot();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final MountPointsEvent mountPointsEvent) {
        cancelLoadingDialog();
        ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
        chooseListDialogFragment.show(getSupportFragmentManager(), "ChooseListDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.mount_point_empty));
        bundle.putStringArrayList("list", mountPointsEvent.mountPoints);
        chooseListDialogFragment.setArguments(bundle);
        chooseListDialogFragment.setOnConfirmListener(new ChooseListDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.20
            @Override // com.qianhe.yct.dialog.ChooseListDialogFragment.OnConfirmListener
            public void onConfirm(int i) {
                if (i <= -1 || i >= mountPointsEvent.mountPoints.size()) {
                    return;
                }
                String str = mountPointsEvent.mountPoints.get(i);
                DiffDataConfigActivity.this.binding.edtMountpoint.setText(str);
                DiffDataConfigActivity.this.ntripClientConfig.setMountPoint(str);
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final AuthResult authResult) throws JSONException {
        String str;
        if (this.mSave) {
            int i = authResult.result;
            if (i == 3) {
                startTimer();
                showLoadingDialog(getString(R$string.connecting), this.onCloseListener);
                return;
            }
            if (i == 4) {
                stopTimer();
                showLoadingDialog(getString(R$string.authenticating), this.onCloseListener);
                return;
            }
            if (i == 1) {
                saveCorsToDatabase(authResult.diffConfig, true);
                AppConfigManager.getInstance().setCors(authResult.diffConfig);
                this.mSave = false;
                this.binding.tvSave.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.21
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DiffDataConfigActivity.this.isDestroyed()) {
                            return;
                        }
                        DiffDataConfigActivity.this.cancelLoadingDialog();
                        if (authResult.isInit) {
                            return;
                        }
                        Toast.makeText(DiffDataConfigActivity.this, R$string.auth_successful, 1).show();
                        ((BaseActivity) DiffDataConfigActivity.this).mSp.edit().putString("obtain_difference_type", "bluetooth").apply();
                        DiffDataConfigActivity.this.finish();
                    }
                }, 100L);
                return;
            }
            if (i == 2) {
                showLoadingDialog(getString(R$string.authenticating), this.onCloseListener);
                return;
            }
            if (i == 0) {
                this.mSave = false;
                this.binding.tvLength.setText("0 bytes");
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
            }
        }
    }

    private CorsEntity findCorsMatchingAppConfig(List<CorsEntity> list) {
        AppConfig appConfig;
        if (list != null && !list.isEmpty() && (appConfig = this.appConfig) != null && appConfig.details != null) {
            for (CorsEntity corsEntity : list) {
                if (TextUtils.equals(corsEntity.host, this.appConfig.details.ntrip_host)) {
                    int i = corsEntity.port;
                    AppConfig.Details details = this.appConfig.details;
                    if (i == details.ntrip_port && TextUtils.equals(corsEntity.userName, details.ntrip_username) && TextUtils.equals(corsEntity.mount, this.appConfig.details.ntrip_mount_point)) {
                        return corsEntity;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCorsToDatabase(BaseConfig baseConfig, boolean z) {
        long jInsertCORS;
        int i = baseConfig.ntripType;
        NtripTypeEnum ntripTypeEnum = NtripTypeEnum.NTRIP;
        if (i == ntripTypeEnum.getType() && !isProviderNameMissing()) {
            CorsEntity corsEntity = new CorsEntity();
            corsEntity.corsName = this.binding.tvCorsName.getText().toString().trim();
            corsEntity.ntripType = ntripTypeEnum.getType();
            corsEntity.host = baseConfig.ntrip_host;
            corsEntity.port = baseConfig.ntrip_port;
            corsEntity.userName = baseConfig.username;
            corsEntity.password = baseConfig.password;
            corsEntity.mount = baseConfig.mount_point;
            List<CorsEntity> listQueryCORSByName = this.mDatabaseManager.queryCORSByName(corsEntity.corsName);
            if (listQueryCORSByName.isEmpty()) {
                jInsertCORS = this.mDatabaseManager.insertCORS(corsEntity, z);
                if (jInsertCORS > 0) {
                    LogToFile.i("cors数据插入成功");
                }
            } else {
                CorsEntity corsEntity2 = listQueryCORSByName.get(0);
                corsEntity.id = corsEntity2.id;
                if ((!corsEntity2.equals(corsEntity) || z) && this.mDatabaseManager.updateCORS(corsEntity, z) > 0) {
                    LogToFile.i("cors数据更新成功");
                }
                jInsertCORS = corsEntity2.id;
            }
            if (jInsertCORS > 0) {
                this.corsListDb = this.mDatabaseManager.queryCORS(null);
                if (z) {
                    this.isAdd = false;
                    CorsEntity corsEntity3 = this.initCorsBean;
                    corsEntity3.id = jInsertCORS;
                    corsEntity3.corsName = corsEntity.corsName;
                    corsEntity3.ntripType = corsEntity.ntripType;
                    corsEntity3.host = corsEntity.host;
                    corsEntity3.port = corsEntity.port;
                    corsEntity3.userName = corsEntity.userName;
                    corsEntity3.password = corsEntity.password;
                    corsEntity3.mount = corsEntity.mount;
                    return;
                }
                return;
            }
            Toast.makeText(this, R$string.save_failed, 0).show();
            LogToFile.i("cors数据保存失败");
        }
    }

    private void startTimer() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.executor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.scheduledFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.22
            @Override // java.lang.Runnable
            public void run() {
                EventBus.getDefault().post("diffClientDisconnect");
                DiffDataConfigActivity.this.mSave = false;
                DiffDataConfigActivity.this.cancelLoadingDialog();
                DiffDataConfigActivity diffDataConfigActivity = DiffDataConfigActivity.this;
                diffDataConfigActivity.showTipDialog(diffDataConfigActivity.getString(R$string.cors_connect_failed), DiffDataConfigActivity.this.getString(R$string.ok), null);
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

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(OrderBean orderBean) {
        if (orderBean.array != null) {
            long length = this.totalBytes + r5.length;
            this.totalBytes = length;
            this.binding.tvLength.setText(formatLength(length));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioChannelEvent getRadioChannelEvent) {
        if (getRadioChannelEvent.deviceType != DeviceType.ZPY) {
            return;
        }
        this.channelArray = getRadioChannelEvent.channelArray;
        requestRadioProtocolLists();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioProtocolListEvent getRadioProtocolListEvent) {
        DeviceType deviceType = getRadioProtocolListEvent.deviceType;
        DeviceType deviceType2 = DeviceType.ZPY;
        if (deviceType == deviceType2) {
            this.protocolArray = getRadioProtocolListEvent.protocolArray;
            EventBus.getDefault().post(new OrderBean(deviceType2, "GET,RADIO_POWER_LIST,"));
        } else if (deviceType == DeviceType.BASE) {
            this.peerProtocolArray = getRadioProtocolListEvent.protocolArray;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioPowerListEvent getRadioPowerListEvent) {
        DeviceType deviceType = getRadioPowerListEvent.deviceType;
        DeviceType deviceType2 = DeviceType.ZPY;
        if (deviceType != deviceType2) {
            return;
        }
        this.powerArray = getRadioPowerListEvent.powerArray;
        EventBus.getDefault().post(new OrderBean(deviceType2, "GET,RADIO"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetRadioEvent getRadioEvent) {
        if (getRadioEvent.deviceType != DeviceType.ZPY) {
            return;
        }
        cancelLoadingDialog();
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
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "GET,RADIO_PROTOCOL_LIST"));
        if (isBothRadioDevicesConnected()) {
            EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "GET,RADIO_PROTOCOL_LIST"));
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
    public void onEventMessage(final SetBaseRadioResponse setBaseRadioResponse) {
        DeviceType deviceType = setBaseRadioResponse.deviceType;
        if (deviceType == DeviceType.ZPY) {
            cancelLoadingDialog();
            if (setBaseRadioResponse.line.contains("OK")) {
                markRadioDiffSourceSaved();
                if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE)) {
                    this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.23
                        @Override // java.lang.Runnable
                        public void run() {
                            DiffDataConfigActivity diffDataConfigActivity = DiffDataConfigActivity.this;
                            diffDataConfigActivity.showTipDialog(diffDataConfigActivity.getString(R$string.is_applied_to_base), DiffDataConfigActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.23.1
                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                }

                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                    DiffDataConfigActivity.this.finish();
                                }
                            }, "appliedtobaseradio");
                        }
                    });
                    return;
                } else {
                    Toast.makeText(this, R$string.config_success, 1).show();
                    finish();
                    return;
                }
            }
            showToastDialog(getString(R$string.config_fail));
            return;
        }
        if (deviceType == DeviceType.BASE && this.applyingToBase) {
            this.applyingToBase = false;
            cancelLoadingDialog();
            this.binding.tvSave.post(new Runnable() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.24
                @Override // java.lang.Runnable
                public void run() {
                    DiffDataConfigActivity diffDataConfigActivity;
                    int i;
                    DiffDataConfigActivity diffDataConfigActivity2 = DiffDataConfigActivity.this;
                    if (setBaseRadioResponse.line.contains("OK")) {
                        diffDataConfigActivity = DiffDataConfigActivity.this;
                        i = R$string.config_success;
                    } else {
                        diffDataConfigActivity = DiffDataConfigActivity.this;
                        i = R$string.config_fail;
                    }
                    diffDataConfigActivity2.showTipDialog(diffDataConfigActivity.getString(i), DiffDataConfigActivity.this.getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.24.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            DiffDataConfigActivity.this.finish();
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                            DiffDataConfigActivity.this.finish();
                        }
                    });
                }
            });
        }
    }

    private void markRadioDiffSourceSaved() {
        EventBus.getDefault().post("diffClientDisconnect");
        this.mSp.edit().putString("obtain_difference_type", "radio").putInt(Constant.NTRIPTYPE, NtripTypeEnum.NONE.getType()).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRadioConfigToBase() {
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.BASE;
        if (!multiBluetoothManager.isDeviceConnected(deviceType)) {
            showTipDialog(getString(R$string.disconnected_device), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.25
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    DiffDataConfigActivity.this.finish();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    DiffDataConfigActivity.this.finish();
                }
            });
            return;
        }
        this.applyingToBase = true;
        showLoadingDialog(getString(R$string.please_wait));
        sendRadioConfig(deviceType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRadioConfig(final DeviceType deviceType) {
        String protocolNumber;
        int channelIndex = RadioChannelUtils.getChannelIndex(this, this.binding.tvChannel.getText().toString().trim(), this.channelArray);
        String[] strArr = this.protocolArray;
        if (strArr != null) {
            for (String str : strArr) {
                if (str.contains(this.binding.tvProtocol.getText().toString().trim())) {
                    protocolNumber = RadioProtocolUtils.getProtocolNumber(str);
                    break;
                }
            }
            protocolNumber = "";
        } else {
            protocolNumber = "";
        }
        final String str2 = "SET,RADIO," + (channelIndex + 1) + "," + protocolNumber + "," + (this.binding.tvSendPower.getText().toString().trim().equals(getString(R$string.high)) ? RadioPowerEnum.HIGH : this.binding.tvSendPower.getText().toString().trim().equals(getString(R$string.middle)) ? RadioPowerEnum.MIDDLE : RadioPowerEnum.LOW).name();
        EventBus.getDefault().post(new OrderBean(deviceType, "SET,DATALINK,RADIO"));
        this.binding.tvSave.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.DiffDataConfigActivity.26
            @Override // java.lang.Runnable
            public void run() {
                EventBus.getDefault().post(new OrderBean(deviceType, str2));
            }
        }, 500L);
    }

    public String formatLength(long j) {
        if (j >= 1048576) {
            return String.format(Locale.ROOT, "%.3f MB", Double.valueOf(j / 1048576.0d));
        }
        if (j >= ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_XLS) {
            return String.format(Locale.ROOT, "%.3f KB", Double.valueOf(j / 1024.0d));
        }
        return j + " bytes";
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (this.mGGA == null && gGAEntity != null && gGAEntity.deviceType == DeviceType.ZPY) {
            this.mGGA = gGAEntity;
            double d = gGAEntity.latitude;
            if (d != 0.0d) {
                double d2 = gGAEntity.longitude;
                if (d2 != 0.0d) {
                    boolean zIsChinaMainland = LocationUtils.isChinaMainland(d, d2);
                    String string = this.mSp.getString("obtain_difference_type", "bluetooth");
                    int i = 8;
                    if (zIsChinaMainland && !"radio".equals(string)) {
                        this.binding.rltRenew.setVisibility(this.appConfig.details.ntrip_type != NtripTypeEnum.NTRIP.getType() ? 0 : 8);
                        RelativeLayout relativeLayout = this.binding.rltOrderList;
                        if (isWeChatInstalled() && this.binding.rltRenew.getVisibility() == 0) {
                            i = 0;
                        }
                        relativeLayout.setVisibility(i);
                        return;
                    }
                    this.binding.rltRenew.setVisibility(8);
                    this.binding.rltOrderList.setVisibility(8);
                }
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        stopTimer();
    }
}
