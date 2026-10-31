package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogDiffInterruptBinding;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DifferentialInterruptDialogFragment extends BaseDialogFragment {
    private DialogDiffInterruptBinding binding;
    private boolean manual;

    public interface OnConfirmListener {
    }

    /* renamed from: -$$Nest$fgetlistener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnConfirmListener m2097$$Nest$fgetlistener(DifferentialInterruptDialogFragment differentialInterruptDialogFragment) {
        differentialInterruptDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogDiffInterruptBinding.inflate(getLayoutInflater());
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
            this.requestKey = arguments.getString("requestKey", "");
            if (!TextUtils.isEmpty(string) && (string.equals(getString(R$string.ok)) || (TextUtils.isEmpty(string2) && string.equals(getString(R$string.close))))) {
                this.binding.tvCancel.setVisibility(8);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.binding.tvSure.getLayoutParams();
                layoutParams.leftMargin = DpUtils.dp2px(requireContext(), 50.0f);
                layoutParams.rightMargin = DpUtils.dp2px(requireContext(), 50.0f);
                this.binding.tvSure.requestLayout();
                ((BaseActivity) requireActivity()).allowRotateScreen();
            } else if (bundle != null && TextUtils.isEmpty(this.requestKey)) {
                dismiss();
            }
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvSure.setText(string);
            }
            if (!TextUtils.isEmpty(string2)) {
                this.binding.tvCancel.setText(string2);
            }
            String string3 = arguments.getString("hintTip");
            if (!TextUtils.isEmpty(string3)) {
                this.binding.tvHint.setVisibility(0);
                this.binding.tvHint.setText(string3);
            }
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.DifferentialInterruptDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getAction() == 1) {
                    if (((BaseDialogFragment) DifferentialInterruptDialogFragment.this).requestKey.equals("calibration_failed")) {
                        return true;
                    }
                    DifferentialInterruptDialogFragment.this.dismiss();
                }
                return false;
            }
        });
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.DifferentialInterruptDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DifferentialInterruptDialogFragment.m2097$$Nest$fgetlistener(DifferentialInterruptDialogFragment.this);
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", true);
                DifferentialInterruptDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) DifferentialInterruptDialogFragment.this).requestKey, bundle2);
                DifferentialInterruptDialogFragment.this.dismiss();
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.DifferentialInterruptDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DifferentialInterruptDialogFragment.this.manual = true;
                DifferentialInterruptDialogFragment.this.dismiss();
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
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.type = InternalZipConstants.AES_HASH_ITERATIONS;
                window.setAttributes(attributes);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.DifferentialInterruptDialogFragment.5
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (DifferentialInterruptDialogFragment.this.getFragmentManager() != null) {
                        DifferentialInterruptDialogFragment.this.getFragmentManager().beginTransaction().remove(DifferentialInterruptDialogFragment.this).commitAllowingStateLoss();
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
        Bundle bundle = new Bundle();
        bundle.putBoolean("confirm", false);
        bundle.putBoolean("manual_cancel", this.manual);
        getParentFragmentManager().setFragmentResult(this.requestKey, bundle);
    }
}
