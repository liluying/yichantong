package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.SensorUUidEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GetSensorParamEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetSensorParamEvent;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.databinding.DialogChooseSensorBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.manage.AppConfigManager;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseSensorDialogFragment extends BaseDialogFragment {
    private DialogChooseSensorBinding binding;
    private ScheduledFuture<?> future;
    private long messageTimeMillis;
    private ScheduledExecutorService scheduledExecutorService;

    public static void showSafely(FragmentManager fragmentManager, Bundle bundle) {
        if (fragmentManager == null || fragmentManager.isDestroyed()) {
            return;
        }
        try {
            if (!fragmentManager.isStateSaved() && fragmentManager.findFragmentByTag("ChooseSensorDialogFragment") == null) {
                ChooseSensorDialogFragment chooseSensorDialogFragment = new ChooseSensorDialogFragment();
                if (bundle != null) {
                    chooseSensorDialogFragment.setArguments(bundle);
                }
                chooseSensorDialogFragment.show(fragmentManager, "ChooseSensorDialogFragment");
            }
        } catch (Exception unused) {
        }
    }

    public static ChooseSensorDialogFragment find(FragmentManager fragmentManager) {
        if (fragmentManager == null) {
            return null;
        }
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("ChooseSensorDialogFragment");
        if (fragmentFindFragmentByTag instanceof ChooseSensorDialogFragment) {
            return (ChooseSensorDialogFragment) fragmentFindFragmentByTag;
        }
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        if (isAdded() || isStateSaved()) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "ChooseSensorDialogFragment";
        }
        if (fragmentManager.findFragmentByTag(str) != null) {
            return;
        }
        try {
            super.show(fragmentManager, str);
        } catch (IllegalStateException e) {
            LogToFile.e("ChooseSensorDialogFragment.show failed: " + e.getMessage());
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogChooseSensorBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvTitle.setText(arguments.getString(Proj4Keyword.title));
            String string = arguments.getString("nextStr");
            TextView textView = this.binding.tvNext;
            if (TextUtils.isEmpty(string)) {
                string = getString(R$string.next);
            }
            textView.setText(string);
            this.requestKey = arguments.getString("requestKey", "");
        }
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseSensorDialogFragment.this.dismiss();
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("manual_cancel", true);
                ChooseSensorDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseSensorDialogFragment.this).requestKey, bundle2);
            }
        });
        this.binding.tvScan.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                if (ChooseSensorDialogFragment.this.isAdded() && view.isEnabled()) {
                    view.setEnabled(false);
                    view.postDelayed(new Runnable() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ChooseSensorDialogFragment.this.isAdded()) {
                                view.setEnabled(true);
                            }
                        }
                    }, 800L);
                    ChooseSensorDialogFragment.this.getParentFragmentManager().clearFragmentResult(((BaseDialogFragment) ChooseSensorDialogFragment.this).requestKey);
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean("sensor_scan", true);
                    ChooseSensorDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseSensorDialogFragment.this).requestKey, bundle2);
                }
            }
        });
        this.binding.tvNext.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseSensorDialogFragment.this.binding.tvNext.getText().toString().equals(ChooseSensorDialogFragment.this.getString(R$string.next))) {
                    ChooseSensorDialogFragment.this.dismiss();
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean("confirm", true);
                    ChooseSensorDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseSensorDialogFragment.this).requestKey, bundle2);
                    return;
                }
                if (ChooseSensorDialogFragment.this.binding.tvNext.getText().toString().equals(ChooseSensorDialogFragment.this.getString(R$string.disconnect1))) {
                    ChooseSensorDialogFragment.this.disconnectSensor();
                }
            }
        });
        this.binding.tvName.setVisibility(8);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "SENSOR,,GET_PARAM"));
        this.binding.tvStatus.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseSensorDialogFragment.this.disconnectSensor();
            }
        });
        if (this.mSp.getInt("mode", ConnectModeEnum.BLE.getType()) == ConnectModeEnum.DEMO.getType()) {
            this.binding.tvNext.setEnabled(true);
        }
        unLog();
        return alertDialogCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectSensor() {
        if (this.binding.tvStatus.getText().toString().equals(getString(R$string.not_connected))) {
            return;
        }
        if (this.messageTimeMillis == 0 || System.currentTimeMillis() - this.messageTimeMillis < 1200) {
            EventBus eventBus = EventBus.getDefault();
            DeviceType deviceType = DeviceType.ZPY;
            eventBus.post(new OrderBean(deviceType, "UNLOG,EXTSENSOR-1"));
            YCTApplication.getInstance().setSensorInfo(null);
            EventBus.getDefault().post(new OrderBean(deviceType, "SENSOR,,SET_PARAM,"));
            this.binding.tvName.setText("");
            this.binding.tvName.setVisibility(8);
            this.binding.tvStatus.setText(R$string.not_connected);
            this.binding.tvNext.setEnabled(false);
            showToastDialog(getString(R$string.disconnected));
            ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
            ScheduledFuture<?> scheduledFuture = this.future;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
    }

    private void startTimer() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.scheduledExecutorService = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.future = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.5
            private long countTime = 0;

            @Override // java.lang.Runnable
            public void run() {
                if (this.countTime % 3 == 0) {
                    ChooseSensorDialogFragment.this.binding.tvStatus.post(new Runnable() { // from class: com.qianhe.yct.dialog.ChooseSensorDialogFragment.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (System.currentTimeMillis() - ChooseSensorDialogFragment.this.messageTimeMillis < 2800 || !ChooseSensorDialogFragment.this.binding.tvNext.isEnabled()) {
                                return;
                            }
                            ChooseSensorDialogFragment.this.binding.tvName.setVisibility(8);
                            ChooseSensorDialogFragment.this.binding.tvStatus.setText(R$string.not_connected);
                            ChooseSensorDialogFragment.this.binding.tvNext.setEnabled(false);
                        }
                    });
                }
                this.countTime++;
            }
        }, 0L, 1000L, TimeUnit.MILLISECONDS);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetSensorParamEvent getSensorParamEvent) {
        String strHexToUtf8 = hexToUtf8(getSensorParamEvent.param);
        if (!strHexToUtf8.isEmpty()) {
            String[] strArrSplit = strHexToUtf8.substring(0, strHexToUtf8.length() - 1).split(",");
            if (strArrSplit.length > 1) {
                this.binding.tvName.setVisibility(0);
                this.binding.tvName.setText(strArrSplit[3]);
                this.binding.tvStatus.setText(R$string.connecting);
                EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,EXTSENSOR-1,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.extsensor_1));
                return;
            }
            this.binding.tvStatus.setText("");
            return;
        }
        this.binding.tvStatus.setText(R$string.not_connected);
    }

    public void setChooseDevice(MyBluetoothDevice myBluetoothDevice) {
        int type = SensorUUidEnum.getType(myBluetoothDevice.uuid);
        if (type >= 2) {
            DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(requireContext()).queryDeviceInfo(YCTApplication.getInstance().getCurrentDevice().bluetoothDevice.getName());
            if (deviceInfoQueryDeviceInfo != null && !TextUtils.isEmpty(deviceInfoQueryDeviceInfo.fmwVersion)) {
                String[] strArrSplit = deviceInfoQueryDeviceInfo.fmwVersion.split("\\.");
                if (strArrSplit.length > 4) {
                    String str = strArrSplit[4];
                    if (deviceInfoQueryDeviceInfo.fmwVersion.contains("KE76") && !TextUtils.isEmpty(str) && Long.parseLong(str) < 111) {
                        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.upgrade_host_firmware_v111_required), getString(R$string.ok), null);
                        return;
                    }
                }
            }
        }
        unLog();
        this.binding.tvName.setVisibility(0);
        this.binding.tvName.setText(myBluetoothDevice.bluetoothDevice.getName());
        this.binding.tvStatus.setText(R$string.connecting);
        if (type > 0) {
            String str2 = "1," + type + "," + myBluetoothDevice.bluetoothDevice.getAddress() + "," + myBluetoothDevice.bluetoothDevice.getName();
            String strUtf8ToHex = utf8ToHex(str2 + ";");
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "SENSOR,,SET_PARAM," + strUtf8ToHex));
            LogToFile.i("配置传感器参数：" + str2);
            return;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.sensor_type_unmatched), getString(R$string.ok), null);
    }

    private void reLog() {
        if (!YCTApplication.getInstance().isDemo()) {
            EventBus.getDefault().post("startWorkTimer");
        }
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new OrderBean(deviceType, "LOG,INS.NAVI,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.ins_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,GGA,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.gga_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,BESTPOS,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.bestpos_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,GST,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.gst_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,BASEINFO,ONTIME,10"));
    }

    private void unLog() {
        if (!YCTApplication.getInstance().isDemo()) {
            EventBus.getDefault().post("stopWorkTimer");
        }
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new OrderBean(deviceType, "UNLOG,INS.NAVI"));
        EventBus.getDefault().post(new OrderBean(deviceType, "UNLOG,GGA"));
        EventBus.getDefault().post(new OrderBean(deviceType, "UNLOG,BESTPOS"));
        EventBus.getDefault().post(new OrderBean(deviceType, "UNLOG,GST"));
        EventBus.getDefault().post(new OrderBean(deviceType, "UNLOG,BASEINFO"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetSensorParamEvent setSensorParamEvent) {
        if (setSensorParamEvent.line.contains("OK")) {
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,EXTSENSOR-1,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.extsensor_1));
            return;
        }
        showTipDialog("配置失败，请重新选择", getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SensorInfoEvent sensorInfoEvent) {
        this.messageTimeMillis = System.currentTimeMillis();
        this.binding.tvStatus.setText(R$string.connected);
        if (this.binding.tvNext.isEnabled()) {
            return;
        }
        EventBus.getDefault().post("sensor_connected");
        startTimer();
        this.binding.tvNext.setEnabled(true);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,EXTSENSOR-1,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.extsensor_1));
        reLog();
        if (this.binding.tvNext.getVisibility() == 8) {
            dismiss();
        }
    }

    private String hexToUtf8(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }

    private String utf8ToHex(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        ScheduledFuture<?> scheduledFuture = this.future;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,EXTSENSOR-1,ONTIME," + AppConfigManager.getInstance().getAppConfig().details.extsensor_1));
        reLog();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.8f : 0.9f)), -2);
        setWindowsCallback(window);
    }
}
