package com.qianhe.yct.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogUpgradeBinding;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UpgradeApkDialogFragment extends BaseDialogFragment {
    private DialogUpgradeBinding binding;
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.7
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
        }
    };
    private OnActionListener listener;
    private boolean manual;

    public interface OnActionListener {
        void onClose(int i);

        void onDownload();

        void onIgnore();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.listener = onActionListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    @SuppressLint({"ClickableViewAccessibility", "SetTextI18n", "DefaultLocale"})
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogUpgradeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            String string = arguments.getString("upgradeLog");
            String string2 = arguments.getString("versionOld");
            String string3 = arguments.getString("versionNew");
            long j = arguments.getLong("fileSize", 0L);
            this.binding.tvVersionOld.setText(String.format(getString(R$string.current_version) + "：%s", string2));
            this.binding.tvVersionNew.setText(String.format(getString(R$string.latest_version) + "：%s", string3));
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvUpgradeLog.setText(string);
                this.binding.tvUpgradeLog.setVisibility(0);
            }
            this.binding.tvFileSize.setText(String.format(Locale.ROOT, getString(R$string.file_size) + "：%.2f MB", Double.valueOf((j / 1024.0d) / 1024.0d)));
        }
        this.binding.tvTip.setText(R$string.want_to_upgrade);
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.2
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UpgradeApkDialogFragment.this.manual = true;
                if (UpgradeApkDialogFragment.this.getDialog() == null || !UpgradeApkDialogFragment.this.getDialog().isShowing()) {
                    return;
                }
                UpgradeApkDialogFragment.this.dismiss();
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UpgradeApkDialogFragment.this.manual = true;
                if (UpgradeApkDialogFragment.this.getDialog() == null || !UpgradeApkDialogFragment.this.getDialog().isShowing()) {
                    return;
                }
                UpgradeApkDialogFragment.this.dismiss();
            }
        });
        this.binding.tvIgnore.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UpgradeApkDialogFragment.this.getDialog() != null && UpgradeApkDialogFragment.this.getDialog().isShowing()) {
                    UpgradeApkDialogFragment.this.dismiss();
                }
                if (UpgradeApkDialogFragment.this.listener != null) {
                    UpgradeApkDialogFragment.this.listener.onIgnore();
                }
            }
        });
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UpgradeApkDialogFragment.this.getDialog() != null && UpgradeApkDialogFragment.this.getDialog().isShowing()) {
                    UpgradeApkDialogFragment.this.dismiss();
                }
                if (UpgradeApkDialogFragment.this.listener != null) {
                    UpgradeApkDialogFragment.this.listener.onDownload();
                }
            }
        });
        return alertDialogCreate;
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
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.UpgradeApkDialogFragment.8
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (UpgradeApkDialogFragment.this.getFragmentManager() != null) {
                        UpgradeApkDialogFragment.this.getFragmentManager().beginTransaction().remove(UpgradeApkDialogFragment.this).commitAllowingStateLoss();
                    }
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
        this.listener.onClose(this.manual ? 1 : 0);
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.handler.removeCallbacksAndMessages(null);
    }
}
