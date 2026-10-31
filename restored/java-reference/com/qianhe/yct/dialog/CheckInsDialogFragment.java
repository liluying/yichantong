package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogCheckInsBinding;
import com.qianhe.yct.enums.InsStatusEnum;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CheckInsDialogFragment extends BaseDialogFragment {
    private DialogCheckInsBinding binding;
    private boolean ignoreTiltReject;
    private OnActionListener listener;

    public interface OnActionListener {
        void onClose();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.listener = onActionListener;
    }

    public void setIgnoreTiltReject(boolean z) {
        this.ignoreTiltReject = z;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        EventBus.getDefault().register(this);
        this.binding = DialogCheckInsBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        this.binding.tvOk.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CheckInsDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckInsDialogFragment.$r8$lambda$XgLduH8gCDfLxdxw78jjRL5yG1E(this.f$0, view);
            }
        });
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$XgLduH8gCDfLxdxw78jjRL5yG1E(CheckInsDialogFragment checkInsDialogFragment, View view) {
        checkInsDialogFragment.dismiss();
        OnActionListener onActionListener = checkInsDialogFragment.listener;
        if (onActionListener != null) {
            onActionListener.onClose();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
        if (gGAEntity == null || gGAEntity.deviceType != DeviceType.ZPY) {
            return;
        }
        updateSolutionStatus(gGAEntity.quality);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsNavi insNavi) {
        if (insNavi == null || insNavi.deviceType != DeviceType.ZPY) {
            return;
        }
        int iFilterInsStatus = filterInsStatus(insNavi.insStaus);
        updateInsStatus(iFilterInsStatus);
        if ((InsStatusEnum.READY.getStatus() & iFilterInsStatus) != 0 || shouldDismissAfterFilter(insNavi.insStaus, iFilterInsStatus)) {
            dismiss();
        }
    }

    private int filterInsStatus(int i) {
        return shouldIgnoreSensorLost() ? i & (~InsStatusEnum.SENSORLOST.getStatus()) : i;
    }

    private boolean shouldIgnoreSensorLost() {
        return (getActivity() instanceof BaseActivity) && ((BaseActivity) getActivity()).shouldIgnoreBucketSensorLost();
    }

    private boolean shouldDismissAfterFilter(int i, int i2) {
        return shouldIgnoreSensorLost() && (i & InsStatusEnum.SENSORLOST.getStatus()) != 0 && (InsStatusEnum.GNSSLOST.getStatus() & i2) == 0 && (InsStatusEnum.GNSSREJECT.getStatus() & i2) == 0 && (this.ignoreTiltReject || (InsStatusEnum.TILTREJECT.getStatus() & i2) == 0);
    }

    private void updateSolutionStatus(int i) {
        String string;
        boolean z = i == 4;
        if (i == 0) {
            string = getString(R$string.invalid_solution);
        } else if (i == 1) {
            string = getString(R$string.singlepoint_solution);
        } else if (i == 2) {
            string = getString(R$string.diff_solution);
        } else if (i == 4) {
            string = getString(R$string.fixed_solution);
        } else if (i == 5) {
            string = getString(R$string.float_solution);
        } else {
            string = getString(R$string.unknown_solution) + i;
        }
        this.binding.tvSolutionStatus.setText(string);
        this.binding.tvSolutionStatus.setTextColor(ContextCompat.getColor(requireContext(), z ? R$color.text_black : R$color.red));
    }

    private void updateInsStatus(int i) {
        String string;
        String string2 = getString(R$string.ins_low_accuracy_warning2);
        boolean z = (InsStatusEnum.READY.getStatus() & i) != 0;
        if ((InsStatusEnum.GNSSLOST.getStatus() & i) != 0) {
            string = getString(R$string.lost_star);
        } else if (!this.ignoreTiltReject && (InsStatusEnum.TILTREJECT.getStatus() & i) != 0) {
            string = getString(R$string.swing);
        } else if ((InsStatusEnum.SENSORLOST.getStatus() & i) != 0) {
            string = getString(R$string.sensor_offline);
            string2 = getString(R$string.please_reconnect_sensor);
        } else if ((InsStatusEnum.GNSSREJECT.getStatus() & i) != 0) {
            string = getString(R$string.ins_invalid);
        } else if ((i & InsStatusEnum.TILTREJECT.getStatus()) != 0) {
            string = getString(R$string.swing);
        } else if (!z) {
            string = "";
        } else {
            string = getString(R$string.ins_ok);
            dismiss();
        }
        this.binding.tvInsStatus.setText(string);
        this.binding.tvInsStatus.setTextColor(ContextCompat.getColor(requireContext(), z ? R$color.text_black : R$color.red));
        this.binding.tvWarning2.setText(string2);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        dialog.getWindow().setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.5f : 0.8f)), -2);
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
