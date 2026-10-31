package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.WaGouEnum;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.wagou.WaGouWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentWgStep3Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.WaGouStep3Fragment;
import com.qianhe.yct.utils.KeyboardUtil;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouStep3Fragment extends BaseProjectFragment {
    private boolean bPointModeResolved;
    private BaseStationEntity baseStationInfo;
    private FragmentWgStep3Binding binding;
    private double cachedDepthA;
    private double cachedDepthB;
    private double cachedEast1;
    private double cachedEast2;
    private double cachedElev1;
    private double cachedElev2;
    private double cachedNorth1;
    private double cachedNorth2;
    private int cachedTickA;
    private int cachedTickB;
    private boolean directionPointOnly;
    private WaGouEntity initEntity;
    private boolean isH5Pro;
    private boolean isUpdatingFields;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private boolean stepSnapshotTaken;
    private WaGouEntity waGouEntity;

    private boolean isCalculatedSlopeBottomWidthExceedsHalfWidth(double d, double d2, double d3) {
        double d4 = d3 / 100.0d;
        return d4 > 0.0d && d / d4 > d2;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentWgStep3Binding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
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
            this.initEntity = (WaGouEntity) arguments.getSerializable("initEntity");
            this.waGouEntity = (WaGouEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        if (haveCoordsChanged()) {
            recalculateFromCoords();
        } else if (haveDepthsChanged() || haveBenchmarkChanged()) {
            recalculateFromDepths();
        } else {
            this.bPointModeResolved = false;
            refreshBPointMode();
            refreshSlopeFields();
        }
        takeStepSnapshot();
    }

    private void initView() {
        this.binding.edtRatio.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (WaGouStep3Fragment.this.isUpdatingFields) {
                    return;
                }
                WaGouStep3Fragment.this.waGouEntity.ratio = WaGouStep3Fragment.this.binding.edtRatio.getNumericValue();
            }
        });
        this.binding.edtRatio.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.2
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                WaGouStep3Fragment.this.applyRatioInput();
            }
        });
        this.binding.edtLength.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.3
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                WaGouStep3Fragment.this.syncLengthFromUi();
                WaGouStep3Fragment.this.onLengthChanged();
            }
        });
        this.binding.edtHeightDiff.setOnFocusListener(new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.4
            @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                WaGouStep3Fragment.this.applyHeightDiffInput();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouStep3Fragment.this.commitFocusedInput();
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouStep3Fragment.this.commitFocusedInput();
                WaGouStep3Fragment.this.syncDepthBFromSlopeRatio();
                double lengthMeter = WaGouStep3Fragment.this.getLengthMeter();
                double numericValue = WaGouStep3Fragment.this.binding.edtWidth.getNumericValue();
                if (numericValue == 0.0d) {
                    ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showToastDialog(WaGouStep3Fragment.this.getString(R$string.please_enter_width));
                    return;
                }
                if (lengthMeter == 0.0d) {
                    ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showToastDialog(WaGouStep3Fragment.this.getString(R$string.please_enter_length));
                    return;
                }
                if (WaGouStep3Fragment.this.waGouEntity.subType != WaGouEnum.FLAT.getType() && WaGouStep3Fragment.this.binding.lltRatio.getVisibility() == 0 && WaGouStep3Fragment.this.binding.edtRatio.getNumericValue() == 0.0d) {
                    ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showToastDialog(WaGouStep3Fragment.this.getString(R$string.please_enter_slope_ratio_of_ditch));
                    return;
                }
                if (WaGouStep3Fragment.this.binding.lltAdvanced.getVisibility() == 0) {
                    if (WaGouStep3Fragment.this.isBottomWidthMode()) {
                        if (WaGouStep3Fragment.this.binding.edtLeftBottomWidth.getNumericValue() == 0.0d && WaGouStep3Fragment.this.binding.edtRightBottomWidth.getNumericValue() == 0.0d) {
                            ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showToastDialog(WaGouStep3Fragment.this.getString(R$string.please_enter_bottom_width));
                            return;
                        } else if (WaGouStep3Fragment.this.isBottomWidthExceedsDitchWidth(numericValue)) {
                            ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showTipDialog(WaGouStep3Fragment.this.getString(R$string.bottom_width_exceeds_ditch_width), WaGouStep3Fragment.this.getString(R$string.ok), null);
                            return;
                        }
                    } else {
                        if (WaGouStep3Fragment.this.binding.edtLeftSlope.getNumericValue() == 0.0d && WaGouStep3Fragment.this.binding.edtRightSlope.getNumericValue() == 0.0d) {
                            ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showToastDialog(WaGouStep3Fragment.this.getString(R$string.please_enter_complete_slope));
                            return;
                        }
                        String slopeBottomExceedsCenterlineMessage = WaGouStep3Fragment.this.getSlopeBottomExceedsCenterlineMessage(numericValue);
                        if (slopeBottomExceedsCenterlineMessage != null) {
                            ((BaseActivity) WaGouStep3Fragment.this.requireActivity()).showTipDialog(slopeBottomExceedsCenterlineMessage, WaGouStep3Fragment.this.getString(R$string.ok), null);
                            return;
                        }
                    }
                }
                WaGouStep3Fragment.this.createEntity();
                if (WaGouStep3Fragment.this.waGouEntity.id == 0) {
                    WaGouStep3Fragment.this.waGouEntity.id = DatabaseManager.getInstance(WaGouStep3Fragment.this.requireContext()).insert(WaGouStep3Fragment.this.waGouEntity);
                    WaGouStep3Fragment.this.next();
                } else {
                    if (!WaGouStep3Fragment.this.initEntity.equals(WaGouStep3Fragment.this.waGouEntity)) {
                        WaGouStep3Fragment.this.waGouEntity.updateTime = System.currentTimeMillis() / 1000;
                        DatabaseManager.getInstance(WaGouStep3Fragment.this.requireContext()).updateEntityById(WaGouStep3Fragment.this.waGouEntity);
                        NetworkUserLoader.getInstance().modifyProject(WaGouStep3Fragment.this.mINS, WaGouStep3Fragment.this.waGouEntity);
                    }
                    WaGouStep3Fragment.this.next();
                }
            }
        });
        this.binding.tvAdvanced.setOnClickListener(new AnonymousClass7());
        this.binding.rgAdvanced.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.8
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                if (i == R$id.rbSlope) {
                    WaGouStep3Fragment.this.binding.lltAdvancedSlope.setVisibility(0);
                    WaGouStep3Fragment.this.binding.lltAdvancedBottomWidth.setVisibility(8);
                    WaGouStep3Fragment.this.waGouEntity.advancedType = 0;
                } else if (i == R$id.rbBottomWidth) {
                    WaGouStep3Fragment.this.binding.lltAdvancedSlope.setVisibility(8);
                    WaGouStep3Fragment.this.binding.lltAdvancedBottomWidth.setVisibility(0);
                    WaGouStep3Fragment.this.waGouEntity.advancedType = 1;
                }
            }
        });
        this.binding.edtLeftSlope.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.9
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep3Fragment.this.waGouEntity.leftSlopeRatio = WaGouStep3Fragment.this.binding.edtLeftSlope.getNumericValue();
            }
        });
        this.binding.edtRightSlope.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep3Fragment.this.waGouEntity.rightSlopeRatio = WaGouStep3Fragment.this.binding.edtRightSlope.getNumericValue();
            }
        });
        this.binding.edtLeftBottomWidth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.11
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep3Fragment.this.waGouEntity.leftBottomWidth = WaGouStep3Fragment.this.binding.edtLeftBottomWidth.getNumericValue();
            }
        });
        this.binding.edtRightBottomWidth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.12
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WaGouStep3Fragment.this.waGouEntity.rightBottomWidth = WaGouStep3Fragment.this.binding.edtRightBottomWidth.getNumericValue();
            }
        });
        showData();
        new KeyboardUtil(requireActivity(), new KeyboardUtil.OnKeyboardVisibilityListener() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment.13
            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardShown() {
            }

            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardHidden() {
                WaGouStep3Fragment.this.commitFocusedInput();
                WaGouStep3Fragment.this.binding.edtRatio.clearFocus();
                WaGouStep3Fragment.this.binding.edtLength.clearFocus();
                WaGouStep3Fragment.this.binding.edtHeightDiff.clearFocus();
            }
        });
    }

    /* renamed from: com.qianhe.yct.fragment.WaGouStep3Fragment$7, reason: invalid class name */
    class AnonymousClass7 implements View.OnClickListener {
        AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WaGouStep3Fragment.this.binding.lltAdvanced.setVisibility(WaGouStep3Fragment.this.binding.lltAdvanced.getVisibility() == 0 ? 8 : 0);
            WaGouStep3Fragment.this.binding.tvAdvanced.setSelected(WaGouStep3Fragment.this.binding.lltAdvanced.getVisibility() == 0);
            if (WaGouStep3Fragment.this.binding.tvAdvanced.isSelected() && WaGouStep3Fragment.this.waGouEntity.advancedType == -1) {
                WaGouStep3Fragment.this.ensureAdvancedTypeSelected();
            }
            WaGouStep3Fragment.this.refresStepImage();
            if (WaGouStep3Fragment.this.binding.tvAdvanced.isSelected()) {
                WaGouStep3Fragment.this.binding.nsv.post(new Runnable() { // from class: com.qianhe.yct.fragment.WaGouStep3Fragment$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WaGouStep3Fragment.AnonymousClass7 anonymousClass7 = this.f$0;
                        WaGouStep3Fragment.this.binding.nsv.smoothScrollTo(0, WaGouStep3Fragment.this.binding.nsv.getChildAt(0).getHeight());
                    }
                });
            }
        }
    }

    private boolean isBOnLineForLinkage() {
        resolveBPointMode();
        return this.waGouEntity.tickB == 1 || !this.directionPointOnly;
    }

    private void resolveBPointMode() {
        if (this.bPointModeResolved) {
            return;
        }
        WaGouEntity waGouEntity = this.waGouEntity;
        this.directionPointOnly = waGouEntity.tickB == 0 && waGouEntity.depthB == 0.0d;
        this.bPointModeResolved = true;
    }

    private void refreshBPointMode() {
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.tickB == 1 || waGouEntity.depthB != 0.0d) {
            this.directionPointOnly = false;
        } else {
            this.directionPointOnly = true;
        }
        this.bPointModeResolved = true;
    }

    private double getBottomElevSpanMeter() {
        if (isDirectionPointOnly()) {
            return getAbPlanarDistanceMeter();
        }
        return getLengthMeter();
    }

    private boolean isDirectionPointOnly() {
        resolveBPointMode();
        return this.directionPointOnly;
    }

    private double signedBottomElevDiffFromRatio(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return signedHeightFromAbsMeter((getBottomElevSpanMeter() * d) / 100.0d);
    }

    private boolean isSlopeDitch() {
        return this.waGouEntity.subType != WaGouEnum.FLAT.getType();
    }

    private boolean areDepthsStoredInMeter() {
        return this.waGouEntity.id > 0;
    }

    private double depthToMeter(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return areDepthsStoredInMeter() ? d : formatOtherToMeter(getGlobalUnit(), d);
    }

    private double depthFromMeter(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        double dRoundTo3Decimals = roundTo3Decimals(d);
        return areDepthsStoredInMeter() ? dRoundTo3Decimals : formatMetertoOther(getGlobalUnit(), dRoundTo3Decimals, 3);
    }

    private double roundTo3Decimals(double d) {
        return Math.round(d * 1000.0d) / 1000.0d;
    }

    private double getActualElevationA() {
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.tickA == 1) {
            return waGouEntity.targetElevation1;
        }
        return waGouEntity.targetElevation1 + depthToMeter(waGouEntity.depthA);
    }

    private double getActualElevationB() {
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.tickB == 1) {
            return waGouEntity.targetElevation2;
        }
        return waGouEntity.targetElevation2 + depthToMeter(waGouEntity.depthB);
    }

    private double getElevationHeightDiffMeter() {
        return getActualElevationA() - getActualElevationB();
    }

    private double getComputedHeightDiffMeter() {
        double numericValue = this.binding.edtRatio.getNumericValue();
        if (numericValue == 0.0d) {
            numericValue = this.waGouEntity.ratio;
        }
        if (numericValue == 0.0d) {
            return 0.0d;
        }
        return signedHeightFromRatioPercent(numericValue);
    }

    private double readHeightDiffInputMeter() {
        return signedHeightFromAbsMeter(Math.abs(formatOtherToMeter(getGlobalUnit(), this.binding.edtHeightDiff.getNumericValue())));
    }

    private double signedHeightFromAbsMeter(double d) {
        if (this.waGouEntity.subType == WaGouEnum.UP.getType()) {
            return -Math.abs(d);
        }
        return Math.abs(d);
    }

    private double getAbPlanarDistanceMeter() {
        WaGouEntity waGouEntity = this.waGouEntity;
        return CoordsCalculUtils.calculateDistanceGAUSS(new double[]{waGouEntity.east1, waGouEntity.north1, waGouEntity.targetElevation1}, new double[]{waGouEntity.east2, waGouEntity.north2, waGouEntity.targetElevation2});
    }

    private double getStoredLengthMeter() {
        WaGouEntity waGouEntity = this.waGouEntity;
        double d = waGouEntity.length;
        if (d != 0.0d) {
            return d;
        }
        if (waGouEntity.id == 0) {
            return getAbPlanarDistanceMeter();
        }
        return 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getLengthMeter() {
        if (this.binding.edtLength.hasFocus()) {
            double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtLength.getNumericValue());
            return otherToMeter != 0.0d ? otherToMeter : getStoredLengthMeter();
        }
        return getStoredLengthMeter();
    }

    private double getDefaultRatioPercent() {
        double storedLengthMeter = getStoredLengthMeter();
        if (storedLengthMeter == 0.0d) {
            return 0.0d;
        }
        return (Math.abs(getElevationHeightDiffMeter()) / storedLengthMeter) * 100.0d;
    }

    private double signedHeightFromRatioPercent(double d) {
        double lengthMeter = (getLengthMeter() * d) / 100.0d;
        return this.waGouEntity.subType == WaGouEnum.UP.getType() ? -lengthMeter : lengthMeter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncLengthFromUi() {
        if (this.binding.edtLength.getNumericValue() != 0.0d) {
            this.waGouEntity.length = formatOtherToMeter(getGlobalUnit(), this.binding.edtLength.getNumericValue());
        } else {
            this.waGouEntity.length = 0.0d;
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
        } else if (this.binding.edtLength.hasFocus()) {
            syncLengthFromUi();
            onLengthChanged();
        }
    }

    private void updateDepthBFromBottomElevDiff(double d) {
        if (this.waGouEntity.tickB == 1) {
            return;
        }
        double actualElevationA = getActualElevationA() - d;
        WaGouEntity waGouEntity = this.waGouEntity;
        waGouEntity.depthB = depthFromMeter(actualElevationA - waGouEntity.targetElevation2);
        WaGouEntity waGouEntity2 = this.waGouEntity;
        if (waGouEntity2.depthB != 0.0d) {
            waGouEntity2.tickB = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncDepthBFromSlopeRatio() {
        if (!isSlopeDitch() || this.waGouEntity.tickB == 1) {
            return;
        }
        double numericValue = this.binding.edtRatio.getNumericValue();
        if (numericValue == 0.0d) {
            numericValue = this.waGouEntity.ratio;
        }
        if (numericValue == 0.0d) {
            return;
        }
        if (isDirectionPointOnly() || this.waGouEntity.depthB == 0.0d) {
            updateDepthBFromBottomElevDiff(signedBottomElevDiffFromRatio(numericValue));
        }
    }

    private void updateHeightDiffDisplay(double d) {
        this.isUpdatingFields = true;
        this.binding.edtHeightDiff.setText(formatCoords(formatMetertoOther(getGlobalUnit(), Math.abs(d)), 2));
        this.isUpdatingFields = false;
    }

    private void refreshHeightDiff() {
        if (this.isUpdatingFields) {
            return;
        }
        updateHeightDiffDisplay(getComputedHeightDiffMeter());
    }

    private void updateRatioDisplay(double d) {
        this.isUpdatingFields = true;
        this.binding.edtRatio.setText(d != 0.0d ? formatCoords(d, 1) : "");
        this.waGouEntity.ratio = d;
        this.isUpdatingFields = false;
    }

    private void updateLengthDisplay(double d) {
        this.isUpdatingFields = true;
        this.waGouEntity.length = d;
        this.binding.edtLength.setText(formatCoords(formatMetertoOther(getGlobalUnit(), d), 2));
        this.isUpdatingFields = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRatioInput() {
        if (this.isUpdatingFields || !isSlopeDitch()) {
            return;
        }
        double numericValue = this.binding.edtRatio.getNumericValue();
        if (numericValue == 0.0d) {
            return;
        }
        updateDepthBFromBottomElevDiff(signedBottomElevDiffFromRatio(numericValue));
        updateHeightDiffDisplay(getComputedHeightDiffMeter());
        updateRatioDisplay(numericValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyHeightDiffInput() {
        if (this.isUpdatingFields || !isSlopeDitch() || Math.abs(formatOtherToMeter(getGlobalUnit(), this.binding.edtHeightDiff.getNumericValue())) == 0.0d) {
            return;
        }
        double heightDiffInputMeter = readHeightDiffInputMeter();
        resolveBPointMode();
        if (isBOnLineForLinkage()) {
            double numericValue = this.binding.edtRatio.getNumericValue();
            if (numericValue == 0.0d) {
                numericValue = getDefaultRatioPercent();
            }
            if (numericValue == 0.0d) {
                updateDepthBFromBottomElevDiff(heightDiffInputMeter);
                refreshHeightDiff();
                return;
            } else {
                updateDepthBFromBottomElevDiff(heightDiffInputMeter);
                updateLengthDisplay(Math.abs(heightDiffInputMeter) / (numericValue / 100.0d));
                updateRatioDisplay(numericValue);
                refreshHeightDiff();
                return;
            }
        }
        double lengthMeter = getLengthMeter();
        double dAbs = lengthMeter != 0.0d ? (Math.abs(heightDiffInputMeter) / lengthMeter) * 100.0d : 0.0d;
        updateRatioDisplay(dAbs);
        if (dAbs != 0.0d) {
            updateDepthBFromBottomElevDiff(signedHeightFromAbsMeter((getAbPlanarDistanceMeter() * dAbs) / 100.0d));
        }
        refreshHeightDiff();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLengthChanged() {
        if (this.isUpdatingFields || !isSlopeDitch()) {
            return;
        }
        if (this.binding.edtRatio.getNumericValue() == 0.0d) {
            double defaultRatioPercent = getDefaultRatioPercent();
            if (defaultRatioPercent != 0.0d) {
                updateRatioDisplay(defaultRatioPercent);
            }
        }
        refreshHeightDiff();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBottomWidthMode() {
        return this.waGouEntity.advancedType == 1 || this.binding.rbBottomWidth.isChecked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBottomWidthExceedsDitchWidth(double d) {
        int globalUnit = getGlobalUnit();
        double otherToMeter = formatOtherToMeter(globalUnit, Math.abs(this.binding.edtLeftBottomWidth.getNumericValue()));
        double otherToMeter2 = formatOtherToMeter(globalUnit, Math.abs(this.binding.edtRightBottomWidth.getNumericValue()));
        double otherToMeter3 = formatOtherToMeter(globalUnit, Math.abs(d)) / 2.0d;
        return otherToMeter > otherToMeter3 || otherToMeter2 > otherToMeter3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSlopeBottomExceedsCenterlineMessage(double d) {
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), Math.abs(d)) / 2.0d;
        if (otherToMeter <= 0.0d) {
            return null;
        }
        double dResolveLowerEndCrossSectionDepthMeter = resolveLowerEndCrossSectionDepthMeter();
        if (dResolveLowerEndCrossSectionDepthMeter <= 0.0d) {
            return null;
        }
        double numericValue = this.binding.edtLeftSlope.getNumericValue();
        double numericValue2 = this.binding.edtRightSlope.getNumericValue();
        if (numericValue > 0.0d && isCalculatedSlopeBottomWidthExceedsHalfWidth(dResolveLowerEndCrossSectionDepthMeter, otherToMeter, numericValue)) {
            return getString(R$string.slope_too_small_left_bottom_exceeds_centerline);
        }
        if (numericValue2 <= 0.0d || !isCalculatedSlopeBottomWidthExceedsHalfWidth(dResolveLowerEndCrossSectionDepthMeter, otherToMeter, numericValue2)) {
            return null;
        }
        return getString(R$string.slope_too_small_right_bottom_exceeds_centerline);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (r5 > 0.0d) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        if (r0 > 0.0d) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
    
        return resolveConfiguredDepthAtLowerEntityEnd();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double resolveLowerEndCrossSectionDepthMeter() {
        /*
            r11 = this;
            com.qianhe.baselib.bean.WaGouEntity r0 = r11.waGouEntity
            int r0 = r0.subType
            com.qianhe.baselib.enums.WaGouEnum r1 = com.qianhe.baselib.enums.WaGouEnum.FLAT
            int r1 = r1.getType()
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L32
            com.qianhe.baselib.bean.WaGouEntity r0 = r11.waGouEntity
            int r1 = r0.tickA
            if (r1 == r2) goto L27
            double r1 = r0.depthA
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L1c
            goto L27
        L1c:
            double r0 = r0.depthB
            double r0 = r11.depthToMeter(r0)
            double r0 = java.lang.Math.abs(r0)
            return r0
        L27:
            double r0 = r0.depthA
            double r0 = r11.depthToMeter(r0)
            double r0 = java.lang.Math.abs(r0)
            return r0
        L32:
            double r0 = r11.resolveCrossSectionDepthAtEnd(r2)
            r2 = 0
            double r5 = r11.resolveCrossSectionDepthAtEnd(r2)
            double r7 = r11.getActualElevationA()
            double r9 = r11.getActualElevationB()
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 > 0) goto L51
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 <= 0) goto L4c
            goto L5a
        L4c:
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 <= 0) goto L5b
            goto L55
        L51:
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 <= 0) goto L56
        L55:
            return r5
        L56:
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 <= 0) goto L5b
        L5a:
            return r0
        L5b:
            double r0 = r11.resolveConfiguredDepthAtLowerEntityEnd()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.fragment.WaGouStep3Fragment.resolveLowerEndCrossSectionDepthMeter():double");
    }

    private double resolveCrossSectionDepthAtEnd(boolean z) {
        WaGouEntity waGouEntity = this.waGouEntity;
        return Math.abs((z ? waGouEntity.targetElevation1 : waGouEntity.targetElevation2) - (z ? getActualElevationA() : getActualElevationB()));
    }

    private double resolveConfiguredDepthAtLowerEntityEnd() {
        if (getActualElevationA() <= getActualElevationB()) {
            if (Math.abs(depthToMeter(this.waGouEntity.depthA)) > 0.0d) {
                return Math.abs(depthToMeter(this.waGouEntity.depthA));
            }
            return Math.abs(depthToMeter(this.waGouEntity.depthB));
        }
        if (Math.abs(depthToMeter(this.waGouEntity.depthB)) > 0.0d) {
            return Math.abs(depthToMeter(this.waGouEntity.depthB));
        }
        return Math.abs(depthToMeter(this.waGouEntity.depthA));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureAdvancedTypeSelected() {
        if (this.waGouEntity.advancedType != -1) {
            return;
        }
        if (this.binding.rbBottomWidth.isChecked()) {
            this.waGouEntity.advancedType = 1;
            this.binding.lltAdvancedSlope.setVisibility(8);
            this.binding.lltAdvancedBottomWidth.setVisibility(0);
        } else {
            this.waGouEntity.advancedType = 0;
            this.binding.rbSlope.setChecked(true);
            this.binding.lltAdvancedSlope.setVisibility(0);
            this.binding.lltAdvancedBottomWidth.setVisibility(8);
        }
    }

    private void saveAdvancedParams() {
        if (!this.binding.tvAdvanced.isSelected()) {
            WaGouEntity waGouEntity = this.waGouEntity;
            waGouEntity.leftSlopeRatio = 0.0d;
            waGouEntity.rightSlopeRatio = 0.0d;
            waGouEntity.leftBottomWidth = 0.0d;
            waGouEntity.rightBottomWidth = 0.0d;
            return;
        }
        ensureAdvancedTypeSelected();
        if (isBottomWidthMode()) {
            this.waGouEntity.advancedType = 1;
            double numericValue = this.binding.edtLeftBottomWidth.getNumericValue();
            this.waGouEntity.leftBottomWidth = formatOtherToMeter(getGlobalUnit(), Math.abs(numericValue));
            double numericValue2 = this.binding.edtRightBottomWidth.getNumericValue();
            this.waGouEntity.rightBottomWidth = formatOtherToMeter(getGlobalUnit(), Math.abs(numericValue2));
            WaGouEntity waGouEntity2 = this.waGouEntity;
            waGouEntity2.leftSlopeRatio = 0.0d;
            waGouEntity2.rightSlopeRatio = 0.0d;
            return;
        }
        WaGouEntity waGouEntity3 = this.waGouEntity;
        waGouEntity3.advancedType = 0;
        waGouEntity3.leftBottomWidth = 0.0d;
        waGouEntity3.rightBottomWidth = 0.0d;
        waGouEntity3.leftSlopeRatio = this.binding.edtLeftSlope.getNumericValue();
        this.waGouEntity.rightSlopeRatio = this.binding.edtRightSlope.getNumericValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        this.waGouEntity.showUnit = getGlobalUnit();
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            this.waGouEntity.ratio = 0.0d;
        } else {
            this.waGouEntity.ratio = this.binding.edtRatio.getNumericValue();
        }
        this.waGouEntity.depthA = formatOtherToMeter(getGlobalUnit(), this.waGouEntity.depthA);
        this.waGouEntity.depthB = roundTo3Decimals(formatOtherToMeter(getGlobalUnit(), this.waGouEntity.depthB));
        syncLengthFromUi();
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.length == 0.0d) {
            waGouEntity.length = getAbPlanarDistanceMeter();
        }
        double numericValue = this.binding.edtWidth.getNumericValue();
        this.waGouEntity.width = formatOtherToMeter(getGlobalUnit(), Math.abs(numericValue));
        saveAdvancedParams();
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            this.waGouEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            this.waGouEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            this.waGouEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void showData() {
        this.binding.edtRatio.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtHeightDiff.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtLength.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtWidth.setEnabled(this.waGouEntity.editState == 0);
        this.binding.tvAdvanced.setEnabled(this.waGouEntity.editState == 0);
        this.binding.lengthDropdown.initUnit(requireContext(), getGlobalUnit());
        this.binding.edtLeftSlope.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtRightSlope.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtLeftBottomWidth.setEnabled(this.waGouEntity.editState == 0);
        this.binding.edtRightBottomWidth.setEnabled(this.waGouEntity.editState == 0);
        this.binding.rbSlope.setEnabled(this.waGouEntity.editState == 0);
        this.binding.rbBottomWidth.setEnabled(this.waGouEntity.editState == 0);
        updateLengthDisplay(getStoredLengthMeter());
        this.binding.edtWidth.setText(this.waGouEntity.width != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), this.waGouEntity.width)) : "");
        NumericEditText numericEditText = this.binding.edtLeftSlope;
        double d = this.waGouEntity.leftSlopeRatio;
        numericEditText.setText(d != 0.0d ? formatDouble(d) : "");
        NumericEditText numericEditText2 = this.binding.edtRightSlope;
        double d2 = this.waGouEntity.rightSlopeRatio;
        numericEditText2.setText(d2 != 0.0d ? formatDouble(d2) : "");
        this.binding.edtLeftBottomWidth.setText(this.waGouEntity.leftBottomWidth != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), this.waGouEntity.leftBottomWidth)) : "");
        this.binding.edtRightBottomWidth.setText(this.waGouEntity.rightBottomWidth != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), this.waGouEntity.rightBottomWidth)) : "");
        WaGouEntity waGouEntity = this.waGouEntity;
        int i = waGouEntity.advancedType;
        if (i == 1 || (i == -1 && (waGouEntity.leftBottomWidth > 0.0d || waGouEntity.rightBottomWidth > 0.0d))) {
            waGouEntity.advancedType = 1;
            this.binding.rbBottomWidth.setChecked(true);
            this.binding.lltAdvancedSlope.setVisibility(8);
            this.binding.lltAdvancedBottomWidth.setVisibility(0);
        } else {
            if (i == -1) {
                waGouEntity.advancedType = 0;
            }
            this.binding.rbSlope.setChecked(true);
            this.binding.lltAdvancedSlope.setVisibility(0);
            this.binding.lltAdvancedBottomWidth.setVisibility(8);
        }
        WaGouEntity waGouEntity2 = this.waGouEntity;
        if (waGouEntity2.depth > 0.0d || waGouEntity2.leftSlopeRatio > 0.0d || waGouEntity2.rightSlopeRatio > 0.0d || waGouEntity2.leftBottomWidth > 0.0d || waGouEntity2.rightBottomWidth > 0.0d) {
            this.binding.lltAdvanced.setVisibility(0);
            this.binding.tvAdvanced.setSelected(true);
        } else {
            this.binding.lltAdvanced.setVisibility(8);
            this.binding.tvAdvanced.setSelected(false);
        }
        inferBPointModeForExistingProject();
        refreshSlopeFields();
    }

    private void inferBPointModeForExistingProject() {
        if (!this.bPointModeResolved) {
            WaGouEntity waGouEntity = this.waGouEntity;
            if (waGouEntity.id != 0 && waGouEntity.tickB != 1 && waGouEntity.depthB != 0.0d && waGouEntity.ratio != 0.0d) {
                double dAbs = Math.abs(getActualElevationA() - getActualElevationB());
                this.directionPointOnly = Math.abs(dAbs - ((getAbPlanarDistanceMeter() * this.waGouEntity.ratio) / 100.0d)) < Math.abs(dAbs - ((getStoredLengthMeter() * this.waGouEntity.ratio) / 100.0d));
                this.bPointModeResolved = true;
                return;
            }
        }
        resolveBPointMode();
    }

    private void refreshSlopeFields() {
        this.binding.lengthDropdown.initUnit(requireContext(), getGlobalUnit());
        refresStepImage();
        if (!isSlopeDitch()) {
            this.binding.lltRatio.setVisibility(8);
            this.binding.lltHeightDiff.setVisibility(8);
            this.waGouEntity.ratio = 0.0d;
            return;
        }
        this.binding.lltRatio.setVisibility(0);
        this.binding.lltHeightDiff.setVisibility(0);
        double d = this.waGouEntity.ratio;
        if (d != 0.0d) {
            updateRatioDisplay(d);
        } else {
            updateRatioDisplay(getDefaultRatioPercent());
        }
        syncDepthBFromSlopeRatio();
        refreshHeightDiff();
    }

    private boolean haveCoordsChanged() {
        if (!this.stepSnapshotTaken) {
            return haveCoordsChangedFromInit();
        }
        return haveCoordsChangedFromCache();
    }

    private boolean haveDepthsChanged() {
        if (!this.stepSnapshotTaken) {
            return haveDepthsChangedFromInit();
        }
        return haveDepthsChangedFromCache();
    }

    private boolean haveDepthsChangedFromInit() {
        return (Double.compare(this.waGouEntity.depthA, this.initEntity.depthA) == 0 && Double.compare(this.waGouEntity.depthB, this.initEntity.depthB) == 0) ? false : true;
    }

    private boolean haveDepthsChangedFromCache() {
        return (Double.compare(this.waGouEntity.depthA, this.cachedDepthA) == 0 && Double.compare(this.waGouEntity.depthB, this.cachedDepthB) == 0) ? false : true;
    }

    private boolean haveBenchmarkChanged() {
        if (!this.stepSnapshotTaken) {
            WaGouEntity waGouEntity = this.waGouEntity;
            int i = waGouEntity.tickA;
            WaGouEntity waGouEntity2 = this.initEntity;
            return (i == waGouEntity2.tickA && waGouEntity.tickB == waGouEntity2.tickB) ? false : true;
        }
        WaGouEntity waGouEntity3 = this.waGouEntity;
        return (waGouEntity3.tickA == this.cachedTickA && waGouEntity3.tickB == this.cachedTickB) ? false : true;
    }

    private boolean haveCoordsChangedFromInit() {
        return (Double.compare(this.waGouEntity.east1, this.initEntity.east1) == 0 && Double.compare(this.waGouEntity.north1, this.initEntity.north1) == 0 && Double.compare(this.waGouEntity.targetElevation1, this.initEntity.targetElevation1) == 0 && Double.compare(this.waGouEntity.east2, this.initEntity.east2) == 0 && Double.compare(this.waGouEntity.north2, this.initEntity.north2) == 0 && Double.compare(this.waGouEntity.targetElevation2, this.initEntity.targetElevation2) == 0) ? false : true;
    }

    private boolean haveCoordsChangedFromCache() {
        return (Double.compare(this.waGouEntity.east1, this.cachedEast1) == 0 && Double.compare(this.waGouEntity.north1, this.cachedNorth1) == 0 && Double.compare(this.waGouEntity.targetElevation1, this.cachedElev1) == 0 && Double.compare(this.waGouEntity.east2, this.cachedEast2) == 0 && Double.compare(this.waGouEntity.north2, this.cachedNorth2) == 0 && Double.compare(this.waGouEntity.targetElevation2, this.cachedElev2) == 0) ? false : true;
    }

    private void takeStepSnapshot() {
        WaGouEntity waGouEntity = this.waGouEntity;
        this.cachedEast1 = waGouEntity.east1;
        this.cachedNorth1 = waGouEntity.north1;
        this.cachedElev1 = waGouEntity.targetElevation1;
        this.cachedEast2 = waGouEntity.east2;
        this.cachedNorth2 = waGouEntity.north2;
        this.cachedElev2 = waGouEntity.targetElevation2;
        this.cachedDepthA = waGouEntity.depthA;
        this.cachedDepthB = waGouEntity.depthB;
        this.cachedTickA = waGouEntity.tickA;
        this.cachedTickB = waGouEntity.tickB;
        this.stepSnapshotTaken = true;
    }

    private void recalculateFromCoords() {
        this.bPointModeResolved = false;
        refreshBPointMode();
        WaGouEntity waGouEntity = this.waGouEntity;
        waGouEntity.length = 0.0d;
        waGouEntity.ratio = 0.0d;
        updateLengthDisplay(getAbPlanarDistanceMeter());
        refreshSlopeFields();
    }

    private void recalculateFromDepths() {
        this.bPointModeResolved = false;
        refreshBPointMode();
        this.waGouEntity.ratio = 0.0d;
        updateRatioDisplay(getDefaultRatioPercent());
        syncDepthBFromSlopeRatio();
        refreshHeightDiff();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresStepImage() {
        if (this.waGouEntity.subType == WaGouEnum.FLAT.getType()) {
            this.binding.ivStep3.setImageResource(R$drawable.icon_wg_flat3);
            this.binding.tvDitchType.setText(R$string.flat_ditch);
        } else if (this.waGouEntity.subType == WaGouEnum.DOWN.getType()) {
            this.binding.ivStep3.setImageResource(R$drawable.icon_wg_down3);
            this.binding.tvDitchType.setText(R$string.downhill_ditch);
        } else if (this.waGouEntity.subType == WaGouEnum.UP.getType()) {
            this.binding.ivStep3.setImageResource(R$drawable.icon_wg_up3);
            this.binding.tvDitchType.setText(R$string.upslope_ditch);
        }
        if (this.binding.tvAdvanced.isSelected()) {
            this.binding.ivStep3.setImageResource(R$drawable.icon_wg_tixing);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) WaGouWorkActivity.class);
        intent.putExtra("id", this.waGouEntity.id);
        startActivity(intent);
        requireActivity().finish();
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
