package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogEixtBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExitDialogFragment extends BaseDialogFragment {
    private DialogEixtBinding binding;

    public interface OnConfirmListener {
    }

    /* renamed from: -$$Nest$fgetlistener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnConfirmListener m2099$$Nest$fgetlistener(ExitDialogFragment exitDialogFragment) {
        exitDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogEixtBinding.inflate(getLayoutInflater());
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
            String string2 = arguments.getString("btnStr");
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvDis.setText(string);
            }
            if (!TextUtils.isEmpty(string2)) {
                this.binding.tvExit.setText(string2);
            }
        }
        this.binding.tvExit.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ExitDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExitDialogFragment.m2099$$Nest$fgetlistener(ExitDialogFragment.this);
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", true);
                ExitDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ExitDialogFragment.this).requestKey, bundle2);
                ExitDialogFragment.this.dismiss();
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ExitDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExitDialogFragment.this.dismiss();
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ExitDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExitDialogFragment.this.dismiss();
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
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.8f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ExitDialogFragment.4
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ExitDialogFragment.this.getFragmentManager() != null) {
                        ExitDialogFragment.this.getFragmentManager().beginTransaction().remove(ExitDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
