package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChoiceMultipleProjectAdapter extends RecyclerView.Adapter {
    private Context context;
    private final List<BaseProEntity> mList;
    private OnActionListener onActionListener;
    private final ArrayList<String> selectedProjectIds;

    public interface OnActionListener {
        void onAction(ArrayList<String> arrayList);
    }

    public ChoiceMultipleProjectAdapter(Context context, List<BaseProEntity> list, ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        this.mList = arrayList2;
        ArrayList<String> arrayList3 = new ArrayList<>();
        this.selectedProjectIds = arrayList3;
        this.context = context;
        arrayList2.addAll(list);
        arrayList3.addAll(arrayList);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_multiple_project, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final BaseProEntity baseProEntity = this.mList.get(i);
        myViewHolder.ivSel.setSelected(this.selectedProjectIds.contains(String.valueOf(baseProEntity.projectId)));
        myViewHolder.tvName.setText(baseProEntity.name);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChoiceMultipleProjectAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ChoiceMultipleProjectAdapter.this.selectedProjectIds.contains(String.valueOf(baseProEntity.projectId))) {
                    ChoiceMultipleProjectAdapter.this.selectedProjectIds.add(String.valueOf(baseProEntity.projectId));
                } else {
                    ChoiceMultipleProjectAdapter.this.selectedProjectIds.remove(String.valueOf(baseProEntity.projectId));
                }
                if (ChoiceMultipleProjectAdapter.this.onActionListener != null) {
                    ChoiceMultipleProjectAdapter.this.onActionListener.onAction(ChoiceMultipleProjectAdapter.this.selectedProjectIds);
                }
                ChoiceMultipleProjectAdapter.this.notifyDataSetChanged();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }

    public void refreshData(List<BaseProEntity> list, ArrayList<String> arrayList) {
        this.selectedProjectIds.clear();
        this.selectedProjectIds.addAll(arrayList);
        this.mList.clear();
        this.mList.addAll(list);
        notifyDataSetChanged();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        ImageView ivSel;
        TextView tvName;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
        }
    }
}
