package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.util.ArrayList;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseWifiAdapter extends RecyclerView.Adapter {
    private final Context context;
    private final String currentName;
    private final ArrayList<String> mList;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(int i);
    }

    public ChooseWifiAdapter(Context context, ArrayList<String> arrayList, String str) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.mList = arrayList2;
        this.context = context;
        arrayList2.addAll(arrayList);
        this.currentName = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_wifi, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) final int i) {
        String str = this.mList.get(i);
        myViewHolder.tvName.setText(str);
        myViewHolder.item.setSelected(str.equals(this.currentName));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChooseWifiAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseWifiAdapter.this.onActionListener != null) {
                    ChooseWifiAdapter.this.onActionListener.onAction(i);
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

    public void addData(String str) {
        if (this.mList.contains(str)) {
            return;
        }
        this.mList.add(0, str);
        notifyItemInserted(0);
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvName;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
        }
    }
}
