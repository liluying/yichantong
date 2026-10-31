package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogCorsChangesBinding;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CorsChangesDialogFragment extends BaseDialogFragment {
    private DialogCorsChangesBinding binding;
    private OnConfirmListener listener;

    public interface OnConfirmListener {
        void onClose();

        void onConfirm();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.listener = onConfirmListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            dismiss();
        }
        this.binding = DialogCorsChangesBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("btnStr");
            this.requestKey = arguments.getString("requestKey", "");
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvSure.setText(string);
            }
            BaseProEntity baseProEntity = (BaseProEntity) arguments.getSerializable("baseProEntity");
            BaseConfig baseConfig = (BaseConfig) arguments.getSerializable("diffConfig");
            if (baseProEntity != null && baseConfig != null) {
                this.binding.tvOldCors.setText(getString(R$string.original_cors_configuration) + ":\n" + baseProEntity.corsHost + "," + baseProEntity.corsPort + "," + baseProEntity.corsMount);
                this.binding.tvNewCors.setText(getString(R$string.current_cors_configuration) + ":\n" + baseConfig.ntrip_host + "," + baseConfig.ntrip_port + "," + baseConfig.mount_point);
            }
        }
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CorsChangesDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CorsChangesDialogFragment.this.dismiss();
                if (CorsChangesDialogFragment.this.listener != null) {
                    CorsChangesDialogFragment.this.listener.onConfirm();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", true);
                CorsChangesDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) CorsChangesDialogFragment.this).requestKey, bundle2);
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CorsChangesDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CorsChangesDialogFragment.this.dismiss();
                if (CorsChangesDialogFragment.this.listener != null) {
                    CorsChangesDialogFragment.this.listener.onClose();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", false);
                bundle2.putBoolean("manual_cancel", true);
                CorsChangesDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) CorsChangesDialogFragment.this).requestKey, bundle2);
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
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.CorsChangesDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (CorsChangesDialogFragment.this.getFragmentManager() != null) {
                        CorsChangesDialogFragment.this.getFragmentManager().beginTransaction().remove(CorsChangesDialogFragment.this).commitAllowingStateLoss();
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
        if (this.listener == null || !isAdded()) {
            return;
        }
        this.listener.onClose();
    }
}
