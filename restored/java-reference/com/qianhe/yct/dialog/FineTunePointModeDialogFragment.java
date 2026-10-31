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
import com.qianhe.yct.databinding.DialogFineTunePointModeBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class FineTunePointModeDialogFragment extends BaseDialogFragment {
    private DialogFineTunePointModeBinding binding;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogFineTunePointModeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.requestKey = arguments.getString("requestKey", "fine_tune_point_mode");
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.FineTunePointModeDialogFragment$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return FineTunePointModeDialogFragment.$r8$lambda$Rg_xpUU8xO1fYNiO4ZIz4SRgPEA(this.f$0, dialogInterface, i, keyEvent);
            }
        });
        this.binding.tvStepByStep.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTunePointModeDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onModeSelected(1);
            }
        });
        this.binding.tvOneClick.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTunePointModeDialogFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onModeSelected(0);
            }
        });
        this.binding.tvExit.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTunePointModeDialogFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onExit();
            }
        });
        return alertDialogCreate;
    }

    public static /* synthetic */ boolean $r8$lambda$Rg_xpUU8xO1fYNiO4ZIz4SRgPEA(FineTunePointModeDialogFragment fineTunePointModeDialogFragment, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        fineTunePointModeDialogFragment.getClass();
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        fineTunePointModeDialogFragment.onExit();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onModeSelected(int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("confirm", true);
        bundle.putInt("fineTunePointModeValue", i);
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
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.FineTunePointModeDialogFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    FineTunePointModeDialogFragment.$r8$lambda$4f5ScyQuzyVOMSUcuu53i6iSlfs(this.f$0, dialogInterface);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$4f5ScyQuzyVOMSUcuu53i6iSlfs(FineTunePointModeDialogFragment fineTunePointModeDialogFragment, DialogInterface dialogInterface) {
        if (fineTunePointModeDialogFragment.getFragmentManager() != null) {
            fineTunePointModeDialogFragment.getFragmentManager().beginTransaction().remove(fineTunePointModeDialogFragment).commitAllowingStateLoss();
        }
    }
}
