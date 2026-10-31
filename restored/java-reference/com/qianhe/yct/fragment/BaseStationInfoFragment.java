package com.qianhe.yct.fragment;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.AntennaHeigthEntity;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.LocateInfoActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.FragmentBasestationInfoBinding;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStationInfoFragment extends BaseFragment {
    private double antennaHeight;
    private AppConfig appConfig;
    private FragmentBasestationInfoBinding binding;
    private boolean init;
    private InsNavi mINS;
    private long totalBytes;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentBasestationInfoBinding.inflate(getLayoutInflater());
        this.appConfig = ((YCTApplication) requireContext().getApplicationContext()).getAppConfig();
        initView();
        initLiveData();
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(requireActivity());
        DeviceType deviceType = DeviceType.BASE;
        if (multiBluetoothManager.isDeviceConnected(deviceType)) {
            EventBus.getDefault().post(new OrderBean(deviceType, "GET,ANTENNA_HEIGHT"));
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus.getDefault().register(this);
        restoreRetainedBaseStation();
    }

    private void initView() {
        String string;
        int i = this.appConfig.details.ntrip_type;
        NtripTypeEnum ntripTypeEnum = NtripTypeEnum.NTRIP;
        if (i == ntripTypeEnum.getType()) {
            this.binding.tvCorsConnectType.setText("NTRIP");
        } else {
            new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.BaseStationInfoFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BaseStationInfoFragment.this.getActivity() != null) {
                        BaseStationInfoFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.BaseStationInfoFragment.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (BaseStationInfoFragment.this.getActivity() == null || BaseStationInfoFragment.this.getActivity().isDestroyed() || !BaseStationInfoFragment.this.isAdded() || BaseStationInfoFragment.this.isDetached() || BaseStationInfoFragment.this.isRemoving()) {
                                    return;
                                }
                                SharedPreferences sharedPreferences = ((BaseFragment) BaseStationInfoFragment.this).mSp;
                                String str = Constant.NTRIPTYPE;
                                NtripTypeEnum ntripTypeEnum2 = NtripTypeEnum.SDK;
                                int i2 = sharedPreferences.getInt(str, ntripTypeEnum2.getType());
                                BaseStationInfoFragment.this.binding.tvCorsConnectType.setText(i2 == NtripTypeEnum.NTRIP.getType() ? "NTRIP" : i2 == ntripTypeEnum2.getType() ? "RSS SDK" : "RSS ACC");
                            }
                        });
                    }
                }
            }).start();
        }
        if (this.appConfig.details.ntrip_type == ntripTypeEnum.getType()) {
            this.binding.lltCorsAccountExpire.setVisibility(8);
        }
        long j = this.mSp.getLong("corsAccountExpireEpoch", 0L);
        if (j == 0) {
            string = getString(R$string.permanently_valid);
        } else if (j == -1) {
            string = getString(R$string.on_trial);
        } else {
            string = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date(j)) + " (" + ((int) ((j - System.currentTimeMillis()) / 86400000)) + getString(R$string.days_later) + ")";
        }
        this.binding.tvCorsAccountExpire.setText(string);
    }

    private void initLiveData() {
        ((LocateInfoActivity) requireActivity()).observeInsNavi().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qianhe.yct.fragment.BaseStationInfoFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(InsNavi insNavi) {
                if (insNavi == null || !BaseStationInfoFragment.this.isAdded()) {
                    return;
                }
                BaseStationInfoFragment.this.mINS = insNavi;
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(OrderBean orderBean) {
        if (orderBean.array != null) {
            long length = this.totalBytes + r5.length;
            this.totalBytes = length;
            this.binding.tvReceptionData.setText(formatLength(length));
        }
    }

    public String formatLength(long j) {
        if (j >= 1048576) {
            return String.format(Locale.ROOT, "%.3f MB", Double.valueOf(j / 1048576.0d));
        }
        if (j >= ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_XLS) {
            return String.format(Locale.ROOT, "%.3f KB", Double.valueOf(j / 1024.0d));
        }
        return j + " bytes";
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AntennaHeigthEntity antennaHeigthEntity) {
        this.antennaHeight = antennaHeigthEntity.height;
        this.mSp.edit().putFloat("base_antennaheight_real", (float) this.antennaHeight).apply();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        if (this.binding == null || baseStationEntity == null || this.mINS == null) {
            return;
        }
        LocateInfoActivity.retain().baseStation = baseStationEntity;
        this.binding.tvBaseStationId.setText(String.valueOf(baseStationEntity.baseStationId));
        this.binding.tvBaseStationLon.setText(formatCoords(baseStationEntity.lon, 8));
        this.binding.tvBaseStationLat.setText(formatCoords(baseStationEntity.lat, 8));
        this.binding.tvBaseStationHigh.setText(formatCoords(baseStationEntity.elev, 3));
        double[] dArr = new double[3];
        if (GnssCoordConvertManager.getInstance().geoToProjOnly(baseStationEntity.lon, baseStationEntity.lat, baseStationEntity.elev, dArr)) {
            this.binding.tvEast.setText(formatCoords(dArr[0], 3));
            this.binding.tvNorth.setText(formatCoords(dArr[1], 3));
            if (this.appConfig.details.ntrip_type == NtripTypeEnum.NTRIP.getType()) {
                this.antennaHeight = this.mSp.getFloat("base_antennaheight_real", 1.6624f);
            }
            this.binding.tvElev.setText(formatCoords(dArr[2] - (baseStationEntity.baseStationId == 0 ? this.antennaHeight : 0.0d), 3));
            double[] dArr2 = new double[3];
            GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
            InsNavi insNavi = this.mINS;
            if (gnssCoordConvertManager.geoToProjOnly(insNavi.geodeticLon, insNavi.geodeticLat, insNavi.geodeticElev, dArr2)) {
                double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{dArr2[0], dArr2[1]}, dArr);
                this.binding.tvDistance.setText(String.format("%s " + getString(R$string.meter), Double.valueOf(Math.round(dCalculateDistanceGAUSS * 1000.0d) / 1000.0d)));
            }
        }
        if (this.init || baseStationEntity.baseStationId == 0 || baseStationEntity.lon == 0.0d || baseStationEntity.lat == 0.0d || baseStationEntity.elev == 0.0d) {
            return;
        }
        this.init = true;
        LocateInfoActivity.retain().baseInited = true;
        EventBus.getDefault().post(new OrderBean("LOG,REFSTATION,ONTIME," + this.appConfig.details.refstation_interval));
    }

    private void restoreRetainedBaseStation() {
        LocateInfoActivity.RetainState retainStatePeekRetain = LocateInfoActivity.peekRetain();
        if (retainStatePeekRetain == null || this.binding == null) {
            return;
        }
        InsNavi insNavi = retainStatePeekRetain.ins;
        if (insNavi != null) {
            this.mINS = insNavi;
        }
        if (retainStatePeekRetain.baseInited) {
            this.init = true;
        }
        BaseStationEntity baseStationEntity = retainStatePeekRetain.baseStation;
        if (baseStationEntity != null) {
            onEventMessage(baseStationEntity);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }
}
