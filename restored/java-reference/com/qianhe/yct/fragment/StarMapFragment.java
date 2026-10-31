package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.RadarData;
import com.github.mikephil.charting.data.RadarDataSet;
import com.github.mikephil.charting.data.RadarEntry;
import com.qianhe.baselib.bean.SAVEntity;
import com.qianhe.baselib.bean.SAVListEntity;
import com.qianhe.baselib.enums.StarTypeEnum;
import com.qianhe.baselib.utils.parser.StarDataParser;
import com.qianhe.rtkclientlib.event.SauPackageEvent;
import com.qianhe.rtkclientlib.event.SavPackageEvent;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$id;
import com.qianhe.yct.activity.LocateInfoActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.FragmentStarmapBinding;
import com.qianhe.yct.view.StarMapRadarRenderer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class StarMapFragment extends BaseFragment implements View.OnClickListener {
    private AppConfig appConfig;
    private FragmentStarmapBinding binding;
    private boolean init;
    private boolean sauFrameReady;
    private boolean savFrameReady;
    private StarMapRadarRenderer starMapRadarRenderer;
    private final List<String> mHideList = new ArrayList();
    private final List<SAVEntity> savList = new ArrayList();
    private final List<Integer> sauPRNList = new ArrayList();
    private final List<Integer> savPRNList = new ArrayList();
    private final List<SAVEntity> savReadyList = new ArrayList();
    private final List<Integer> savReadyPRN = new ArrayList();
    private final List<Integer> sauReadyList = new ArrayList();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentStarmapBinding.inflate(getLayoutInflater());
        this.appConfig = ((YCTApplication) requireContext().getApplicationContext()).getAppConfig();
        initView();
        LocateInfoActivity.RetainState retainStatePeekRetain = LocateInfoActivity.peekRetain();
        if (retainStatePeekRetain == null || !retainStatePeekRetain.snrStreamInited) {
            ((LocateInfoActivity) requireActivity()).requestData(1.0f, 1.0f, 1.0f);
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus.getDefault().register(this);
        restoreRetainedStarMap();
    }

    private void initView() {
        this.binding.lltBDS.setOnClickListener(this);
        this.binding.ivBDS.setSelected(true);
        this.binding.lltGPS.setOnClickListener(this);
        this.binding.ivGPS.setSelected(true);
        this.binding.lltGLN.setOnClickListener(this);
        this.binding.ivGLN.setSelected(true);
        this.binding.lltGAL.setOnClickListener(this);
        this.binding.ivGAL.setSelected(true);
        this.binding.lltQZSS.setOnClickListener(this);
        this.binding.ivQZSS.setSelected(true);
        this.binding.lltSBAS.setOnClickListener(this);
        this.binding.ivSBAS.setSelected(true);
        this.binding.lltIRNSS.setOnClickListener(this);
        this.binding.ivIRNSS.setSelected(true);
        this.binding.radarChart.setBackgroundColor(ContextCompat.getColor(requireContext(), R$color.bg_base));
        this.binding.radarChart.setWebLineWidth(0.0f);
        this.binding.radarChart.setWebColor(0);
        StarMapRadarRenderer starMapRadarRenderer = new StarMapRadarRenderer(requireContext(), ((BaseActivity) requireActivity()).isPad(), this.binding.radarChart);
        this.starMapRadarRenderer = starMapRadarRenderer;
        this.binding.radarChart.setRenderer(starMapRadarRenderer);
        this.binding.radarChart.setMinOffset(0.0f);
        this.binding.radarChart.setExtraTopOffset(0.0f);
        this.binding.radarChart.setExtraBottomOffset(0.0f);
        XAxis xAxis = this.binding.radarChart.getXAxis();
        xAxis.setEnabled(false);
        xAxis.setDrawLabels(false);
        YAxis yAxis = this.binding.radarChart.getYAxis();
        yAxis.setEnabled(false);
        yAxis.setDrawLabels(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RadarEntry(80.0f));
        arrayList.add(new RadarEntry(60.0f));
        RadarDataSet radarDataSet = new RadarDataSet(arrayList, "卫星");
        radarDataSet.setColor(-65536);
        radarDataSet.setVisible(false);
        radarDataSet.setDrawValues(false);
        radarDataSet.setDrawFilled(false);
        radarDataSet.setDrawHighlightCircleEnabled(true);
        radarDataSet.setHighlightCircleFillColor(-256);
        radarDataSet.setHighlightCircleOuterRadius(10.0f);
        this.binding.radarChart.getLegend().setEnabled(false);
        this.binding.radarChart.getDescription().setEnabled(false);
        ((RadarEntry) arrayList.get(0)).setData(Float.valueOf(80.0f));
        ((RadarEntry) arrayList.get(1)).setData(Float.valueOf(60.0f));
        this.binding.radarChart.setData(new RadarData(radarDataSet));
        this.binding.radarChart.invalidate();
        this.binding.radarChart.setTouchEnabled(false);
        this.binding.radarChart.post(new Runnable() { // from class: com.qianhe.yct.fragment.StarMapFragment.1
            @Override // java.lang.Runnable
            public void run() {
                if (StarMapFragment.this.binding.radarChart.isLaidOut()) {
                    float contentHeight = ((StarMapRadarRenderer) StarMapFragment.this.binding.radarChart.getRenderer()).getContentHeight();
                    ViewGroup.LayoutParams layoutParams = StarMapFragment.this.binding.radarChart.getLayoutParams();
                    layoutParams.height = (int) (contentHeight + StarMapFragment.this.binding.radarChart.getPaddingTop() + StarMapFragment.this.binding.radarChart.getPaddingBottom() + ((LocateInfoActivity) StarMapFragment.this.requireActivity()).getTabLayoutHeigth());
                    StarMapFragment.this.binding.radarChart.setLayoutParams(layoutParams);
                    StarMapFragment.this.binding.radarChart.requestLayout();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SavPackageEvent savPackageEvent) {
        int[] packetHeader;
        if (savPackageEvent.lines.contains("SAV,") && (packetHeader = parsePacketHeader(savPackageEvent.lines)) != null) {
            if (packetHeader[1] == 1) {
                this.savList.clear();
                this.savPRNList.clear();
            }
            SAVListEntity sav = StarDataParser.parseSAV(savPackageEvent.lines);
            this.savList.addAll(sav.entityList);
            this.savPRNList.addAll(sav.prnList);
            if (packetHeader[1] == packetHeader[0]) {
                this.savReadyList.clear();
                this.savReadyList.addAll(this.savList);
                this.savReadyPRN.clear();
                this.savReadyPRN.addAll(this.savPRNList);
                this.savList.clear();
                this.savPRNList.clear();
                this.savFrameReady = true;
                tryDrawStarMap();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SauPackageEvent sauPackageEvent) {
        int[] packetHeader;
        if (sauPackageEvent.lines.contains("SAU,") && (packetHeader = parsePacketHeader(sauPackageEvent.lines)) != null) {
            if (packetHeader[1] == 1) {
                this.sauPRNList.clear();
            }
            this.sauPRNList.addAll(StarDataParser.parseSAU(sauPackageEvent.lines));
            if (packetHeader[1] == packetHeader[0]) {
                this.sauReadyList.clear();
                this.sauReadyList.addAll(this.sauPRNList);
                this.sauPRNList.clear();
                this.sauFrameReady = true;
                tryDrawStarMap();
            }
        }
    }

    private static int[] parsePacketHeader(String str) throws NumberFormatException {
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length < 3) {
            return null;
        }
        try {
            int i = Integer.parseInt(strArrSplit[1].trim());
            int i2 = Integer.parseInt(strArrSplit[2].trim());
            if (i > 0 && i2 > 0) {
                return new int[]{i, i2};
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    private void tryDrawStarMap() {
        if (!this.savFrameReady || !this.sauFrameReady || this.binding == null || this.starMapRadarRenderer == null || this.savReadyList.isEmpty()) {
            return;
        }
        LocateInfoActivity.RetainState retainStateRetain = LocateInfoActivity.retain();
        retainStateRetain.savEntities.clear();
        retainStateRetain.savEntities.addAll(this.savReadyList);
        retainStateRetain.starSavPRN.clear();
        retainStateRetain.starSavPRN.addAll(this.savReadyPRN);
        retainStateRetain.starSauPRN.clear();
        retainStateRetain.starSauPRN.addAll(this.sauReadyList);
        this.binding.tvVisNum.setText(String.valueOf(this.savReadyList.size()));
        this.starMapRadarRenderer.refreshSAV(this.savReadyList);
        this.binding.tvUseNum.setText(String.valueOf(this.sauReadyList.size()));
        this.starMapRadarRenderer.refreshSAU(this.sauReadyList);
        refreshNums(new ArrayList(this.savReadyPRN), new ArrayList(this.sauReadyList));
        this.binding.radarChart.invalidate();
        if (!this.init) {
            this.init = true;
            retainStateRetain.starMapInited = true;
            retainStateRetain.snrStreamInited = true;
            LocateInfoActivity locateInfoActivity = (LocateInfoActivity) requireActivity();
            AppConfig.Details details = this.appConfig.details;
            locateInfoActivity.requestData(details.snr_interval, details.sav_interval, details.sau_interval);
        }
        this.savFrameReady = false;
        this.sauFrameReady = false;
        this.savReadyList.clear();
        this.savReadyPRN.clear();
        this.sauReadyList.clear();
    }

    private void refreshNums(List<Integer> list, List<Integer> list2) {
        HashSet hashSet = new HashSet(list2);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (Integer num : list) {
            if (hashSet.contains(num)) {
                if (getStarType(num.intValue()) == StarTypeEnum.BDS.getType()) {
                    i++;
                } else if (getStarType(num.intValue()) == StarTypeEnum.GPS.getType()) {
                    i2++;
                } else if (getStarType(num.intValue()) == StarTypeEnum.GLN.getType()) {
                    i3++;
                } else if (getStarType(num.intValue()) == StarTypeEnum.GAL.getType()) {
                    i4++;
                } else if (getStarType(num.intValue()) == StarTypeEnum.QZSS.getType()) {
                    i5++;
                } else if (getStarType(num.intValue()) == StarTypeEnum.SBAS.getType()) {
                    i6++;
                } else if (getStarType(num.intValue()) == StarTypeEnum.IRNSS.getType()) {
                    i7++;
                }
            }
        }
        list.clear();
        list2.clear();
        this.binding.tvBDS.setText(String.valueOf(i));
        this.binding.tvGPS.setText(String.valueOf(i2));
        this.binding.tvGLN.setText(String.valueOf(i3));
        this.binding.tvGAL.setText(String.valueOf(i4));
        this.binding.tvQZSS.setText(String.valueOf(i5));
        this.binding.tvSBAS.setText(String.valueOf(i6));
        this.binding.tvIRNSS.setText(String.valueOf(i7));
    }

    private int getStarType(int i) {
        if (i >= 1 && i <= 32) {
            return StarTypeEnum.GPS.getType();
        }
        if (i >= 65 && i <= 96) {
            return StarTypeEnum.GLN.getType();
        }
        if (i >= 120 && i <= 160) {
            return StarTypeEnum.SBAS.getType();
        }
        if (i >= 161 && i <= 224) {
            return StarTypeEnum.BDS.getType();
        }
        if (i >= 262 && i <= 299) {
            return StarTypeEnum.GAL.getType();
        }
        if (i >= 331 && i <= 360) {
            return StarTypeEnum.QZSS.getType();
        }
        if (i < 361 || i > 399) {
            return 0;
        }
        return StarTypeEnum.IRNSS.getType();
    }

    private void restoreRetainedStarMap() {
        LocateInfoActivity.RetainState retainStatePeekRetain = LocateInfoActivity.peekRetain();
        if (retainStatePeekRetain == null || this.binding == null || this.starMapRadarRenderer == null) {
            return;
        }
        if (retainStatePeekRetain.savEntities.isEmpty() && retainStatePeekRetain.starSauPRN.isEmpty()) {
            return;
        }
        this.init = true;
        if (!retainStatePeekRetain.savEntities.isEmpty()) {
            this.savList.clear();
            this.savList.addAll(retainStatePeekRetain.savEntities);
            this.binding.tvVisNum.setText(String.valueOf(this.savList.size()));
            this.starMapRadarRenderer.refreshSAV(this.savList);
            this.savList.clear();
        }
        if (!retainStatePeekRetain.starSauPRN.isEmpty()) {
            this.sauPRNList.clear();
            this.sauPRNList.addAll(retainStatePeekRetain.starSauPRN);
            this.binding.tvUseNum.setText(String.valueOf(this.sauPRNList.size()));
            this.starMapRadarRenderer.refreshSAU(this.sauPRNList);
        }
        if (!retainStatePeekRetain.starSavPRN.isEmpty()) {
            refreshNums(new ArrayList(retainStatePeekRetain.starSavPRN), new ArrayList(retainStatePeekRetain.starSauPRN));
        }
        this.binding.radarChart.invalidate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.lltBDS) {
            this.binding.ivBDS.setSelected(!r3.isSelected());
            if (this.binding.ivBDS.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.BDS.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.BDS.getType()));
            }
        } else if (view.getId() == R$id.lltGPS) {
            this.binding.ivGPS.setSelected(!r3.isSelected());
            if (this.binding.ivGPS.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.GPS.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.GPS.getType()));
            }
        } else if (view.getId() == R$id.lltGLN) {
            this.binding.ivGLN.setSelected(!r3.isSelected());
            if (this.binding.ivGLN.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.GLN.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.GLN.getType()));
            }
        } else if (view.getId() == R$id.lltGAL) {
            this.binding.ivGAL.setSelected(!r3.isSelected());
            if (this.binding.ivGAL.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.GAL.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.GAL.getType()));
            }
        } else if (view.getId() == R$id.lltQZSS) {
            this.binding.ivQZSS.setSelected(!r3.isSelected());
            if (this.binding.ivQZSS.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.QZSS.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.QZSS.getType()));
            }
        } else if (view.getId() == R$id.lltSBAS) {
            this.binding.ivSBAS.setSelected(!r3.isSelected());
            if (this.binding.ivSBAS.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.SBAS.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.SBAS.getType()));
            }
        } else if (view.getId() == R$id.lltIRNSS) {
            this.binding.ivIRNSS.setSelected(!r3.isSelected());
            if (this.binding.ivIRNSS.isSelected()) {
                this.mHideList.remove(String.valueOf(StarTypeEnum.IRNSS.getType()));
            } else {
                this.mHideList.add(String.valueOf(StarTypeEnum.IRNSS.getType()));
            }
        }
        this.starMapRadarRenderer.refreshShowType(this.mHideList);
        this.binding.radarChart.invalidate();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }
}
