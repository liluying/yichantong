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
import com.qianhe.yct.databinding.FragmentThreepointAreaStep1Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ThreePointAreaStep1Fragment extends BaseProjectFragment {
    private FragmentThreepointAreaStep1Binding binding;
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
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment$$ExternalSyntheticLambda3
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
                ThreePointAreaStep1Fragment.$r8$lambda$JFjBoFhU5PeS_Md4m0WUUhcgGf4(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$JFjBoFhU5PeS_Md4m0WUUhcgGf4(ThreePointAreaStep1Fragment threePointAreaStep1Fragment, String str, double[] dArr) {
        threePointAreaStep1Fragment.threePointAreaEntity.cadPath = str;
        threePointAreaStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentThreepointAreaStep1Binding.inflate(getLayoutInflater());
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
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ThreePointAreaStep1Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep1Fragment.this.getString(R$string.reset_data), ThreePointAreaStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ThreePointAreaStep1Fragment.this.threePointAreaEntity.east1 = ThreePointAreaStep1Fragment.this.initEntity.east1;
                        ThreePointAreaStep1Fragment.this.threePointAreaEntity.north1 = ThreePointAreaStep1Fragment.this.initEntity.north1;
                        ThreePointAreaStep1Fragment.this.threePointAreaEntity.elev1 = ThreePointAreaStep1Fragment.this.initEntity.elev1;
                        ThreePointAreaStep1Fragment.this.threePointAreaEntity.cadPath = ThreePointAreaStep1Fragment.this.initEntity.cadPath;
                        ThreePointAreaStep1Fragment threePointAreaStep1Fragment = ThreePointAreaStep1Fragment.this;
                        threePointAreaStep1Fragment.showCoords(threePointAreaStep1Fragment.initEntity.east1, ThreePointAreaStep1Fragment.this.initEntity.north1, ThreePointAreaStep1Fragment.this.initEntity.elev1);
                    }
                });
            }
        });
        this.binding.edtEast.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep1Fragment.this.threePointAreaEntity.east1 = ThreePointAreaStep1Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep1Fragment.this.threePointAreaEntity.north1 = ThreePointAreaStep1Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep1Fragment.this.threePointAreaEntity.elev1 = ThreePointAreaStep1Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreePointAreaStep1Fragment threePointAreaStep1Fragment = this.f$0;
                threePointAreaStep1Fragment.cadPickHelper.pickFromFile(threePointAreaStep1Fragment.threePointAreaEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(threePointAreaStep1Fragment.binding.edtEast.getNumericValue(), threePointAreaStep1Fragment.binding.edtNorth.getNumericValue(), threePointAreaStep1Fragment.binding.edtElev.getNumericValue()));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ThreePointAreaStep1Fragment.m2618$r8$lambda$nvsxQXg4NcLP4Cbvo5N5u9KHbE(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreePointAreaStep1Fragment.$r8$lambda$o2m41VfvVJqwf1IfVSPTdPZlurs(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ThreePointAreaStep1Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = ThreePointAreaStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = ThreePointAreaStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = ThreePointAreaStep1Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) ThreePointAreaStep1Fragment.this.requireActivity()).showToastDialog(ThreePointAreaStep1Fragment.this.getString(R$string.please_collect_pointA));
                    return;
                }
                if (!ThreePointAreaStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) ThreePointAreaStep1Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), ThreePointAreaStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                ThreePointAreaStep1Fragment threePointAreaStep1Fragment = ThreePointAreaStep1Fragment.this;
                double otherToMeter = threePointAreaStep1Fragment.formatOtherToMeter(threePointAreaStep1Fragment.getGlobalUnit(), ThreePointAreaStep1Fragment.this.binding.edtDepth.getNumericValue());
                ThreePointAreaEntity threePointAreaEntity = ThreePointAreaStep1Fragment.this.threePointAreaEntity;
                if (ThreePointAreaStep1Fragment.this.binding.fillDigType.getCurrentType() != 1) {
                    otherToMeter = -otherToMeter;
                }
                threePointAreaEntity.depthA = otherToMeter;
                ThreePointAreaStep1Fragment.this.threePointAreaEntity.showUnit = ThreePointAreaStep1Fragment.this.getGlobalUnit();
                EventBus.getDefault().post("next");
            }
        });
        showData(this.threePointAreaEntity);
    }

    /* renamed from: $r8$lambda$nvsxQXg4NcLP4Cbvo5N5u9-KHbE, reason: not valid java name */
    public static /* synthetic */ boolean m2618$r8$lambda$nvsxQXg4NcLP4Cbvo5N5u9KHbE(ThreePointAreaStep1Fragment threePointAreaStep1Fragment, View view) {
        threePointAreaStep1Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$o2m41VfvVJqwf1IfVSPTdPZlurs(ThreePointAreaStep1Fragment threePointAreaStep1Fragment, View view) {
        if (threePointAreaStep1Fragment.binding.toothView.getVisibility() == 0 && threePointAreaStep1Fragment.mToothType == -1) {
            ((BaseActivity) threePointAreaStep1Fragment.requireActivity()).showToastDialog(threePointAreaStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            threePointAreaStep1Fragment.handleMeasureCollectClick(threePointAreaStep1Fragment.mToothType, threePointAreaStep1Fragment.createToothCollectHandler());
        }
    }

    private void showData(ThreePointAreaEntity threePointAreaEntity) {
        this.binding.fillDigType.setCurrentType(threePointAreaEntity.depthA > 0.0d ? 1 : 0);
        this.binding.edtDepth.setText(threePointAreaEntity.depthA == 0.0d ? "0" : formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(threePointAreaEntity.depthA))));
        this.binding.toothView.setCurrentType(this.mToothType);
        showCoords(threePointAreaEntity.east1, threePointAreaEntity.north1, threePointAreaEntity.elev1);
    }

    private void initObserve() {
        ((ThreePointAreaCreateActivity) requireActivity()).observeCoordsStep1().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ThreePointAreaStep1Fragment.this.isAdded()) {
                    return;
                }
                ThreePointAreaStep1Fragment.this.clearCadPath();
                ThreePointAreaStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
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
        threePointAreaEntity.east1 = d;
        threePointAreaEntity.north1 = d2;
        threePointAreaEntity.elev1 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ThreePointAreaEntity threePointAreaEntity2 = this.threePointAreaEntity;
            threePointAreaEntity2.lon1 = 0.0d;
            threePointAreaEntity2.lat1 = 0.0d;
            return false;
        }
        this.threePointAreaEntity.lon1 = Double.parseDouble(formatCoords(dArr[0]));
        this.threePointAreaEntity.lat1 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep1Fragment.9
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ThreePointAreaStep1Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ThreePointAreaStep1Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ThreePointAreaStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    ThreePointAreaStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ThreePointAreaStep1Fragment.this.mToothType = i;
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
