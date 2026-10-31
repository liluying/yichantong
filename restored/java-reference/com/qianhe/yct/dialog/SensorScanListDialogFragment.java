package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.client.BluetoothClient;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.SensorScanListAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogSensorScanListBinding;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SensorScanListDialogFragment extends BaseDialogFragment {
    private SensorScanListAdapter adapter;
    private DialogSensorScanListBinding binding;
    private BluetoothClient bluetoothClient;
    private final List<MyBluetoothDevice> mList = new ArrayList();

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogSensorScanListBinding.inflate(getLayoutInflater());
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
            this.requestKey = arguments.getString("requestKey", "");
            arguments.getBoolean("showDel", false);
            int i = getResources().getConfiguration().orientation;
            if (i == 2) {
                this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
            } else if (i == 1) {
                this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
            }
            SensorScanListAdapter sensorScanListAdapter = new SensorScanListAdapter(requireContext(), this.mList);
            this.adapter = sensorScanListAdapter;
            this.binding.rcv.setAdapter(sensorScanListAdapter);
            this.adapter.setOnActionListener(new SensorScanListAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.SensorScanListDialogFragment.1
                @Override // com.qianhe.yct.adapter.SensorScanListAdapter.OnActionListener
                public void onAction(MyBluetoothDevice myBluetoothDevice) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("sensor_myBluetoothDevice", myBluetoothDevice);
                    SensorScanListDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) SensorScanListDialogFragment.this).requestKey, bundle2);
                    SensorScanListDialogFragment.this.dismiss();
                }
            });
        }
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.SensorScanListDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SensorScanListDialogFragment.this.dismiss();
            }
        });
        this.binding.rltScan.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.SensorScanListDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SensorScanListDialogFragment.this.binding.tvScan.setSelected(!SensorScanListDialogFragment.this.binding.tvScan.isSelected());
                if (SensorScanListDialogFragment.this.binding.tvScan.isSelected()) {
                    SensorScanListDialogFragment.this.startScan();
                    return;
                }
                SensorScanListDialogFragment.this.binding.progressBar.setVisibility(8);
                SensorScanListDialogFragment.this.binding.tvScan.setText(R$string.rescan_ble);
                SensorScanListDialogFragment.this.bluetoothClient.stopScan();
            }
        });
        this.bluetoothClient = MultiBluetoothManager.getInstance(requireContext()).getBluetoothClient(DeviceType.ATTITUDESENSOR);
        startScan();
        return alertDialogCreate;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(String str) {
        if ("sensor_connected".equals(str)) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScan() {
        this.binding.tvScan.setSelected(true);
        this.binding.tvScan.setText(R$string.scanning);
        this.binding.progressBar.setVisibility(0);
        this.bluetoothClient.startScan(new BluetoothClient.OnDeviceScanListener() { // from class: com.qianhe.yct.dialog.SensorScanListDialogFragment.4
            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onDeviceScan(MyBluetoothDevice myBluetoothDevice) {
                String str = myBluetoothDevice.bluetoothDevice.getAddress() + "======onDeviceScan======" + myBluetoothDevice.bluetoothDevice.getName();
                SensorScanListDialogFragment.this.adapter.addData(myBluetoothDevice);
                SensorScanListDialogFragment.this.binding.rcv.smoothScrollToPosition(0);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onScanFinished() {
                SensorScanListDialogFragment.this.binding.tvScan.setSelected(false);
                SensorScanListDialogFragment.this.binding.tvScan.setText(R$string.rescan_ble);
                SensorScanListDialogFragment.this.binding.progressBar.setVisibility(8);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onScanFail() {
                SensorScanListDialogFragment.this.binding.tvScan.setSelected(false);
                SensorScanListDialogFragment.this.binding.tvScan.setText(R$string.rescan_ble);
                SensorScanListDialogFragment.this.binding.progressBar.setVisibility(8);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void cancelBond(BluetoothDevice bluetoothDevice) {
                SensorScanListDialogFragment.this.binding.tvScan.setSelected(false);
                SensorScanListDialogFragment.this.binding.tvScan.setText(R$string.rescan_ble);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onBonding(BluetoothDevice bluetoothDevice) {
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.bluetoothClient.stopScan();
        EventBus.getDefault().unregister(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.7f : 0.9f)), (int) (getResources().getDisplayMetrics().heightPixels * 0.6d));
                setWindowsCallback(window);
                window.setDimAmount(0.3f);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.SensorScanListDialogFragment.5
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (SensorScanListDialogFragment.this.getFragmentManager() != null) {
                        SensorScanListDialogFragment.this.getFragmentManager().beginTransaction().remove(SensorScanListDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
