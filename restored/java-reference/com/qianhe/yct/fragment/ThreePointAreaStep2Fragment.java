package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.threepointarea.ThreePointAreaCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentThreepointAreaStep2Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ThreePointAreaStep2Fragment extends BaseProjectFragment {
    private FragmentThreepointAreaStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private ThreePointAreaEntity initEntity;
    private boolean isH5Pro;
    private InsNavi mINS;
    private int mToothType;
    private ThreePointAreaEntity threePointAreaEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public /* synthetic */ void onFileLoadFailed() {
                CadPickHelper.Callback.CC.$default$onFileLoadFailed(this);
            }

            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public /* synthetic */ void onPickCancelled() {
                CadPickHelper.Callback.CC.$default$onPickCancelled(this);
            }

            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public final void onPickResult(String str, double[] dArr) {
                ThreePointAreaStep2Fragment.$r8$lambda$cwDThOknKw9yd2cSPtA_2jUMMZU(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$cwDThOknKw9yd2cSPtA_2jUMMZU(ThreePointAreaStep2Fragment threePointAreaStep2Fragment, String str, double[] dArr) {
        threePointAreaStep2Fragment.threePointAreaEntity.cadPath = str;
        threePointAreaStep2Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentThreepointAreaStep2Binding.inflate(getLayoutInflater());
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
            this.initEntity = (ThreePointAreaEntity) arguments.getSerializable("initEntity");
            this.threePointAreaEntity = (ThreePointAreaEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
    }

    private void initView() {
        this.binding.unitDropdown.initUnit(requireContext(), getGlobalUnit());
        this.binding.ivReset.setVisibility(this.threePointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.threePointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ThreePointAreaStep2Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep2Fragment.this.getString(R$string.reset_data), ThreePointAreaStep2Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ThreePointAreaStep2Fragment.this.threePointAreaEntity.east2 = ThreePointAreaStep2Fragment.this.initEntity.east2;
                        ThreePointAreaStep2Fragment.this.threePointAreaEntity.north2 = ThreePointAreaStep2Fragment.this.initEntity.north2;
                        ThreePointAreaStep2Fragment.this.threePointAreaEntity.elev2 = ThreePointAreaStep2Fragment.this.initEntity.elev2;
                        ThreePointAreaStep2Fragment.this.threePointAreaEntity.cadPath = ThreePointAreaStep2Fragment.this.initEntity.cadPath;
                        ThreePointAreaStep2Fragment threePointAreaStep2Fragment = ThreePointAreaStep2Fragment.this;
                        threePointAreaStep2Fragment.showCoords(threePointAreaStep2Fragment.initEntity.east2, ThreePointAreaStep2Fragment.this.initEntity.north2, ThreePointAreaStep2Fragment.this.initEntity.elev2);
                    }
                });
            }
        });
        this.binding.edtEast.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep2Fragment.this.threePointAreaEntity.east2 = ThreePointAreaStep2Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep2Fragment.this.threePointAreaEntity.north2 = ThreePointAreaStep2Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep2Fragment.this.threePointAreaEntity.elev2 = ThreePointAreaStep2Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreePointAreaStep2Fragment threePointAreaStep2Fragment = this.f$0;
                threePointAreaStep2Fragment.cadPickHelper.pickFromFile(threePointAreaStep2Fragment.threePointAreaEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(threePointAreaStep2Fragment.binding.edtEast.getNumericValue(), threePointAreaStep2Fragment.binding.edtNorth.getNumericValue(), threePointAreaStep2Fragment.binding.edtElev.getNumericValue()));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ThreePointAreaStep2Fragment.m2626$r8$lambda$DUcE8lPCQyZGLl4xH326LQVqw(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreePointAreaStep2Fragment.m2627$r8$lambda$ugp7FebjxXwMmfJfGWbjh6QVW0(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ThreePointAreaStep2Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep2Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = ThreePointAreaStep2Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = ThreePointAreaStep2Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = ThreePointAreaStep2Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) ThreePointAreaStep2Fragment.this.requireActivity()).showToastDialog(ThreePointAreaStep2Fragment.this.getString(R$string.please_collect_pointB));
                    return;
                }
                if (!ThreePointAreaStep2Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) ThreePointAreaStep2Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep2Fragment.this.getString(R$string.please_confirm_matches_engineering), ThreePointAreaStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (!ThreePointAreaStep2Fragment.this.checkPointsNotCoincide()) {
                    ((BaseActivity) ThreePointAreaStep2Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep2Fragment.this.getString(R$string.ab_cannot_coincide), ThreePointAreaStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                ThreePointAreaStep2Fragment threePointAreaStep2Fragment = ThreePointAreaStep2Fragment.this;
                double otherToMeter = threePointAreaStep2Fragment.formatOtherToMeter(threePointAreaStep2Fragment.getGlobalUnit(), ThreePointAreaStep2Fragment.this.binding.edtDepth.getNumericValue());
                ThreePointAreaEntity threePointAreaEntity = ThreePointAreaStep2Fragment.this.threePointAreaEntity;
                if (ThreePointAreaStep2Fragment.this.binding.fillDigType.getCurrentType() != 1) {
                    otherToMeter = -otherToMeter;
                }
                threePointAreaEntity.depthB = otherToMeter;
                ThreePointAreaStep2Fragment.this.threePointAreaEntity.showUnit = ThreePointAreaStep2Fragment.this.getGlobalUnit();
                EventBus.getDefault().post("next");
            }
        });
        showData(this.threePointAreaEntity);
    }

    /* renamed from: $r8$lambda$DUcE8lPCQyZGLl4x-H326L-QVqw, reason: not valid java name */
    public static /* synthetic */ boolean m2626$r8$lambda$DUcE8lPCQyZGLl4xH326LQVqw(ThreePointAreaStep2Fragment threePointAreaStep2Fragment, View view) {
        threePointAreaStep2Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* renamed from: $r8$lambda$ugp7Feb-jxXwMmfJfGWbjh6QVW0, reason: not valid java name */
    public static /* synthetic */ void m2627$r8$lambda$ugp7FebjxXwMmfJfGWbjh6QVW0(ThreePointAreaStep2Fragment threePointAreaStep2Fragment, View view) {
        if (threePointAreaStep2Fragment.binding.toothView.getVisibility() == 0 && threePointAreaStep2Fragment.mToothType == -1) {
            ((BaseActivity) threePointAreaStep2Fragment.requireActivity()).showToastDialog(threePointAreaStep2Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            threePointAreaStep2Fragment.handleMeasureCollectClick(threePointAreaStep2Fragment.mToothType, threePointAreaStep2Fragment.createToothCollectHandler());
        }
    }

    private void showData(ThreePointAreaEntity threePointAreaEntity) {
        this.binding.fillDigType.setCurrentType(threePointAreaEntity.depthB > 0.0d ? 1 : 0);
        this.binding.edtDepth.setText(threePointAreaEntity.depthB == 0.0d ? "0" : formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(threePointAreaEntity.depthB))));
        this.binding.toothView.setCurrentType(this.mToothType);
        showCoords(threePointAreaEntity.east2, threePointAreaEntity.north2, threePointAreaEntity.elev2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPointsNotCoincide() {
        return !(Math.abs(this.threePointAreaEntity.east1 - this.binding.edtEast.getNumericValue()) < 0.1d && Math.abs(this.threePointAreaEntity.north1 - this.binding.edtNorth.getNumericValue()) < 0.1d);
    }

    private void initObserve() {
        ((ThreePointAreaCreateActivity) requireActivity()).observeCoordsStep2().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ThreePointAreaStep2Fragment.this.isAdded()) {
                    return;
                }
                ThreePointAreaStep2Fragment.this.clearCadPath();
                ThreePointAreaStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        if (threePointAreaEntity.id == 0) {
            threePointAreaEntity.cadPath = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoords(double d, double d2, double d3) {
        saveInputCoordsToGeodetic(d, d2, d3);
        this.binding.edtEast.setText(d != 0.0d ? formatCoords(d, 3) : "");
        this.binding.edtNorth.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
        this.binding.edtElev.setText(d3 != 0.0d ? formatCoords(d3, 3) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        threePointAreaEntity.east2 = d;
        threePointAreaEntity.north2 = d2;
        threePointAreaEntity.elev2 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ThreePointAreaEntity threePointAreaEntity2 = this.threePointAreaEntity;
            threePointAreaEntity2.lon2 = 0.0d;
            threePointAreaEntity2.lat2 = 0.0d;
            return false;
        }
        this.threePointAreaEntity.lon2 = Double.parseDouble(formatCoords(dArr[0]));
        this.threePointAreaEntity.lat2 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep2Fragment.9
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ThreePointAreaStep2Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ThreePointAreaStep2Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ThreePointAreaStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    ThreePointAreaStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ThreePointAreaStep2Fragment.this.mToothType = i;
            }
        };
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }
}
