package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatEditText;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogServerIpInputBinding;
import com.qianhe.yct.utils.ServerEnvHelper;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ServerIpInputDialogFragment extends BaseDialogFragment {
    private DialogServerIpInputBinding binding;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogServerIpInputBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        String savedTestIp = ServerEnvHelper.getSavedTestIp();
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString(Proj4Keyword.title);
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvTitle.setText(string);
            }
            String string2 = arguments.getString("ip");
            if (string2 != null) {
                savedTestIp = string2.trim();
            }
        }
        this.binding.edtIp.setText(TextUtils.isEmpty(savedTestIp) ? "192.168.1.186" : savedTestIp);
        if (!TextUtils.isEmpty(savedTestIp) && this.binding.edtIp.getText() != null) {
            AppCompatEditText appCompatEditText = this.binding.edtIp;
            appCompatEditText.setSelection(appCompatEditText.getText().length());
        }
        this.binding.fltClear.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ServerIpInputDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.edtIp.setText("");
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ServerIpInputDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ServerIpInputDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ServerIpInputDialogFragment.m2143$r8$lambda$AXPpwGwJGRCQOf44PQXh_ExYc(this.f$0, view);
            }
        });
        return alertDialogCreate;
    }

    /* renamed from: $r8$lambda$AXPpwGwJGRCQ-Of44-PQXh_ExYc, reason: not valid java name */
    public static /* synthetic */ void m2143$r8$lambda$AXPpwGwJGRCQOf44PQXh_ExYc(ServerIpInputDialogFragment serverIpInputDialogFragment, View view) {
        String strTrim = serverIpInputDialogFragment.binding.edtIp.getText() == null ? "" : serverIpInputDialogFragment.binding.edtIp.getText().toString().trim();
        Bundle bundle = new Bundle();
        bundle.putString("ip", strTrim);
        serverIpInputDialogFragment.getParentFragmentManager().setFragmentResult("server_ip", bundle);
        serverIpInputDialogFragment.dismiss();
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
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ServerIpInputDialogFragment.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ServerIpInputDialogFragment.this.getFragmentManager() != null) {
                        ServerIpInputDialogFragment.this.getFragmentManager().beginTransaction().remove(ServerIpInputDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
