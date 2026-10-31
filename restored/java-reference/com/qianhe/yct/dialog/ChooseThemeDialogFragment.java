package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.ThemeEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ChooseThemeAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogThemeListBinding;
import com.qianhe.yct.utils.ThemeModeManager;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseThemeDialogFragment extends BaseDialogFragment {
    private DialogThemeListBinding binding;
    private ChooseThemeAdapter chooseThemeAdapter;
    private ArrayList<ThemeEntity> mList;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogThemeListBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.requestKey = arguments.getString("requestKey", "");
        }
        this.binding.tvTitle.setText(getString(R$string.theme_select_theme_mode));
        this.mList = new ArrayList<>(Arrays.asList(new ThemeEntity("system", getString(R$string.theme_select_theme_follow_system)), new ThemeEntity("light", getString(R$string.theme_select_theme_light)), new ThemeEntity("dark", getString(R$string.theme_select_theme_dark))));
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseThemeDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseThemeDialogFragment.this.dismiss();
            }
        });
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        ChooseThemeAdapter chooseThemeAdapter = new ChooseThemeAdapter(requireContext(), this.mList);
        this.chooseThemeAdapter = chooseThemeAdapter;
        this.binding.rcv.setAdapter(chooseThemeAdapter);
        this.chooseThemeAdapter.setOnActionListener(new ChooseThemeAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseThemeDialogFragment.2
            @Override // com.qianhe.yct.adapter.ChooseThemeAdapter.OnActionListener
            public void onAction(String str) {
                ChooseThemeDialogFragment.this.dismiss();
                if (str.equals(ThemeModeManager.getSavedMode(ChooseThemeDialogFragment.this.requireContext()))) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("themeMode", str);
                ChooseThemeDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseThemeDialogFragment.this).requestKey, bundle2);
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
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseThemeDialogFragment.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ChooseThemeDialogFragment.this.getFragmentManager() != null) {
                        ChooseThemeDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseThemeDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
