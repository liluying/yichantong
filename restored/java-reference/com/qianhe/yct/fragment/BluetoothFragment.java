package com.qianhe.yct.fragment;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.adapter.DeviceListAdapter;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentBluetoothBinding;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.BluetoothScanActionEvent;
import com.qianhe.yct.event.BluetoothScanStateEvent;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothFragment extends BaseFragment {
    private FragmentBluetoothBinding binding;
    protected DeviceListAdapter matchedAdapter;
    private boolean pairedDevicesLoaded;
    protected DeviceListAdapter searchAdapter;
    protected DeviceType listDeviceType = DeviceType.ZPY;
    private final Handler searchUiHandler = new Handler(Looper.getMainLooper());
    private final List<MyBluetoothDevice> pendingSearchDevices = new ArrayList();
    private final Set<String> knownSearchAddresses = new HashSet();
    private final Runnable flushSearchDevicesRunnable = new Runnable() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.flushPendingSearchDevices();
        }
    };

    protected int getScanPageIndex() {
        return 0;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentBluetoothBinding.inflate(getLayoutInflater());
        initView();
        initLiveData();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    protected void initView() {
        DeviceType deviceType = DeviceType.ZPY;
        initSearchRcv(deviceType);
        initMatchedRcv(deviceType);
        loadPairedDevicesIfNeeded();
    }

    private boolean isScanEventForThisPage(BluetoothScanStateEvent bluetoothScanStateEvent) {
        return bluetoothScanStateEvent.scanPageIndex == getScanPageIndex() || bluetoothScanStateEvent.scanPageIndex == -1 || bluetoothScanStateEvent.mySevice.bluetoothDevice == null;
    }

    protected void initLiveData() {
        ((BluetoothActivity) requireActivity()).observeScanState().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BluetoothFragment.$r8$lambda$2M56ksEueuwPHBNOXwYp3oyWWsA(this.f$0, (BluetoothScanStateEvent) obj);
            }
        });
        ((BluetoothActivity) requireActivity()).observeConnectState().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BluetoothFragment.m2203$r8$lambda$H9gyvlhtNERSGjYaQQn6Nv2xxc(this.f$0, (BluetoothConnectStateEvent) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$2M56ksEueuwPHBNOXwYp3oyWWsA(BluetoothFragment bluetoothFragment, BluetoothScanStateEvent bluetoothScanStateEvent) {
        if (bluetoothFragment.isAdded() && bluetoothFragment.isScanEventForThisPage(bluetoothScanStateEvent)) {
            if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_STARTED.getState()) {
                if (bluetoothScanStateEvent.scanPageIndex != bluetoothFragment.getScanPageIndex()) {
                    return;
                }
                bluetoothFragment.searchUiHandler.removeCallbacks(bluetoothFragment.flushSearchDevicesRunnable);
                bluetoothFragment.pendingSearchDevices.clear();
                bluetoothFragment.knownSearchAddresses.clear();
                bluetoothFragment.refreshSearchState(bluetoothFragment.listDeviceType);
                bluetoothFragment.clearDeviceList(bluetoothScanStateEvent);
                bluetoothFragment.reloadPairedDevices();
                return;
            }
            if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_FINISHED.getState()) {
                bluetoothFragment.flushPendingSearchDevices();
                return;
            }
            if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_FAIL.getState()) {
                bluetoothFragment.searchUiHandler.removeCallbacks(bluetoothFragment.flushSearchDevicesRunnable);
                bluetoothFragment.pendingSearchDevices.clear();
                return;
            }
            BluetoothDevice bluetoothDevice = bluetoothScanStateEvent.mySevice.bluetoothDevice;
            if (bluetoothDevice == null || bluetoothDevice.getBondState() == 12) {
                return;
            }
            bluetoothFragment.queueSearchDevice(bluetoothScanStateEvent.mySevice);
        }
    }

    /* renamed from: $r8$lambda$H9gyvlhtNERSG-jYaQQn6Nv2xxc, reason: not valid java name */
    public static /* synthetic */ void m2203$r8$lambda$H9gyvlhtNERSGjYaQQn6Nv2xxc(BluetoothFragment bluetoothFragment, BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        MyBluetoothDevice myBluetoothDevice;
        if (!bluetoothFragment.isAdded() || bluetoothConnectStateEvent == null || (myBluetoothDevice = bluetoothConnectStateEvent.myDevice) == null || myBluetoothDevice.state == BluetoothStateEnum.BONDING.getState()) {
            return;
        }
        bluetoothFragment.lockListScroll();
        bluetoothFragment.matchedAdapter.refreshState(bluetoothConnectStateEvent.myDevice);
        bluetoothFragment.searchAdapter.refreshState(bluetoothConnectStateEvent.myDevice);
    }

    private void queueSearchDevice(MyBluetoothDevice myBluetoothDevice) {
        String displayName;
        if (myBluetoothDevice == null || myBluetoothDevice.bluetoothDevice == null || (displayName = myBluetoothDevice.getDisplayName()) == null || displayName.length() != 15) {
            return;
        }
        if (this.knownSearchAddresses.add(myBluetoothDevice.bluetoothDevice.getAddress())) {
            this.pendingSearchDevices.add(myBluetoothDevice);
            this.searchUiHandler.removeCallbacks(this.flushSearchDevicesRunnable);
            if (this.pendingSearchDevices.size() == 1) {
                this.searchUiHandler.post(this.flushSearchDevicesRunnable);
            } else {
                this.searchUiHandler.postDelayed(this.flushSearchDevicesRunnable, 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushPendingSearchDevices() {
        if (!isAdded() || this.pendingSearchDevices.isEmpty()) {
            return;
        }
        ArrayList<MyBluetoothDevice> arrayList = new ArrayList(this.pendingSearchDevices);
        this.pendingSearchDevices.clear();
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(requireActivity());
        for (MyBluetoothDevice myBluetoothDevice : arrayList) {
            if (myBluetoothDevice.bluetoothDevice != null) {
                myBluetoothDevice.deviceType = multiBluetoothManager.getDeviceType(myBluetoothDevice.getDisplayName(), "");
            }
        }
        this.searchAdapter.addDataBatch(arrayList);
    }

    public void reloadPairedDevices() {
        this.pairedDevicesLoaded = false;
        loadPairedDevicesIfNeeded();
    }

    protected void loadPairedDevicesIfNeeded() {
        if (this.binding == null) {
            return;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            this.pairedDevicesLoaded = false;
        } else {
            if (this.pairedDevicesLoaded) {
                return;
            }
            this.pairedDevicesLoaded = true;
            this.binding.getRoot().post(new Runnable() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothFragment.$r8$lambda$zW2jaO_fE29eIJyQItzgtGvFHG8(this.f$0);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$zW2jaO_fE29eIJyQItzgtGvFHG8(final BluetoothFragment bluetoothFragment) {
        if (!bluetoothFragment.isAdded()) {
            bluetoothFragment.pairedDevicesLoaded = false;
            return;
        }
        final Context applicationContext = bluetoothFragment.requireContext().getApplicationContext();
        final DeviceType deviceType = bluetoothFragment.listDeviceType;
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BluetoothFragment.$r8$lambda$y8cwxDKWECBZIeUnddkZ4DUlzsk(this.f$0, applicationContext, deviceType);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$y8cwxDKWECBZIeUnddkZ4DUlzsk(final BluetoothFragment bluetoothFragment, Context context, DeviceType deviceType) {
        bluetoothFragment.getClass();
        final List<MyBluetoothDevice> listCollectPairedDevices = collectPairedDevices(context, deviceType);
        if (bluetoothFragment.isAdded()) {
            bluetoothFragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothFragment.$r8$lambda$xr3AJBJVdIvJ5WSoX7S09fD6RJE(this.f$0, listCollectPairedDevices);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$xr3AJBJVdIvJ5WSoX7S09fD6RJE(BluetoothFragment bluetoothFragment, List list) {
        DeviceListAdapter deviceListAdapter;
        if (!bluetoothFragment.isAdded() || (deviceListAdapter = bluetoothFragment.matchedAdapter) == null) {
            return;
        }
        deviceListAdapter.resetData(list);
        bluetoothFragment.refreshMatchedState(bluetoothFragment.listDeviceType);
    }

    @SuppressLint({"MissingPermission"})
    private static List<MyBluetoothDevice> collectPairedDevices(Context context, DeviceType deviceType) {
        Set<BluetoothDevice> bondedDevices;
        DeviceType deviceType2;
        ArrayList arrayList = new ArrayList();
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && defaultAdapter.isEnabled() && (bondedDevices = defaultAdapter.getBondedDevices()) != null) {
            MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(context);
            for (BluetoothDevice bluetoothDevice : bondedDevices) {
                String name = bluetoothDevice.getName();
                if (name != null && name.matches("^[WZ].*") && name.length() == 15 && (deviceType2 = multiBluetoothManager.getDeviceType(name, "")) == deviceType) {
                    arrayList.add(new MyBluetoothDevice(bluetoothDevice, deviceType2));
                }
            }
        }
        return arrayList;
    }

    protected void clearDeviceList(BluetoothScanStateEvent bluetoothScanStateEvent) {
        this.knownSearchAddresses.clear();
        this.searchAdapter.clear();
    }

    protected void refreshMatchedState(DeviceType deviceType) {
        lockListScroll();
        this.matchedAdapter.refreshState(MultiBluetoothManager.getInstance(requireActivity()).getConnectedDevice(deviceType));
    }

    protected void refreshSearchState(DeviceType deviceType) {
        lockListScroll();
        this.searchAdapter.refreshState(MultiBluetoothManager.getInstance(requireActivity()).getConnectedDevice(deviceType));
    }

    private void lockListScroll() {
        FragmentBluetoothBinding fragmentBluetoothBinding = this.binding;
        if (fragmentBluetoothBinding != null) {
            fragmentBluetoothBinding.nsv.lockScrollPosition();
        }
    }

    private LinearLayoutManager nonScrollingLayoutManager() {
        return new LinearLayoutManager(requireContext()) { // from class: com.qianhe.yct.fragment.BluetoothFragment.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void onDeviceAction(MyBluetoothDevice myBluetoothDevice, BluetoothActionEnum bluetoothActionEnum) {
        lockListScroll();
        ((BluetoothActivity) requireActivity()).bluetoothAction(myBluetoothDevice, bluetoothActionEnum);
    }

    @SuppressLint({"MissingPermission"})
    protected void initMatchedRcv(DeviceType deviceType) {
        this.listDeviceType = deviceType;
        this.matchedAdapter = new DeviceListAdapter(requireContext(), deviceType);
        this.binding.rcvMatched.setLayoutManager(nonScrollingLayoutManager());
        this.binding.rcvMatched.setNestedScrollingEnabled(false);
        this.binding.rcvMatched.setItemAnimator(null);
        this.binding.rcvMatched.setFocusable(false);
        this.binding.rcvMatched.setPreserveFocusAfterLayout(false);
        this.binding.rcvMatched.setDescendantFocusability(393216);
        this.binding.rcvMatched.setAdapter(this.matchedAdapter);
        this.matchedAdapter.setOnActionListener(new DeviceListAdapter.OnActionListener() { // from class: com.qianhe.yct.fragment.BluetoothFragment.2
            @Override // com.qianhe.yct.adapter.DeviceListAdapter.OnActionListener
            public void onAction(MyBluetoothDevice myBluetoothDevice, BluetoothActionEnum bluetoothActionEnum) {
                BluetoothFragment.this.onDeviceAction(myBluetoothDevice, bluetoothActionEnum);
            }
        });
        refreshMatchedState(deviceType);
    }

    protected void initSearchRcv(DeviceType deviceType) {
        this.listDeviceType = deviceType;
        this.searchAdapter = new DeviceListAdapter(requireContext(), deviceType);
        this.binding.rcv.setLayoutManager(nonScrollingLayoutManager());
        this.binding.rcv.setNestedScrollingEnabled(false);
        this.binding.rcv.setItemAnimator(null);
        this.binding.rcv.setFocusable(false);
        this.binding.rcv.setPreserveFocusAfterLayout(false);
        this.binding.rcv.setDescendantFocusability(393216);
        this.binding.rcv.setAdapter(this.searchAdapter);
        this.searchAdapter.setOnActionListener(new DeviceListAdapter.OnActionListener() { // from class: com.qianhe.yct.fragment.BluetoothFragment.3
            @Override // com.qianhe.yct.adapter.DeviceListAdapter.OnActionListener
            public void onAction(MyBluetoothDevice myBluetoothDevice, BluetoothActionEnum bluetoothActionEnum) {
                BluetoothFragment.this.onDeviceAction(myBluetoothDevice, bluetoothActionEnum);
            }
        });
        refreshSearchState(deviceType);
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.searchUiHandler.removeCallbacks(this.flushSearchDevicesRunnable);
        this.pendingSearchDevices.clear();
        this.knownSearchAddresses.clear();
        super.onDestroyView();
        EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STOPSCAN, -1));
    }

    @SuppressLint({"MissingPermission"})
    public void onPairingCleared() {
        this.pairedDevicesLoaded = false;
        this.searchUiHandler.removeCallbacks(this.flushSearchDevicesRunnable);
        this.pendingSearchDevices.clear();
        this.knownSearchAddresses.clear();
        DeviceListAdapter deviceListAdapter = this.matchedAdapter;
        if (deviceListAdapter != null) {
            deviceListAdapter.clear();
        }
        DeviceListAdapter deviceListAdapter2 = this.searchAdapter;
        if (deviceListAdapter2 != null) {
            deviceListAdapter2.clear();
        }
        FragmentBluetoothBinding fragmentBluetoothBinding = this.binding;
        if (fragmentBluetoothBinding != null) {
            fragmentBluetoothBinding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.BluetoothFragment$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothFragment.$r8$lambda$k_g2K3HYafYDt1TzJBnBxq1U_Cg(this.f$0);
                }
            }, 500L);
        }
    }

    public static /* synthetic */ void $r8$lambda$k_g2K3HYafYDt1TzJBnBxq1U_Cg(BluetoothFragment bluetoothFragment) {
        if (bluetoothFragment.isAdded()) {
            bluetoothFragment.pairedDevicesLoaded = false;
            bluetoothFragment.loadPairedDevicesIfNeeded();
        }
    }
}
