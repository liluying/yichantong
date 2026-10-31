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
public class ChoiceProjectNameAdapter extends RecyclerView.Adapter {
    private Context context;
    private boolean isMultiple;
    private final List<BaseProEntity> mList;
    private OnActionListener onActionListener;
    private final ArrayList<String> selectedName;

    public interface OnActionListener {
        void onAction(BaseProEntity baseProEntity);
    }

    public ChoiceProjectNameAdapter(Context context, List<BaseProEntity> list) {
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        this.selectedName = new ArrayList<>();
        this.context = context;
        this.isMultiple = this.isMultiple;
        arrayList.addAll(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_multiple_project, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final BaseProEntity baseProEntity = this.mList.get(i);
        myViewHolder.ivSel.setSelected(this.selectedName.contains(baseProEntity.name));
        myViewHolder.tvName.setText(baseProEntity.name);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChoiceProjectNameAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ChoiceProjectNameAdapter.this.selectedName.contains(baseProEntity.name)) {
                    if (!ChoiceProjectNameAdapter.this.isMultiple) {
                        ChoiceProjectNameAdapter.this.selectedName.clear();
                    }
                    ChoiceProjectNameAdapter.this.selectedName.add(baseProEntity.name);
                } else {
                    ChoiceProjectNameAdapter.this.selectedName.remove(baseProEntity.name);
                }
                if (ChoiceProjectNameAdapter.this.onActionListener != null) {
                    ChoiceProjectNameAdapter.this.onActionListener.onAction(baseProEntity);
                }
                ChoiceProjectNameAdapter.this.notifyDataSetChanged();
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

    public void refreshData(List<BaseProEntity> list) {
        this.selectedName.clear();
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
