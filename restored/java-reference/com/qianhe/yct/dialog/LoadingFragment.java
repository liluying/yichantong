package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogLoadingBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LoadingFragment extends BaseDialogFragment {
    private DialogLoadingBinding binding;
    private boolean closeNotified;
    private OnCloseListener listener;
    private boolean manual;
    private String tag;

    public interface OnCloseListener {
        void onClose(int i);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
        this.closeNotified = false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogLoadingBinding.inflate(getLayoutInflater());
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
            TextView textView = this.binding.tvTip;
            if (TextUtils.isEmpty(string)) {
                string = getString(R$string.please_wait);
            }
            textView.setText(string);
            this.tag = arguments.getString("tag");
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.LoadingFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.LoadingFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoadingFragment.this.manual = true;
                LoadingFragment.this.notifyCloseOnce();
                LoadingFragment.this.dismiss();
            }
        });
        return alertDialogCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCloseOnce() {
        OnCloseListener onCloseListener;
        if (this.closeNotified || (onCloseListener = this.listener) == null) {
            return;
        }
        this.closeNotified = true;
        onCloseListener.onClose(this.manual ? 1 : 0);
    }

    public void refreshTip(final String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            DialogLoadingBinding dialogLoadingBinding = this.binding;
            if (dialogLoadingBinding != null) {
                dialogLoadingBinding.tvTip.setText(str);
                return;
            }
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.qianhe.yct.dialog.LoadingFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LoadingFragment.$r8$lambda$PRxZ9S3433JuDJKwsBQTeScea14(this.f$0, str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$PRxZ9S3433JuDJKwsBQTeScea14(LoadingFragment loadingFragment, String str) {
        DialogLoadingBinding dialogLoadingBinding = loadingFragment.binding;
        if (dialogLoadingBinding != null) {
            dialogLoadingBinding.tvTip.setText(str);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.manual = false;
        this.closeNotified = false;
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                float f = "upgrade".equals(this.tag) ? 0.8f : 0.5f;
                if (isPad()) {
                    f = 0.6f;
                }
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * f), -2);
                window.setDimAmount(0.3f);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.LoadingFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    LoadingFragment.this.notifyCloseOnce();
                    if (LoadingFragment.this.getFragmentManager() != null) {
                        LoadingFragment.this.getFragmentManager().beginTransaction().remove(LoadingFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        notifyCloseOnce();
        super.onDismiss(dialogInterface);
        if (getFragmentManager() != null) {
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
    }
}
