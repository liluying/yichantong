package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogCorsProviderInputBinding;
import com.qianhe.yct.db.DatabaseManager;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CorsProviderInputDialogFragment extends BaseDialogFragment {
    private DialogCorsProviderInputBinding binding;
    private OnConfirmListener onConfirmListener;

    public interface OnConfirmListener {
        void onConfirm(String str);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogCorsProviderInputBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString(Proj4Keyword.title);
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvTitle.setText(string);
            }
            String string2 = arguments.getString("providerName");
            if (!TextUtils.isEmpty(string2)) {
                this.binding.edtProviderName.setText(string2);
                this.binding.edtProviderName.setSelection(string2.length());
            }
        }
        this.binding.fltClear.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CorsProviderInputDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.edtProviderName.setText("");
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CorsProviderInputDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CorsProviderInputDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onConfirmClick();
            }
        });
        return alertDialogCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfirmClick() {
        String strTrim = this.binding.edtProviderName.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            showToastDialog(getString(R$string.service_provider_name_empty));
            return;
        }
        Bundle arguments = getArguments();
        long j = arguments != null ? arguments.getLong("excludeCorsId", -1L) : -1L;
        if (DatabaseManager.getInstance(requireContext()).isCorsNameExist(strTrim, j > 0 ? Long.valueOf(j) : null)) {
            showToastDialog(getString(R$string.service_provider_name_exists));
            return;
        }
        dismiss();
        OnConfirmListener onConfirmListener = this.onConfirmListener;
        if (onConfirmListener != null) {
            onConfirmListener.onConfirm(strTrim);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.9f)), -2);
                setWindowsCallback(window);
            }
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.CorsProviderInputDialogFragment.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (CorsProviderInputDialogFragment.this.getFragmentManager() != null) {
                        CorsProviderInputDialogFragment.this.getFragmentManager().beginTransaction().remove(CorsProviderInputDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.onConfirmListener = onConfirmListener;
    }
}
