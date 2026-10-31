package com.qianhe.yct.fragment;

import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.event.BluetoothScanStateEvent;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothBaseFragment extends BluetoothFragment {
    @Override // com.qianhe.yct.fragment.BluetoothFragment
    protected int getScanPageIndex() {
        return 1;
    }

    @Override // com.qianhe.yct.fragment.BluetoothFragment
    protected void initView() {
        DeviceType deviceType = DeviceType.BASE;
        initSearchRcv(deviceType);
        initMatchedRcv(deviceType);
        loadPairedDevicesIfNeeded();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        loadPairedDevicesIfNeeded();
        DeviceType deviceType = DeviceType.BASE;
        refreshMatchedState(deviceType);
        refreshSearchState(deviceType);
    }

    @Override // com.qianhe.yct.fragment.BluetoothFragment
    protected void clearDeviceList(BluetoothScanStateEvent bluetoothScanStateEvent) {
        if (bluetoothScanStateEvent.scanPageIndex == 1) {
            this.searchAdapter.clear();
        }
    }
}
