package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.BaseTooFarEvent;
import com.qianhe.rtkclientlib.event.GetBaseStationResponse;
import com.qianhe.rtkclientlib.event.SetBaseStationResponse;
import com.qianhe.rtkclientlib.event.SetBaseWorkModeResponse;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.DialogFixedCoordinateStartupBinding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.manage.AppConfigManager;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class FixedCoordinateStartupDialog extends BaseDialogFragment {
    private AppConfig appConfig;
    private boolean baseDisconnected;
    private long baseStartCount;
    private DialogFixedCoordinateStartupBinding binding;
    private boolean checkTooFar;
    private BaseProEntity entity;
    private GPDOPEntity gpdop;
    private GetBaseStationResponse initBaseInfo;
    private OnCloseListener listener;
    private GGAEntity mGGABase;
    private GetBaseStationResponse newInfo;
    private boolean resetBase;
    private boolean setBaseOk;
    private boolean setMode;
    private boolean success;
    private GetBaseStationResponse baseInfo = new GetBaseStationResponse();
    private final List<double[]> list = new ArrayList();
    private String lon = "0";
    private String lat = "0";
    private String elev = "0";

    public interface OnCloseListener {
        void onClose(int i);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogFixedCoordinateStartupBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        EventBus.getDefault().register(this);
        this.appConfig = AppConfigManager.getInstance().getAppConfig();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("tip");
            this.entity = (BaseProEntity) arguments.getSerializable("baseProEntity");
            this.newInfo = (GetBaseStationResponse) arguments.getSerializable("newInfo");
            TextView textView = this.binding.tvTip;
            if (TextUtils.isEmpty(string)) {
                string = getString(R$string.please_wait);
            }
            textView.setText(string);
            if (this.entity != null) {
                this.binding.tvPdop.setVisibility(8);
                this.binding.tvCount.setVisibility(8);
                this.binding.tvTip.setText(R$string.please_wait);
            }
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.FixedCoordinateStartupDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FixedCoordinateStartupDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FixedCoordinateStartupDialog.this.dismiss();
            }
        });
        GetBaseStationResponse getBaseStationResponse = this.newInfo;
        if (getBaseStationResponse != null && !TextUtils.isEmpty(getBaseStationResponse.antennaOrder)) {
            EventBus.getDefault().post(new OrderBean(DeviceType.BASE, this.newInfo.antennaOrder));
        } else {
            EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,ANTENNA_HEIGHT,PHASE,0"));
        }
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.BASE;
        eventBus.post(new OrderBean(deviceType, "GET,BASE"));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,GGA,ONTIME,1"));
        return alertDialogCreate;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetBaseStationResponse getBaseStationResponse) {
        DeviceType deviceType = getBaseStationResponse.deviceType;
        DeviceType deviceType2 = DeviceType.BASE;
        if (deviceType == deviceType2) {
            this.baseInfo = getBaseStationResponse;
            if (this.initBaseInfo == null) {
                this.initBaseInfo = getBaseStationResponse;
            }
            this.setMode = true;
            if (this.entity != null) {
                EventBus.getDefault().post(new OrderBean(deviceType2, "SET,MODE,BASE"));
            } else {
                EventBus.getDefault().post(new OrderBean(deviceType2, "SET,MODE,ROVER"));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        MyBluetoothDevice myBluetoothDevice;
        if (bluetoothConnectStateEvent == null || (myBluetoothDevice = bluetoothConnectStateEvent.myDevice) == null || myBluetoothDevice.deviceType != DeviceType.BASE) {
            return;
        }
        if (myBluetoothDevice.state == BluetoothStateEnum.DISCONNECT.getState() || bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.SOCKET_CLOSE.getState()) {
            showBaseDisconnectedTip();
        }
    }

    private void showBaseDisconnectedTip() {
        if (this.baseDisconnected || !isAdded()) {
            return;
        }
        this.baseDisconnected = true;
        this.setBaseOk = false;
        showTipDialog(getString(R$string.base_disconnected_please_reconnect), getString(R$string.ok), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.dialog.FixedCoordinateStartupDialog.3
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                FixedCoordinateStartupDialog.this.dismiss();
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                FixedCoordinateStartupDialog.this.dismiss();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseTooFarEvent baseTooFarEvent) {
        if (this.checkTooFar) {
            return;
        }
        this.checkTooFar = true;
        showTipDialog(getString(R$string.base_too_far), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.dialog.FixedCoordinateStartupDialog.4
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                FixedCoordinateStartupDialog.this.resetBase = true;
                if (FixedCoordinateStartupDialog.this.initBaseInfo != null) {
                    EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,BASE," + FixedCoordinateStartupDialog.this.initBaseInfo.id + "," + FixedCoordinateStartupDialog.this.initBaseInfo.cutoffAngle + "," + FixedCoordinateStartupDialog.this.initBaseInfo.PDOP + "," + FixedCoordinateStartupDialog.this.initBaseInfo.lon + "|" + FixedCoordinateStartupDialog.this.initBaseInfo.lat + "|" + FixedCoordinateStartupDialog.this.initBaseInfo.elev + ",ENCA,REPEAT"));
                }
                FixedCoordinateStartupDialog.this.dismiss();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetBaseWorkModeResponse setBaseWorkModeResponse) {
        String str;
        if (this.setMode) {
            this.setMode = false;
            if (setBaseWorkModeResponse.line.contains("OK")) {
                if (setBaseWorkModeResponse.line.contains("ROVER")) {
                    this.binding.tvTip.setText(R$string.getting_coordinates);
                    EventBus eventBus = EventBus.getDefault();
                    DeviceType deviceType = DeviceType.BASE;
                    eventBus.post(new OrderBean(deviceType, "LOG,DOP,ONTIME,1"));
                    EventBus.getDefault().post(new OrderBean(deviceType, "LOG,GGA,ONTIME," + this.appConfig.details.gga_interval));
                    EventBus.getDefault().post(new OrderBean(deviceType, "LOG,BESTPOS,ONTIME," + this.appConfig.details.bestpos_interval));
                    return;
                }
                if (setBaseWorkModeResponse.line.contains("BASE")) {
                    GetBaseStationResponse getBaseStationResponse = this.newInfo;
                    if (getBaseStationResponse != null) {
                        this.baseInfo = getBaseStationResponse;
                    }
                    if (this.entity != null) {
                        str = "SET,BASE," + this.baseInfo.id + "," + this.baseInfo.cutoffAngle + "," + this.baseInfo.PDOP + "," + this.entity.baseStationLon + "|" + this.entity.baseStationLat + "|" + this.entity.baseStationElev + ",ENCA,REPEAT";
                    } else {
                        str = "SET,BASE," + this.baseInfo.id + "," + this.baseInfo.cutoffAngle + "," + this.baseInfo.PDOP + "," + this.lon + "|" + this.lat + "|" + this.elev + ",ENCA,REPEAT";
                    }
                    EventBus.getDefault().post(new OrderBean(DeviceType.BASE, str));
                    return;
                }
                return;
            }
            showTipDialog(getString(R$string.config_fail), getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GPDOPEntity gPDOPEntity) {
        if (gPDOPEntity.deviceType == DeviceType.BASE) {
            this.gpdop = gPDOPEntity;
            this.binding.tvPdop.setText(String.format("PDOP: %s", Float.valueOf(gPDOPEntity.pdop)));
            this.binding.tvPdop.setTextColor(ContextCompat.getColor(requireContext(), gPDOPEntity.pdop <= this.appConfig.details.base_pdop_limit ? R$color.text_black : R$color.red_light));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
        if (gGAEntity.deviceType == DeviceType.BASE) {
            this.mGGABase = gGAEntity;
            updateSolutionStatus(gGAEntity.quality);
            if (!this.setBaseOk || this.resetBase) {
                return;
            }
            if (gGAEntity.quality == 7) {
                this.baseStartCount++;
            }
            if (this.baseStartCount >= 3) {
                this.setBaseOk = false;
                showTipDialog(getString(R$string.config_success), getString(R$string.ok), "", null);
                this.success = true;
                if (this.listener != null && isAdded()) {
                    this.listener.onClose(1 ^ (this.success ? 1 : 0));
                }
                dismiss();
            }
        }
    }

    private void updateSolutionStatus(int i) {
        String string;
        if (this.binding == null || !isAdded()) {
            return;
        }
        switch (i) {
            case 0:
            case 3:
                string = getString(R$string.invalid_solution);
                break;
            case 1:
                string = getString(R$string.singlepoint_solution);
                break;
            case 2:
                string = getString(R$string.diff_solution);
                break;
            case 4:
                string = getString(R$string.fixed_solution);
                break;
            case 5:
                string = getString(R$string.float_solution);
                break;
            case 6:
                string = getString(R$string.calcul_solution);
                break;
            case 7:
                string = getString(R$string.base_fixed);
                break;
            case 8:
                string = getString(R$string.UWL);
                break;
            case 9:
                string = getString(R$string.sbas_solution);
                break;
            default:
                string = getString(R$string.unknown_solution) + i;
                break;
        }
        this.binding.tvSolutionStatus.setText(String.format("%s: %s", getString(R$string.solution_state), string));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BestPosEntity bestPosEntity) {
        GGAEntity gGAEntity;
        int i;
        GPDOPEntity gPDOPEntity;
        if (bestPosEntity.deviceType != DeviceType.BASE || (gGAEntity = this.mGGABase) == null || (i = gGAEntity.quality) <= 0 || i >= 7 || (gPDOPEntity = this.gpdop) == null || gPDOPEntity.pdop > this.appConfig.details.base_pdop_limit || this.list.size() >= 5) {
            return;
        }
        this.list.add(new double[]{bestPosEntity.lon, bestPosEntity.lat, bestPosEntity.elve});
        this.binding.tvCount.setText(String.format("%s/5", Integer.valueOf(this.list.size())));
        if (this.list.size() == 5) {
            this.mGGABase = null;
            this.binding.tvTip.setText(R$string.configuring_startup_coordinates);
            double d = 0.0d;
            double d2 = 0.0d;
            double d3 = 0.0d;
            for (double[] dArr : this.list) {
                d += dArr[0];
                d2 += dArr[1];
                d3 += dArr[2];
            }
            this.lon = ((BaseActivity) requireActivity()).formatCoords(String.valueOf(d / this.list.size()), 8);
            this.lat = ((BaseActivity) requireActivity()).formatCoords(String.valueOf(d2 / this.list.size()), 8);
            this.elev = ((BaseActivity) requireActivity()).formatCoords(String.valueOf(d3 / this.list.size()), 3);
            this.setMode = true;
            EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,MODE,BASE"));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetBaseStationResponse setBaseStationResponse) {
        if (setBaseStationResponse.result.contains("OK")) {
            this.setBaseOk = true;
            EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "LOG,GGA,ONTIME,1"));
            this.binding.tvTip.setText(R$string.waite_base_station_star);
            this.binding.tvPdop.setVisibility(8);
            this.binding.tvCount.setVisibility(8);
            this.binding.pregressbar.setVisibility(0);
            return;
        }
        showTipDialog(getString(R$string.config_fail), getString(R$string.ok), "", null);
        dismiss();
    }

    public void showTipDialog(String str, String str2, String str3, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        TipsDialogFragment tipsDialogFragment = new TipsDialogFragment();
        tipsDialogFragment.show(requireActivity().getSupportFragmentManager(), "TipsDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        bundle.putString("btnStr", str2);
        bundle.putString("cancelStr", str3);
        tipsDialogFragment.setArguments(bundle);
        tipsDialogFragment.setOnConfirmListener(onConfirmListener);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.8f)), -2);
                window.setDimAmount(0.3f);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.FixedCoordinateStartupDialog.6
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (FixedCoordinateStartupDialog.this.getFragmentManager() != null) {
                        FixedCoordinateStartupDialog.this.getFragmentManager().beginTransaction().remove(FixedCoordinateStartupDialog.this).commitAllowingStateLoss();
                    }
                    if (FixedCoordinateStartupDialog.this.listener == null || !FixedCoordinateStartupDialog.this.isAdded()) {
                        return;
                    }
                    FixedCoordinateStartupDialog.this.listener.onClose(!FixedCoordinateStartupDialog.this.success ? 1 : 0);
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (getFragmentManager() != null) {
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
        if (this.listener == null || !isAdded()) {
            return;
        }
        this.listener.onClose(!this.success ? 1 : 0);
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,MODE,BASE"));
        EventBus.getDefault().unregister(this);
    }
}
