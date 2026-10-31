package com.qianhe.yct.fragment;

import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.event.BluetoothScanStateEvent;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothH5Fragment extends BluetoothFragment {
    @Override // com.qianhe.yct.fragment.BluetoothFragment
    protected int getScanPageIndex() {
        return 0;
    }

    @Override // com.qianhe.yct.fragment.BluetoothFragment
    protected void initView() {
        DeviceType deviceType = DeviceType.ZPY;
        initSearchRcv(deviceType);
        initMatchedRcv(deviceType);
        loadPairedDevicesIfNeeded();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        loadPairedDevicesIfNeeded();
        DeviceType deviceType = DeviceType.ZPY;
        refreshMatchedState(deviceType);
        refreshSearchState(deviceType);
    }

    @Override // com.qianhe.yct.fragment.BluetoothFragment
    protected void clearDeviceList(BluetoothScanStateEvent bluetoothScanStateEvent) {
        if (bluetoothScanStateEvent.scanPageIndex == 0) {
            this.searchAdapter.clear();
        }
    }
}
