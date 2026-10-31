package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogQrPayBinding;
import com.qianhe.yct.utils.QRCodeUtils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QRPayDialogFragment extends BaseDialogFragment {
    private DialogQrPayBinding binding;
    private String httpUrl;
    private boolean manual;

    public interface OnCloseListener {
    }

    /* renamed from: -$$Nest$fgetlistener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnCloseListener m2128$$Nest$fgetlistener(QRPayDialogFragment qRPayDialogFragment) {
        qRPayDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogQrPayBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.dialog_qr_bg);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.httpUrl = "https://yct-ctrl.xfix-gnss.com/wx/wx-yct-code.html?p=1&info=" + arguments.getString("deviceNo") + "_" + arguments.getLong("priceId");
        }
        this.binding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.QRPayDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                QRPayDialogFragment.this.manual = true;
                QRPayDialogFragment.this.dismiss();
            }
        });
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.manual = false;
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                float f = isPad() ? 0.6f : 0.8f;
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * f), (int) ((!isPad() ? getResources().getDisplayMetrics().widthPixels : getResources().getDisplayMetrics().heightPixels) * f));
                window.setDimAmount(0.3f);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.QRPayDialogFragment.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (QRPayDialogFragment.this.getFragmentManager() != null) {
                        QRPayDialogFragment.this.getFragmentManager().beginTransaction().remove(QRPayDialogFragment.this).commitAllowingStateLoss();
                    }
                    QRPayDialogFragment.this.manual = true;
                    QRPayDialogFragment.m2128$$Nest$fgetlistener(QRPayDialogFragment.this);
                }
            });
            QRCodeUtils.showQRCode(this.binding.ivQR, this.httpUrl);
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
