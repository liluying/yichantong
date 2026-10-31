package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogVerifyModeBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class VerifyModeDialogFragment extends BaseDialogFragment {
    private DialogVerifyModeBinding binding;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogVerifyModeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.requestKey = arguments.getString("requestKey", "verify_mode");
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.VerifyModeDialogFragment$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return VerifyModeDialogFragment.$r8$lambda$rl7IHVshenKPiSrK88a1vOPNqjU(this.f$0, dialogInterface, i, keyEvent);
            }
        });
        this.binding.tvSimple.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.VerifyModeDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onModeSelected(0);
            }
        });
        this.binding.tvStandard.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.VerifyModeDialogFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onModeSelected(1);
            }
        });
        this.binding.tvExit.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.VerifyModeDialogFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onExit();
            }
        });
        return alertDialogCreate;
    }

    public static /* synthetic */ boolean $r8$lambda$rl7IHVshenKPiSrK88a1vOPNqjU(VerifyModeDialogFragment verifyModeDialogFragment, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        verifyModeDialogFragment.getClass();
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        verifyModeDialogFragment.onExit();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onModeSelected(int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("confirm", true);
        bundle.putInt("verifyModeValue", i);
        getParentFragmentManager().setFragmentResult(this.requestKey, bundle);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onExit() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("confirm", false);
        getParentFragmentManager().setFragmentResult(this.requestKey, bundle);
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.85f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.VerifyModeDialogFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    VerifyModeDialogFragment.m2189$r8$lambda$3M0dqL3ew9siWvs4fo9B9xSank(this.f$0, dialogInterface);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$3M0dq-L3ew9siWvs4fo9B9xSank, reason: not valid java name */
    public static /* synthetic */ void m2189$r8$lambda$3M0dqL3ew9siWvs4fo9B9xSank(VerifyModeDialogFragment verifyModeDialogFragment, DialogInterface dialogInterface) {
        if (verifyModeDialogFragment.getFragmentManager() != null) {
            verifyModeDialogFragment.getFragmentManager().beginTransaction().remove(verifyModeDialogFragment).commitAllowingStateLoss();
        }
    }
}
