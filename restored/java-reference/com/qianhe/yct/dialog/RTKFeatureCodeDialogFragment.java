package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.client.BluetoothClient;
import com.qianhe.rtkclientlib.event.GetFeatureCodeEvent;
import com.qianhe.rtkclientlib.event.SetFeatureCodeResult;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogRtkFeatureCodeBinding;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RTKFeatureCodeDialogFragment extends BaseDialogFragment {
    private DialogRtkFeatureCodeBinding binding;
    private DeviceType deviceType;
    private boolean isProgrammaticTextChange;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogRtkFeatureCodeBinding.inflate(getLayoutInflater());
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
            this.requestKey = arguments.getString("requestKey", "rtkfeaturecode");
            this.deviceType = (DeviceType) arguments.getSerializable("deviceType");
            arguments.getString("featureCode", "");
        }
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.RTKFeatureCodeDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strTrim = RTKFeatureCodeDialogFragment.this.binding.edtCode.getText().toString().trim();
                EventBus.getDefault().post(new OrderBean(RTKFeatureCodeDialogFragment.this.deviceType, "SET,FEATURE_CODE," + strTrim));
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.RTKFeatureCodeDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RTKFeatureCodeDialogFragment.this.close();
            }
        });
        this.binding.fltClear.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.RTKFeatureCodeDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RTKFeatureCodeDialogFragment.this.binding.edtCode.setText("");
                RTKFeatureCodeDialogFragment.this.binding.tvError.setText("");
            }
        });
        this.binding.edtCode.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.dialog.RTKFeatureCodeDialogFragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (RTKFeatureCodeDialogFragment.this.isProgrammaticTextChange) {
                    return;
                }
                RTKFeatureCodeDialogFragment.this.binding.tvError.setText("");
            }
        });
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("code", this.binding.edtCode.getText().toString().trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close() {
        dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetFeatureCodeEvent getFeatureCodeEvent) {
        DeviceType deviceType = getFeatureCodeEvent.deviceType;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetFeatureCodeResult setFeatureCodeResult) {
        if (setFeatureCodeResult.deviceType != this.deviceType) {
            return;
        }
        if (setFeatureCodeResult.result.equalsIgnoreCase("OK")) {
            BluetoothClient bluetoothClient = MultiBluetoothManager.getInstance(requireContext()).getBluetoothClient(this.deviceType);
            if (bluetoothClient != null) {
                bluetoothClient.setExpectReboot(true);
            }
            EventBus.getDefault().post("restoreConnectCheck");
            EventBus.getDefault().post(new OrderBean(this.deviceType, "SET,FRESET,CONFIG"));
            String string = getString(R$string.feature_code_set_success_waiting_reboot);
            if (requireActivity() instanceof BaseActivity) {
                ((BaseActivity) requireActivity()).showLoadingDialog(string);
            }
            dismiss();
            return;
        }
        this.binding.tvError.setText(getString(R$string.feature_code_set_failed));
        this.binding.tvError.setSelected(false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.9f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.RTKFeatureCodeDialogFragment.5
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (RTKFeatureCodeDialogFragment.this.getFragmentManager() != null) {
                        RTKFeatureCodeDialogFragment.this.getFragmentManager().beginTransaction().remove(RTKFeatureCodeDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
