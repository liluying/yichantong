package com.qianhe.yct.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.Observer;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.ValueFormatter;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$font;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.debug.DebugActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentDebugElevChartBinding;
import java.util.ArrayList;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugElevChartFragment extends BaseFragment {
    private FragmentDebugElevChartBinding binding;
    private long lastTime;
    private InsNavi mINS;
    private ArrayList<Entry> values = new ArrayList<>();
    private ArrayList<Entry> diffValues = new ArrayList<>();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentDebugElevChartBinding.inflate(getLayoutInflater());
        initView();
        initLiveData();
        if (bundle != null) {
            this.binding.edtBaseElev.setText(String.valueOf(bundle.getDouble("edtBaseElev")));
            this.values = bundle.getParcelableArrayList("values");
            this.diffValues = bundle.getParcelableArrayList("diffValues");
            this.binding.tvSure.setSelected(bundle.getBoolean("tvSure"));
            this.binding.tvElev.setSelected(bundle.getBoolean("tvElevVisible"));
            ((ILineDataSet) ((LineData) this.binding.lineChart.getData()).getDataSetByIndex(0)).setVisible(this.binding.tvElev.isSelected());
            this.binding.tvDiff.setSelected(bundle.getBoolean("tvDiffVisible"));
            ((ILineDataSet) ((LineData) this.binding.lineChart.getData()).getDataSetByIndex(1)).setVisible(this.binding.tvDiff.isSelected());
            YAxis axisLeft = this.binding.lineChart.getAxisLeft();
            axisLeft.setAxisMinimum(bundle.getFloat("leftMin"));
            axisLeft.setAxisMaximum(bundle.getFloat("leftMax"));
            YAxis axisRight = this.binding.lineChart.getAxisRight();
            axisRight.setAxisMinimum(bundle.getFloat("rightMin"));
            axisRight.setAxisMaximum(bundle.getFloat("rightMax"));
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putDouble("edtBaseElev", this.binding.edtBaseElev.getNumericValue());
        bundle.putParcelableArrayList("values", this.values);
        bundle.putParcelableArrayList("diffValues", this.diffValues);
        bundle.putBoolean("tvSure", this.binding.tvSure.isSelected());
        bundle.putBoolean("tvElevVisible", this.binding.tvElev.isSelected());
        bundle.putBoolean("tvDiffVisible", this.binding.tvDiff.isSelected());
        bundle.putFloat("leftMin", this.binding.lineChart.getAxisLeft().getAxisMinimum());
        bundle.putFloat("leftMax", this.binding.lineChart.getAxisLeft().getAxisMaximum());
        bundle.putFloat("rightMin", this.binding.lineChart.getAxisRight().getAxisMinimum());
        bundle.putFloat("rightMax", this.binding.lineChart.getAxisRight().getAxisMaximum());
    }

    private void initView() {
        this.binding.tvElev.setSelected(true);
        this.binding.tvDiff.setSelected(false);
        this.binding.tvElev.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugElevChartFragment.this.binding.tvElev.setSelected(!DebugElevChartFragment.this.binding.tvElev.isSelected());
                ((ILineDataSet) ((LineData) DebugElevChartFragment.this.binding.lineChart.getData()).getDataSetByIndex(0)).setVisible(DebugElevChartFragment.this.binding.tvElev.isSelected());
            }
        });
        this.binding.tvDiff.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugElevChartFragment.this.binding.tvDiff.setSelected(!DebugElevChartFragment.this.binding.tvDiff.isSelected());
                ((ILineDataSet) ((LineData) DebugElevChartFragment.this.binding.lineChart.getData()).getDataSetByIndex(1)).setVisible(DebugElevChartFragment.this.binding.tvDiff.isSelected());
            }
        });
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DebugElevChartFragment.this.binding.edtBaseElev.getNumericValue() != 0.0d) {
                    DebugElevChartFragment.this.binding.tvSure.setSelected(true);
                    DebugElevChartFragment.this.binding.tvDiff.setSelected(true);
                    ((ILineDataSet) ((LineData) DebugElevChartFragment.this.binding.lineChart.getData()).getDataSetByIndex(0)).clear();
                    ((ILineDataSet) ((LineData) DebugElevChartFragment.this.binding.lineChart.getData()).getDataSetByIndex(1)).clear();
                    ((LineData) DebugElevChartFragment.this.binding.lineChart.getData()).notifyDataChanged();
                    Toast.makeText(DebugElevChartFragment.this.requireContext(), R$string.setup_success, 0).show();
                }
            }
        });
        this.binding.tvCurrent.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugElevChartFragment.this.binding.edtBaseElev.setText(String.valueOf(DebugElevChartFragment.this.mINS != null ? DebugElevChartFragment.this.mINS.elevation : 0.0d));
            }
        });
        initLineChart();
    }

    private void initLineChart() {
        this.binding.lineChart.getDescription().setEnabled(false);
        this.binding.lineChart.setDragDecelerationFrictionCoef(0.9f);
        this.binding.lineChart.setDrawGridBackground(false);
        this.binding.lineChart.setDragEnabled(false);
        this.binding.lineChart.setHighlightPerDragEnabled(false);
        this.binding.lineChart.setDoubleTapToZoomEnabled(false);
        this.binding.lineChart.setScaleEnabled(false);
        this.binding.lineChart.setPinchZoom(false);
        this.binding.lineChart.setTouchEnabled(false);
        this.binding.lineChart.setBackgroundColor(ContextCompat.getColor(requireContext(), R$color.bg_base));
        Legend legend = this.binding.lineChart.getLegend();
        legend.setForm(Legend.LegendForm.LINE);
        legend.setTypeface(ResourcesCompat.getFont(requireContext(), R$font.msyh));
        legend.setTextSize(11.0f);
        legend.setTextColor(ContextCompat.getColor(requireContext(), R$color.text_black));
        legend.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        legend.setHorizontalAlignment(Legend.LegendHorizontalAlignment.LEFT);
        legend.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        legend.setDrawInside(false);
        XAxis xAxis = this.binding.lineChart.getXAxis();
        xAxis.setTypeface(ResourcesCompat.getFont(requireContext(), R$font.msyh));
        xAxis.setTextSize(11.0f);
        xAxis.setTextColor(ContextCompat.getColor(requireContext(), R$color.text_black));
        xAxis.setDrawGridLines(false);
        xAxis.setDrawAxisLine(false);
        xAxis.setLabelCount(5, false);
        xAxis.setGranularity(1.0f);
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setAvoidFirstLastClipping(true);
        YAxis axisLeft = this.binding.lineChart.getAxisLeft();
        axisLeft.setTypeface(ResourcesCompat.getFont(requireContext(), R$font.msyh));
        axisLeft.setDrawGridLines(true);
        axisLeft.setDrawZeroLine(true);
        axisLeft.setGranularityEnabled(false);
        axisLeft.setLabelCount(5, true);
        axisLeft.setDrawLabels(true);
        axisLeft.setTextColor(-16776961);
        axisLeft.setValueFormatter(new ValueFormatter() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.5
            @Override // com.github.mikephil.charting.formatter.ValueFormatter
            public String getFormattedValue(float f) {
                return ((BaseActivity) DebugElevChartFragment.this.requireActivity()).formatDouble(Double.parseDouble(((BaseActivity) DebugElevChartFragment.this.requireActivity()).formatCoords(String.valueOf(f), 3)));
            }
        });
        YAxis axisRight = this.binding.lineChart.getAxisRight();
        axisRight.setTypeface(ResourcesCompat.getFont(requireContext(), R$font.msyh));
        axisRight.setDrawGridLines(true);
        axisRight.setDrawZeroLine(true);
        axisRight.setGranularityEnabled(false);
        axisRight.setLabelCount(5, true);
        axisRight.setDrawLabels(false);
        axisRight.setTextColor(ContextCompat.getColor(requireContext(), R$color.red_dark));
        axisRight.setValueFormatter(new ValueFormatter() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.6
            @Override // com.github.mikephil.charting.formatter.ValueFormatter
            public String getFormattedValue(float f) {
                return ((BaseActivity) DebugElevChartFragment.this.requireActivity()).formatDouble(Double.parseDouble(((BaseActivity) DebugElevChartFragment.this.requireActivity()).formatCoords(String.valueOf(f), 3)));
            }
        });
    }

    private void initLiveData() {
        if (getActivity() == null) {
            return;
        }
        LineDataSet lineDataSet = new LineDataSet(this.values, getString(R$string.elev));
        lineDataSet.setAxisDependency(YAxis.AxisDependency.LEFT);
        lineDataSet.setColor(ColorTemplate.getHoloBlue());
        lineDataSet.setCircleColor(-16776961);
        lineDataSet.setValueTextColor(-16776961);
        lineDataSet.setLineWidth(3.0f);
        lineDataSet.setCircleRadius(3.0f);
        lineDataSet.setDrawCircleHole(false);
        lineDataSet.setFillAlpha(65);
        lineDataSet.setFillColor(ColorTemplate.getHoloBlue());
        lineDataSet.setHighLightColor(Color.rgb(244, 117, 117));
        LineDataSet.Mode mode = LineDataSet.Mode.CUBIC_BEZIER;
        lineDataSet.setMode(mode);
        lineDataSet.setCubicIntensity(0.2f);
        LineDataSet lineDataSet2 = new LineDataSet(this.diffValues, getString(R$string.difference));
        lineDataSet2.setAxisDependency(YAxis.AxisDependency.RIGHT);
        lineDataSet2.setColor(ContextCompat.getColor(requireContext(), R$color.red_dark));
        lineDataSet2.setCircleColor(ContextCompat.getColor(requireContext(), R$color.red_dark));
        lineDataSet2.setValueTextColor(ContextCompat.getColor(requireContext(), R$color.red_dark));
        lineDataSet2.setLineWidth(2.0f);
        lineDataSet2.setCircleRadius(2.0f);
        lineDataSet2.setDrawCircles(true);
        lineDataSet2.setDrawCircleHole(false);
        lineDataSet2.setFillAlpha(65);
        lineDataSet2.setFillColor(ContextCompat.getColor(requireContext(), R$color.red_dark));
        lineDataSet2.setHighLightColor(ContextCompat.getColor(requireContext(), R$color.red_light));
        lineDataSet2.setMode(mode);
        LineData lineData = new LineData(lineDataSet, lineDataSet2);
        lineData.setValueTextSize(11.0f);
        lineData.setValueFormatter(new ValueFormatter() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.7
            @Override // com.github.mikephil.charting.formatter.ValueFormatter
            public String getFormattedValue(float f) {
                return ((BaseActivity) DebugElevChartFragment.this.requireActivity()).formatDouble(Double.parseDouble(((BaseActivity) DebugElevChartFragment.this.requireActivity()).formatCoords(String.valueOf(f), 3)));
            }
        });
        this.binding.lineChart.setData(lineData);
        ((DebugActivity) getActivity()).observeInsNavi().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugElevChartFragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(InsNavi insNavi) {
                if ((true ^ DebugElevChartFragment.this.isAdded()) || (insNavi == null)) {
                    return;
                }
                DebugElevChartFragment.this.mINS = insNavi;
                if (System.currentTimeMillis() - DebugElevChartFragment.this.lastTime >= 1000) {
                    YAxis axisLeft = DebugElevChartFragment.this.binding.lineChart.getAxisLeft();
                    YAxis axisRight = DebugElevChartFragment.this.binding.lineChart.getAxisRight();
                    if (insNavi.elevation < axisLeft.getAxisMinimum() || insNavi.elevation > axisLeft.getAxisMaximum()) {
                        axisLeft.setAxisMinimum((float) (insNavi.elevation - 5.0d));
                        axisLeft.setAxisMaximum((float) (insNavi.elevation + 5.0d));
                    }
                    if (insNavi.elevation - DebugElevChartFragment.this.binding.edtBaseElev.getNumericValue() < axisLeft.getAxisMinimum() || insNavi.elevation - DebugElevChartFragment.this.binding.edtBaseElev.getNumericValue() > axisLeft.getAxisMaximum()) {
                        axisRight.setAxisMinimum((float) ((insNavi.elevation - DebugElevChartFragment.this.binding.edtBaseElev.getNumericValue()) - 3.0d));
                        axisRight.setAxisMaximum((float) ((insNavi.elevation - DebugElevChartFragment.this.binding.edtBaseElev.getNumericValue()) + 6.0d));
                    }
                    DebugElevChartFragment.this.setData((float) insNavi.elevation);
                    DebugElevChartFragment.this.binding.lineChart.invalidate();
                    DebugElevChartFragment.this.lastTime = System.currentTimeMillis();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void setData(float f) {
        if (f == 0.0f) {
            return;
        }
        if (this.values.size() >= 5) {
            this.values.remove(0);
            for (int i = 0; i < this.values.size(); i++) {
                this.values.get(i).setX(i);
            }
        }
        if (this.diffValues.size() >= 5) {
            this.diffValues.remove(0);
            for (int i2 = 0; i2 < this.diffValues.size(); i2++) {
                this.diffValues.get(i2).setX(i2);
            }
        }
        if (this.values.size() < 5) {
            this.values.add(new Entry(this.values.size(), f));
        }
        if (this.binding.tvSure.isSelected() && this.diffValues.size() < 5) {
            if (this.binding.edtBaseElev.getNumericValue() != 0.0d) {
                this.diffValues.add(new Entry(this.diffValues.size(), (float) (f - this.binding.edtBaseElev.getNumericValue())));
            }
            ((ILineDataSet) ((LineData) this.binding.lineChart.getData()).getDataSetByIndex(1)).setVisible(this.binding.tvDiff.isSelected() && this.binding.edtBaseElev.getNumericValue() != 0.0d);
            this.binding.lineChart.getAxisRight().setDrawLabels(((ILineDataSet) ((LineData) this.binding.lineChart.getData()).getDataSetByIndex(1)).isVisible());
            FragmentDebugElevChartBinding fragmentDebugElevChartBinding = this.binding;
            fragmentDebugElevChartBinding.tvSure.setSelected(fragmentDebugElevChartBinding.edtBaseElev.getNumericValue() != 0.0d);
        }
        if (this.binding.lineChart.getData() == 0 || ((LineData) this.binding.lineChart.getData()).getDataSetCount() <= 1) {
            return;
        }
        ((LineDataSet) ((LineData) this.binding.lineChart.getData()).getDataSetByIndex(0)).setValues(this.values);
        ((LineDataSet) ((LineData) this.binding.lineChart.getData()).getDataSetByIndex(1)).setValues(this.diffValues);
        ((LineData) this.binding.lineChart.getData()).notifyDataChanged();
        this.binding.lineChart.notifyDataSetChanged();
        if (this.binding.edtBaseElev.getNumericValue() == 0.0d && this.values.size() >= 5) {
            this.binding.lineChart.setVisibleXRangeMaximum(4.0f);
            this.binding.lineChart.moveViewToX(this.values.size() - 1);
        }
        if (this.binding.edtBaseElev.getNumericValue() == 0.0d || this.diffValues.size() < 5) {
            return;
        }
        this.binding.lineChart.setVisibleXRangeMaximum(4.0f);
        this.binding.lineChart.moveViewToX(this.diffValues.size() - 1);
    }
}
