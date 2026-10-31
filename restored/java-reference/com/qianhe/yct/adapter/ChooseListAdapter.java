package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.util.ArrayList;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseListAdapter extends RecyclerView.Adapter {
    private final Context context;
    private final int currnetIndex;
    private final ArrayList<String> mList;
    private OnActionListener onActionListener;
    private final boolean showDel;

    public interface OnActionListener {
        void onAction(int i);

        void onDel(int i);
    }

    public ChooseListAdapter(Context context, ArrayList<String> arrayList, int i) {
        this(context, arrayList, i, false);
    }

    public ChooseListAdapter(Context context, ArrayList<String> arrayList, int i, boolean z) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.mList = arrayList2;
        this.context = context;
        this.showDel = z;
        arrayList2.addAll(arrayList);
        this.currnetIndex = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_list, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) final int i) {
        myViewHolder.tvName.setText(this.mList.get(i));
        myViewHolder.item.setSelected(i == this.currnetIndex);
        myViewHolder.ivDel.setVisibility(this.showDel ? 0 : 8);
        myViewHolder.ivDel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChooseListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseListAdapter.this.onActionListener != null) {
                    ChooseListAdapter.this.onActionListener.onDel(i);
                }
                ChooseListAdapter.this.mList.remove(i);
                ChooseListAdapter.this.notifyDataSetChanged();
            }
        });
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChooseListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseListAdapter.this.onActionListener != null) {
                    ChooseListAdapter.this.onActionListener.onAction(i);
                }
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

    public void refreshData(ArrayList<String> arrayList) {
        this.mList.clear();
        this.mList.addAll(arrayList);
        notifyDataSetChanged();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        ImageView ivDel;
        TextView tvName;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
        }
    }
}
