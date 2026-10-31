package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.adapter.ChooseListAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseListBinding;
import java.util.ArrayList;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseListDialogFragment extends BaseDialogFragment {
    public static String RADIO_PROTOCOL = "radio_protocol";
    private ChooseListAdapter adapter;
    private DialogChooseListBinding binding;
    private ArrayList<String> mList;
    private OnConfirmListener onConfirmListener;

    public interface OnConfirmListener {
        void onConfirm(int i);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogChooseListBinding.inflate(getLayoutInflater());
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
            this.requestKey = arguments.getString("requestKey", "");
            this.mList = arguments.getStringArrayList("list");
            int i = arguments.getInt("currentIndex", -1);
            boolean z = arguments.getBoolean("showDel", false);
            int i2 = getResources().getConfiguration().orientation;
            if (i2 == 2) {
                this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
            } else if (i2 == 1) {
                this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
            }
            ChooseListAdapter chooseListAdapter = new ChooseListAdapter(requireContext(), this.mList, i, z);
            this.adapter = chooseListAdapter;
            this.binding.rcv.setAdapter(chooseListAdapter);
            this.adapter.setOnActionListener(new ChooseListAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseListDialogFragment.1
                @Override // com.qianhe.yct.adapter.ChooseListAdapter.OnActionListener
                public void onAction(int i3) {
                    if (ChooseListDialogFragment.this.onConfirmListener != null) {
                        ChooseListDialogFragment.this.onConfirmListener.onConfirm(i3);
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putStringArrayList("list", ChooseListDialogFragment.this.mList);
                    bundle2.putInt("index", i3);
                    ChooseListDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseListDialogFragment.this).requestKey, bundle2);
                    ChooseListDialogFragment.this.dismiss();
                }

                @Override // com.qianhe.yct.adapter.ChooseListAdapter.OnActionListener
                public void onDel(int i3) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putStringArrayList("list", ChooseListDialogFragment.this.mList);
                    bundle2.putInt("index", i3);
                    ChooseListDialogFragment.this.getParentFragmentManager().setFragmentResult("delete", bundle2);
                }
            });
        }
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseListDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment.this.dismiss();
            }
        });
        return alertDialogCreate;
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
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.8f : 0.9f)), -2);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseListDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ChooseListDialogFragment.this.getFragmentManager() != null) {
                        ChooseListDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseListDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
