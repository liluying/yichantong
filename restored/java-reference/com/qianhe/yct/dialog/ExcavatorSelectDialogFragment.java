package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ExcavatorSelectDialogAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogBucketSelectBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorSelectDialogFragment extends BaseDialogFragment {
    private DialogBucketSelectBinding binding;
    private String resultRequestKey = "forearm_select";

    public static ExcavatorSelectDialogFragment newInstance() {
        return newInstance("forearm_select", R$string.select_forearm);
    }

    public static ExcavatorSelectDialogFragment newBucketSourceInstance() {
        return newInstance("bucket_from_excavator", R$string.select_bucket);
    }

    public static ExcavatorSelectDialogFragment newInstance(String str, int i) {
        ExcavatorSelectDialogFragment excavatorSelectDialogFragment = new ExcavatorSelectDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("requestKey", str);
        bundle.putInt(Proj4Keyword.title, i);
        excavatorSelectDialogFragment.setArguments(bundle);
        return excavatorSelectDialogFragment;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogBucketSelectBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        int i = R$string.select_forearm;
        if (arguments != null) {
            String string = arguments.getString("requestKey");
            if (!TextUtils.isEmpty(string)) {
                this.resultRequestKey = string;
            }
            i = arguments.getInt(Proj4Keyword.title, i);
        }
        this.binding.tvTitle.setText(i);
        loadExcavatorList();
        return alertDialogCreate;
    }

    private void loadExcavatorList() {
        List<ExcavatorEntity> listQueryExcavatorByUserId = DatabaseManager.getInstance(requireActivity()).queryExcavatorByUserId(0L);
        ArrayList arrayList = new ArrayList();
        if (listQueryExcavatorByUserId != null) {
            for (ExcavatorEntity excavatorEntity : listQueryExcavatorByUserId) {
                if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.calibParams) && !CalibParamsIdUtil.isMode1Excavator(excavatorEntity)) {
                    arrayList.add(excavatorEntity);
                }
            }
        }
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
        } else {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        }
        ExcavatorSelectDialogAdapter excavatorSelectDialogAdapter = new ExcavatorSelectDialogAdapter(requireContext(), arrayList, -1);
        this.binding.rcv.setAdapter(excavatorSelectDialogAdapter);
        excavatorSelectDialogAdapter.setOnItemClickListener(new ExcavatorSelectDialogAdapter.OnItemClickListener() { // from class: com.qianhe.yct.dialog.ExcavatorSelectDialogFragment$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.adapter.ExcavatorSelectDialogAdapter.OnItemClickListener
            public final void onItemClick(int i, ExcavatorEntity excavatorEntity2) {
                ExcavatorSelectDialogFragment.$r8$lambda$YD6h9L1OU1nuRk_mGnojzreWjUE(this.f$0, i, excavatorEntity2);
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ExcavatorSelectDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvCreate.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ExcavatorSelectDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorSelectDialogFragment.$r8$lambda$NE4lvt7vH19_bJ6oE0VjLezu4lU(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$YD6h9L1OU1nuRk_mGnojzreWjUE(ExcavatorSelectDialogFragment excavatorSelectDialogFragment, int i, ExcavatorEntity excavatorEntity) {
        excavatorSelectDialogFragment.getClass();
        Bundle bundle = new Bundle();
        bundle.putSerializable("excavator", excavatorEntity);
        bundle.putBoolean("createNew", false);
        excavatorSelectDialogFragment.getParentFragmentManager().setFragmentResult(excavatorSelectDialogFragment.resultRequestKey, bundle);
        excavatorSelectDialogFragment.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$NE4lvt7vH19_bJ6oE0VjLezu4lU(ExcavatorSelectDialogFragment excavatorSelectDialogFragment, View view) {
        excavatorSelectDialogFragment.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("createNew", true);
        excavatorSelectDialogFragment.getParentFragmentManager().setFragmentResult(excavatorSelectDialogFragment.resultRequestKey, bundle);
        excavatorSelectDialogFragment.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.8f : 0.9f)), -2);
    }
}
