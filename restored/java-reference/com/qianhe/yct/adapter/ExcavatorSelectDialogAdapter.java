package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorSelectDialogAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private OnItemClickListener listener;
    private final Context mContext;
    private final List<ExcavatorEntity> mData;
    private int selectedIndex;

    public interface OnItemClickListener {
        void onItemClick(int i, ExcavatorEntity excavatorEntity);
    }

    public ExcavatorSelectDialogAdapter(Context context, List<ExcavatorEntity> list, int i) {
        this.mContext = context;
        this.mData = list;
        this.selectedIndex = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(this.mContext).inflate(R$layout.item_bucket_select, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) final int i) {
        final ExcavatorEntity excavatorEntity = this.mData.get(i);
        myViewHolder.tvName.setText(excavatorEntity.name);
        myViewHolder.tvParams.setVisibility(8);
        long j = excavatorEntity.createTime;
        if (String.valueOf(Math.abs(j)).length() == 10) {
            j *= 1000;
        }
        myViewHolder.tvTime.setText(this.format.format(new Date(j)));
        myViewHolder.item.setSelected(i == this.selectedIndex);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ExcavatorSelectDialogAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorSelectDialogAdapter.m1972$r8$lambda$SJYCn0Mdgh0CUTCNqCvENQKDxc(this.f$0, i, excavatorEntity, view);
            }
        });
    }

    /* renamed from: $r8$lambda$SJYCn0Mdg-h0CUTCNqCvENQKDxc, reason: not valid java name */
    public static /* synthetic */ void m1972$r8$lambda$SJYCn0Mdgh0CUTCNqCvENQKDxc(ExcavatorSelectDialogAdapter excavatorSelectDialogAdapter, int i, ExcavatorEntity excavatorEntity, View view) {
        OnItemClickListener onItemClickListener = excavatorSelectDialogAdapter.listener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i, excavatorEntity);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvName;
        TextView tvParams;
        TextView tvTime;

        MyViewHolder(View view) {
            super(view);
            this.item = view;
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvParams = (TextView) view.findViewById(R$id.tvParams);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
        }
    }
}
