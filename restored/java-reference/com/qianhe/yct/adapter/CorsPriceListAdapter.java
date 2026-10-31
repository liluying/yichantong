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
import com.qianhe.yct.R$string;
import com.qianhe.yct.bean.RenewPriceBean;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CorsPriceListAdapter extends RecyclerView.Adapter {
    private final Context context;
    private int mCurrnetIndex;
    private final List<RenewPriceBean> mList;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(RenewPriceBean renewPriceBean);
    }

    public CorsPriceListAdapter(Context context, List<RenewPriceBean> list) {
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        this.mCurrnetIndex = -1;
        this.context = context;
        arrayList.addAll(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_cors_pricelist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) final int i) {
        final RenewPriceBean renewPriceBean = this.mList.get(i);
        myViewHolder.item.setSelected(this.mCurrnetIndex == i);
        myViewHolder.tvDuration.setText(String.valueOf(renewPriceBean.count));
        TextView textView = myViewHolder.tvDurationUnit;
        int i2 = renewPriceBean.unit;
        textView.setText(i2 == 0 ? R$string.day : i2 == 1 ? R$string.moon : R$string.year);
        float f = renewPriceBean.price / 100.0f;
        int i3 = (int) f;
        myViewHolder.tvPrice.setText(f == ((float) i3) ? String.format("%s", Integer.valueOf(i3)) : String.format("%s", Float.valueOf(f)));
        float f2 = renewPriceBean.original_price / 100.0f;
        myViewHolder.tvOriginalPrice.setVisibility(f2 > 0.0f ? 0 : 8);
        int i4 = (int) f2;
        myViewHolder.tvOriginalPrice.setText(String.format("%s%s", f2 == ((float) i4) ? String.format("%s", Integer.valueOf(i4)) : String.format("%s", Float.valueOf(f2)), this.context.getString(R$string.currency_unit)));
        TextView textView2 = myViewHolder.tvOriginalPrice;
        textView2.setPaintFlags(textView2.getPaintFlags() | 16);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.CorsPriceListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CorsPriceListAdapter.this.mCurrnetIndex = i;
                CorsPriceListAdapter.this.notifyDataSetChanged();
                if (CorsPriceListAdapter.this.onActionListener != null) {
                    CorsPriceListAdapter.this.onActionListener.onAction(renewPriceBean);
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

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvDuration;
        TextView tvDurationUnit;
        TextView tvOriginalPrice;
        TextView tvPrice;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvDuration = (TextView) view.findViewById(R$id.tvDuration);
            this.tvDurationUnit = (TextView) view.findViewById(R$id.tvDurationUnit);
            this.tvPrice = (TextView) view.findViewById(R$id.tvPrice);
            this.tvOriginalPrice = (TextView) view.findViewById(R$id.tvOriginalPrice);
        }
    }
}
