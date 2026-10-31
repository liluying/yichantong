package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogUnregisterBinding;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.Objects;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UnregisterDialogFragment extends BaseDialogFragment {
    private String account;
    private DialogUnregisterBinding binding;

    public interface OnConfirmListener {
    }

    /* renamed from: -$$Nest$fgetlistener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnConfirmListener m2159$$Nest$fgetlistener(UnregisterDialogFragment unregisterDialogFragment) {
        unregisterDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogUnregisterBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvConfirm.setText(arguments.getString("btnContent", getString(R$string.confirm)));
        }
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UnregisterDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Editable text = UnregisterDialogFragment.this.binding.edtPassword.getText();
                Objects.requireNonNull(text);
                final String strTrim = text.toString().trim();
                if (TextUtils.isEmpty(strTrim)) {
                    UnregisterDialogFragment.this.binding.error.setText(UnregisterDialogFragment.this.getString(R$string.password_empty));
                } else {
                    final BaseActivity baseActivity = (BaseActivity) UnregisterDialogFragment.this.requireActivity();
                    baseActivity.showTipDialog(UnregisterDialogFragment.this.getString(R$string.sure_want_unregister_account), UnregisterDialogFragment.this.getString(R$string.confirm), UnregisterDialogFragment.this.getString(R$string.cancel), UnregisterDialogFragment.this.getString(R$string.unregister_account_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.dialog.UnregisterDialogFragment.1.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            baseActivity.showLoadingDialog(UnregisterDialogFragment.this.getString(R$string.process_please_wait));
                            UnregisterDialogFragment.m2159$$Nest$fgetlistener(UnregisterDialogFragment.this);
                            Bundle bundle2 = new Bundle();
                            bundle2.putBoolean("confirm", true);
                            UnregisterDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) UnregisterDialogFragment.this).requestKey, bundle2);
                            NetworkUserLoader.getInstance().unRegisterAccount(UnregisterDialogFragment.this.account, strTrim);
                            UnregisterDialogFragment.this.close();
                        }
                    });
                }
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UnregisterDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UnregisterDialogFragment.this.close();
            }
        });
        String account = UserSession.get().getAccount();
        this.account = account;
        this.binding.tvAccount.setText(maskAccount(account));
        return alertDialogCreate;
    }

    private String maskAccount(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("@")) {
            return str.charAt(0) + "****" + str.substring(str.lastIndexOf("@"));
        }
        if (str.length() != 11) {
            return str;
        }
        return str.substring(0, 3) + "****" + str.substring(7);
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
                window.getDecorView().setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.dialog.UnregisterDialogFragment$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return UnregisterDialogFragment.$r8$lambda$QkhKVqx8nOwzcz_MNIpu4rg8qWM(this.f$0, view, motionEvent);
                    }
                });
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.UnregisterDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (UnregisterDialogFragment.this.getFragmentManager() != null) {
                        UnregisterDialogFragment.this.getFragmentManager().beginTransaction().remove(UnregisterDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    public static /* synthetic */ boolean $r8$lambda$QkhKVqx8nOwzcz_MNIpu4rg8qWM(UnregisterDialogFragment unregisterDialogFragment, View view, MotionEvent motionEvent) {
        unregisterDialogFragment.getClass();
        if (motionEvent.getAction() != 0) {
            return false;
        }
        ((InputMethodManager) unregisterDialogFragment.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        return true;
    }
}
