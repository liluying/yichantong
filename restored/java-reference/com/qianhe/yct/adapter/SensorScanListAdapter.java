package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SensorScanListAdapter extends RecyclerView.Adapter {
    private final Context context;
    private final List<MyBluetoothDevice> mList;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(MyBluetoothDevice myBluetoothDevice);
    }

    public SensorScanListAdapter(Context context, List<MyBluetoothDevice> list) {
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        this.context = context;
        arrayList.addAll(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_sensor_scan_list, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final MyBluetoothDevice myBluetoothDevice = this.mList.get(i);
        myViewHolder.tvName.setText(myBluetoothDevice.bluetoothDevice.getName());
        myViewHolder.tvAddress.setText(myBluetoothDevice.bluetoothDevice.getAddress());
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.SensorScanListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SensorScanListAdapter.this.onActionListener != null) {
                    SensorScanListAdapter.this.onActionListener.onAction(myBluetoothDevice);
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

    public void addData(MyBluetoothDevice myBluetoothDevice) {
        Iterator<MyBluetoothDevice> it = this.mList.iterator();
        while (it.hasNext()) {
            if (it.next().bluetoothDevice.getAddress().equals(myBluetoothDevice.bluetoothDevice.getAddress())) {
                return;
            }
        }
        this.mList.add(0, myBluetoothDevice);
        notifyItemInserted(0);
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvAddress;
        TextView tvName;
        TextView tvStatus;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvAddress = (TextView) view.findViewById(R$id.tvAddress);
            this.tvStatus = (TextView) view.findViewById(R$id.tvStatus);
        }
    }
}
