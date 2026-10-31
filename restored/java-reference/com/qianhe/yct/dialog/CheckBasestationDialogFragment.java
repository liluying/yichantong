package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatTextView;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.utils.GeoCoordsDistanceUtils;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogCheckBaseStationBinding;
import java.text.DecimalFormat;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CheckBasestationDialogFragment extends BaseDialogFragment {
    private DialogCheckBaseStationBinding binding;
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
        this.binding = DialogCheckBaseStationBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("content");
            String string2 = arguments.getString("btnStr");
            this.requestKey = arguments.getString("requestKey", "");
            this.binding.tvContent.setText(string);
            if (!TextUtils.isEmpty(string2)) {
                this.binding.tvSure.setText(string2);
            }
            BaseProEntity baseProEntity = (BaseProEntity) arguments.getSerializable("baseProEntity");
            BaseStationEntity baseStationEntity = (BaseStationEntity) arguments.getSerializable("baseStationEntity");
            if (baseProEntity != null && baseStationEntity != null) {
                DecimalFormat decimalFormat = new DecimalFormat("0.00000000");
                DecimalFormat decimalFormat2 = new DecimalFormat("0.000");
                this.binding.tvOldCoords.setText(getString(R$string.original_base_coords) + ":\n" + decimalFormat.format(baseProEntity.baseStationLon) + "," + decimalFormat.format(baseProEntity.baseStationLat) + "," + decimalFormat2.format(baseProEntity.baseStationElev));
                this.binding.tvNewCoords.setText(getString(R$string.current_base_coords) + ":\n" + decimalFormat.format(baseStationEntity.lon) + "," + decimalFormat.format(baseStationEntity.lat) + "," + decimalFormat2.format(baseStationEntity.elev));
                double dCalculateGeodeticDistance3D = GeoCoordsDistanceUtils.calculateGeodeticDistance3D(new double[]{baseProEntity.baseStationLon, baseProEntity.baseStationLat, baseProEntity.baseStationElev}, new double[]{baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev});
                AppCompatTextView appCompatTextView = this.binding.tvDiffDistance;
                StringBuilder sb = new StringBuilder();
                sb.append(getString(R$string.distance_difference));
                sb.append(":\n");
                sb.append(decimalFormat2.format(dCalculateGeodeticDistance3D));
                sb.append("m");
                appCompatTextView.setText(sb.toString());
            }
        }
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CheckBasestationDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CheckBasestationDialogFragment.this.dismiss();
                if (CheckBasestationDialogFragment.this.listener != null) {
                    CheckBasestationDialogFragment.this.listener.onConfirm();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", true);
                CheckBasestationDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) CheckBasestationDialogFragment.this).requestKey, bundle2);
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CheckBasestationDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CheckBasestationDialogFragment.this.dismiss();
                if (CheckBasestationDialogFragment.this.listener != null) {
                    CheckBasestationDialogFragment.this.listener.onClose();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("confirm", false);
                bundle2.putBoolean("manual_cancel", true);
                CheckBasestationDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) CheckBasestationDialogFragment.this).requestKey, bundle2);
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
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.CheckBasestationDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (CheckBasestationDialogFragment.this.getFragmentManager() != null) {
                        CheckBasestationDialogFragment.this.getFragmentManager().beginTransaction().remove(CheckBasestationDialogFragment.this).commitAllowingStateLoss();
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
    }
}
