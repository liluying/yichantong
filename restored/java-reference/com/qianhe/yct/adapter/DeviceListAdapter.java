package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.enums.BluetoothActionEnum;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DeviceListAdapter extends RecyclerView.Adapter {
    private RecyclerView attachedRecyclerView;
    private final Context context;
    private final DeviceType deviceType;
    private final List<MyBluetoothDevice> list = new ArrayList();
    private OnActionListener onConnectListener;

    public interface OnActionListener {
        void onAction(MyBluetoothDevice myBluetoothDevice, BluetoothActionEnum bluetoothActionEnum);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((MyViewHolder) viewHolder, i, (List<Object>) list);
    }

    public DeviceListAdapter(Context context, DeviceType deviceType) {
        this.context = context;
        this.deviceType = deviceType;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_devicelist, viewGroup, false));
    }

    public void onBindViewHolder(MyViewHolder myViewHolder, int i, List<Object> list) {
        super.onBindViewHolder((RecyclerView.ViewHolder) myViewHolder, i, list);
        if (list.isEmpty()) {
            onBindViewHolder(myViewHolder, i);
            return;
        }
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().equals(Constant.PAYLOAD_REFRESH_DATA)) {
                bindData(myViewHolder, this.list.get(i));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        bindData(myViewHolder, this.list.get(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void bindData(final com.qianhe.yct.adapter.DeviceListAdapter.MyViewHolder r6, com.qianhe.rtkclientlib.bean.MyBluetoothDevice r7) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.adapter.DeviceListAdapter.bindData(com.qianhe.yct.adapter.DeviceListAdapter$MyViewHolder, com.qianhe.rtkclientlib.bean.MyBluetoothDevice):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.attachedRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        if (this.attachedRecyclerView == recyclerView) {
            this.attachedRecyclerView = null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public void addData(MyBluetoothDevice myBluetoothDevice) {
        Iterator<MyBluetoothDevice> it = this.list.iterator();
        while (it.hasNext()) {
            if (it.next().bluetoothDevice.getAddress().equals(myBluetoothDevice.bluetoothDevice.getAddress())) {
                return;
            }
        }
        if (this.deviceType == myBluetoothDevice.deviceType) {
            MyBluetoothDevice connectedDevice = MultiBluetoothManager.getInstance(this.context).getConnectedDevice(this.deviceType);
            if (connectedDevice != null && this.deviceType == connectedDevice.deviceType && connectedDevice.bluetoothDevice.getAddress().equals(myBluetoothDevice.bluetoothDevice.getAddress()) && connectedDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                this.list.add(0, myBluetoothDevice);
                notifyItemInserted(0);
            } else {
                this.list.add(myBluetoothDevice);
                notifyItemInserted(this.list.size() - 1);
            }
        }
    }

    public void addDataBatch(List<MyBluetoothDevice> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.list.size();
        int i = 0;
        for (MyBluetoothDevice myBluetoothDevice : list) {
            if (myBluetoothDevice != null && myBluetoothDevice.bluetoothDevice != null && this.deviceType == myBluetoothDevice.deviceType) {
                Iterator<MyBluetoothDevice> it = this.list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().bluetoothDevice.getAddress().equals(myBluetoothDevice.bluetoothDevice.getAddress())) {
                            break;
                        }
                    } else {
                        this.list.add(myBluetoothDevice);
                        i++;
                        break;
                    }
                }
            }
        }
        if (i > 0) {
            notifyItemRangeInserted(size, i);
        }
    }

    public void resetData(List<MyBluetoothDevice> list) {
        BluetoothDevice bluetoothDevice;
        int size = this.list.size();
        this.list.clear();
        if (size > 0) {
            notifyItemRangeRemoved(0, size);
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        String strConnectedAddress = connectedAddress();
        MyBluetoothDevice myBluetoothDevice = null;
        for (MyBluetoothDevice myBluetoothDevice2 : list) {
            if (myBluetoothDevice2 != null && (bluetoothDevice = myBluetoothDevice2.bluetoothDevice) != null && this.deviceType == myBluetoothDevice2.deviceType) {
                if (myBluetoothDevice == null && strConnectedAddress != null && strConnectedAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) {
                    myBluetoothDevice = myBluetoothDevice2;
                } else {
                    this.list.add(myBluetoothDevice2);
                }
            }
        }
        if (myBluetoothDevice != null) {
            this.list.add(0, myBluetoothDevice);
        }
        if (this.list.isEmpty()) {
            return;
        }
        notifyItemRangeInserted(0, this.list.size());
    }

    public void refreshState(MyBluetoothDevice myBluetoothDevice) {
        BluetoothDevice bluetoothDevice;
        DeviceType deviceType;
        if (myBluetoothDevice == null || (deviceType = myBluetoothDevice.deviceType) == null || this.deviceType == deviceType) {
            int state = myBluetoothDevice != null ? myBluetoothDevice.state : BluetoothStateEnum.DISCONNECT.getState();
            boolean z = state == BluetoothStateEnum.DISCONNECT.getState() || state == BluetoothStateEnum.CONNECT_FAILED.getState() || state == BluetoothStateEnum.CANCEL_BOND.getState() || state == BluetoothStateEnum.SOCKET_CLOSE.getState() || state == BluetoothStateEnum.CONNECTED.getState();
            String address = (myBluetoothDevice == null || (bluetoothDevice = myBluetoothDevice.bluetoothDevice) == null) ? null : bluetoothDevice.getAddress();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.list.size(); i++) {
                MyBluetoothDevice myBluetoothDevice2 = this.list.get(i);
                BluetoothDevice bluetoothDevice2 = myBluetoothDevice2.bluetoothDevice;
                if (bluetoothDevice2 != null) {
                    boolean z2 = address != null && address.equalsIgnoreCase(bluetoothDevice2.getAddress());
                    boolean z3 = myBluetoothDevice2.state == BluetoothStateEnum.STARTCONNECT.getState() || myBluetoothDevice2.state == BluetoothStateEnum.START_BOND.getState() || myBluetoothDevice2.state == BluetoothStateEnum.BONDING.getState();
                    boolean z4 = myBluetoothDevice2.state == BluetoothStateEnum.CONNECTED.getState();
                    if (z2) {
                        if (myBluetoothDevice != null && TextUtils.isEmpty(myBluetoothDevice2.deviceName)) {
                            myBluetoothDevice2.mergeDisplayNameFrom(myBluetoothDevice);
                        }
                        myBluetoothDevice2.state = state == BluetoothStateEnum.CANCEL_BOND.getState() ? BluetoothStateEnum.DISCONNECT.getState() : state;
                        arrayList.add(Integer.valueOf(i));
                    } else if (z && z3) {
                        myBluetoothDevice2.state = BluetoothStateEnum.DISCONNECT.getState();
                        arrayList.add(Integer.valueOf(i));
                    } else if (z4) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                refreshItemAt(((Integer) it.next()).intValue());
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    private void refreshItemAt(int i) {
        if (i < 0 || i >= this.list.size()) {
            return;
        }
        RecyclerView recyclerView = this.attachedRecyclerView;
        if (recyclerView != null) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i);
            if (viewHolderFindViewHolderForAdapterPosition instanceof MyViewHolder) {
                this.attachedRecyclerView.suppressLayout(true);
                try {
                    bindData((MyViewHolder) viewHolderFindViewHolderForAdapterPosition, this.list.get(i));
                    return;
                } finally {
                    this.attachedRecyclerView.suppressLayout(false);
                }
            }
        }
        notifyItemChanged(i, Constant.PAYLOAD_REFRESH_DATA);
    }

    private String connectedAddress() {
        MyBluetoothDevice connectedDevice = MultiBluetoothManager.getInstance(this.context).getConnectedDevice(this.deviceType);
        if (connectedDevice == null || connectedDevice.bluetoothDevice == null || this.deviceType != connectedDevice.deviceType || connectedDevice.state != BluetoothStateEnum.CONNECTED.getState()) {
            return null;
        }
        return connectedDevice.bluetoothDevice.getAddress();
    }

    public void clear() {
        int size = this.list.size();
        if (size == 0) {
            return;
        }
        this.list.clear();
        notifyItemRangeRemoved(0, size);
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onConnectListener = onActionListener;
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvName;
        TextView tvState;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvState = (TextView) view.findViewById(R$id.tvState);
        }
    }
}
