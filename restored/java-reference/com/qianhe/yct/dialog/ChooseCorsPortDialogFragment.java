package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.adapter.PortListAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseCorsBinding;
import com.qianhe.yct.utils.CorsPortUtils;
import java.util.List;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseCorsPortDialogFragment extends BaseDialogFragment {
    private DialogChooseCorsBinding binding;
    private String mHost;
    private OnConfirmListener onConfirmListener;

    public interface OnConfirmListener {
        void empty();

        void onConfirm(CorsEntity.PortEntity portEntity);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogChooseCorsBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvTitle.setText(arguments.getString(Proj4Keyword.title));
            this.mHost = arguments.getString("host");
        }
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseCorsPortDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvCreate.setVisibility(8);
        List<CorsEntity.PortEntity> presetPorts = CorsPortUtils.getPresetPorts(requireContext(), this.mHost);
        if (!presetPorts.isEmpty()) {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
            PortListAdapter portListAdapter = new PortListAdapter(requireContext(), presetPorts);
            this.binding.rcv.setAdapter(portListAdapter);
            portListAdapter.setOnActionListener(new PortListAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseCorsPortDialogFragment$$ExternalSyntheticLambda2
                @Override // com.qianhe.yct.adapter.PortListAdapter.OnActionListener
                public final void onAction(CorsEntity.PortEntity portEntity) {
                    ChooseCorsPortDialogFragment.$r8$lambda$fq01iGZDCIvshAEjEO6quW0oeCo(this.f$0, portEntity);
                }
            });
        }
        if (this.onConfirmListener != null && presetPorts.isEmpty()) {
            this.onConfirmListener.empty();
        }
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$fq01iGZDCIvshAEjEO6quW0oeCo(ChooseCorsPortDialogFragment chooseCorsPortDialogFragment, CorsEntity.PortEntity portEntity) {
        chooseCorsPortDialogFragment.dismiss();
        OnConfirmListener onConfirmListener = chooseCorsPortDialogFragment.onConfirmListener;
        if (onConfirmListener != null) {
            onConfirmListener.onConfirm(portEntity);
        }
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.onConfirmListener = onConfirmListener;
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
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseCorsPortDialogFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ChooseCorsPortDialogFragment.$r8$lambda$TrqN6vMCcgGt2AT9hs8JzZOBCsI(this.f$0, dialogInterface);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$TrqN6vMCcgGt2AT9hs8JzZOBCsI(ChooseCorsPortDialogFragment chooseCorsPortDialogFragment, DialogInterface dialogInterface) {
        if (chooseCorsPortDialogFragment.getFragmentManager() != null) {
            chooseCorsPortDialogFragment.getFragmentManager().beginTransaction().remove(chooseCorsPortDialogFragment).commitAllowingStateLoss();
        }
    }
}
