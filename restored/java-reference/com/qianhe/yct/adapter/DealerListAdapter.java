package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.event.DealerResponse;
import com.tencent.smtt.sdk.WebView;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DealerListAdapter extends RecyclerView.Adapter {
    private final Context context;
    private final List<DealerResponse.ContactInfo> mData;
    private String name;

    public DealerListAdapter(Context context, DealerResponse dealerResponse) {
        this.context = context;
        this.name = dealerResponse.name;
        this.mData = dealerResponse.contact_info;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_dealerlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final DealerResponse.ContactInfo contactInfo = this.mData.get(i);
        myViewHolder.tvCompanyName.setText(this.name);
        myViewHolder.tvName.setText(String.format("%s：", contactInfo.name));
        myViewHolder.tvPhone.setText(contactInfo.telephone);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.DealerListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.DIAL");
                intent.setData(Uri.parse(WebView.SCHEME_TEL + contactInfo.telephone));
                DealerListAdapter.this.context.startActivity(intent);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvCompanyName;
        TextView tvName;
        TextView tvPhone;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvCompanyName = (TextView) view.findViewById(R$id.tvCompanyName);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvPhone = (TextView) view.findViewById(R$id.tvPhone);
        }
    }
}
