package com.qianhe.yct.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PortListAdapter extends RecyclerView.Adapter {
    private final Context context;
    private final List<CorsEntity.PortEntity> mList;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(CorsEntity.PortEntity portEntity);
    }

    public PortListAdapter(Context context, List<CorsEntity.PortEntity> list) {
        this.context = context;
        this.mList = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_port, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        final CorsEntity.PortEntity portEntity = this.mList.get(i);
        myViewHolder.tvCoordinate.setText(String.format(this.context.getString(R$string.coordinate_system) + "：%s", portEntity.coordinateSystem));
        myViewHolder.tvPort.setText(String.format(this.context.getString(R$string.port1) + "：%s", Integer.valueOf(portEntity.port)));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PortListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PortListAdapter.this.onActionListener != null) {
                    PortListAdapter.this.onActionListener.onAction(portEntity);
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
        TextView tvCoordinate;
        TextView tvPort;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvCoordinate = (TextView) view.findViewById(R$id.tvCoordinate);
            this.tvPort = (TextView) view.findViewById(R$id.tvPort);
        }
    }
}
