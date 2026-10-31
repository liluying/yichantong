package com.qianhe.yct.fragment;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.formatter.ValueFormatter;
import com.qianhe.baselib.bean.SNREntity;
import com.qianhe.baselib.enums.StarTypeEnum;
import com.qianhe.baselib.utils.parser.SNRParser;
import com.qianhe.baselib.utils.parser.StarDataParser;
import com.qianhe.rtkclientlib.event.SNRPackageEvent;
import com.qianhe.rtkclientlib.event.SauPackageEvent;
import com.qianhe.rtkclientlib.event.SavPackageEvent;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.LocateInfoActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.FragmentSnrBinding;
import com.qianhe.yct.view.CustomBarChart;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SNRFragment extends BaseFragment {
    private AppConfig appConfig;
    private FragmentSnrBinding binding;
    private boolean init;
    private boolean sauFrameReady;
    private boolean savFrameReady;
    private boolean snrFrameReady;
    private final List<SNREntity> snrList = new ArrayList();
    private final List<Integer> savPRNList = new ArrayList();
    private final List<Integer> sauPRNList = new ArrayList();
    private final List<SNREntity> snrReadyList = new ArrayList();
    private final List<Integer> savReadyList = new ArrayList();
    private final List<Integer> sauReadyList = new ArrayList();
    private final Set<Integer> savPRNSet = new HashSet();
    private final Set<Integer> sauPRNSet = new HashSet();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSnrBinding.inflate(getLayoutInflater());
        this.appConfig = ((YCTApplication) requireContext().getApplicationContext()).getAppConfig();
        String string = getString(R$string.searching);
        int color = ContextCompat.getColor(requireContext(), R$color.text_black);
        this.binding.chartBDS.setNoDataText(string);
        this.binding.chartBDS.setNoDataTextColor(color);
        this.binding.chartGPS.setNoDataText(string);
        this.binding.chartGPS.setNoDataTextColor(color);
        this.binding.chartGLN.setNoDataText(string);
        this.binding.chartGLN.setNoDataTextColor(color);
        this.binding.chartGAL.setNoDataText(string);
        this.binding.chartGAL.setNoDataTextColor(color);
        this.binding.chartQZSS.setNoDataText(string);
        this.binding.chartQZSS.setNoDataTextColor(color);
        this.binding.chartSBAS.setNoDataText(string);
        this.binding.chartSBAS.setNoDataTextColor(color);
        this.binding.chartIRNSS.setNoDataText(string);
        this.binding.chartIRNSS.setNoDataTextColor(color);
        initChart(this.binding.chartBDS);
        initChart(this.binding.chartGPS);
        initChart(this.binding.chartGLN);
        initChart(this.binding.chartGAL);
        initChart(this.binding.chartQZSS);
        initChart(this.binding.chartSBAS);
        initChart(this.binding.chartIRNSS);
        this.binding.main.setNestedScrollingEnabled(false);
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
        restoreRetainedSnr();
    }

    private void initChart(CustomBarChart customBarChart) {
        customBarChart.setPinchZoom(false);
        customBarChart.setDrawBarShadow(false);
        customBarChart.setDrawGridBackground(false);
        int color = ContextCompat.getColor(requireContext(), R$color.text_black);
        YAxis axisLeft = customBarChart.getAxisLeft();
        axisLeft.setDrawGridLines(false);
        axisLeft.setAxisMinimum(0.0f);
        axisLeft.setGranularity(10.0f);
        axisLeft.setTextColor(color);
        YAxis axisRight = customBarChart.getAxisRight();
        axisRight.setDrawAxisLine(false);
        axisRight.setDrawGridLines(true);
        axisRight.enableGridDashedLine(10.0f, 10.0f, 0.0f);
        axisRight.setAxisMinimum(0.0f);
        axisRight.setGranularity(10.0f);
        axisRight.setTextColor(color);
        customBarChart.getXAxis().setTextColor(color);
        customBarChart.getLegend().setTextColor(color);
        customBarChart.getDescription().setTextColor(color);
        customBarChart.getLegend().setEnabled(true);
        customBarChart.setDoubleTapToZoomEnabled(false);
        customBarChart.setHighlightPerTapEnabled(false);
        customBarChart.setHighlightPerDragEnabled(false);
        customBarChart.setDragYEnabled(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SNRPackageEvent sNRPackageEvent) {
        int[] packetHeader;
        if (sNRPackageEvent.lines.contains("SNR,") && (packetHeader = parsePacketHeader(sNRPackageEvent.lines)) != null) {
            if (packetHeader[1] == 1) {
                this.snrList.clear();
            }
            this.snrList.addAll(SNRParser.parser(sNRPackageEvent.lines));
            if (packetHeader[1] == packetHeader[0]) {
                this.snrReadyList.clear();
                this.snrReadyList.addAll(this.snrList);
                this.snrList.clear();
                this.snrFrameReady = true;
                tryDrawSnrCharts();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SavPackageEvent savPackageEvent) {
        int[] packetHeader;
        if (savPackageEvent.lines.contains("SAV,") && (packetHeader = parsePacketHeader(savPackageEvent.lines)) != null) {
            if (packetHeader[1] == 1) {
                this.savPRNList.clear();
            }
            this.savPRNList.addAll(StarDataParser.parseSAV(savPackageEvent.lines).prnList);
            if (packetHeader[1] == packetHeader[0]) {
                this.savReadyList.clear();
                this.savReadyList.addAll(this.savPRNList);
                this.savPRNList.clear();
                this.savFrameReady = true;
                tryDrawSnrCharts();
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
                tryDrawSnrCharts();
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

    private void tryDrawSnrCharts() {
        if (this.snrFrameReady && this.savFrameReady && this.sauFrameReady && this.binding != null && !this.snrReadyList.isEmpty()) {
            this.savPRNSet.clear();
            this.savPRNSet.addAll(this.savReadyList);
            this.sauPRNSet.clear();
            this.sauPRNSet.addAll(this.sauReadyList);
            LocateInfoActivity.RetainState retainStateRetain = LocateInfoActivity.retain();
            retainStateRetain.snrList.clear();
            retainStateRetain.snrList.addAll(this.snrReadyList);
            retainStateRetain.savPRNList.clear();
            retainStateRetain.savPRNList.addAll(this.savReadyList);
            retainStateRetain.sauPRNList.clear();
            retainStateRetain.sauPRNList.addAll(this.sauReadyList);
            refreshCharts(new ArrayList(this.snrReadyList));
            this.snrFrameReady = false;
            this.savFrameReady = false;
            this.sauFrameReady = false;
            this.snrReadyList.clear();
            this.savReadyList.clear();
            this.sauReadyList.clear();
        }
    }

    private void refreshCharts(List<SNREntity> list) {
        refreshData(this.binding.chartBDS, StarTypeEnum.BDS, list);
        refreshData(this.binding.chartGPS, StarTypeEnum.GPS, list);
        refreshData(this.binding.chartGLN, StarTypeEnum.GLN, list);
        refreshData(this.binding.chartGAL, StarTypeEnum.GAL, list);
        refreshData(this.binding.chartQZSS, StarTypeEnum.QZSS, list);
        refreshData(this.binding.chartSBAS, StarTypeEnum.SBAS, list);
        refreshData(this.binding.chartIRNSS, StarTypeEnum.IRNSS, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void refreshData(final CustomBarChart customBarChart, StarTypeEnum starTypeEnum, List<SNREntity> list) {
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (SNREntity sNREntity : list) {
            if (sNREntity.type == starTypeEnum.getType() && this.savPRNSet.contains(Integer.valueOf(sNREntity.PNR)) && this.sauPRNSet.contains(Integer.valueOf(sNREntity.PNR))) {
                BarEntry barEntry = new BarEntry(i, sNREntity.L1);
                BarEntry barEntry2 = new BarEntry(i + 1, sNREntity.L2);
                int i2 = i + 3;
                BarEntry barEntry3 = new BarEntry(i + 2, sNREntity.L5);
                arrayList.add(barEntry);
                arrayList.add(barEntry2);
                arrayList.add(barEntry3);
                i += 4;
                arrayList.add(new BarEntry(i2, -1.0f));
                StringBuilder sb = new StringBuilder();
                sb.append("G");
                int i3 = sNREntity.id;
                sb.append(i3 >= 10 ? Integer.valueOf(i3) : "0" + sNREntity.id);
                arrayList2.add(sb.toString());
            }
        }
        if (arrayList2.isEmpty() || arrayList.isEmpty()) {
            return;
        }
        if (!this.init) {
            this.init = true;
            LocateInfoActivity.retain().snrStreamInited = true;
            LocateInfoActivity locateInfoActivity = (LocateInfoActivity) requireActivity();
            AppConfig.Details details = this.appConfig.details;
            locateInfoActivity.requestData(details.snr_interval, details.sav_interval, details.sau_interval);
        }
        XAxis xAxis = customBarChart.getXAxis();
        xAxis.setDrawGridLines(false);
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setGranularity(1.0f);
        xAxis.setGranularityEnabled(true);
        xAxis.setCenterAxisLabels(true);
        xAxis.setAvoidFirstLastClipping(true);
        xAxis.setValueFormatter(new ValueFormatter() { // from class: com.qianhe.yct.fragment.SNRFragment.1
            @Override // com.github.mikephil.charting.formatter.ValueFormatter
            public String getFormattedValue(float f) {
                int i4 = (int) (f / 4.0f);
                int i5 = (int) (f % 4.0f);
                if (i4 > -1 && i4 < arrayList2.size() && i5 == 0) {
                    return (String) arrayList2.get(i4);
                }
                return "";
            }
        });
        xAxis.setLabelCount(arrayList2.size());
        int color = ContextCompat.getColor(requireContext(), R$color.text_black);
        xAxis.setTextColor(color);
        xAxis.setTextSize(8.0f);
        customBarChart.setDragEnabled(true);
        customBarChart.setDragYEnabled(false);
        customBarChart.setScaleEnabled(true);
        customBarChart.setScaleXEnabled(true);
        customBarChart.setScaleYEnabled(false);
        if (customBarChart.getData() != 0 && ((BarData) customBarChart.getData()).getDataSetCount() > 0) {
            BarDataSet barDataSet = (BarDataSet) ((BarData) customBarChart.getData()).getDataSetByIndex(0);
            barDataSet.setValues(arrayList);
            barDataSet.setValueTextColor(color);
            ((BarData) customBarChart.getData()).notifyDataChanged();
            customBarChart.notifyDataSetChanged();
        } else {
            BarDataSet barDataSet2 = new BarDataSet(arrayList, "L1/L2/L5");
            barDataSet2.setColors(-16776961, ContextCompat.getColor(requireContext(), R$color.red_dark), ContextCompat.getColor(requireContext(), R$color.green), 0);
            barDataSet2.setDrawValues(true);
            barDataSet2.setValueTextSize(6.0f);
            barDataSet2.setValueTextColor(color);
            barDataSet2.setValueFormatter(new ValueFormatter() { // from class: com.qianhe.yct.fragment.SNRFragment.2
                @Override // com.github.mikephil.charting.formatter.ValueFormatter
                public String getFormattedValue(float f) {
                    if (f == -1.0f) {
                        return "";
                    }
                    return f % 1.0f == 0.0f ? String.valueOf((int) f) : String.valueOf(f);
                }
            });
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(barDataSet2);
            customBarChart.setData(new BarData(arrayList3));
        }
        int iCeil = (int) Math.ceil(((BarData) customBarChart.getData()).getYMax());
        if (iCeil % 10 != 0) {
            iCeil = ((iCeil / 10) + 1) * 10;
        }
        float f = iCeil;
        customBarChart.getAxisLeft().setAxisMaximum(f);
        customBarChart.getAxisRight().setAxisMaximum(f);
        final Description description = customBarChart.getDescription();
        description.setText(starTypeEnum.name());
        description.setTextSize(12.0f);
        description.setTextColor(color);
        description.setTypeface(Typeface.defaultFromStyle(1));
        int width = customBarChart.getWidth();
        int height = customBarChart.getHeight();
        if (width > 0 && height > 0) {
            description.setPosition(width / 2.0f, height - 10.0f);
            customBarChart.invalidate();
        } else {
            customBarChart.post(new Runnable() { // from class: com.qianhe.yct.fragment.SNRFragment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SNRFragment.m2544$r8$lambda$dBNCgQZs54t08LvFBeTyt9WIk(customBarChart, description);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$d-BNCgQZs54t08LvFB-eTyt9WIk, reason: not valid java name */
    public static /* synthetic */ void m2544$r8$lambda$dBNCgQZs54t08LvFBeTyt9WIk(CustomBarChart customBarChart, Description description) {
        if (customBarChart.getWidth() > 0) {
            description.setPosition(customBarChart.getWidth() / 2.0f, customBarChart.getHeight() - 10.0f);
            customBarChart.invalidate();
        }
    }

    private void restoreRetainedSnr() {
        LocateInfoActivity.RetainState retainStatePeekRetain = LocateInfoActivity.peekRetain();
        if (retainStatePeekRetain == null || this.binding == null || retainStatePeekRetain.snrList.isEmpty()) {
            return;
        }
        this.snrList.clear();
        this.snrList.addAll(retainStatePeekRetain.snrList);
        this.savPRNList.clear();
        this.savPRNList.addAll(retainStatePeekRetain.savPRNList);
        this.sauPRNList.clear();
        this.sauPRNList.addAll(retainStatePeekRetain.sauPRNList);
        this.savPRNSet.clear();
        this.savPRNSet.addAll(this.savPRNList);
        this.sauPRNSet.clear();
        this.sauPRNSet.addAll(this.sauPRNList);
        this.init = true;
        refreshCharts(this.snrList);
        this.snrList.clear();
        this.savPRNList.clear();
        this.sauPRNList.clear();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }
}
