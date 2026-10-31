package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogToastBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ToastDialogFragment extends BaseDialogFragment {
    private DialogToastBinding binding;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable dismissRunnable = new Runnable() { // from class: com.qianhe.yct.dialog.ToastDialogFragment$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            ToastDialogFragment.m2156$r8$lambda$r5NI6iIcwK3JRprPqbHZb_ZxEM(this.f$0);
        }
    };

    /* renamed from: $r8$lambda$r5NI6iIcwK3-JRprPqbHZb_ZxEM, reason: not valid java name */
    public static /* synthetic */ void m2156$r8$lambda$r5NI6iIcwK3JRprPqbHZb_ZxEM(ToastDialogFragment toastDialogFragment) {
        if (toastDialogFragment.getDialog() == null || !toastDialogFragment.getDialog().isShowing()) {
            return;
        }
        toastDialogFragment.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogToastBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(true);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvTip.setText(arguments.getString("tip"));
        }
        return alertDialogCreate;
    }

    public void refreshTip(final String str) {
        this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.ToastDialogFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ToastDialogFragment.m2155$r8$lambda$THVjjkDfX_7je9qVA2OyiPD7g(this.f$0, str);
            }
        });
    }

    /* renamed from: $r8$lambda$T-HVjjkDfX_7j-e9qVA2OyiPD7g, reason: not valid java name */
    public static /* synthetic */ void m2155$r8$lambda$THVjjkDfX_7je9qVA2OyiPD7g(ToastDialogFragment toastDialogFragment, String str) {
        DialogToastBinding dialogToastBinding = toastDialogFragment.binding;
        if (dialogToastBinding != null) {
            dialogToastBinding.tvTip.setText(str);
        }
        toastDialogFragment.scheduleAutoDismiss();
    }

    private void scheduleAutoDismiss() {
        this.handler.removeCallbacks(this.dismissRunnable);
        this.handler.postDelayed(this.dismissRunnable, 1000L);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.3f : 0.5f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ToastDialogFragment$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ToastDialogFragment.$r8$lambda$f1lm4HeEwIp4JxwNir9T3FQEIUg(this.f$0, dialogInterface);
                }
            });
        }
        scheduleAutoDismiss();
    }

    public static /* synthetic */ void $r8$lambda$f1lm4HeEwIp4JxwNir9T3FQEIUg(ToastDialogFragment toastDialogFragment, DialogInterface dialogInterface) {
        if (toastDialogFragment.getFragmentManager() != null) {
            toastDialogFragment.getFragmentManager().beginTransaction().remove(toastDialogFragment).commitAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.handler.removeCallbacks(this.dismissRunnable);
        if (getFragmentManager() != null) {
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
    }
}
