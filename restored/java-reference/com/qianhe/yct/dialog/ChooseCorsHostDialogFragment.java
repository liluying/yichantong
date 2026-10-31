package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.HostListAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseCorsBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.CorsProviderInputDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.LocationUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseCorsHostDialogFragment extends BaseDialogFragment {
    private DialogChooseCorsBinding binding;
    private HostListAdapter corsListAdapter;
    private GGAEntity mGGa;
    private OnConfirmListener onConfirmListener;
    private long currentUsedCorsId = -1;
    private String currentUsedCorsName = "";
    private boolean selectionConfirmed = false;

    public interface OnConfirmListener {
        void onConfirm(CorsEntity corsEntity);

        void onCustom();
    }

    public interface OnDismissListener {
    }

    /* renamed from: -$$Nest$fgetonDismissListener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnDismissListener m2062$$Nest$fgetonDismissListener(ChooseCorsHostDialogFragment chooseCorsHostDialogFragment) {
        chooseCorsHostDialogFragment.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) throws NumberFormatException {
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
            this.mGGa = (GGAEntity) arguments.getSerializable("gga");
            this.currentUsedCorsId = arguments.getLong("currentUsedCorsId", -1L);
            this.currentUsedCorsName = arguments.getString("currentUsedCorsName", "");
        }
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        List<CorsEntity> listBuildCorsList = buildCorsList();
        HostListAdapter hostListAdapter = new HostListAdapter(requireContext(), listBuildCorsList);
        this.corsListAdapter = hostListAdapter;
        hostListAdapter.refreshData(listBuildCorsList, this.currentUsedCorsId, this.currentUsedCorsName);
        this.binding.rcv.setAdapter(this.corsListAdapter);
        this.corsListAdapter.setOnActionListener(new HostListAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.adapter.HostListAdapter.OnActionListener
            public final void onAction(CorsEntity corsEntity) {
                ChooseCorsHostDialogFragment.$r8$lambda$VyioaqGd4FK3Zgl4J6rXZlXMUe4(this.f$0, corsEntity);
            }
        });
        this.corsListAdapter.setOnMenuListener(new HostListAdapter.OnMenuListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment.1
            @Override // com.qianhe.yct.adapter.HostListAdapter.OnMenuListener
            public void onEdit(CorsEntity corsEntity) {
                ChooseCorsHostDialogFragment.this.showEditProviderDialog(corsEntity);
            }

            @Override // com.qianhe.yct.adapter.HostListAdapter.OnMenuListener
            public void onDelete(CorsEntity corsEntity) {
                ChooseCorsHostDialogFragment.this.confirmDeleteProvider(corsEntity);
            }

            @Override // com.qianhe.yct.adapter.HostListAdapter.OnMenuListener
            public void onDeleteCurrentBlocked() {
                ChooseCorsHostDialogFragment chooseCorsHostDialogFragment = ChooseCorsHostDialogFragment.this;
                chooseCorsHostDialogFragment.showToastDialog(chooseCorsHostDialogFragment.getString(R$string.cannot_delete_current_provider));
            }

            @Override // com.qianhe.yct.adapter.HostListAdapter.OnMenuListener
            public void onPresetBlocked() {
                ChooseCorsHostDialogFragment chooseCorsHostDialogFragment = ChooseCorsHostDialogFragment.this;
                chooseCorsHostDialogFragment.showToastDialog(chooseCorsHostDialogFragment.getString(R$string.cannot_delete_preset_provider));
            }
        });
        this.binding.tvCreate.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseCorsHostDialogFragment.$r8$lambda$0ZQfJUH9mL9aFllAwNtjgF3PgAA(this.f$0, view);
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$VyioaqGd4FK3Zgl4J6rXZlXMUe4(ChooseCorsHostDialogFragment chooseCorsHostDialogFragment, CorsEntity corsEntity) {
        chooseCorsHostDialogFragment.selectionConfirmed = true;
        chooseCorsHostDialogFragment.dismiss();
        OnConfirmListener onConfirmListener = chooseCorsHostDialogFragment.onConfirmListener;
        if (onConfirmListener != null) {
            onConfirmListener.onConfirm(corsEntity);
        }
    }

    public static /* synthetic */ void $r8$lambda$0ZQfJUH9mL9aFllAwNtjgF3PgAA(ChooseCorsHostDialogFragment chooseCorsHostDialogFragment, View view) {
        chooseCorsHostDialogFragment.selectionConfirmed = true;
        chooseCorsHostDialogFragment.dismiss();
        OnConfirmListener onConfirmListener = chooseCorsHostDialogFragment.onConfirmListener;
        if (onConfirmListener != null) {
            onConfirmListener.onCustom();
        }
    }

    private List<CorsEntity> buildCorsList() throws NumberFormatException {
        ArrayList arrayList = new ArrayList();
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(requireContext()).queryCORS(null);
        if (listQueryCORS != null && !listQueryCORS.isEmpty()) {
            arrayList.addAll(listQueryCORS);
        }
        String strLoadJsonCors = loadJsonCors();
        if (!TextUtils.isEmpty(strLoadJsonCors)) {
            try {
                List list = (List) new Gson().fromJson(strLoadJsonCors, new TypeToken<List<CorsEntity>>() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment.2
                }.getType());
                if (list != null && !list.isEmpty()) {
                    arrayList.addAll(list);
                    return arrayList;
                }
            } catch (Exception e) {
                e.printStackTrace();
                LogToFile.e("解析cors.json失败：" + e);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCorsList() {
        HostListAdapter hostListAdapter = this.corsListAdapter;
        if (hostListAdapter != null) {
            hostListAdapter.refreshData(buildCorsList(), this.currentUsedCorsId, this.currentUsedCorsName);
        }
    }

    private boolean isCurrentUsedProvider(CorsEntity corsEntity) {
        long j = corsEntity.id;
        if (j > 0) {
            long j2 = this.currentUsedCorsId;
            if (j2 > 0 && j == j2) {
                return true;
            }
        }
        return !TextUtils.isEmpty(this.currentUsedCorsName) && this.currentUsedCorsName.equals(corsEntity.corsName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEditProviderDialog(final CorsEntity corsEntity) {
        DialogFragment dialogFragment = (DialogFragment) getChildFragmentManager().findFragmentByTag("CorsProviderInputDialogFragment");
        if (dialogFragment != null) {
            dialogFragment.dismissAllowingStateLoss();
        }
        CorsProviderInputDialogFragment corsProviderInputDialogFragment = new CorsProviderInputDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.edit_service_provider_name));
        bundle.putString("providerName", corsEntity.corsName);
        bundle.putLong("excludeCorsId", corsEntity.id);
        corsProviderInputDialogFragment.setArguments(bundle);
        corsProviderInputDialogFragment.setOnConfirmListener(new CorsProviderInputDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3
            @Override // com.qianhe.yct.dialog.CorsProviderInputDialogFragment.OnConfirmListener
            public final void onConfirm(String str) {
                ChooseCorsHostDialogFragment.m2061$r8$lambda$tMW_8vowsaWCS180drsjkNdqWA(this.f$0, corsEntity, str);
            }
        });
        corsProviderInputDialogFragment.show(getChildFragmentManager(), "CorsProviderInputDialogFragment");
    }

    /* renamed from: $r8$lambda$tMW_8vowsaWCS180-drsjkNdqWA, reason: not valid java name */
    public static /* synthetic */ void m2061$r8$lambda$tMW_8vowsaWCS180drsjkNdqWA(ChooseCorsHostDialogFragment chooseCorsHostDialogFragment, CorsEntity corsEntity, String str) {
        chooseCorsHostDialogFragment.getClass();
        corsEntity.corsName = str;
        DatabaseManager.getInstance(chooseCorsHostDialogFragment.requireContext()).updateCORS(corsEntity);
        chooseCorsHostDialogFragment.refreshCorsList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmDeleteProvider(final CorsEntity corsEntity) {
        if (isCurrentUsedProvider(corsEntity)) {
            showToastDialog(getString(R$string.cannot_delete_current_provider));
            return;
        }
        TipsDialogFragment tipsDialogFragment = new TipsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", getString(R$string.want_to_delete) + "?");
        bundle.putString("btnStr", getString(R$string.confirm));
        tipsDialogFragment.setArguments(bundle);
        tipsDialogFragment.setOnConfirmListener(new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment.3
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                DatabaseManager.getInstance(ChooseCorsHostDialogFragment.this.requireContext()).deleteCORS(corsEntity);
                ChooseCorsHostDialogFragment.this.refreshCorsList();
            }
        });
        tipsDialogFragment.show(getChildFragmentManager(), "TipsDialogFragment");
    }

    private String loadJsonCors() throws NumberFormatException {
        String string = this.mSp.getString("current_coords", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                double d = Double.parseDouble(string.split(",")[0]);
                double d2 = Double.parseDouble(string.split(",")[1]);
                if (YCTApplication.getInstance().isDemo()) {
                    if (LocationUtils.isChinaMainland(d2, d)) {
                        return readFromAssets("cors.json");
                    }
                    return readFromAssets("cors_en.json");
                }
                GGAEntity gGAEntity = this.mGGa;
                if (gGAEntity != null) {
                    double d3 = gGAEntity.latitude;
                    if (d3 != 0.0d) {
                        double d4 = gGAEntity.longitude;
                        if (d4 != 0.0d && LocationUtils.isChinaMainland(d3, d4)) {
                            return readFromAssets("cors.json");
                        }
                    }
                }
                GGAEntity gGAEntity2 = this.mGGa;
                if ((gGAEntity2 == null || (gGAEntity2.latitude == 0.0d && gGAEntity2.longitude == 0.0d)) && LocationUtils.isChinaMainland(d2, d)) {
                    return readFromAssets("cors.json");
                }
                return readFromAssets("cors_en.json");
            } catch (Exception unused) {
            }
        }
        return "";
    }

    private String readFromAssets(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(requireContext().getAssets().open(str)));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
            }
            bufferedReader.close();
        } catch (IOException e) {
            LogToFile.e("读取assets文件失败：" + e);
        }
        return sb.toString();
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
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseCorsHostDialogFragment.4
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    ChooseCorsHostDialogFragment.m2062$$Nest$fgetonDismissListener(ChooseCorsHostDialogFragment.this);
                    if (ChooseCorsHostDialogFragment.this.getFragmentManager() != null) {
                        ChooseCorsHostDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseCorsHostDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }
}
