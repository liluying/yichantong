package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ChooseWifiAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseWifiBinding;
import java.util.ArrayList;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseWifiDialogFragment extends BaseDialogFragment {
    private ChooseWifiAdapter adapter;
    private DialogChooseWifiBinding binding;
    private ArrayList<String> mList;
    private WifiScanReceiver wifiScanReceiver;

    public interface OnConfirmListener {
    }

    /* renamed from: -$$Nest$fgetonConfirmListener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnConfirmListener m2089$$Nest$fgetonConfirmListener(ChooseWifiDialogFragment chooseWifiDialogFragment) {
        chooseWifiDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogChooseWifiBinding.inflate(getLayoutInflater());
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
            this.mList = arguments.getStringArrayList("list");
            String string = arguments.getString("currentName");
            int i = getResources().getConfiguration().orientation;
            if (i == 2) {
                this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
            } else if (i == 1) {
                this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
            }
            ChooseWifiAdapter chooseWifiAdapter = new ChooseWifiAdapter(requireContext(), this.mList, string);
            this.adapter = chooseWifiAdapter;
            this.binding.rcv.setAdapter(chooseWifiAdapter);
            this.adapter.setOnActionListener(new ChooseWifiAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseWifiDialogFragment.1
                @Override // com.qianhe.yct.adapter.ChooseWifiAdapter.OnActionListener
                public void onAction(int i2) {
                    ChooseWifiDialogFragment.m2089$$Nest$fgetonConfirmListener(ChooseWifiDialogFragment.this);
                    Bundle bundle2 = new Bundle();
                    bundle2.putStringArrayList("list", ChooseWifiDialogFragment.this.mList);
                    bundle2.putInt("index", i2);
                    ChooseWifiDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseWifiDialogFragment.this).requestKey, bundle2);
                    ChooseWifiDialogFragment.this.dismiss();
                }
            });
        }
        this.binding.tvScan.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseWifiDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseWifiDialogFragment.this.scanWifiList();
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseWifiDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseWifiDialogFragment.this.dismiss();
            }
        });
        return alertDialogCreate;
    }

    public void refreshData(ArrayList<String> arrayList) {
        if (this.mList == null) {
            this.mList = new ArrayList<>();
        }
        this.mList.clear();
        this.mList.addAll(arrayList);
        ChooseWifiAdapter chooseWifiAdapter = this.adapter;
        if (chooseWifiAdapter != null) {
            chooseWifiAdapter.refreshData(this.mList);
        }
    }

    public ArrayList<String> scanWifiList() {
        showLoadingDialog(getString(R$string.searching_for_wifi));
        this.binding.tvScan.setText(getString(R$string.scanning));
        ArrayList<String> arrayList = new ArrayList<>();
        WifiManager wifiManager = (WifiManager) requireContext().getApplicationContext().getSystemService("wifi");
        if (Build.VERSION.SDK_INT >= 29) {
            this.wifiScanReceiver = new WifiScanReceiver(wifiManager, arrayList);
            requireContext().registerReceiver(this.wifiScanReceiver, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
            wifiManager.startScan();
            return arrayList;
        }
        for (ScanResult scanResult : wifiManager.getScanResults()) {
            if (!TextUtils.isEmpty(scanResult.SSID)) {
                arrayList.add(scanResult.SSID);
            }
        }
        this.binding.tvScan.setText("扫描");
        cancelLoadingDialog();
        return arrayList;
    }

    private class WifiScanReceiver extends BroadcastReceiver {
        private final ArrayList<String> wifiList;
        private final WifiManager wifiManager;

        public WifiScanReceiver(WifiManager wifiManager, ArrayList<String> arrayList) {
            this.wifiManager = wifiManager;
            this.wifiList = arrayList;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.wifi.SCAN_RESULTS")) {
                for (final ScanResult scanResult : this.wifiManager.getScanResults()) {
                    if (!TextUtils.isEmpty(scanResult.SSID)) {
                        this.wifiList.add(scanResult.SSID);
                        ChooseWifiDialogFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.ChooseWifiDialogFragment.WifiScanReceiver.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ChooseWifiDialogFragment.this.adapter.addData(scanResult.SSID);
                                ChooseWifiDialogFragment.this.binding.rcv.smoothScrollToPosition(0);
                            }
                        });
                    }
                }
                ChooseWifiDialogFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.ChooseWifiDialogFragment.WifiScanReceiver.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ChooseWifiDialogFragment.this.binding.tvScan.setText("扫描");
                        ChooseWifiDialogFragment.this.cancelLoadingDialog();
                    }
                });
                context.unregisterReceiver(this);
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.8f : 0.9f)), (int) (getResources().getDisplayMetrics().heightPixels * 0.8d));
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseWifiDialogFragment.4
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ChooseWifiDialogFragment.this.getFragmentManager() != null) {
                        ChooseWifiDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseWifiDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
