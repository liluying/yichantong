package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.GSTEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.TimeConverter;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.LocateInfoActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.FragmentLocationBinding;
import com.qianhe.yct.enums.InsStatusEnum;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LocationFragment extends BaseFragment {
    private AppConfig appConfig;
    private FragmentLocationBinding binding;
    private int count;
    private boolean init;
    private boolean isResume;
    private boolean isShowTips;
    private boolean mAvailable;
    private GGAEntity mGGA;
    private boolean restoring;
    private final Runnable scrollIdleRunnable = new Runnable() { // from class: com.qianhe.yct.fragment.LocationFragment$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.userScrolling = false;
        }
    };
    private boolean userScrolling;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentLocationBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        this.appConfig = ((YCTApplication) requireContext().getApplicationContext()).getAppConfig();
        initView();
        initLiveData();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isResume = true;
        restoreRetainedData();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.isResume = false;
    }

    private void initView() {
        this.binding.lltDataStaus.setVisibility(((YCTApplication) getActivity().getApplication()).isH5Pro() ? 0 : 8);
        this.binding.tvUTC.setTextDirection(3);
        this.binding.tvLocalTime.setTextDirection(3);
        NestedScrollView root = this.binding.getRoot();
        root.setNestedScrollingEnabled(false);
        root.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.qianhe.yct.fragment.LocationFragment$$ExternalSyntheticLambda1
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public final void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                LocationFragment.$r8$lambda$f1J0mCWnKxOvBvH_7ZEw4o4YrYE(this.f$0, nestedScrollView, i, i2, i3, i4);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$f1J0mCWnKxOvBvH_7ZEw4o4YrYE(LocationFragment locationFragment, NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        locationFragment.userScrolling = true;
        nestedScrollView.removeCallbacks(locationFragment.scrollIdleRunnable);
        nestedScrollView.postDelayed(locationFragment.scrollIdleRunnable, 120L);
    }

    private boolean shouldSkipLiveUpdate() {
        if (this.restoring) {
            return false;
        }
        return !this.isResume || this.userScrolling || this.binding == null;
    }

    private void restoreRetainedData() {
        LocateInfoActivity.RetainState retainStatePeekRetain = LocateInfoActivity.peekRetain();
        if (retainStatePeekRetain == null || this.binding == null) {
            return;
        }
        this.restoring = true;
        try {
            if (retainStatePeekRetain.locationInited) {
                this.init = true;
            }
            GGAEntity gGAEntity = retainStatePeekRetain.gga;
            if (gGAEntity != null) {
                onEventMessage(gGAEntity);
            }
            GSTEntity gSTEntity = retainStatePeekRetain.gst;
            if (gSTEntity != null) {
                onEventMessage(gSTEntity);
            }
            GPDOPEntity gPDOPEntity = retainStatePeekRetain.dop;
            if (gPDOPEntity != null) {
                onEventMessage(gPDOPEntity);
            }
            BestPosEntity bestPosEntity = retainStatePeekRetain.bestPos;
            if (bestPosEntity != null) {
                onEventMessage(bestPosEntity);
            }
            InsNavi insNavi = retainStatePeekRetain.ins;
            if (insNavi != null) {
                onINS(insNavi);
            }
            this.restoring = false;
        } catch (Throwable th) {
            this.restoring = false;
            throw th;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
        String string;
        if (gGAEntity == null || shouldSkipLiveUpdate() || !MultiBluetoothManager.getInstance(requireActivity()).isH5OrOnlyone(gGAEntity.deviceType)) {
            return;
        }
        this.mGGA = gGAEntity;
        LocateInfoActivity.retain().gga = gGAEntity;
        switch (gGAEntity.quality) {
            case 0:
                string = getString(R$string.invalid_solution);
                break;
            case 1:
                string = getString(R$string.singlepoint_solution);
                break;
            case 2:
                string = getString(R$string.diff_solution);
                break;
            case 3:
                string = getString(R$string.invalid_solution);
                break;
            case 4:
                string = getString(R$string.fixed_solution);
                break;
            case 5:
                string = getString(R$string.float_solution);
                break;
            case 6:
                string = getString(R$string.calcul_solution);
                break;
            case 7:
                string = getString(R$string.base_fixed);
                break;
            case 8:
                string = getString(R$string.UWL);
                break;
            case 9:
                string = getString(R$string.sbas_solution);
                break;
            default:
                string = getString(R$string.unknown_solution) + gGAEntity.quality;
                break;
        }
        this.binding.tvQuality.setText(string);
        TextView textView = this.binding.tvQuality;
        int i = gGAEntity.quality;
        textView.setSelected(i == 4 || (gGAEntity.deviceType == DeviceType.BASE && i == 7));
        float f = gGAEntity.age;
        if (f == -1.0f) {
            this.binding.tvDiffDelay.setText(getString(R$string.no_difference));
        } else {
            this.binding.tvDiffDelay.setText(String.valueOf((int) f));
        }
        this.binding.tvGeoHeight.setText(String.valueOf(Math.round(gGAEntity.geodeticHeight * 1000.0d) / 1000.0d));
        this.binding.tvUTC.setText(TimeConverter.formatUTCTime(gGAEntity.utc));
        this.binding.tvLocalTime.setText(TimeConverter.convertLocalTime(System.currentTimeMillis()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GSTEntity gSTEntity) {
        if (gSTEntity == null || shouldSkipLiveUpdate()) {
            return;
        }
        if (MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(DeviceType.ZPY) && gSTEntity.deviceType == DeviceType.BASE) {
            return;
        }
        float f = gSTEntity.latstd;
        float f2 = gSTEntity.lonstd;
        float fRound = (float) (Math.round(Math.sqrt((f * f) + (f2 * f2)) * 100.0d) / 100.0d);
        float fRound2 = (float) (Math.round(gSTEntity.altstd * 100.0f) / 100.0d);
        this.binding.tvHRMS.setText(String.valueOf(fRound));
        this.binding.tvHRMS.setSelected(fRound <= this.appConfig.details.hrms_limit);
        this.binding.tvVRMS.setText(String.valueOf(fRound2));
        this.binding.tvVRMS.setSelected(fRound2 <= this.appConfig.details.vrms_limit);
        LocateInfoActivity.retain().gst = gSTEntity;
        if (this.init) {
            return;
        }
        this.init = true;
        LocateInfoActivity.retain().locationInited = true;
    }

    private void initLiveData() {
        ((LocateInfoActivity) requireActivity()).observeInsNavi().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qianhe.yct.fragment.LocationFragment$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LocationFragment.$r8$lambda$btu3tBwzEDbhYGK5c5B_nxdlhVo(this.f$0, (InsNavi) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$btu3tBwzEDbhYGK5c5B_nxdlhVo(LocationFragment locationFragment, InsNavi insNavi) {
        if (insNavi == null) {
            locationFragment.getClass();
        } else if (locationFragment.isAdded()) {
            if (locationFragment.isResume || locationFragment.restoring) {
                locationFragment.onINS(insNavi);
            }
        }
    }

    private void onINS(InsNavi insNavi) {
        if (insNavi == null || shouldSkipLiveUpdate()) {
            return;
        }
        this.binding.tvHeading.setText(String.valueOf(Math.round(insNavi.headingDegrees * 100.0d) / 100.0d));
        this.binding.tvLon.setText(formatCoords(insNavi.geodeticLon, 8));
        this.binding.tvLat.setText(formatCoords(insNavi.geodeticLat, 8));
        this.binding.tvElev.setText(formatCoords(insNavi.geodeticElev, 3));
        updateSourcePlaneCoords(insNavi.geodeticLon, insNavi.geodeticLat, insNavi.geodeticElev);
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity != null && gGAEntity.quality > 0) {
            this.binding.tvCentralMeridian.setText(String.format("%s°", Integer.valueOf(getCentralMeridian(insNavi.geodeticLon))));
        }
        if (getActivity() != null) {
            if (((YCTApplication) getActivity().getApplication()).isH5Pro()) {
                boolean z = (insNavi.insStaus & InsStatusEnum.READY.getStatus()) != 0;
                this.mAvailable = z;
                if (z) {
                    this.count = 0;
                    this.isShowTips = false;
                    this.binding.tvDataStatus.setText(R$string.data_available);
                } else if (this.isResume) {
                    this.count++;
                    this.binding.tvDataStatus.setText(R$string.data_unavailable);
                    if (!this.isShowTips && this.count > this.appConfig.details.ins_unavailable_count) {
                        this.isShowTips = true;
                    }
                }
                this.binding.tvDataStatus.setSelected(this.mAvailable);
                return;
            }
            this.mAvailable = (insNavi.insStaus & InsStatusEnum.VERTICAL.getStatus()) != 0;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BestPosEntity bestPosEntity) {
        if (bestPosEntity == null || shouldSkipLiveUpdate() || !MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(DeviceType.BASE) || MultiBluetoothManager.getInstance(requireContext()).isDeviceConnected(DeviceType.ZPY)) {
            return;
        }
        LocateInfoActivity.retain().bestPos = bestPosEntity;
        this.binding.tvLon.setText(formatCoords(bestPosEntity.lon, 8));
        this.binding.tvLat.setText(formatCoords(bestPosEntity.lat, 8));
        this.binding.tvElev.setText(formatCoords((bestPosEntity.elve - Math.abs(bestPosEntity.elveDiff)) - this.mSp.getFloat("base_antennaheight_real", 1.6624f), 3));
        updateSourcePlaneCoords(bestPosEntity.lon, bestPosEntity.lat, Double.parseDouble(this.binding.tvElev.getText().toString().trim()));
        this.binding.tvCentralMeridian.setText(String.format("%s°", Integer.valueOf(getCentralMeridian(bestPosEntity.lon))));
    }

    private void updateSourcePlaneCoords(double d, double d2, double d3) {
        double[] dArr = new double[3];
        if (GnssCoordConvertManager.getInstance().geoToProjOnly(d, d2, d3, dArr)) {
            this.binding.tvEast.setText(formatCoords(dArr[0], 3));
            this.binding.tvNorth.setText(formatCoords(dArr[1], 3));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GPDOPEntity gPDOPEntity) {
        if (gPDOPEntity == null || shouldSkipLiveUpdate()) {
            return;
        }
        if (MultiBluetoothManager.getInstance(requireActivity()).isDeviceConnected(DeviceType.ZPY) && gPDOPEntity.deviceType == DeviceType.BASE) {
            return;
        }
        LocateInfoActivity.retain().dop = gPDOPEntity;
        this.binding.tvHDOP.setText(String.valueOf(Math.round(gPDOPEntity.hdop * 100.0f) / 100.0d));
        this.binding.tvVDOP.setText(String.valueOf(Math.round(gPDOPEntity.vdop * 100.0f) / 100.0d));
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentLocationBinding fragmentLocationBinding = this.binding;
        if (fragmentLocationBinding != null) {
            fragmentLocationBinding.getRoot().removeCallbacks(this.scrollIdleRunnable);
        }
        super.onDestroyView();
        this.binding = null;
        EventBus.getDefault().unregister(this);
    }
}
