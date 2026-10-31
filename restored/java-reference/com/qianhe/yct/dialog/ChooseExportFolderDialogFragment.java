package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ChooseListAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseExportFolderBinding;
import com.tencent.smtt.sdk.ProxyConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.util.InternalZipConstants;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseExportFolderDialogFragment extends BaseDialogFragment {
    private ChooseListAdapter adapter;
    private DialogChooseExportFolderBinding binding;
    private File currentDir;
    private final List<File> folderList = new ArrayList();
    private OnConfirmListener onConfirmListener;
    private File rootDir;

    public interface OnConfirmListener {
        void onConfirm(File file);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogChooseExportFolderBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        this.rootDir = externalStorageDirectory;
        this.currentDir = externalStorageDirectory;
        this.adapter = new ChooseListAdapter(requireContext(), new ArrayList(), -1);
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.binding.rcv.setAdapter(this.adapter);
        this.adapter.setOnActionListener(new ChooseListAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment.2
            @Override // com.qianhe.yct.adapter.ChooseListAdapter.OnActionListener
            public void onDel(int i) {
            }

            @Override // com.qianhe.yct.adapter.ChooseListAdapter.OnActionListener
            public void onAction(int i) {
                if (i < 0 || i >= ChooseExportFolderDialogFragment.this.folderList.size()) {
                    return;
                }
                ChooseExportFolderDialogFragment chooseExportFolderDialogFragment = ChooseExportFolderDialogFragment.this;
                chooseExportFolderDialogFragment.enterFolder((File) chooseExportFolderDialogFragment.folderList.get(i));
            }
        });
        reloadFolders();
        this.binding.tvUp.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.goParent();
            }
        });
        this.binding.tvNewFolder.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showNewFolderPanel();
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseExportFolderDialogFragment.$r8$lambda$lLIHdWOO_mjkAPa31ruTlYvRgVc(this.f$0, view);
            }
        });
        this.binding.fltClear.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.edtFolderName.setText("");
            }
        });
        this.binding.tvNewCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.hideNewFolderPanel();
            }
        });
        this.binding.tvNewConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.createFolder();
            }
        });
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$lLIHdWOO_mjkAPa31ruTlYvRgVc(ChooseExportFolderDialogFragment chooseExportFolderDialogFragment, View view) {
        File file;
        OnConfirmListener onConfirmListener = chooseExportFolderDialogFragment.onConfirmListener;
        if (onConfirmListener != null && (file = chooseExportFolderDialogFragment.currentDir) != null) {
            onConfirmListener.onConfirm(file);
        }
        chooseExportFolderDialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterFolder(File file) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        this.currentDir = file;
        reloadFolders();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goParent() {
        File parentFile;
        if (this.currentDir == null || isAtRoot() || (parentFile = this.currentDir.getParentFile()) == null) {
            return;
        }
        this.currentDir = parentFile;
        reloadFolders();
    }

    private boolean isAtRoot() {
        File file = this.currentDir;
        if (file == null || this.rootDir == null) {
            return true;
        }
        return file.getAbsolutePath().equals(this.rootDir.getAbsolutePath());
    }

    private boolean isHiddenAppFolder(File file) {
        return file != null && isAtRoot() && isHiddenAppFolderName(file.getName());
    }

    private static boolean isHiddenAppFolderName(String str) {
        return "YCT".equalsIgnoreCase(str) || "XFIX".equalsIgnoreCase(str);
    }

    private void reloadFolders() {
        if (this.currentDir == null) {
            this.currentDir = this.rootDir;
        }
        this.binding.tvPath.setText(this.currentDir.getAbsolutePath());
        this.binding.tvUp.setEnabled(!isAtRoot());
        this.binding.tvUp.setAlpha(isAtRoot() ? 0.4f : 1.0f);
        this.folderList.clear();
        File[] fileArrListFiles = this.currentDir.listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment.3
                @Override // java.util.Comparator
                public int compare(File file, File file2) {
                    return file.getName().compareToIgnoreCase(file2.getName());
                }
            });
            for (File file : fileArrListFiles) {
                if (file.isDirectory() && !file.isHidden() && !file.getName().startsWith(".") && !isHiddenAppFolder(file)) {
                    this.folderList.add(file);
                }
            }
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<File> it = this.folderList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        this.adapter.refreshData(arrayList);
        boolean zIsEmpty = arrayList.isEmpty();
        this.binding.rcv.setVisibility(zIsEmpty ? 8 : 0);
        this.binding.tvEmpty.setVisibility(zIsEmpty ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNewFolderPanel() {
        this.binding.tvTitle.setText(R$string.new_folder);
        this.binding.lltPicker.setVisibility(8);
        this.binding.lltNewFolder.setVisibility(0);
        this.binding.edtFolderName.setText("");
        this.binding.edtFolderName.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideNewFolderPanel() {
        this.binding.tvTitle.setText(R$string.select_export_folder);
        this.binding.lltNewFolder.setVisibility(8);
        this.binding.lltPicker.setVisibility(0);
        this.binding.edtFolderName.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFolder() {
        String strTrim = this.binding.edtFolderName.getText() == null ? "" : this.binding.edtFolderName.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            showToastDialog(getString(R$string.folder_name_empty));
            return;
        }
        if (strTrim.equals(".") || strTrim.equals("..") || strTrim.contains(InternalZipConstants.ZIP_FILE_SEPARATOR) || strTrim.contains("\\") || strTrim.contains(":") || strTrim.contains(ProxyConfig.MATCH_ALL_SCHEMES) || strTrim.contains("?") || strTrim.contains(AngleFormat.STR_SEC_SYMBOL) || strTrim.contains("<") || strTrim.contains(">") || strTrim.contains("|") || (isAtRoot() && isHiddenAppFolderName(strTrim))) {
            showToastDialog(getString(R$string.folder_name_invalid));
            return;
        }
        File file = new File(this.currentDir, strTrim);
        if (file.exists()) {
            showToastDialog(getString(R$string.folder_already_exists));
        } else if (!file.mkdirs()) {
            showToastDialog(getString(R$string.create_folder_failed));
        } else {
            hideNewFolderPanel();
            enterFolder(file);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                float f = isPad() ? 0.8f : 0.9f;
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * f), -2);
                int i = (int) (getResources().getDisplayMetrics().heightPixels * f);
                ViewGroup.LayoutParams layoutParams = this.binding.rcv.getLayoutParams();
                layoutParams.height = i;
                this.binding.rcv.setLayoutParams(layoutParams);
                ViewGroup.LayoutParams layoutParams2 = this.binding.tvEmpty.getLayoutParams();
                layoutParams2.height = i;
                this.binding.tvEmpty.setLayoutParams(layoutParams2);
                setWindowsCallback(window);
            }
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseExportFolderDialogFragment.4
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ChooseExportFolderDialogFragment.this.getFragmentManager() != null) {
                        ChooseExportFolderDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseExportFolderDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.onConfirmListener = onConfirmListener;
    }
}
