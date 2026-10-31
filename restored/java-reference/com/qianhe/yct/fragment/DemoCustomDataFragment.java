package com.qianhe.yct.fragment;

import android.R;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentDemoCustomDataBinding;
import com.qianhe.yct.utils.DemoDataManager;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DemoCustomDataFragment extends BaseFragment {
    private FragmentDemoCustomDataBinding binding;
    private boolean isH5Pro;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentDemoCustomDataBinding.inflate(getLayoutInflater());
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        int i = 2;
        boolean zIsH5Pro = YCTApplication.getInstance().isH5Pro();
        this.isH5Pro = zIsH5Pro;
        this.binding.lltDataStaus.setVisibility(zIsH5Pro ? 0 : 8);
        refreshDisplayCoords();
        double[] dArrConvertToGAUSSXY = GnssCoordConvertManager.getInstance().convertToGAUSSXY(new double[]{DemoDataManager.getInstance().getGeodeticLon(), DemoDataManager.getInstance().getGeodeticLat(), DemoDataManager.getInstance().getGeodeticElev()});
        this.binding.tvEast.setText(formatCoords(dArrConvertToGAUSSXY[0], 3));
        this.binding.tvNorth.setText(formatCoords(dArrConvertToGAUSSXY[1], 3));
        setupH5TypeSpinner();
        setupStatusSpinner();
        setupSolSpinner();
        this.binding.tvLon.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                DemoCustomDataFragment.this.applySourceGeodeticInput();
            }
        });
        this.binding.tvLat.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                DemoCustomDataFragment.this.applySourceGeodeticInput();
            }
        });
        this.binding.tvElev.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                DemoCustomDataFragment.this.applySourceGeodeticInput();
            }
        });
        this.binding.tvEast.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(new double[]{DemoCustomDataFragment.this.binding.tvEast.getNumericValue(), DemoCustomDataFragment.this.binding.tvNorth.getNumericValue(), DemoCustomDataFragment.this.binding.tvElev.getNumericValue()});
                DemoDataManager.getInstance().setINSCoords(dArrConvertGAUSSXYToGeodetic[0], dArrConvertGAUSSXYToGeodetic[1], dArrConvertGAUSSXYToGeodetic[2]);
                DemoCustomDataFragment.this.refreshDisplayCoords();
                DemoCustomDataFragment.this.binding.tvElev.setText(DemoCustomDataFragment.this.formatCoords(DemoDataManager.getInstance().getInsElev(), 3));
            }
        });
        this.binding.tvNorth.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.5
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(new double[]{DemoCustomDataFragment.this.binding.tvEast.getNumericValue(), DemoCustomDataFragment.this.binding.tvNorth.getNumericValue(), DemoCustomDataFragment.this.binding.tvElev.getNumericValue()});
                DemoDataManager.getInstance().setINSCoords(dArrConvertGAUSSXYToGeodetic[0], dArrConvertGAUSSXYToGeodetic[1], dArrConvertGAUSSXYToGeodetic[2]);
                DemoCustomDataFragment.this.refreshDisplayCoords();
                DemoCustomDataFragment.this.binding.tvElev.setText(DemoCustomDataFragment.this.formatCoords(DemoDataManager.getInstance().getInsElev(), 3));
            }
        });
        this.binding.spDataStatus.setSelection(!DemoDataManager.getInstance().getH5proDataStatus().equals("1835010") ? 1 : 0);
        int quality = DemoDataManager.getInstance().getQuality();
        Spinner spinner = this.binding.spQuality;
        if (quality == 4) {
            i = 0;
        } else if (quality == 2) {
            i = 1;
        }
        spinner.setSelection(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySourceGeodeticInput() {
        DemoDataManager.getInstance().setINSCoords(this.binding.tvLon.getNumericValue(), this.binding.tvLat.getNumericValue(), this.binding.tvElev.getNumericValue());
        refreshDisplayCoords();
        double[] dArrConvertToGAUSSXY = GnssCoordConvertManager.getInstance().convertToGAUSSXY(new double[]{DemoDataManager.getInstance().getGeodeticLon(), DemoDataManager.getInstance().getGeodeticLat(), DemoDataManager.getInstance().getGeodeticElev()});
        this.binding.tvEast.setText(formatCoords(dArrConvertToGAUSSXY[0], 3));
        this.binding.tvNorth.setText(formatCoords(dArrConvertToGAUSSXY[1], 3));
        this.binding.tvElev.setText(formatCoords(DemoDataManager.getInstance().getInsElev(), 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshDisplayCoords() {
        this.binding.tvLon.setText(formatDouble(Double.parseDouble(formatCoords(DemoDataManager.getInstance().getInsLon(), 8))));
        this.binding.tvLat.setText(formatDouble(Double.parseDouble(formatCoords(DemoDataManager.getInstance().getInsLat(), 8))));
        this.binding.tvElev.setText(formatDouble(Double.parseDouble(formatCoords(DemoDataManager.getInstance().getInsElev(), 3))));
        this.mSp.edit().putString("current_coords", DemoDataManager.getInstance().getInsLon() + "," + DemoDataManager.getInstance().getInsLat() + "," + DemoDataManager.getInstance().getInsElev()).apply();
    }

    private void setupH5TypeSpinner() {
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(requireContext(), R.layout.simple_spinner_item, new String[]{"H5", "H5Pro"}) { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.6
            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                View dropDownView = super.getDropDownView(i, view, viewGroup);
                TextView textView = (TextView) dropDownView;
                textView.setTextColor(DemoCustomDataFragment.this.getResources().getColor(R$color.text_black));
                textView.setTextSize(18.0f);
                textView.setPadding(15, 10, 15, 10);
                return dropDownView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                TextView textView = (TextView) view2;
                textView.setTextColor(DemoCustomDataFragment.this.getResources().getColor(R$color.text_black));
                textView.setTextSize(20.0f);
                return view2;
            }
        };
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.binding.spH5Type.setAdapter((SpinnerAdapter) arrayAdapter);
        this.binding.spH5Type.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    DemoDataManager.getInstance().setH5Type(0);
                    DemoCustomDataFragment.this.binding.lltDataStaus.setVisibility(8);
                } else {
                    if (i != 1) {
                        return;
                    }
                    DemoDataManager.getInstance().setH5Type(1);
                    DemoCustomDataFragment.this.binding.lltDataStaus.setVisibility(0);
                }
            }
        });
        this.binding.spH5Type.setSelection(this.isH5Pro ? 1 : 0);
    }

    private void setupStatusSpinner() {
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(requireContext(), R.layout.simple_spinner_item, new String[]{getString(R$string.data_available), getString(R$string.data_unavailable)}) { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.8
            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                View dropDownView = super.getDropDownView(i, view, viewGroup);
                TextView textView = (TextView) dropDownView;
                textView.setTextColor(DemoCustomDataFragment.this.getResources().getColor(R$color.text_black));
                textView.setTextSize(18.0f);
                textView.setPadding(15, 10, 15, 10);
                return dropDownView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                TextView textView = (TextView) view2;
                textView.setTextColor(DemoCustomDataFragment.this.getResources().getColor(R$color.text_black));
                textView.setTextSize(20.0f);
                return view2;
            }
        };
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.binding.spDataStatus.setAdapter((SpinnerAdapter) arrayAdapter);
        this.binding.spDataStatus.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    DemoDataManager.getInstance().setH5ProDataStatus("1835010");
                } else {
                    if (i != 1) {
                        return;
                    }
                    DemoDataManager.getInstance().setH5ProDataStatus("0");
                }
            }
        });
    }

    private void setupSolSpinner() {
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(requireContext(), R.layout.simple_spinner_item, new String[]{getString(R$string.fixed_solution), getString(R$string.diff_solution), getString(R$string.invalid_solution)}) { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.10
            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                View dropDownView = super.getDropDownView(i, view, viewGroup);
                TextView textView = (TextView) dropDownView;
                textView.setTextColor(DemoCustomDataFragment.this.getResources().getColor(R$color.text_black));
                textView.setTextSize(18.0f);
                textView.setPadding(15, 10, 15, 10);
                return dropDownView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                TextView textView = (TextView) view2;
                textView.setTextColor(DemoCustomDataFragment.this.getResources().getColor(R$color.text_black));
                textView.setTextSize(20.0f);
                return view2;
            }
        };
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.binding.spQuality.setAdapter((SpinnerAdapter) arrayAdapter);
        this.binding.spQuality.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.fragment.DemoCustomDataFragment.11
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    DemoDataManager.getInstance().setSolution(4);
                } else if (i == 1) {
                    DemoDataManager.getInstance().setSolution(2);
                } else {
                    if (i != 2) {
                        return;
                    }
                    DemoDataManager.getInstance().setSolution(0);
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        String str = DemoDataManager.getInstance().getInsLon() + "," + DemoDataManager.getInstance().getInsLat() + "," + DemoDataManager.getInstance().getInsElev();
        this.mSp.edit().putString("current_coords", str).apply();
        LogToFile.i("当前设备坐标(演示模式)：" + str);
    }
}
