package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogAppForcedUpgradeBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AppForcedUpgradeDialogFragment extends BaseDialogFragment {
    private DialogAppForcedUpgradeBinding binding;
    private OnCloseListener listener;

    public interface OnCloseListener {
        void onClose(int i);

        void onInstall();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogAppForcedUpgradeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("tip");
            int i = arguments.getInt("state");
            this.binding.tvTip.setText(string);
            if (!TextUtils.isEmpty(string) && i == 1) {
                this.binding.pb.setVisibility(8);
                this.binding.tvInstall.setVisibility(0);
            }
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.AppForcedUpgradeDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                return i2 == 4 && keyEvent.getAction() == 1;
            }
        });
        this.binding.tvInstall.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.AppForcedUpgradeDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AppForcedUpgradeDialogFragment.this.listener != null) {
                    AppForcedUpgradeDialogFragment.this.listener.onInstall();
                }
            }
        });
        return alertDialogCreate;
    }

    public void refreshTip(String str) {
        DialogAppForcedUpgradeBinding dialogAppForcedUpgradeBinding = this.binding;
        if (dialogAppForcedUpgradeBinding != null) {
            dialogAppForcedUpgradeBinding.tvTip.setText(str);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                isPad();
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.6f), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.AppForcedUpgradeDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (AppForcedUpgradeDialogFragment.this.getFragmentManager() != null) {
                        AppForcedUpgradeDialogFragment.this.getFragmentManager().beginTransaction().remove(AppForcedUpgradeDialogFragment.this).commitAllowingStateLoss();
                    }
                    if (AppForcedUpgradeDialogFragment.this.listener == null || !AppForcedUpgradeDialogFragment.this.isAdded()) {
                        return;
                    }
                    AppForcedUpgradeDialogFragment.this.listener.onClose(0);
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.listener == null || !isAdded()) {
            return;
        }
        this.listener.onClose(0);
    }
}
