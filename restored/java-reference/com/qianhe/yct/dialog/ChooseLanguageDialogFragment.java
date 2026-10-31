package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.bean.LanguageEntity;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ChooseLanguageAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogLanguageListBinding;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseLanguageDialogFragment extends BaseDialogFragment {
    private ChooseLanguageAdapter adapter;
    private DialogLanguageListBinding binding;
    private ArrayList<LanguageEntity> mList;

    public interface OnConfirmListener {
    }

    /* renamed from: -$$Nest$fgetonConfirmListener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnConfirmListener m2070$$Nest$fgetonConfirmListener(ChooseLanguageDialogFragment chooseLanguageDialogFragment) {
        chooseLanguageDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogLanguageListBinding.inflate(getLayoutInflater());
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
        this.binding.tvTitle.setText(getString(R$string.select_language));
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseLanguageDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseLanguageDialogFragment.this.dismiss();
            }
        });
        this.mList = (ArrayList) new Gson().fromJson(loadLanguagesJson(requireContext()), new TypeToken<List<LanguageEntity>>() { // from class: com.qianhe.yct.dialog.ChooseLanguageDialogFragment.2
        }.getType());
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        ChooseLanguageAdapter chooseLanguageAdapter = new ChooseLanguageAdapter(requireContext(), this.mList);
        this.adapter = chooseLanguageAdapter;
        this.binding.rcv.setAdapter(chooseLanguageAdapter);
        this.adapter.setOnActionListener(new ChooseLanguageAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseLanguageDialogFragment.3
            @Override // com.qianhe.yct.adapter.ChooseLanguageAdapter.OnActionListener
            public void onAction(String str) {
                ChooseLanguageDialogFragment.this.dismiss();
                if (str.equals(LanguagePrefs.getSavedLanguage(ChooseLanguageDialogFragment.this.requireContext()))) {
                    return;
                }
                ChooseLanguageDialogFragment.m2070$$Nest$fgetonConfirmListener(ChooseLanguageDialogFragment.this);
                Bundle bundle2 = new Bundle();
                bundle2.putString("languageCode", str);
                ChooseLanguageDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseLanguageDialogFragment.this).requestKey, bundle2);
            }
        });
        return alertDialogCreate;
    }

    private String loadLanguagesJson(Context context) throws IOException {
        try {
            InputStream inputStreamOpen = context.getAssets().open("languages.json");
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            return new String(bArr, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
            LogToFile.e("读取语言列表失败：" + e);
            return "{}";
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
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseLanguageDialogFragment.4
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ChooseLanguageDialogFragment.this.getFragmentManager() != null) {
                        ChooseLanguageDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseLanguageDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
