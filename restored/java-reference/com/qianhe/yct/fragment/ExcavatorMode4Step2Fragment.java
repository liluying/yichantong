package com.qianhe.yct.fragment;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorMode4Step2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.dialog.ExcavatorSelectDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import java.util.LinkedHashMap;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorMode4Step2Fragment extends BaseProjectFragment {
    private FragmentExcavatorMode4Step2Binding binding;
    private boolean continueProcessing;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private InsNavi mINS;
    private ExcavatorEntity selectedForearmExcavator;
    private boolean isNoMoreReminders = false;
    private FocusedType lastFocusedType = FocusedType.HA;
    private boolean hasShownInstallTips = false;
    private boolean hasShownEnterTips = false;

    /* JADX INFO: Access modifiers changed from: private */
    enum FocusedType {
        HA,
        PQ,
        AD,
        BC,
        CD
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorMode4Step2Binding.inflate(getLayoutInflater());
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        updateTvDoubtVisibility(true);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        setGifResource(this.binding.ivStep, R$drawable.icon_ha_mode4_sensor);
        this.binding.ivStepCloseUp.setVisibility(0);
        this.binding.ivStepCloseUp.setImageResource(MultiBluetoothManager.getInstance(requireActivity()).isKe76Pro() ? R$drawable.icon_ex30_close_up : R$drawable.icon_h5pro_close_up);
        setGifPlaying(this.binding.ivStep, true);
        updateContinueButtonText();
        setContinueProcessing(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        setGifPlaying(this.binding.ivStep, false);
        this.hasShownInstallTips = false;
        this.hasShownEnterTips = false;
        super.onPause();
    }

    private void initView() {
        this.binding.tvInstallDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorMode4Step2Fragment.$r8$lambda$R7IIEzlHsGSrfFKJPGRq8Zu2NAk(this.f$0, view);
            }
        });
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showActualImageDialog();
            }
        });
        this.binding.lltForearmSelect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showForearmSelectDialog();
            }
        });
        this.binding.tvCancelExisting.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.applyNewForearm();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onContinue();
            }
        });
        setupForearmResultListener();
        initGifShow();
        showData();
        updateContinueButtonText();
    }

    public static /* synthetic */ void $r8$lambda$R7IIEzlHsGSrfFKJPGRq8Zu2NAk(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, View view) {
        excavatorMode4Step2Fragment.mSp.edit().putBoolean("show_install_leveling_tips", true).apply();
        excavatorMode4Step2Fragment.showInstallTipsDialog(null, false);
    }

    private void updateContinueButtonText() {
        this.binding.tvContinue.setText(isReusingExistingForearm() ? R$string.btn_complete : R$string.next);
    }

    private void setContinueProcessing(boolean z) {
        this.continueProcessing = z;
        FragmentExcavatorMode4Step2Binding fragmentExcavatorMode4Step2Binding = this.binding;
        if (fragmentExcavatorMode4Step2Binding != null) {
            fragmentExcavatorMode4Step2Binding.tvContinue.setEnabled(!z);
        }
    }

    private void setupForearmResultListener() {
        getParentFragmentManager().setFragmentResultListener("forearm_select", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda19
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ExcavatorMode4Step2Fragment.$r8$lambda$nGb_7sTJjcTUYbpCbym6gOByx54(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$nGb_7sTJjcTUYbpCbym6gOByx54(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, String str, Bundle bundle) {
        excavatorMode4Step2Fragment.getClass();
        if (bundle.getBoolean("createNew")) {
            excavatorMode4Step2Fragment.applyNewForearm();
            return;
        }
        ExcavatorEntity excavatorEntity = (ExcavatorEntity) bundle.getSerializable("excavator");
        if (excavatorEntity == null) {
            return;
        }
        excavatorMode4Step2Fragment.applyExistingForearm(excavatorEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showForearmSelectDialog() {
        ExcavatorSelectDialogFragment.newInstance().show(getParentFragmentManager(), "forearm_select");
    }

    private void applyExistingForearm(ExcavatorEntity excavatorEntity) {
        List<ExcavatorEntity> listQueryExcavatorByLocalId;
        if (excavatorEntity != null && excavatorEntity.localId > 0 && (listQueryExcavatorByLocalId = DatabaseManager.getInstance(requireContext()).queryExcavatorByLocalId(excavatorEntity.localId)) != null && !listQueryExcavatorByLocalId.isEmpty()) {
            excavatorEntity = listQueryExcavatorByLocalId.get(0);
        }
        if (excavatorEntity == null || TextUtils.isEmpty(excavatorEntity.calibParams)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.cannot_configure));
            return;
        }
        excavatorEntity.ensureCalibSoInputsReady();
        excavatorEntity.reloadSweepAttitudesFromJson();
        this.selectedForearmExcavator = excavatorEntity;
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).setReuseForearmSource(excavatorEntity);
        }
        this.binding.tvForearmSelect.setText(excavatorEntity.name);
        copyForearmMeasureValues(excavatorEntity);
        this.excavatorEntity.copyCalibSoInputsWithoutSweep(excavatorEntity);
        markSweepNeedRestart();
        setExistingForearmUi(true);
        updateContinueButtonText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyNewForearm() {
        boolean zIsReusingExistingForearm = isReusingExistingForearm();
        this.selectedForearmExcavator = null;
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).setReuseForearmSource(null);
        }
        this.binding.tvForearmSelect.setText(R$string.select_forearm);
        this.excavatorEntity.clearForearmMeasureValues();
        this.excavatorEntity.clearCalibSoInputs();
        clearForearmMeasureInputs();
        markSweepNeedRestart();
        setExistingForearmUi(false);
        updateContinueButtonText();
        CalibrateSessionHelper.clearReuseArmInput();
        if (zIsReusingExistingForearm && isResumed()) {
            this.hasShownEnterTips = false;
            this.hasShownInstallTips = false;
            checkAndShowEnterTips();
        }
    }

    private void clearForearmMeasureInputs() {
        FragmentExcavatorMode4Step2Binding fragmentExcavatorMode4Step2Binding = this.binding;
        if (fragmentExcavatorMode4Step2Binding == null) {
            return;
        }
        fragmentExcavatorMode4Step2Binding.edtHA.setText("");
        this.binding.edtPq.setText("");
        this.binding.edtAD.setText("");
        this.binding.edtBC.setText("");
        this.binding.edtCD.setText("");
    }

    private void markSweepNeedRestart() {
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).markMode4SweepNeedRestart();
            return;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null) {
            excavatorEntity.clearReAttitudes();
        }
    }

    private void copyForearmMeasureValues(ExcavatorEntity excavatorEntity) {
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        excavatorEntity2.HA = excavatorEntity.HA;
        excavatorEntity2.pq = excavatorEntity.pq;
        excavatorEntity2.AD = excavatorEntity.AD;
        excavatorEntity2.BC = excavatorEntity.BC;
        excavatorEntity2.CD = excavatorEntity.CD;
        excavatorEntity2.Dx = excavatorEntity.Dx;
        int i = excavatorEntity.mode;
        if (i > 0) {
            excavatorEntity2.mode = i;
        }
    }

    private void setExistingForearmUi(boolean z) {
        this.binding.lltExistingHint.setVisibility(z ? 0 : 8);
        setMeasureFieldsVisible(!z);
    }

    private void setMeasureFieldsVisible(boolean z) {
        int i = z ? 0 : 8;
        this.binding.lltUnitRow.setVisibility(i);
        this.binding.lltRowHaPq.setVisibility(i);
        this.binding.lltRowAdBc.setVisibility(i);
        this.binding.lltRowCd.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContinue() {
        if (this.continueProcessing) {
            return;
        }
        ExcavatorEntity reuseForearmSource = this.selectedForearmExcavator;
        if (reuseForearmSource == null && (requireActivity() instanceof ExcavatorCreateActivity)) {
            reuseForearmSource = ((ExcavatorCreateActivity) requireActivity()).getReuseForearmSource();
        }
        if (reuseForearmSource != null) {
            if (!(requireActivity() instanceof ExcavatorCreateActivity)) {
                setContinueProcessing(true);
                EventBus.getDefault().post("next");
                return;
            } else {
                ((ExcavatorCreateActivity) requireActivity()).completeReuseForearm(reuseForearmSource);
                return;
            }
        }
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtHA.getNumericValue());
        double otherToMeter2 = formatOtherToMeter(getGlobalUnit(), this.binding.edtPq.getNumericValue());
        double otherToMeter3 = formatOtherToMeter(getGlobalUnit(), this.binding.edtAD.getNumericValue(), 3);
        double otherToMeter4 = formatOtherToMeter(getGlobalUnit(), this.binding.edtBC.getNumericValue(), 3);
        double otherToMeter5 = formatOtherToMeter(getGlobalUnit(), this.binding.edtCD.getNumericValue(), 3);
        if (this.binding.edtHA.getNumericValue() == 0.0d || this.binding.edtPq.getNumericValue() == 0.0d || this.binding.edtAD.getNumericValue() == 0.0d || this.binding.edtBC.getNumericValue() == 0.0d || this.binding.edtCD.getNumericValue() == 0.0d) {
            scrollEmptyFieldIntoView(findFirstEmptyParamField());
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.config_empty), getString(R$string.ok), null);
            return;
        }
        if (Math.abs(otherToMeter) < 0.001d || Math.abs(otherToMeter) > 10.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
            return;
        }
        if (Math.abs(otherToMeter2) < 0.001d || Math.abs(otherToMeter2) > 10.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
            return;
        }
        if (Math.abs(otherToMeter3) < 0.001d || Math.abs(otherToMeter3) > 10.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
            return;
        }
        if (Math.abs(otherToMeter4) < 0.001d || Math.abs(otherToMeter4) > 10.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
            return;
        }
        if (Math.abs(otherToMeter5) < 0.001d || Math.abs(otherToMeter5) > 10.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
            return;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.HA = otherToMeter;
        excavatorEntity.pq = otherToMeter2;
        excavatorEntity.AD = otherToMeter3;
        excavatorEntity.BC = otherToMeter4;
        excavatorEntity.CD = otherToMeter5;
        markSweepNeedRestart();
        setContinueProcessing(true);
        EventBus.getDefault().post("next");
    }

    private void initGifShow() {
        setupParamField(this.binding.edtHA, FocusedType.HA, R$drawable.icon_ha_mode4_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorMode4Step2Fragment.$r8$lambda$DZTdYU2CyzqNAQU8ub53UqTqnOU(this.f$0);
            }
        });
        setupParamField(this.binding.edtPq, FocusedType.PQ, R$drawable.icon_pq_mode4_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.ivStepCloseUp.setVisibility(8);
            }
        });
        setupParamField(this.binding.edtAD, FocusedType.AD, R$drawable.icon_ad_mode4_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.ivStepCloseUp.setVisibility(8);
            }
        });
        setupParamField(this.binding.edtBC, FocusedType.BC, R$drawable.icon_bc_mode4_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.ivStepCloseUp.setVisibility(8);
            }
        });
        setupParamField(this.binding.edtCD, FocusedType.CD, R$drawable.icon_cd_mode4_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.ivStepCloseUp.setVisibility(8);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$DZTdYU2CyzqNAQU8ub53UqTqnOU(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment) {
        excavatorMode4Step2Fragment.binding.ivStepCloseUp.setVisibility(0);
        excavatorMode4Step2Fragment.binding.ivStepCloseUp.setImageResource(MultiBluetoothManager.getInstance(excavatorMode4Step2Fragment.requireActivity()).isKe76Pro() ? R$drawable.icon_ex30_close_up : R$drawable.icon_h5pro_close_up);
    }

    private void updateTvDoubtVisibility(boolean z) {
        this.binding.tvDoubt.setVisibility(z ? 0 : 8);
    }

    private View findFirstEmptyParamField() {
        if (this.binding.edtHA.getNumericValue() == 0.0d) {
            return this.binding.edtHA;
        }
        if (this.binding.edtPq.getNumericValue() == 0.0d) {
            return this.binding.edtPq;
        }
        if (this.binding.edtAD.getNumericValue() == 0.0d) {
            return this.binding.edtAD;
        }
        if (this.binding.edtBC.getNumericValue() == 0.0d) {
            return this.binding.edtBC;
        }
        if (this.binding.edtCD.getNumericValue() == 0.0d) {
            return this.binding.edtCD;
        }
        return null;
    }

    private void scrollEmptyFieldIntoView(final View view) {
        if (view == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorMode4Step2Fragment.$r8$lambda$Jb5lAgu0HxJvnanN4OjFn8UgxyQ(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Jb5lAgu0HxJvnanN4OjFn8UgxyQ(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, View view) {
        NestedScrollView nestedScrollViewFindParentNestedScrollView = excavatorMode4Step2Fragment.findParentNestedScrollView(view);
        if (nestedScrollViewFindParentNestedScrollView != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr);
            nestedScrollViewFindParentNestedScrollView.getLocationOnScreen(iArr2);
            int i = iArr[1];
            int height = view.getHeight() + i;
            int i2 = iArr2[1];
            int height2 = nestedScrollViewFindParentNestedScrollView.getHeight() + i2;
            if (height > height2) {
                nestedScrollViewFindParentNestedScrollView.smoothScrollBy(0, height - height2);
                return;
            } else {
                if (i < i2) {
                    nestedScrollViewFindParentNestedScrollView.smoothScrollBy(0, i - i2);
                    return;
                }
                return;
            }
        }
        view.requestRectangleOnScreen(new Rect(0, 0, view.getWidth(), view.getHeight()), true);
    }

    private NestedScrollView findParentNestedScrollView(View view) {
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof NestedScrollView) {
                return (NestedScrollView) parent;
            }
        }
        return null;
    }

    private void setupParamField(View view, final FocusedType focusedType, final int i, final Runnable runnable) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ExcavatorMode4Step2Fragment.m2351$r8$lambda$bChoHo3iOE7BpahuD5pmbl5KJU(this.f$0, focusedType, view2);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                ExcavatorMode4Step2Fragment.$r8$lambda$YIervvdBMmi7LLshK_dH8hx5Zj4(this.f$0, focusedType, i, runnable, view2, z);
            }
        });
    }

    /* renamed from: $r8$lambda$bChoHo3iOE7BpahuD5pmbl5-KJU, reason: not valid java name */
    public static /* synthetic */ void m2351$r8$lambda$bChoHo3iOE7BpahuD5pmbl5KJU(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, FocusedType focusedType, View view) {
        excavatorMode4Step2Fragment.lastFocusedType = focusedType;
        excavatorMode4Step2Fragment.updateTvDoubtVisibility(true);
    }

    public static /* synthetic */ void $r8$lambda$YIervvdBMmi7LLshK_dH8hx5Zj4(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, FocusedType focusedType, int i, Runnable runnable, View view, boolean z) {
        if (!z) {
            excavatorMode4Step2Fragment.getClass();
            return;
        }
        excavatorMode4Step2Fragment.lastFocusedType = focusedType;
        excavatorMode4Step2Fragment.updateTvDoubtVisibility(true);
        excavatorMode4Step2Fragment.setGifResource(excavatorMode4Step2Fragment.binding.ivStep, i);
        if (runnable != null) {
            runnable.run();
        }
    }

    private boolean isReusingExistingForearm() {
        if (this.selectedForearmExcavator != null) {
            return true;
        }
        return (requireActivity() instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) requireActivity()).getReuseForearmSource() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        boolean zIsKe76Pro = MultiBluetoothManager.getInstance(requireContext()).isKe76Pro();
        String str = "HA";
        linkedHashMap.put("HA", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(zIsKe76Pro ? R$drawable.icon_ha_ex30_actual : R$drawable.icon_ha_actual)}));
        linkedHashMap.put("pq", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(zIsKe76Pro ? R$drawable.icon_pq_ex30_actual : R$drawable.icon_pq_actual)}));
        linkedHashMap.put("AD", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ad_actual)}));
        linkedHashMap.put("BC", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_bc_actual)}));
        linkedHashMap.put("CD", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_cd_actual)}));
        int iOrdinal = this.lastFocusedType.ordinal();
        if (iOrdinal == 1) {
            str = "pq";
        } else if (iOrdinal == 2) {
            str = "AD";
        } else if (iOrdinal == 3) {
            str = "BC";
        } else if (iOrdinal == 4) {
            str = "CD";
        }
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, str, linkedHashMap.size() > 1);
    }

    private void checkAndShowEnterTips() {
        if (this.hasShownEnterTips || isReusingExistingForearm()) {
            return;
        }
        this.hasShownEnterTips = true;
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.excavator_mode4_step2_posture_tips), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment.1
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                if (ExcavatorMode4Step2Fragment.this.isResumed()) {
                    ExcavatorMode4Step2Fragment.this.checkAndShowInstallTips();
                }
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (ExcavatorMode4Step2Fragment.this.isResumed()) {
                    ExcavatorMode4Step2Fragment.this.checkAndShowInstallTips();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndShowInstallTips() {
        if (this.hasShownInstallTips || isReusingExistingForearm()) {
            return;
        }
        this.hasShownInstallTips = true;
        if (this.mSp.getBoolean("show_install_leveling_tips", true)) {
            showInstallTipsDialog(null, true);
        }
    }

    private void showInstallTipsDialog(final Runnable runnable, final boolean z) {
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_install_tips, (ViewGroup) null);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        int i = getResources().getDisplayMetrics().widthPixels;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        float f = getResources().getDisplayMetrics().density;
        boolean z2 = getResources().getConfiguration().orientation == 2;
        boolean z3 = (requireActivity() instanceof BaseActivity) && ((BaseActivity) requireActivity()).isPad();
        float f2 = z2 ? 0.68f : 0.9f;
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvTitle);
        AppCompatImageView appCompatImageView = (AppCompatImageView) viewInflate.findViewById(R$id.ivInstallImage);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvContent);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate.findViewById(R$id.nsvContent);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.lltNoMore);
        final ImageView imageView = (ImageView) viewInflate.findViewById(R$id.ivNoMore);
        float f3 = f2;
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvPrevious);
        TextView textView4 = (TextView) viewInflate.findViewById(R$id.tvNext);
        this.isNoMoreReminders = false;
        imageView.setSelected(false);
        linearLayout.setVisibility(z ? 0 : 8);
        textView3.setVisibility(8);
        textView4.setText(R$string.confirm);
        textView.setText(R$string.install_leveling_device);
        textView2.setText(R$string.install_leveling_device_step);
        boolean zIsKe76Pro = MultiBluetoothManager.getInstance(requireContext()).isKe76Pro();
        appCompatImageView.setVisibility(0);
        appCompatImageView.setImageResource(zIsKe76Pro ? R$drawable.icon_install_zpy_mode4_xfix : R$drawable.icon_install_zpy_mode4_yct);
        int i3 = (int) (i * f3);
        applyScrollViewHeightLimit(nestedScrollView, getInstallTipsMaxScrollHeight(i2, f, z2, z3), i3 - ((int) (f * 40.0f)));
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = i3;
            attributes.height = -2;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorMode4Step2Fragment.$r8$lambda$LEMK_KhWHsdcfKAG4zFVHsFsGqc(this.f$0, imageView, view);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorMode4Step2Fragment.$r8$lambda$D69WXCIPS2iv5ph35yBbcLdiZSs(this.f$0, z, dialog, runnable, view);
            }
        });
        dialog.show();
    }

    public static /* synthetic */ void $r8$lambda$LEMK_KhWHsdcfKAG4zFVHsFsGqc(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, ImageView imageView, View view) {
        boolean z = !excavatorMode4Step2Fragment.isNoMoreReminders;
        excavatorMode4Step2Fragment.isNoMoreReminders = z;
        imageView.setSelected(z);
    }

    public static /* synthetic */ void $r8$lambda$D69WXCIPS2iv5ph35yBbcLdiZSs(ExcavatorMode4Step2Fragment excavatorMode4Step2Fragment, boolean z, Dialog dialog, Runnable runnable, View view) {
        if (!z) {
            excavatorMode4Step2Fragment.getClass();
        } else if (excavatorMode4Step2Fragment.isNoMoreReminders) {
            excavatorMode4Step2Fragment.mSp.edit().putBoolean("show_install_leveling_tips", false).apply();
        }
        dialog.dismiss();
        if (runnable != null) {
            runnable.run();
        }
    }

    private int getInstallTipsMaxScrollHeight(int i, float f, boolean z, boolean z2) {
        float f2 = 0.72f;
        if (z && !z2) {
            f2 = 0.78f;
        }
        return Math.max((int) (f * 120.0f), ((int) (i * f2)) - ((int) (169.0f * f)));
    }

    private void applyScrollViewHeightLimit(NestedScrollView nestedScrollView, int i, int i2) {
        View childAt = nestedScrollView.getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(i2, 0), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        ViewGroup.LayoutParams layoutParams = nestedScrollView.getLayoutParams();
        layoutParams.height = Math.min(childAt.getMeasuredHeight(), i);
        nestedScrollView.setLayoutParams(layoutParams);
    }

    private void showData() {
        ExcavatorEntity reuseForearmSource;
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        if (this.excavatorEntity.HA != 0.0d) {
            this.binding.edtHA.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.HA, 3)));
        }
        if (this.excavatorEntity.pq != 0.0d) {
            this.binding.edtPq.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.pq, 3)));
        }
        if (this.excavatorEntity.AD != 0.0d) {
            this.binding.edtAD.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.AD, 3)));
        }
        if (this.excavatorEntity.BC != 0.0d) {
            this.binding.edtBC.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.BC, 3)));
        }
        if (this.excavatorEntity.CD != 0.0d) {
            this.binding.edtCD.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.CD, 3)));
        }
        if (!(requireActivity() instanceof ExcavatorCreateActivity) || (reuseForearmSource = ((ExcavatorCreateActivity) requireActivity()).getReuseForearmSource()) == null) {
            return;
        }
        applyExistingForearm(reuseForearmSource);
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
        if (isAdded()) {
            checkAndShowEnterTips();
        }
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentExcavatorMode4Step2Binding fragmentExcavatorMode4Step2Binding = this.binding;
        recycleGif(fragmentExcavatorMode4Step2Binding != null ? fragmentExcavatorMode4Step2Binding.ivStep : null);
        super.onDestroyView();
    }
}
