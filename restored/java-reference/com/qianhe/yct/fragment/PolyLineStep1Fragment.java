package com.qianhe.yct.fragment;

import android.R;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PolyLineEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentPolylineStep1Binding;
import com.qianhe.yct.utils.KeyboardUtil;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PolyLineStep1Fragment extends BaseProjectFragment {
    private FragmentPolylineStep1Binding binding;
    private int currentSlopeMode = 0;
    private PolyLineEntity initEntity;
    private InsNavi mINS;
    private PolyLineEntity polyLineEntity;
    private boolean slopeModeInitializing;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentPolylineStep1Binding.inflate(getLayoutInflater());
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception unused) {
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initEntity = (PolyLineEntity) arguments.getSerializable("initEntity");
            this.polyLineEntity = (PolyLineEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep1Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineStep1Fragment.this.currentSlopeMode == 1 && PolyLineStep1Fragment.this.isRatioInputEmpty()) {
                    ((BaseActivity) PolyLineStep1Fragment.this.requireActivity()).showTipDialog(PolyLineStep1Fragment.this.getString(R$string.please_set_slope_ratio), PolyLineStep1Fragment.this.getString(R$string.ok), null);
                } else if (PolyLineStep1Fragment.this.binding.edtWidth.getNumericValue() == 0.0d) {
                    ((BaseActivity) PolyLineStep1Fragment.this.requireActivity()).showTipDialog(PolyLineStep1Fragment.this.getString(R$string.please_enter_width), PolyLineStep1Fragment.this.getString(R$string.ok), null);
                } else {
                    PolyLineStep1Fragment.this.applyParamsToEntity();
                    EventBus.getDefault().post("next");
                }
            }
        });
        setupSlopeModeSpinner();
        this.binding.edtRatio.setFillZeroOnBlur(false);
        this.binding.edtRatio.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.PolyLineStep1Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (PolyLineStep1Fragment.this.currentSlopeMode == 1) {
                    PolyLineStep1Fragment.this.updateStatusIcon();
                }
            }
        });
        showData();
        new KeyboardUtil(requireActivity(), new KeyboardUtil.OnKeyboardVisibilityListener() { // from class: com.qianhe.yct.fragment.PolyLineStep1Fragment.4
            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardShown() {
            }

            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardHidden() {
                PolyLineStep1Fragment.this.binding.edtWidth.clearFocus();
                PolyLineStep1Fragment.this.binding.edtRatio.clearFocus();
            }
        });
    }

    private void setupSlopeModeSpinner() {
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R.layout.simple_spinner_item, new String[]{getString(R$string.set_no_slope_ratio), getString(R$string.set_overall_slope_ratio), getString(R$string.set_segment_slope_ratio)});
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.binding.spSlopeMode.setAdapter((SpinnerAdapter) arrayAdapter);
        this.binding.spSlopeMode.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.qianhe.yct.fragment.PolyLineStep1Fragment.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (PolyLineStep1Fragment.this.slopeModeInitializing) {
                    return;
                }
                PolyLineStep1Fragment.this.onSlopeModeChanged(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSlopeModeChanged(int i) {
        this.currentSlopeMode = i;
        if (i == 1) {
            PolyLineEntity polyLineEntity = this.initEntity;
            boolean z = polyLineEntity != null && polyLineEntity.isOverallSlopeMode();
            double d = z ? this.initEntity.ratio : 0.0d;
            this.polyLineEntity.ratio = d;
            this.binding.edtRatio.setText(z ? formatCoords(d, 3) : "");
        } else {
            this.polyLineEntity.ratio = 0.0d;
            this.binding.edtRatio.setText("");
        }
        applySlopeModeUi(i);
        updateStatusIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRatioInputEmpty() {
        Editable text = this.binding.edtRatio.getText();
        if (TextUtils.isEmpty(text)) {
            return true;
        }
        String strTrim = text.toString().trim();
        return strTrim.isEmpty() || ".".equals(strTrim) || "-".equals(strTrim);
    }

    private void applySlopeModeUi(int i) {
        this.binding.lltRatio.setVisibility(i == 1 ? 0 : 8);
        this.binding.tvSlopeTip.setVisibility(0);
        if (i == 0) {
            this.binding.tvSlopeTip.setText(R$string.polyline_slope_tip_none);
        } else if (i == 1) {
            this.binding.tvSlopeTip.setText(R$string.polyline_slope_tip_overall);
        } else {
            this.binding.tvSlopeTip.setText(R$string.polyline_slope_tip_segment);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusIcon() {
        if (this.currentSlopeMode != 1 || isRatioInputEmpty()) {
            this.binding.ivStatus.setImageResource(R$drawable.icon_polyline_step2_default);
            return;
        }
        double numericValue = this.binding.edtRatio.getNumericValue();
        if (numericValue < 0.0d) {
            this.binding.ivStatus.setImageResource(R$drawable.icon_polyline_fu);
        } else if (numericValue > 0.0d) {
            this.binding.ivStatus.setImageResource(R$drawable.icon_polyline_zheng);
        } else {
            this.binding.ivStatus.setImageResource(R$drawable.icon_polyline_step2_default);
        }
    }

    private int resolveSlopeMode(PolyLineEntity polyLineEntity) {
        if (polyLineEntity.isOverallSlopeMode()) {
            return 1;
        }
        return polyLineEntity.isSegmentSlopeMode() ? 2 : 0;
    }

    private void showData() {
        this.binding.unitDropdown.initUnit(requireContext(), getGlobalUnit());
        int iResolveSlopeMode = resolveSlopeMode(this.polyLineEntity);
        this.currentSlopeMode = iResolveSlopeMode;
        boolean z = true;
        this.slopeModeInitializing = true;
        this.binding.spSlopeMode.setSelection(iResolveSlopeMode);
        this.slopeModeInitializing = false;
        applySlopeModeUi(this.currentSlopeMode);
        if (this.currentSlopeMode == 1) {
            PolyLineEntity polyLineEntity = this.polyLineEntity;
            if (polyLineEntity.subType != 1 && polyLineEntity.ratio == 0.0d) {
                z = false;
            }
            this.binding.edtRatio.setText(z ? formatCoords(polyLineEntity.ratio, 3) : "");
        } else {
            this.binding.edtRatio.setText("");
        }
        updateStatusIcon();
        this.binding.edtWidth.setText(this.polyLineEntity.width != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), this.polyLineEntity.width, 2)) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyParamsToEntity() {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        polyLineEntity.depthA = 0.0d;
        polyLineEntity.depthB = 0.0d;
        int i = this.currentSlopeMode;
        if (i == 1) {
            polyLineEntity.ratio = Double.parseDouble(formatCoords(this.binding.edtRatio.getNumericValue(), 3));
            this.polyLineEntity.subType = 1;
        } else if (i == 2) {
            polyLineEntity.ratio = 0.0d;
            polyLineEntity.subType = 2;
        } else {
            polyLineEntity.ratio = 0.0d;
            polyLineEntity.subType = 0;
        }
        this.polyLineEntity.width = formatOtherToMeter(getGlobalUnit(), this.binding.edtWidth.getNumericValue(), 2);
        this.polyLineEntity.showUnit = getGlobalUnit();
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }
}
