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
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogTipsBinding;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class TipsDialogFragment extends BaseDialogFragment {
    private DialogTipsBinding binding;
    private OnConfirmListener listener;
    private boolean listenerNotified;
    private boolean manual;
    private boolean resultDispatched;

    public interface OnConfirmListener {
        void onClose(boolean z);

        void onConfirm();
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.listener = onConfirmListener;
        this.listenerNotified = false;
        this.resultDispatched = false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogTipsBinding.inflate(getLayoutInflater());
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
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(string2) && (string.equals(getString(R$string.ok)) || string.equals(getString(R$string.close)))) {
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
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.TipsDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4 || keyEvent.getAction() != 1) {
                    return false;
                }
                if (((BaseDialogFragment) TipsDialogFragment.this).requestKey.equals("calibration_failed")) {
                    return true;
                }
                if (TipsDialogFragment.this.shouldPerformCloseOnBack()) {
                    TipsDialogFragment.this.performClose();
                    return true;
                }
                TipsDialogFragment.this.dismiss();
                return true;
            }
        });
        if (shouldPerformCloseOnBack()) {
            alertDialogCreate.getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.qianhe.yct.dialog.TipsDialogFragment.2
                @Override // androidx.activity.OnBackPressedCallback
                public void handleOnBackPressed() {
                    TipsDialogFragment.this.performClose();
                }
            });
        }
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.TipsDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TipsDialogFragment.this.resultDispatched = true;
                TipsDialogFragment.this.notifyConfirm();
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", true);
                TipsDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) TipsDialogFragment.this).requestKey, bundle2);
                TipsDialogFragment.this.dismiss();
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.TipsDialogFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TipsDialogFragment.this.performClose();
            }
        });
        return alertDialogCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyConfirm() {
        if (this.listenerNotified) {
            return;
        }
        this.listenerNotified = true;
        OnConfirmListener onConfirmListener = this.listener;
        if (onConfirmListener != null) {
            onConfirmListener.onConfirm();
        }
    }

    private void notifyClose(boolean z) {
        if (this.listenerNotified) {
            return;
        }
        this.listenerNotified = true;
        OnConfirmListener onConfirmListener = this.listener;
        if (onConfirmListener != null) {
            onConfirmListener.onClose(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldPerformCloseOnBack() {
        return "check_accuracy".equals(this.requestKey) || "not_support_replace_bucket".equals(this.requestKey) || "appliedtoh5network".equals(this.requestKey) || "appliedtoh5radio".equals(this.requestKey) || "bluetooth_pairing".equals(this.requestKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performClose() {
        if (!this.resultDispatched) {
            this.resultDispatched = true;
            this.manual = true;
            notifyClose(true);
            if (!TextUtils.isEmpty(this.requestKey)) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("confirm", false);
                bundle.putBoolean("manual_cancel", true);
                getParentFragmentManager().setFragmentResult(this.requestKey, bundle);
            }
        }
        if (getDialog() == null || !getDialog().isShowing()) {
            return;
        }
        dismiss();
    }

    private boolean isConfigChangeDismiss() {
        return getActivity() != null && getActivity().isChangingConfigurations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDialogDismissSideEffects() {
        if (isConfigChangeDismiss() || this.resultDispatched) {
            return;
        }
        notifyClose(false);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (shouldPerformCloseOnBack() && !this.resultDispatched) {
            this.resultDispatched = true;
            this.manual = true;
            notifyClose(true);
            Bundle bundle = new Bundle();
            bundle.putBoolean("confirm", false);
            bundle.putBoolean("manual_cancel", true);
            getParentFragmentManager().setFragmentResult(this.requestKey, bundle);
        }
        super.onCancel(dialogInterface);
    }

    public void refreshTip(String str) {
        DialogTipsBinding dialogTipsBinding = this.binding;
        if (dialogTipsBinding != null) {
            dialogTipsBinding.tvContent.setText(str);
        }
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
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.TipsDialogFragment.5
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    TipsDialogFragment.this.handleDialogDismissSideEffects();
                    if (TipsDialogFragment.this.getFragmentManager() != null) {
                        TipsDialogFragment.this.getFragmentManager().beginTransaction().remove(TipsDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        handleDialogDismissSideEffects();
        super.onDismiss(dialogInterface);
        if (getFragmentManager() != null) {
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
    }
}
