package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.BaseStatusEvent;
import com.qianhe.rtkclientlib.event.Batt;
import com.qianhe.rtkclientlib.event.DeviceModelEvent;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.MobileStateResponse;
import com.qianhe.rtkclientlib.event.PowerSourceEvent;
import com.qianhe.rtkclientlib.event.WifiStateResponse;
import com.qianhe.yct.MainActivity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.BucketListActivity;
import com.qianhe.yct.activity.ConverParamsListActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.EngineeringListActivity;
import com.qianhe.yct.activity.ExcavatorListActivity;
import com.qianhe.yct.activity.ProjectListActivity;
import com.qianhe.yct.activity.RTKInfoActivity;
import com.qianhe.yct.activity.ShareListActivity;
import com.qianhe.yct.activity.basestation.BaseStationConfigActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity;
import com.qianhe.yct.adapter.HomeAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.bean.HomeItem;
import com.qianhe.yct.databinding.FragmentHomeBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.tencent.smtt.sdk.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class HomeFragment extends BaseFragment {
    private int basePowerType;
    private BaseStatusEvent baseStaus;
    private FragmentHomeBinding binding;
    private boolean hasDiff;
    private HomeAdapter homeAdapter;
    private List<HomeItem> homeItems = new ArrayList();
    private boolean isGridLayout = true;
    private int mMode;
    private int powerPercent;

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(MobileStateResponse mobileStateResponse) {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WifiStateResponse wifiStateResponse) {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentHomeBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean("GET,FEATURES"));
        initHomeItems();
        initView();
        int i = this.mSp.getInt("mode", ConnectModeEnum.BLE.getType());
        this.mMode = i;
        ImageView imageView = this.binding.ivH5DeviceConnect;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.DEMO;
        boolean z = true;
        imageView.setSelected(i == connectModeEnum.getType() || ((YCTApplication) requireActivity().getApplication()).getCurrentDevice().state == BluetoothStateEnum.CONNECTED.getState());
        ImageView imageView2 = this.binding.ivH5DatalinkStatus;
        if (this.mMode != connectModeEnum.getType() && (!this.binding.ivH5DeviceConnect.isSelected() || ((YCTApplication) requireActivity().getApplication()).getAuthResult().result != 7)) {
            z = false;
        }
        imageView2.setSelected(z);
        FragmentHomeBinding fragmentHomeBinding = this.binding;
        fragmentHomeBinding.tvDiffStatus.setText(getString(fragmentHomeBinding.ivH5DatalinkStatus.isSelected() ? R$string.difference_normal : R$string.no_difference));
        this.binding.lltExcavatorManager.setVisibility(YCTApplication.getInstance().isH5Pro() ? 0 : 4);
        this.binding.lltBucketManager.setVisibility(8);
        initLiveData();
        if (MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(DeviceType.BASE) && bundle != null) {
            this.binding.ivBaseNetworkState.setSelected(bundle.getBoolean("baseNetworkState"));
        }
        return this.binding.getRoot();
    }

    private void refreshHomeItems() {
        refreshHomeItems(YCTApplication.getInstance().isH5Pro());
    }

    private void refreshHomeItems(boolean z) {
        initHomeItems(z);
        HomeAdapter homeAdapter = this.homeAdapter;
        if (homeAdapter != null) {
            homeAdapter.notifyDataSetChanged();
        }
    }

    private void initHomeItems() {
        initHomeItems(YCTApplication.getInstance().isH5Pro());
    }

    private void initHomeItems(boolean z) {
        this.homeItems.clear();
        ArrayList<HomeItem> arrayList = new ArrayList();
        arrayList.add(new HomeItem(1, R$drawable.icon_zp_new, R$string.leveling));
        arrayList.add(new HomeItem(2, R$drawable.icon_sp_new, R$string.slope));
        arrayList.add(new HomeItem(3, R$drawable.icon_wg_new, R$string.ditch));
        arrayList.add(new HomeItem(4, R$drawable.icon_dike_new, R$string.dike));
        arrayList.add(new HomeItem(5, R$drawable.icon_line_new, R$string.line));
        arrayList.add(new HomeItem(6, R$drawable.icon_poly_line, R$string.polyline));
        arrayList.add(new HomeItem(7, R$drawable.icon_onepoint_area, R$string.one_point_area));
        arrayList.add(new HomeItem(8, R$drawable.icon_three_point_area, R$string.three_point_area));
        arrayList.add(new HomeItem(9, R$drawable.icon_siteleveling_new, R$string.site_leveling));
        arrayList.add(new HomeItem(10, R$drawable.icon_arbitraryline_new, R$string.arbitrary_line));
        arrayList.add(new HomeItem(13, R$drawable.icon_share_new, R$string.share));
        arrayList.add(new HomeItem(14, R$drawable.icon_pointlib_new, R$string.coordinates_library));
        if (z) {
            arrayList.add(new HomeItem(15, R$drawable.icon_verify_accuracy, R$string.verify_accuracy));
        }
        arrayList.add(new HomeItem(16, R$drawable.icon_params_conver, R$string.params_conver));
        String string = this.mSp.getString("home_item_sort", "");
        if (TextUtils.isEmpty(string)) {
            this.homeItems.addAll(arrayList);
            return;
        }
        String[] strArrSplit = string.split(",");
        LinkedHashSet<Integer> linkedHashSet = new LinkedHashSet();
        for (String str : strArrSplit) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    linkedHashSet.add(Integer.valueOf(Integer.parseInt(str.trim())));
                } catch (NumberFormatException unused) {
                }
            }
        }
        for (Integer num : linkedHashSet) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    HomeItem homeItem = (HomeItem) it.next();
                    if (homeItem.getId() == num.intValue()) {
                        this.homeItems.add(homeItem);
                        break;
                    }
                }
            }
        }
        for (HomeItem homeItem2 : arrayList) {
            Iterator<HomeItem> it2 = this.homeItems.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().getId() == homeItem2.getId()) {
                        break;
                    }
                } else {
                    this.homeItems.add(homeItem2);
                    break;
                }
            }
        }
        if (linkedHashSet.size() != strArrSplit.length) {
            saveSort();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSort() {
        StringBuilder sb = new StringBuilder();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i = 0; i < this.homeItems.size(); i++) {
            int id = this.homeItems.get(i).getId();
            if (linkedHashSet.add(Integer.valueOf(id))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(id);
            }
        }
        this.mSp.edit().putString("home_item_sort", sb.toString()).commit();
    }

    private void dynamicAdjustCardHeight() {
        FragmentHomeBinding fragmentHomeBinding = this.binding;
        if (fragmentHomeBinding == null) {
            return;
        }
        fragmentHomeBinding.getRoot().post(new Runnable() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                HomeFragment.$r8$lambda$QlyqtAL7p7Sj67FFl087etyiXUk(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$QlyqtAL7p7Sj67FFl087etyiXUk(HomeFragment homeFragment) {
        FragmentHomeBinding fragmentHomeBinding = homeFragment.binding;
        if (fragmentHomeBinding == null) {
            return;
        }
        int width = fragmentHomeBinding.cvExcavatorGroup.getWidth();
        if (width > 0) {
            int lineHeight = homeFragment.binding.tvBaseStatus.getLineHeight();
            float f = homeFragment.getResources().getDisplayMetrics().density;
            if (lineHeight <= 0) {
                lineHeight = (int) (16.0f * f * 1.5f);
            }
            int i = (int) (f * 24.0f);
            int iMax = Math.max(homeFragment.binding.cvBaseGroup.getVisibility() == 0 ? homeFragment.getMeasuredHeight(homeFragment.binding.cvBaseGroup, width) : 0, homeFragment.getMeasuredHeight(homeFragment.binding.cvExcavatorGroup, width));
            int iMax2 = Math.max(iMax, (lineHeight * (((double) iMax) > (((double) lineHeight) * 1.5d) + ((double) i) ? 2 : 1)) + i);
            if (iMax2 > 0) {
                homeFragment.updateViewHeight(homeFragment.binding.cvBaseGroup, iMax2);
                homeFragment.updateViewHeight(homeFragment.binding.cvExcavatorGroup, iMax2);
            }
        }
        int width2 = homeFragment.binding.lltExcavatorManager.getWidth();
        if (width2 > 0) {
            int iMax3 = Math.max(homeFragment.binding.lltEngineeringManager.getVisibility() == 0 ? homeFragment.getMeasuredHeight(homeFragment.binding.lltEngineeringManager, width2) : 0, Math.max(homeFragment.getMeasuredHeight(homeFragment.binding.lltExcavatorManager, width2), homeFragment.binding.lltBucketManager.getVisibility() == 0 ? homeFragment.getMeasuredHeight(homeFragment.binding.lltBucketManager, width2) : 0));
            if (iMax3 > 0) {
                homeFragment.updateViewHeight(homeFragment.binding.lltEngineeringManager, iMax3);
                homeFragment.updateViewHeight(homeFragment.binding.lltExcavatorManager, iMax3);
                if (homeFragment.binding.lltBucketManager.getVisibility() == 0) {
                    homeFragment.updateViewHeight(homeFragment.binding.lltBucketManager, iMax3);
                }
            }
        }
    }

    private int getMeasuredHeight(View view, int i) {
        if (view == null) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i2 = layoutParams.height;
        layoutParams.height = -2;
        view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight = view.getMeasuredHeight();
        layoutParams.height = i2;
        return measuredHeight;
    }

    private void updateViewHeight(View view, int i) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams.height != i) {
            layoutParams.height = i;
            view.setLayoutParams(layoutParams);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("baseSolState", this.binding.ivBaseState.isSelected());
        bundle.putBoolean("baseNetworkState", this.binding.ivBaseNetworkState.isSelected());
    }

    private void initView() {
        this.binding.lltLevelInfo.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.m2415$r8$lambda$Td1OtU_1tuk4x773pzit7OSeM(this.f$0, view);
            }
        });
        this.binding.lltBaseConfig.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.m2419$r8$lambda$mwWc7fh6HTvApmEdpFEiNemxA(this.f$0, view);
            }
        });
        this.binding.lltBaseStatus.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HomeFragment.this.baseStaus != null) {
                    if (HomeFragment.this.baseStaus.status > 0 && (HomeFragment.this.baseStaus.status & 1) != 0) {
                        ((BaseActivity) HomeFragment.this.requireActivity()).showTipDialog(HomeFragment.this.getString(R$string.base_station_code_expired), HomeFragment.this.getString(R$string.ok), null);
                        return;
                    }
                    if (HomeFragment.this.baseStaus.status > 0 && (HomeFragment.this.baseStaus.status & 2) != 0) {
                        ((BaseActivity) HomeFragment.this.requireActivity()).showTipDialog(HomeFragment.this.getString(R$string.base_station_area_code_restriction), HomeFragment.this.getString(R$string.ok), null);
                        return;
                    } else if (HomeFragment.this.baseStaus.status > 0 && (HomeFragment.this.baseStaus.status & 4) != 0) {
                        ((BaseActivity) HomeFragment.this.requireActivity()).showTipDialog(HomeFragment.this.getString(R$string.base_station_coordinates_error), HomeFragment.this.getString(R$string.base_station_config), HomeFragment.this.getString(R$string.ok), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.HomeFragment.1.1
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                HomeFragment.this.gotoBaseStationConfigActivity();
                            }
                        });
                        return;
                    } else {
                        HomeFragment.this.gotoBaseStationConfigActivity();
                        return;
                    }
                }
                HomeFragment.this.gotoBaseStationConfigActivity();
            }
        });
        this.binding.lltBaseBatt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.lltBaseStatus.performClick();
            }
        });
        this.binding.lltEngineeringManager.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.$r8$lambda$tE3WlaXOBZhWGmq_HsJxf2CMYEo(this.f$0, view);
            }
        });
        this.binding.lltExcavatorManager.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.$r8$lambda$7WZ0O2VwygPrqRoIwdPBsIeaJhw(this.f$0, view);
            }
        });
        this.binding.lltBucketManager.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.m2418$r8$lambda$hdiXoV3O1zY5MszhiFyv9l2g4g(this.f$0, view);
            }
        });
        this.binding.lltDeviceConnect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.m2420$r8$lambda$z1BPKwMUSiqUuMS6ToMociRMeU(this.f$0, view);
            }
        });
        this.binding.lltDeviceConnect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.m2417$r8$lambda$DGMsbnXOvfreMMsHoFTOq5_lXs(this.f$0, view);
            }
        });
        this.binding.lltDatalinkStatus.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeFragment.$r8$lambda$tbz8RYElG6zqLfaOhWHV96gGmPE(this.f$0, view);
            }
        });
        this.homeAdapter = new HomeAdapter(this.homeItems, new HomeAdapter.OnItemClickListener() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda11
            @Override // com.qianhe.yct.adapter.HomeAdapter.OnItemClickListener
            public final void onItemClick(HomeItem homeItem) {
                this.f$0.handleItemClick(homeItem);
            }
        });
        int i = getResources().getConfiguration().orientation == 2 ? 5 : 4;
        int i2 = 0;
        this.binding.rvHome.setLayoutDirection(0);
        this.binding.rvHome.setLayoutManager(this.isGridLayout ? new GridLayoutManager(requireContext(), i) : new LinearLayoutManager(requireContext()));
        this.binding.rvHome.setAdapter(this.homeAdapter);
        new ItemTouchHelper(new ItemTouchHelper.SimpleCallback(15, i2) { // from class: com.qianhe.yct.fragment.HomeFragment.2
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i3) {
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                HomeFragment.this.homeAdapter.onItemMove(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
                HomeFragment.this.saveSort();
                return true;
            }
        }).attachToRecyclerView(this.binding.rvHome);
    }

    /* renamed from: $r8$lambda$-Td1OtU_1t-uk4x773pzit7OSeM, reason: not valid java name */
    public static /* synthetic */ void m2415$r8$lambda$Td1OtU_1tuk4x773pzit7OSeM(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            Intent intent = new Intent(homeFragment.requireContext(), (Class<?>) RTKInfoActivity.class);
            intent.putExtra("deviceType", DeviceType.ZPY);
            homeFragment.startActivity(intent);
            return;
        }
        ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
    }

    /* renamed from: $r8$lambda$mw-Wc7fh6HTvApmEdpFEiNemx-A, reason: not valid java name */
    public static /* synthetic */ void m2419$r8$lambda$mwWc7fh6HTvApmEdpFEiNemxA(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            Intent intent = new Intent(homeFragment.requireContext(), (Class<?>) RTKInfoActivity.class);
            intent.putExtra("deviceType", DeviceType.BASE);
            homeFragment.startActivity(intent);
            return;
        }
        ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
    }

    public static /* synthetic */ void $r8$lambda$tE3WlaXOBZhWGmq_HsJxf2CMYEo(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) EngineeringListActivity.class));
        } else {
            ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
        }
    }

    public static /* synthetic */ void $r8$lambda$7WZ0O2VwygPrqRoIwdPBsIeaJhw(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) ExcavatorListActivity.class));
        } else {
            ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
        }
    }

    /* renamed from: $r8$lambda$hdiXoV3O1z-Y5MszhiFyv9l2g4g, reason: not valid java name */
    public static /* synthetic */ void m2418$r8$lambda$hdiXoV3O1zY5MszhiFyv9l2g4g(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            if (YCTApplication.getInstance().isDemo()) {
                homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) BucketListActivity.class));
                return;
            }
            DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(homeFragment.requireActivity()).queryDeviceInfo(YCTApplication.getInstance().getLastDeviceName());
            if (deviceInfoQueryDeviceInfo == null || TextUtils.isEmpty(deviceInfoQueryDeviceInfo.fmwVersion)) {
                return;
            }
            String[] strArrSplit = deviceInfoQueryDeviceInfo.fmwVersion.split("\\.");
            if (Integer.parseInt(strArrSplit[strArrSplit.length - 1]) >= 105) {
                homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) BucketListActivity.class));
                return;
            } else {
                ((BaseActivity) homeFragment.requireActivity()).showTipDialog(homeFragment.getString(R$string.firmware_version_not_support_action), homeFragment.getString(R$string.ok), null);
                return;
            }
        }
        ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
    }

    /* renamed from: $r8$lambda$z1BPKwM-USiqUuMS6ToMociRMeU, reason: not valid java name */
    public static /* synthetic */ void m2420$r8$lambda$z1BPKwMUSiqUuMS6ToMociRMeU(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) BluetoothActivity.class));
        } else {
            ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
        }
    }

    /* renamed from: $r8$lambda$D-GMsbnXOvfreMMsHoFTOq5_lXs, reason: not valid java name */
    public static /* synthetic */ void m2417$r8$lambda$DGMsbnXOvfreMMsHoFTOq5_lXs(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) BluetoothActivity.class));
        } else {
            ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
        }
    }

    public static /* synthetic */ void $r8$lambda$tbz8RYElG6zqLfaOhWHV96gGmPE(HomeFragment homeFragment, View view) {
        if (((BaseActivity) homeFragment.requireActivity()).hasPermissions("basic")) {
            homeFragment.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) DiffDataConfigActivity.class));
        } else {
            ((BaseActivity) homeFragment.requireActivity()).checkPermissions("basic", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoBaseStationConfigActivity() {
        if (((BaseActivity) requireActivity()).hasPermissions("basic")) {
            if (this.mMode == ConnectModeEnum.DEMO.getType() || MultiBluetoothManager.getInstance(requireContext()).isDeviceConnected(DeviceType.BASE)) {
                startActivity(new Intent(requireContext(), (Class<?>) BaseStationConfigActivity.class));
                return;
            } else {
                ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.not_connected_basestation), getString(R$string.go_to_connect), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.HomeFragment.3
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ((BaseActivity) HomeFragment.this.requireActivity()).gotoBluetoothActivity(1);
                    }
                });
                return;
            }
        }
        ((BaseActivity) requireActivity()).checkPermissions("basic", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleItemClick(HomeItem homeItem) {
        Intent intentPutExtra;
        if (!((BaseActivity) requireActivity()).hasPermissions("basic")) {
            ((BaseActivity) requireActivity()).checkPermissions("basic", true);
            return;
        }
        switch (homeItem.getId()) {
            case 1:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.ZHAOPING.getType());
                break;
            case 2:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.SHUAPO.getType());
                break;
            case 3:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.WAGOU.getType());
                break;
            case 4:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.DIKE.getType());
                break;
            case 5:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.LINE.getType());
                break;
            case 6:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.POLY_LINE.getType());
                break;
            case 7:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.ONEPOINTAREA.getType());
                break;
            case 8:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.THREEPOINTAREA.getType());
                break;
            case 9:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.SITELEVELING.getType());
                break;
            case 10:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.ARBITRARYLINE.getType());
                break;
            case 11:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.CURVEDSLOPE.getType());
                break;
            case 12:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) ProjectListActivity.class).putExtra("proType", ProjectEnum.MULTI_POINT_AREA.getType());
                break;
            case 13:
                if (!TextUtils.isEmpty(UserSession.get().getToken())) {
                    intentPutExtra = new Intent(requireActivity(), (Class<?>) ShareListActivity.class);
                    break;
                } else {
                    ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.current_not_login), getString(R$string.goto_login), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.HomeFragment.4
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            ((BaseActivity) HomeFragment.this.requireActivity()).gotoUserManage();
                        }
                    });
                    return;
                }
            case 14:
                intentPutExtra = PointLibraryIntent.openGroupList(requireContext());
                break;
            case 15:
                intentPutExtra = new Intent(requireActivity(), (Class<?>) VerifyAccuracyActivity.class);
                intentPutExtra.putExtra("showVerifyModeSelect", true);
                break;
            case 16:
                intentPutExtra = new Intent(requireContext(), (Class<?>) ConverParamsListActivity.class);
                break;
            default:
                intentPutExtra = null;
                break;
        }
        if (intentPutExtra != null) {
            startActivity(intentPutExtra);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new OrderBean(deviceType, "UNLOG,INS.AHRS"));
        this.mMode = this.mSp.getInt("mode", ConnectModeEnum.BLE.getType());
        EventBus.getDefault().post(new OrderBean(deviceType, "CALIBRATE,,GET_PARAM"));
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(requireActivity());
        DeviceType deviceType2 = DeviceType.BASE;
        if (multiBluetoothManager.isDeviceConnected(deviceType2)) {
            EventBus.getDefault().post(new OrderBean(deviceType2, "GET,MOBILE_STATUS"));
            this.binding.cvBaseGroup.setVisibility(0);
        } else if (!MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(deviceType)) {
            this.binding.cvBaseGroup.setVisibility(8);
        }
        if (MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(deviceType) && !MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(deviceType2)) {
            BaseStatusEvent baseStatus = YCTApplication.getInstance().getBaseStatus();
            this.binding.cvBaseGroup.setVisibility(isUseBase(baseStatus) ? 0 : 8);
            this.binding.ivBaseState.setSelected((baseStatus == null || baseStatus.powerType == -1 || TextUtils.isEmpty(baseStatus.baseSn)) ? false : true);
            FragmentHomeBinding fragmentHomeBinding = this.binding;
            fragmentHomeBinding.tvBaseStatus.setText(getString(fragmentHomeBinding.ivBaseState.isSelected() ? R$string.link_normal : R$string.not_connected));
            if (this.binding.ivBaseState.isSelected()) {
                this.binding.lltBaseStatus.setVisibility(0);
            }
        }
        refreshHomeItems();
        dynamicAdjustCardHeight();
    }

    private boolean isUseBase(BaseStatusEvent baseStatusEvent) {
        return !(baseStatusEvent == null || baseStatusEvent.powerType == -1 || TextUtils.isEmpty(baseStatusEvent.baseSn) || (!AppConfigManager.getInstance().getAppConfig().details.base_host.equals(AppConfigManager.getInstance().getAppConfig().details.ntrip_host) && !AppConfigManager.getInstance().getAppConfig().details.base_host_xfix.equals(AppConfigManager.getInstance().getAppConfig().details.ntrip_host))) || "radio".equals(this.mSp.getString("obtain_difference_type", "bluetooth"));
    }

    private void initLiveData() {
        ((MainActivity) requireActivity()).observeGGA().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.HomeFragment$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                HomeFragment.$r8$lambda$hjvDmnEyS21brtzZBoEamMNflkQ(this.f$0, (GGAEntity) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$hjvDmnEyS21brtzZBoEamMNflkQ(HomeFragment homeFragment, GGAEntity gGAEntity) {
        if (homeFragment.isAdded()) {
            DeviceType deviceType = gGAEntity.deviceType;
            if (deviceType == DeviceType.BASE) {
                BaseStatusEvent baseStatusEvent = homeFragment.baseStaus;
                if (baseStatusEvent == null || baseStatusEvent.powerType == -1) {
                    if (homeFragment.binding.lltBaseStatus.getVisibility() != 0) {
                        homeFragment.binding.lltBaseStatus.setVisibility(0);
                        homeFragment.dynamicAdjustCardHeight();
                    }
                    homeFragment.binding.ivBaseState.setSelected(gGAEntity.quality == 7);
                    FragmentHomeBinding fragmentHomeBinding = homeFragment.binding;
                    fragmentHomeBinding.tvBaseStatus.setText(homeFragment.getString(fragmentHomeBinding.ivBaseState.isSelected() ? R$string.started : R$string.not_started));
                    return;
                }
                return;
            }
            if (deviceType == DeviceType.ZPY && "radio".equals(homeFragment.mSp.getString("obtain_difference_type", "bluetooth"))) {
                boolean z = ((BaseActivity) homeFragment.requireActivity()).mGGA.age > -1.0f && ((BaseActivity) homeFragment.requireActivity()).mGGA.age < 10.0f;
                homeFragment.hasDiff = z;
                homeFragment.binding.ivH5DatalinkStatus.setSelected(z);
                FragmentHomeBinding fragmentHomeBinding2 = homeFragment.binding;
                fragmentHomeBinding2.tvDiffStatus.setText(homeFragment.getString(fragmentHomeBinding2.ivH5DatalinkStatus.isSelected() ? R$string.difference_normal : R$string.no_difference));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStatusEvent baseStatusEvent) {
        if (baseStatusEvent == null || baseStatusEvent.deviceType != DeviceType.ZPY) {
            return;
        }
        this.baseStaus = baseStatusEvent;
        boolean zEquals = "bluetooth".equals(this.mSp.getString("obtain_difference_type", "bluetooth"));
        int i = AppConfigManager.getInstance().getAppConfig().details.ntrip_type;
        boolean z = (i == NtripTypeEnum.SDK.getType() || i == NtripTypeEnum.ACC.getType()) && zEquals;
        this.binding.cvBaseGroup.setVisibility((isUseBase(baseStatusEvent) || MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(DeviceType.BASE)) ? 0 : 8);
        if (baseStatusEvent.powerType != -1) {
            int i2 = baseStatusEvent.status;
            if ((i2 & 1) != 0 || (i2 & 2) != 0 || (i2 & 4) != 0) {
                this.binding.ivBaseState.setSelected(false);
                this.binding.tvBaseStatus.setText(R$string.link_down);
            } else {
                if (this.binding.lltBaseStatus.getVisibility() != 0) {
                    this.binding.lltBaseStatus.setVisibility(0);
                    dynamicAdjustCardHeight();
                }
                this.binding.ivBaseState.setSelected(this.hasDiff);
                this.binding.tvBaseStatus.setText(this.hasDiff ? R$string.link_normal : R$string.link_down);
            }
            refrshSensorBattState(baseStatusEvent.powerType, baseStatusEvent.batt);
            return;
        }
        this.baseStaus = null;
        if (z || MultiBluetoothManager.getInstance(requireContext()).isDeviceConnected(DeviceType.BASE)) {
            return;
        }
        this.binding.lltBaseStatus.setVisibility(0);
        this.binding.ivBaseState.setSelected(false);
        this.binding.tvBaseStatus.setText(this.hasDiff ? R$string.not_connected : R$string.link_down);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Batt batt) {
        if (batt.deviceType == DeviceType.BASE) {
            BaseStatusEvent baseStatusEvent = this.baseStaus;
            if (baseStatusEvent == null || baseStatusEvent.powerType == -1) {
                if (this.binding.lltBaseBatt.getVisibility() != 0) {
                    this.binding.lltBaseBatt.setVisibility(0);
                    dynamicAdjustCardHeight();
                }
                refrshSensorBattState(this.basePowerType, batt.percent);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PowerSourceEvent powerSourceEvent) {
        if (powerSourceEvent.deviceType == DeviceType.BASE) {
            BaseStatusEvent baseStatusEvent = this.baseStaus;
            if (baseStatusEvent == null || baseStatusEvent.powerType == -1) {
                int i = powerSourceEvent.type;
                this.basePowerType = i;
                refrshSensorBattState(i, this.powerPercent);
            }
        }
    }

    private void refrshSensorBattState(int i, int i2) {
        int i3;
        this.powerPercent = i2;
        if (this.binding.lltBaseBatt.getVisibility() != 0) {
            this.binding.lltBaseBatt.setVisibility(0);
            dynamicAdjustCardHeight();
        }
        LinearLayout linearLayout = this.binding.lltBaseBatt;
        linearLayout.setEnabled(linearLayout.getVisibility() == 0);
        this.binding.tvBaseBatt.setText(String.valueOf(i2));
        this.binding.tvBaseBatt.setTextColor(i2 < 20 ? -65536 : WebView.NIGHT_MODE_COLOR);
        if (i2 < 20) {
            i3 = i == 1 ? R$drawable.icon_sensorbatt_0_charge : R$drawable.icon_sensorbatt_0;
        } else if (i2 < 40) {
            i3 = i == 1 ? R$drawable.icon_sensorbatt_20_charge : R$drawable.icon_sensorbatt_20;
        } else if (i2 < 60) {
            i3 = i == 1 ? R$drawable.icon_sensorbatt_40_charge : R$drawable.icon_sensorbatt_40;
        } else if (i2 < 80) {
            i3 = i == 1 ? R$drawable.icon_sensorbatt_60_charge : R$drawable.icon_sensorbatt_60;
        } else if (i2 < 100) {
            i3 = i == 1 ? R$drawable.icon_sensorbatt_80_charge : R$drawable.icon_sensorbatt_80;
        } else {
            i3 = i == 1 ? R$drawable.icon_sensorbatt_100_charge : R$drawable.icon_sensorbatt_100;
        }
        this.binding.ivBaseBattState.setImageResource(i3);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) throws JSONException {
        if (featuresEvent.deviceType == DeviceType.BASE) {
            this.binding.cvBaseGroup.setEnabled(!featuresEvent.value.contains("NO_BASE"));
        }
        if (featuresEvent.deviceType == DeviceType.ZPY) {
            boolean zContains = featuresEvent.value.contains("EXCAVATOR2");
            this.binding.lltExcavatorManager.setVisibility(zContains ? 0 : 4);
            this.binding.lltBucketManager.setVisibility(8);
            refreshHomeItems(zContains);
            if (featuresEvent.value.contains("NO_NTRIP")) {
                AppConfigManager.getInstance().setNtriptype(NtripTypeEnum.SDK.getType());
            }
            if (!zContains || this.mSp.getBoolean("firstConnect", false)) {
                return;
            }
            this.mSp.edit().putBoolean("firstConnect", true).apply();
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.gogo_excavator_calibrate), getString(R$string.confirm), getString(R$string.close), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.HomeFragment.5
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    HomeFragment.this.startActivity(new Intent(HomeFragment.this.requireActivity(), (Class<?>) ExcavatorListActivity.class));
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        int i = this.mSp.getInt("mode", ConnectModeEnum.BLE.getType());
        MyBluetoothDevice myBluetoothDevice = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice != null) {
            DeviceType deviceType = myBluetoothDevice.deviceType;
            DeviceType deviceType2 = DeviceType.ZPY;
            if (deviceType == deviceType2) {
                this.binding.ivH5DeviceConnect.setSelected(i == ConnectModeEnum.DEMO.getType() || MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(deviceType2));
            }
        }
        MyBluetoothDevice myBluetoothDevice2 = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice2 != null) {
            if (myBluetoothDevice2.state == BluetoothStateEnum.DISCONNECT.getState()) {
                DeviceType deviceType3 = bluetoothConnectStateEvent.myDevice.deviceType;
                if (deviceType3 == DeviceType.BASE) {
                    this.binding.ivBaseNetworkState.setSelected(false);
                    return;
                }
                if (deviceType3 == DeviceType.ZPY) {
                    this.baseStaus = null;
                    this.binding.lltExcavatorManager.setVisibility(4);
                    this.binding.lltBucketManager.setVisibility(8);
                    this.binding.ivH5DatalinkStatus.setSelected(false);
                    this.binding.tvDiffStatus.setText(getString(R$string.no_difference));
                    refreshHomeItems(false);
                    return;
                }
                return;
            }
            if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                DeviceType deviceType4 = bluetoothConnectStateEvent.myDevice.deviceType;
                DeviceType deviceType5 = DeviceType.NONE;
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DeviceModelEvent deviceModelEvent) {
        int i = deviceModelEvent.deviceModel;
        if (i == 0 || i == 1) {
            this.binding.ivZhaopingyiICon.setImageResource(R$drawable.home_zhaopingyi_h5pro);
        } else if (i == 2) {
            this.binding.ivZhaopingyiICon.setImageResource(R$drawable.home_zhaopingyi_ex30);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AuthResult authResult) {
        boolean z = this.mSp.getInt("mode", ConnectModeEnum.BLE.getType()) == ConnectModeEnum.DEMO.getType() || (this.binding.ivH5DeviceConnect.isSelected() && authResult.result == 7);
        if (this.hasDiff != z) {
            this.hasDiff = z;
        }
        this.binding.ivH5DatalinkStatus.setSelected(z);
        this.binding.tvDiffStatus.setText(getString(z ? R$string.difference_normal : R$string.no_difference));
        if (authResult.result == 1) {
            YCTApplication.getInstance().setAuthResult(authResult);
        }
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
        EventBus.getDefault().unregister(this);
    }
}
