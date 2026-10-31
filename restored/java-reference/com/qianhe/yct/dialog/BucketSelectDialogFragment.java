package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.adapter.BucketSelectDialogAdapter;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogBucketSelectBinding;
import com.qianhe.yct.db.DatabaseManager;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketSelectDialogFragment extends BaseDialogFragment {
    private BucketSelectDialogAdapter adapter;
    private DialogBucketSelectBinding binding;
    private boolean filterDistanceMeasure;
    private boolean hasMeasureFilter;
    private List<ShovelEntity> mList;
    private int currentIndex = -1;
    private String resultRequestKey = "bucket_select";

    public static BucketSelectDialogFragment newInstance(boolean z, String str) {
        return newInstance(z, str, 0);
    }

    public static BucketSelectDialogFragment newInstance(boolean z, String str, int i) {
        BucketSelectDialogFragment bucketSelectDialogFragment = new BucketSelectDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("distanceMeasure", z);
        bundle.putString("requestKey", str);
        bundle.putInt("currentIndex", -1);
        if (i != 0) {
            bundle.putInt(Proj4Keyword.title, i);
        }
        bucketSelectDialogFragment.setArguments(bundle);
        return bucketSelectDialogFragment;
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
        if (arguments != null) {
            this.currentIndex = arguments.getInt("currentIndex", arguments.getInt("currentIndex", -1));
            this.hasMeasureFilter = arguments.containsKey("distanceMeasure");
            this.filterDistanceMeasure = arguments.getBoolean("distanceMeasure", false);
            String string = arguments.getString("requestKey");
            if (string != null && !string.isEmpty()) {
                this.resultRequestKey = string;
            } else if (this.hasMeasureFilter) {
                this.resultRequestKey = this.filterDistanceMeasure ? "bucket_select_distance" : "bucket_select_reading";
            }
            int i = arguments.getInt(Proj4Keyword.title, 0);
            if (i != 0) {
                this.binding.tvTitle.setText(i);
            }
        }
        loadBucketList();
        return alertDialogCreate;
    }

    private void loadBucketList() {
        List<ShovelEntity> listQueryShovelByName = DatabaseManager.getInstance(requireActivity()).queryShovelByName(null);
        this.mList = new ArrayList();
        if (listQueryShovelByName != null) {
            for (ShovelEntity shovelEntity : listQueryShovelByName) {
                if (!shovelEntity.usesAutoGenerateParams() && !TextUtils.isEmpty(shovelEntity.param) && (!this.hasMeasureFilter || shovelEntity.usesDistanceMeasure() == this.filterDistanceMeasure)) {
                    this.mList.add(shovelEntity);
                }
            }
        }
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
        } else {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        }
        BucketSelectDialogAdapter bucketSelectDialogAdapter = new BucketSelectDialogAdapter(requireContext(), this.mList, this.currentIndex);
        this.adapter = bucketSelectDialogAdapter;
        this.binding.rcv.setAdapter(bucketSelectDialogAdapter);
        this.adapter.setOnItemClickListener(new BucketSelectDialogAdapter.OnItemClickListener() { // from class: com.qianhe.yct.dialog.BucketSelectDialogFragment$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.adapter.BucketSelectDialogAdapter.OnItemClickListener
            public final void onItemClick(int i, ShovelEntity shovelEntity2) {
                BucketSelectDialogFragment.$r8$lambda$0vZNH3thgfccWu7CSUj08oOIKns(this.f$0, i, shovelEntity2);
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.BucketSelectDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvCreate.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.BucketSelectDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketSelectDialogFragment.$r8$lambda$ttkbnv_fg49uoA0lMDwFpiq0UOI(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$0vZNH3thgfccWu7CSUj08oOIKns(BucketSelectDialogFragment bucketSelectDialogFragment, int i, ShovelEntity shovelEntity) {
        bucketSelectDialogFragment.getClass();
        Bundle bundle = new Bundle();
        bundle.putSerializable("bucket", shovelEntity);
        bundle.putBoolean("createNew", false);
        bucketSelectDialogFragment.getParentFragmentManager().setFragmentResult(bucketSelectDialogFragment.resultRequestKey, bundle);
        bucketSelectDialogFragment.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$ttkbnv_fg49uoA0lMDwFpiq0UOI(BucketSelectDialogFragment bucketSelectDialogFragment, View view) {
        bucketSelectDialogFragment.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("createNew", true);
        bucketSelectDialogFragment.getParentFragmentManager().setFragmentResult(bucketSelectDialogFragment.resultRequestKey, bundle);
        bucketSelectDialogFragment.dismiss();
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
