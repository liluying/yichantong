package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentLineStep3Binding;
import com.qianhe.yct.fragment.LineStep3Fragment;
import com.qianhe.yct.utils.KeyboardUtil;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineStep3Fragment extends BaseProjectFragment {
    private int actionTypeA;
    private int actionTypeB;
    private BaseStationEntity baseStationInfo;
    private FragmentLineStep3Binding binding;
    private double cachedEast1;
    private double cachedEast2;
    private double cachedElev1;
    private double cachedElev2;
    private double cachedNorth1;
    private double cachedNorth2;
    private boolean coordsSnapshotTaken;
    private LineEntity initEntity;
    private boolean isH5Pro;
    private boolean isUpdatingFields;
    private LineEntity lineEntity;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentLineStep3Binding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        String string = this.mSp.getString("current_coords", "");
        int i = 0;
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
            this.initEntity = (LineEntity) arguments.getSerializable("initEntity");
            this.lineEntity = (LineEntity) arguments.getSerializable("baseProEntity");
        }
        LinearLayout linearLayout = this.binding.lltToggle;
        LineEntity lineEntity = this.lineEntity;
        if (lineEntity != null && lineEntity.id != 0) {
            i = 8;
        }
        linearLayout.setVisibility(i);
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        refreshUnitLabels();
        if (haveCoordsChanged()) {
            recalculateFromCoords();
        }
        takeCoordsSnapshot();
    }

    private void initView() {
        this.binding.edtValueA.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (LineStep3Fragment.this.isUpdatingFields || LineStep3Fragment.this.binding.edtValueA.getNumericValue() == 0.0d) {
                    return;
                }
                double numericValue = LineStep3Fragment.this.binding.edtValueA.getNumericValue();
                LineEntity lineEntity = LineStep3Fragment.this.lineEntity;
                int i = LineStep3Fragment.this.actionTypeA;
                double dAbs = Math.abs(numericValue);
                if (i == 0) {
                    dAbs = -dAbs;
                }
                lineEntity.depthA = dAbs;
            }
        });
        this.binding.edtValueB.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (LineStep3Fragment.this.isUpdatingFields || LineStep3Fragment.this.binding.edtValueB.getNumericValue() == 0.0d) {
                    return;
                }
                double numericValue = LineStep3Fragment.this.binding.edtValueB.getNumericValue();
                LineEntity lineEntity = LineStep3Fragment.this.lineEntity;
                int i = LineStep3Fragment.this.actionTypeB;
                double dAbs = Math.abs(numericValue);
                if (i == 0) {
                    dAbs = -dAbs;
                }
                lineEntity.depthB = dAbs;
            }
        });
        this.binding.edtSpacing.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineEntity lineEntity = LineStep3Fragment.this.lineEntity;
                LineStep3Fragment lineStep3Fragment = LineStep3Fragment.this;
                lineEntity.spacing = lineStep3Fragment.formatOtherToMeter(lineStep3Fragment.getDisplayUnit(), LineStep3Fragment.this.binding.edtSpacing.getNumericValue());
            }
        });
        this.binding.edtValueA.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.4
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    LineStep3Fragment.this.syncDepthAFromUi();
                    LineStep3Fragment.this.onAChanged();
                } else {
                    if (TextUtils.isEmpty(LineStep3Fragment.this.binding.edtValueA.getText()) || Double.parseDouble(LineStep3Fragment.this.binding.edtValueA.getText().toString()) != 0.0d) {
                        return;
                    }
                    LineStep3Fragment.this.binding.edtValueA.setText("");
                }
            }
        });
        this.binding.edtValueB.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.5
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    LineStep3Fragment.this.syncDepthBFromUi();
                    LineStep3Fragment.this.onBChanged();
                } else {
                    if (TextUtils.isEmpty(LineStep3Fragment.this.binding.edtValueB.getText()) || Double.parseDouble(LineStep3Fragment.this.binding.edtValueB.getText().toString()) != 0.0d) {
                        return;
                    }
                    LineStep3Fragment.this.binding.edtValueB.setText("");
                }
            }
        });
        this.binding.edtLength.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.6
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                LineStep3Fragment.this.syncLengthFromUi();
                LineStep3Fragment.this.onLengthChanged();
            }
        });
        this.binding.edtHeightDiff.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.7
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                LineStep3Fragment.this.applyHeightDiffInput();
            }
        });
        this.binding.edtRatio.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.8
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                LineStep3Fragment.this.applyRatioInput();
            }
        });
        this.binding.typeDropdownA.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.9
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                LineStep3Fragment.this.actionTypeA = i;
                if (LineStep3Fragment.this.lineEntity.depthA != 0.0d) {
                    LineStep3Fragment.this.lineEntity.depthA = i == 0 ? -Math.abs(LineStep3Fragment.this.lineEntity.depthA) : Math.abs(LineStep3Fragment.this.lineEntity.depthA);
                }
                LineStep3Fragment.this.onAChanged();
            }
        });
        this.binding.typeDropdownB.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.10
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                LineStep3Fragment.this.actionTypeB = i;
                if (LineStep3Fragment.this.lineEntity.depthB != 0.0d) {
                    LineStep3Fragment.this.lineEntity.depthB = i == 0 ? -Math.abs(LineStep3Fragment.this.lineEntity.depthB) : Math.abs(LineStep3Fragment.this.lineEntity.depthB);
                }
                LineStep3Fragment.this.onBChanged();
            }
        });
        this.binding.lltToggle.setOnClickListener(new AnonymousClass11());
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineStep3Fragment.this.binding.edtLength.getNumericValue() == 0.0d) {
                    ((BaseActivity) LineStep3Fragment.this.requireActivity()).showToastDialog(LineStep3Fragment.this.getString(R$string.please_enter_length_of_line));
                    return;
                }
                if (LineStep3Fragment.this.binding.edtRightItems.getNumericValue() > 10.0d || LineStep3Fragment.this.binding.edtLeftItems.getNumericValue() > 10.0d) {
                    ((BaseActivity) LineStep3Fragment.this.requireActivity()).showToastDialog(LineStep3Fragment.this.getString(R$string.items_exceeded_limit));
                    return;
                }
                if (LineStep3Fragment.this.binding.ivToggle.isSelected() && LineStep3Fragment.this.binding.edtSpacing.getNumericValue() == 0.0d) {
                    ((BaseActivity) LineStep3Fragment.this.requireActivity()).showToastDialog(LineStep3Fragment.this.getString(R$string.please_enter_parallel_lines_interval));
                    return;
                }
                if (LineStep3Fragment.this.binding.ivToggle.isSelected()) {
                    LineStep3Fragment lineStep3Fragment = LineStep3Fragment.this;
                    if (lineStep3Fragment.formatOtherToMeter(lineStep3Fragment.getDisplayUnit(), LineStep3Fragment.this.binding.edtSpacing.getNumericValue()) > 5000.0d) {
                        ((BaseActivity) LineStep3Fragment.this.requireActivity()).showToastDialog(LineStep3Fragment.this.getString(R$string.interval_exceeds_limit));
                        return;
                    }
                }
                if (!LineStep3Fragment.this.binding.ivToggle.isSelected() || LineStep3Fragment.this.binding.edtRightItems.getNumericValue() > 0.0d || LineStep3Fragment.this.binding.edtLeftItems.getNumericValue() > 0.0d) {
                    LineStep3Fragment.this.createEntity();
                    EventBus.getDefault().post("next");
                } else {
                    ((BaseActivity) LineStep3Fragment.this.requireActivity()).showToastDialog(LineStep3Fragment.this.getString(R$string.please_enter_generated_quantity));
                }
            }
        });
        showData();
        new KeyboardUtil(requireActivity(), new KeyboardUtil.OnKeyboardVisibilityListener() { // from class: com.qianhe.yct.fragment.LineStep3Fragment.14
            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardShown() {
            }

            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardHidden() {
                LineStep3Fragment.this.commitFocusedInput();
                LineStep3Fragment.this.binding.edtValueA.clearFocus();
                LineStep3Fragment.this.binding.edtValueB.clearFocus();
                LineStep3Fragment.this.binding.edtLength.clearFocus();
                LineStep3Fragment.this.binding.edtHeightDiff.clearFocus();
                LineStep3Fragment.this.binding.edtRatio.clearFocus();
            }
        });
    }

    /* renamed from: com.qianhe.yct.fragment.LineStep3Fragment$11, reason: invalid class name */
    class AnonymousClass11 implements View.OnClickListener {
        AnonymousClass11() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LineStep3Fragment.this.binding.ivToggle.setSelected(!LineStep3Fragment.this.binding.ivToggle.isSelected());
            LineStep3Fragment.this.binding.lltParallelLine.setVisibility(LineStep3Fragment.this.binding.ivToggle.isSelected() ? 0 : 8);
            if (LineStep3Fragment.this.binding.ivToggle.isSelected()) {
                LineStep3Fragment.this.binding.nsv.post(new Runnable() { // from class: com.qianhe.yct.fragment.LineStep3Fragment$11$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LineStep3Fragment.AnonymousClass11 anonymousClass11 = this.f$0;
                        LineStep3Fragment.this.binding.nsv.smoothScrollTo(0, LineStep3Fragment.this.binding.nsv.getChildAt(0).getHeight());
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void commitFocusedInput() {
        if (this.binding.edtHeightDiff.hasFocus()) {
            applyHeightDiffInput();
            return;
        }
        if (this.binding.edtRatio.hasFocus()) {
            applyRatioInput();
            return;
        }
        if (this.binding.edtValueA.hasFocus()) {
            syncDepthAFromUi();
            onAChanged();
        } else if (this.binding.edtValueB.hasFocus()) {
            syncDepthBFromUi();
            onBChanged();
        } else if (this.binding.edtLength.hasFocus()) {
            syncLengthFromUi();
            onLengthChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDisplayUnit() {
        return getGlobalUnit();
    }

    private void refreshUnitLabels() {
        String displayUnitText = getDisplayUnitText();
        this.binding.tvUnitValueA.setText(displayUnitText);
        this.binding.tvUnitValueB.setText(displayUnitText);
        this.binding.tvUnitLength.setText(displayUnitText);
        this.binding.tvUnitHeightDiff.setText(displayUnitText);
        this.binding.tvUnitSpacing.setText(displayUnitText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncDepthAFromUi() {
        if (this.binding.edtValueA.getNumericValue() != 0.0d) {
            double otherToMeter = formatOtherToMeter(getDisplayUnit(), this.binding.edtValueA.getNumericValue());
            LineEntity lineEntity = this.lineEntity;
            int i = this.actionTypeA;
            double dAbs = Math.abs(otherToMeter);
            if (i == 0) {
                dAbs = -dAbs;
            }
            lineEntity.depthA = dAbs;
            return;
        }
        this.lineEntity.depthA = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncDepthBFromUi() {
        if (this.binding.edtValueB.getNumericValue() != 0.0d) {
            double otherToMeter = formatOtherToMeter(getDisplayUnit(), this.binding.edtValueB.getNumericValue());
            LineEntity lineEntity = this.lineEntity;
            int i = this.actionTypeB;
            double dAbs = Math.abs(otherToMeter);
            if (i == 0) {
                dAbs = -dAbs;
            }
            lineEntity.depthB = dAbs;
            return;
        }
        this.lineEntity.depthB = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncLengthFromUi() {
        if (this.binding.edtLength.getNumericValue() != 0.0d) {
            this.lineEntity.length = formatOtherToMeter(getDisplayUnit(), this.binding.edtLength.getNumericValue());
        } else {
            this.lineEntity.length = 0.0d;
        }
    }

    private double getComputedDistanceMeter() {
        LineEntity lineEntity = this.lineEntity;
        return CoordsCalculUtils.calculateDistanceGAUSS(new double[]{lineEntity.east1, lineEntity.north1}, new double[]{lineEntity.east2, lineEntity.north2});
    }

    private double getStoredLengthMeter() {
        double d = this.lineEntity.length;
        return d != 0.0d ? d : getComputedDistanceMeter();
    }

    private double getActualElevationA() {
        LineEntity lineEntity = this.lineEntity;
        return lineEntity.targetElevation1 + lineEntity.depthA;
    }

    private double getActualElevationB() {
        LineEntity lineEntity = this.lineEntity;
        return lineEntity.targetElevation2 + lineEntity.depthB;
    }

    private double getHeightDiffMeter() {
        return getActualElevationA() - getActualElevationB();
    }

    private double readHeightDiffInputMeter() {
        return formatOtherToMeter(getDisplayUnit(), this.binding.edtHeightDiff.getNumericValue());
    }

    private double getLengthMeter() {
        if (this.binding.edtLength.hasFocus()) {
            double otherToMeter = formatOtherToMeter(getDisplayUnit(), this.binding.edtLength.getNumericValue());
            return otherToMeter != 0.0d ? otherToMeter : getStoredLengthMeter();
        }
        return getStoredLengthMeter();
    }

    private void updateHeightDiffDisplay(double d) {
        this.isUpdatingFields = true;
        this.binding.edtHeightDiff.setText(formatCoords(formatMetertoOther(getDisplayUnit(), d), 2));
        this.isUpdatingFields = false;
    }

    private void refreshHeightDiff() {
        if (this.isUpdatingFields) {
            return;
        }
        updateHeightDiffDisplay(getHeightDiffMeter());
    }

    private void updateRatioDisplay(double d) {
        this.isUpdatingFields = true;
        this.binding.edtRatio.setText(formatCoords(d, 1));
        this.lineEntity.ratio = d;
        this.isUpdatingFields = false;
    }

    private void refreshRatioDisplay() {
        if (this.isUpdatingFields) {
            return;
        }
        double lengthMeter = getLengthMeter();
        updateRatioDisplay(lengthMeter != 0.0d ? (getHeightDiffMeter() / lengthMeter) * 100.0d : 0.0d);
    }

    private void updateLengthDisplay(double d) {
        this.isUpdatingFields = true;
        this.lineEntity.length = d;
        this.binding.edtLength.setText(formatCoords(formatMetertoOther(getDisplayUnit(), d), 2));
        this.isUpdatingFields = false;
    }

    private void refreshPreview() {
        this.binding.linePreView.setPointAB(new double[]{this.lineEntity.east1, getActualElevationA()}, new double[]{this.lineEntity.east2, getActualElevationB()});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAChanged() {
        if (this.isUpdatingFields) {
            return;
        }
        refreshHeightDiff();
        refreshRatioDisplay();
        refreshPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBChanged() {
        if (this.isUpdatingFields) {
            return;
        }
        refreshHeightDiff();
        refreshRatioDisplay();
        refreshPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyHeightDiffInput() {
        if (this.isUpdatingFields) {
            return;
        }
        syncDepthAFromUi();
        this.lineEntity.depthB = (getActualElevationA() - readHeightDiffInputMeter()) - this.lineEntity.targetElevation2;
        updateBFillDigDisplay();
        double heightDiffMeter = getHeightDiffMeter();
        updateHeightDiffDisplay(heightDiffMeter);
        double lengthMeter = getLengthMeter();
        updateRatioDisplay(lengthMeter != 0.0d ? (heightDiffMeter / lengthMeter) * 100.0d : 0.0d);
        refreshPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRatioInput() {
        double d;
        if (this.isUpdatingFields) {
            return;
        }
        double numericValue = this.binding.edtRatio.getNumericValue();
        if (numericValue == 0.0d) {
            return;
        }
        syncDepthAFromUi();
        double heightDiffMeter = getHeightDiffMeter();
        double dAbs = Math.abs(heightDiffMeter);
        if (dAbs < 1.0E-9d) {
            dAbs = Math.abs(readHeightDiffInputMeter());
        }
        if (dAbs < 1.0E-9d) {
            dAbs = getLengthMeter();
            if (dAbs <= 0.0d) {
                return;
            } else {
                d = numericValue / 100.0d;
            }
        } else {
            d = numericValue > 0.0d ? 1 : -1;
        }
        double d2 = dAbs * d;
        if (Math.abs(d2 - heightDiffMeter) > 1.0E-9d) {
            this.lineEntity.depthB = (getActualElevationA() - d2) - this.lineEntity.targetElevation2;
            updateBFillDigDisplay();
            updateHeightDiffDisplay(d2);
            heightDiffMeter = d2;
        }
        updateLengthDisplay(Math.abs(heightDiffMeter / (numericValue / 100.0d)));
        updateRatioDisplay(numericValue);
        refreshPreview();
    }

    private void updateBFillDigDisplay() {
        int i = this.lineEntity.depthB > 0.0d ? 1 : 0;
        this.isUpdatingFields = true;
        this.actionTypeB = i;
        this.binding.typeDropdownB.setCurrentType(i, false);
        this.binding.edtValueB.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthB)), 2));
        this.isUpdatingFields = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLengthChanged() {
        refreshRatioDisplay();
        refreshPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        LineEntity lineEntity = this.lineEntity;
        double d = lineEntity.depthA;
        if (d != 0.0d) {
            int i = this.actionTypeA;
            double dAbs = Math.abs(d);
            if (i == 0) {
                dAbs = -dAbs;
            }
            lineEntity.depthA = dAbs;
        }
        LineEntity lineEntity2 = this.lineEntity;
        double d2 = lineEntity2.depthB;
        if (d2 != 0.0d) {
            int i2 = this.actionTypeB;
            double dAbs2 = Math.abs(d2);
            if (i2 == 0) {
                dAbs2 = -dAbs2;
            }
            lineEntity2.depthB = dAbs2;
        }
        syncLengthFromUi();
        this.lineEntity.showUnit = getDisplayUnit();
        this.lineEntity.ratio = this.binding.edtRatio.getNumericValue();
        if (this.binding.ivToggle.isSelected()) {
            this.lineEntity.spacing = formatOtherToMeter(getDisplayUnit(), this.binding.edtSpacing.getNumericValue());
            this.lineEntity.rigthItems = TextUtils.isEmpty(this.binding.edtRightItems.getText()) ? 0 : Integer.parseInt(this.binding.edtRightItems.getText().toString());
            this.lineEntity.leftItems = TextUtils.isEmpty(this.binding.edtLeftItems.getText()) ? 0 : Integer.parseInt(this.binding.edtLeftItems.getText().toString());
        }
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            this.lineEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            this.lineEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            this.lineEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void showData() {
        this.binding.typeDropdownA.setEnabled(this.lineEntity.editState == 0);
        this.binding.typeDropdownA.setCurrentType(this.lineEntity.depthA > 0.0d ? 1 : 0);
        this.binding.edtValueA.setEnabled(this.lineEntity.editState == 0);
        this.binding.typeDropdownB.setEnabled(this.lineEntity.editState == 0);
        this.binding.typeDropdownB.setCurrentType(this.lineEntity.depthB > 0.0d ? 1 : 0);
        this.binding.edtValueB.setEnabled(this.lineEntity.editState == 0);
        refreshData();
        this.binding.edtValueA.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthA)), 2));
        this.binding.edtValueB.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthB)), 2));
        updateLengthDisplay(getStoredLengthMeter());
        refreshUnitLabels();
        LineEntity lineEntity = this.lineEntity;
        this.actionTypeA = lineEntity.depthA > 0.0d ? 1 : 0;
        this.actionTypeB = lineEntity.depthB > 0.0d ? 1 : 0;
    }

    private void refreshData() {
        this.binding.edtValueA.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthA)), 2));
        this.binding.edtValueB.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthB)), 2));
        updateLengthDisplay(getStoredLengthMeter());
        refreshUnitLabels();
        refreshHeightDiff();
        refreshRatioDisplay();
        refreshPreview();
    }

    private boolean haveCoordsChanged() {
        if (!this.coordsSnapshotTaken) {
            return haveCoordsChangedFromInit();
        }
        return haveCoordsChangedFromCache();
    }

    private boolean haveCoordsChangedFromInit() {
        return (Double.compare(this.lineEntity.east1, this.initEntity.east1) == 0 && Double.compare(this.lineEntity.north1, this.initEntity.north1) == 0 && Double.compare(this.lineEntity.targetElevation1, this.initEntity.targetElevation1) == 0 && Double.compare(this.lineEntity.east2, this.initEntity.east2) == 0 && Double.compare(this.lineEntity.north2, this.initEntity.north2) == 0 && Double.compare(this.lineEntity.targetElevation2, this.initEntity.targetElevation2) == 0) ? false : true;
    }

    private boolean haveCoordsChangedFromCache() {
        return (Double.compare(this.lineEntity.east1, this.cachedEast1) == 0 && Double.compare(this.lineEntity.north1, this.cachedNorth1) == 0 && Double.compare(this.lineEntity.targetElevation1, this.cachedElev1) == 0 && Double.compare(this.lineEntity.east2, this.cachedEast2) == 0 && Double.compare(this.lineEntity.north2, this.cachedNorth2) == 0 && Double.compare(this.lineEntity.targetElevation2, this.cachedElev2) == 0) ? false : true;
    }

    private void takeCoordsSnapshot() {
        LineEntity lineEntity = this.lineEntity;
        this.cachedEast1 = lineEntity.east1;
        this.cachedNorth1 = lineEntity.north1;
        this.cachedElev1 = lineEntity.targetElevation1;
        this.cachedEast2 = lineEntity.east2;
        this.cachedNorth2 = lineEntity.north2;
        this.cachedElev2 = lineEntity.targetElevation2;
        this.coordsSnapshotTaken = true;
    }

    private void recalculateFromCoords() {
        this.lineEntity.length = 0.0d;
        this.isUpdatingFields = true;
        this.binding.edtValueA.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthA)), 2));
        this.binding.edtValueB.setText(formatCoords(formatMetertoOther(getDisplayUnit(), Math.abs(this.lineEntity.depthB)), 2));
        LineEntity lineEntity = this.lineEntity;
        int i = lineEntity.depthA > 0.0d ? 1 : 0;
        this.actionTypeA = i;
        this.actionTypeB = lineEntity.depthB <= 0.0d ? 0 : 1;
        this.binding.typeDropdownA.setCurrentType(i);
        this.binding.typeDropdownB.setCurrentType(this.actionTypeB);
        this.isUpdatingFields = false;
        updateLengthDisplay(getComputedDistanceMeter());
        refreshHeightDiff();
        refreshRatioDisplay();
        refreshPreview();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
