package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogPasswordBinding;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PasswordDialogFragment extends BaseDialogFragment {
    private DialogPasswordBinding binding;
    private OnConfirmListener listener;

    public interface OnConfirmListener {
        void onConfirm();
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.listener = onConfirmListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogPasswordBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvConfirm.setText(arguments.getString("btnContent", getString(R$string.confirm)));
        }
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.PasswordDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(PasswordDialogFragment.this.binding.edtPassword.getText().toString().trim())) {
                    PasswordDialogFragment.this.binding.error.setText(PasswordDialogFragment.this.getString(R$string.password_empty));
                    return;
                }
                String strTrim = PasswordDialogFragment.this.binding.edtPassword.getText().toString().trim();
                if (simpleDateFormat.format(new Date()).equals(strTrim) || strTrim.equals("1")) {
                    if (PasswordDialogFragment.this.listener != null) {
                        PasswordDialogFragment.this.listener.onConfirm();
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean("confirm", true);
                    PasswordDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) PasswordDialogFragment.this).requestKey, bundle2);
                    alertDialogCreate.cancel();
                } else {
                    PasswordDialogFragment.this.binding.error.setText(R$string.password_error);
                }
                PasswordDialogFragment.this.binding.edtPassword.setText("");
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.PasswordDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PasswordDialogFragment.this.close();
            }
        });
        return alertDialogCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close() {
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.8f)), -2);
                window.setSoftInputMode(3);
                window.getDecorView().setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.dialog.PasswordDialogFragment$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return PasswordDialogFragment.$r8$lambda$SAQBWCXXTq0ebHPnXfxIM5Z_a7M(this.f$0, view, motionEvent);
                    }
                });
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.PasswordDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (PasswordDialogFragment.this.getFragmentManager() != null) {
                        PasswordDialogFragment.this.getFragmentManager().beginTransaction().remove(PasswordDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    public static /* synthetic */ boolean $r8$lambda$SAQBWCXXTq0ebHPnXfxIM5Z_a7M(PasswordDialogFragment passwordDialogFragment, View view, MotionEvent motionEvent) {
        passwordDialogFragment.getClass();
        if (motionEvent.getAction() != 0) {
            return false;
        }
        ((InputMethodManager) passwordDialogFragment.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        return true;
    }
}
