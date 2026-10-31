package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogShareWayBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareWayDialogFragment extends BaseDialogFragment {
    private DialogShareWayBinding binding;
    private OnConfirmListener listener;

    public interface OnConfirmListener {
        void onCopy();

        void onShare();
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.listener = onConfirmListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogShareWayBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvContent.setText(arguments.getString("tip"));
            this.binding.tvContent.setTextColor(ContextCompat.getColor(requireContext(), arguments.getInt("tipColor", R$color.theme)));
            String string = arguments.getString("btnStr");
            String string2 = arguments.getString("cancelStr");
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvCopy.setText(string);
            }
            if (!TextUtils.isEmpty(string2)) {
                this.binding.tvShare.setText(string2);
            }
        }
        this.binding.tvCopy.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ShareWayDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareWayDialogFragment.this.dismiss();
                if (ShareWayDialogFragment.this.listener != null) {
                    ShareWayDialogFragment.this.listener.onCopy();
                }
            }
        });
        this.binding.tvShare.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ShareWayDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareWayDialogFragment.this.dismiss();
                if (ShareWayDialogFragment.this.listener != null) {
                    ShareWayDialogFragment.this.listener.onShare();
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
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.8f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ShareWayDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ShareWayDialogFragment.this.getFragmentManager() != null) {
                        ShareWayDialogFragment.this.getFragmentManager().beginTransaction().remove(ShareWayDialogFragment.this).commitAllowingStateLoss();
                    }
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
    }
}
