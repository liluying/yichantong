package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.onepointarea.OnePointAreaCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentOnepointAreaStpe1Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OnePointAreaStep1Fragment extends BaseProjectFragment {
    private FragmentOnepointAreaStpe1Binding binding;
    private CadPickHelper cadPickHelper;
    private OnePointAreaEntity initEntity;
    private boolean isH5Pro;
    private InsNavi mINS;
    private OnePointAreaEntity onePointAreaEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment$$ExternalSyntheticLambda0
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
                OnePointAreaStep1Fragment.$r8$lambda$OU8LXKUZ6fz0UxaySMkTushOa9o(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$OU8LXKUZ6fz0UxaySMkTushOa9o(OnePointAreaStep1Fragment onePointAreaStep1Fragment, String str, double[] dArr) {
        onePointAreaStep1Fragment.onePointAreaEntity.cadPath = str;
        onePointAreaStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentOnepointAreaStpe1Binding.inflate(getLayoutInflater());
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
            this.initEntity = (OnePointAreaEntity) arguments.getSerializable("initEntity");
            this.onePointAreaEntity = (OnePointAreaEntity) arguments.getSerializable("baseProEntity");
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
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) OnePointAreaStep1Fragment.this.requireActivity()).showTipDialog(OnePointAreaStep1Fragment.this.getString(R$string.reset_data), OnePointAreaStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        OnePointAreaStep1Fragment.this.onePointAreaEntity.east = OnePointAreaStep1Fragment.this.initEntity.east;
                        OnePointAreaStep1Fragment.this.onePointAreaEntity.north = OnePointAreaStep1Fragment.this.initEntity.north;
                        OnePointAreaStep1Fragment.this.onePointAreaEntity.elev = OnePointAreaStep1Fragment.this.initEntity.elev;
                        OnePointAreaStep1Fragment.this.onePointAreaEntity.cadPath = OnePointAreaStep1Fragment.this.initEntity.cadPath;
                        OnePointAreaStep1Fragment onePointAreaStep1Fragment = OnePointAreaStep1Fragment.this;
                        onePointAreaStep1Fragment.showCoords(onePointAreaStep1Fragment.initEntity.east, OnePointAreaStep1Fragment.this.initEntity.north, OnePointAreaStep1Fragment.this.initEntity.elev);
                    }
                });
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OnePointAreaStep1Fragment onePointAreaStep1Fragment = this.f$0;
                onePointAreaStep1Fragment.cadPickHelper.pickFromFile(onePointAreaStep1Fragment.onePointAreaEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(onePointAreaStep1Fragment.binding.edtEast.getNumericValue(), onePointAreaStep1Fragment.binding.edtNorth.getNumericValue(), onePointAreaStep1Fragment.binding.edtElev.getNumericValue()));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return OnePointAreaStep1Fragment.$r8$lambda$hhZODcwdGmujdXjmfwl6ApCaTl8(this.f$0, view);
            }
        });
        this.binding.fillDigType.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.2
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                if (OnePointAreaStep1Fragment.this.onePointAreaEntity.depth != 0.0d) {
                    OnePointAreaStep1Fragment.this.onePointAreaEntity.depth = i == 0 ? -Math.abs(OnePointAreaStep1Fragment.this.onePointAreaEntity.depth) : Math.abs(OnePointAreaStep1Fragment.this.onePointAreaEntity.depth);
                }
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OnePointAreaStep1Fragment.m2482$r8$lambda$S0g9cn7F5_2GcwbdZZ1rE_jEcE(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnePointAreaStep1Fragment.this.clearCadPath();
                ((OnePointAreaCreateActivity) OnePointAreaStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = OnePointAreaStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = OnePointAreaStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = OnePointAreaStep1Fragment.this.binding.edtElev.getNumericValue();
                if (OnePointAreaStep1Fragment.this.binding.edtEast.getNumericValue() == 0.0d && OnePointAreaStep1Fragment.this.binding.edtNorth.getNumericValue() == 0.0d && OnePointAreaStep1Fragment.this.binding.edtElev.getNumericValue() == 0.0d) {
                    ((BaseActivity) OnePointAreaStep1Fragment.this.requireActivity()).showTipDialog(OnePointAreaStep1Fragment.this.getString(R$string.please_collect_coordinates), OnePointAreaStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (!OnePointAreaStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) OnePointAreaStep1Fragment.this.requireActivity()).showTipDialog(OnePointAreaStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), OnePointAreaStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                OnePointAreaStep1Fragment onePointAreaStep1Fragment = OnePointAreaStep1Fragment.this;
                double otherToMeter = onePointAreaStep1Fragment.formatOtherToMeter(onePointAreaStep1Fragment.getGlobalUnit(), OnePointAreaStep1Fragment.this.binding.edtDepth.getNumericValue());
                OnePointAreaEntity onePointAreaEntity = OnePointAreaStep1Fragment.this.onePointAreaEntity;
                if (OnePointAreaStep1Fragment.this.binding.fillDigType.getCurrentType() != 1) {
                    otherToMeter = -otherToMeter;
                }
                onePointAreaEntity.depth = otherToMeter;
                OnePointAreaStep1Fragment.this.onePointAreaEntity.showUnit = OnePointAreaStep1Fragment.this.getGlobalUnit();
                EventBus.getDefault().post("next");
            }
        });
        showData();
    }

    public static /* synthetic */ boolean $r8$lambda$hhZODcwdGmujdXjmfwl6ApCaTl8(OnePointAreaStep1Fragment onePointAreaStep1Fragment, View view) {
        onePointAreaStep1Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* renamed from: $r8$lambda$S0g9cn7F5_2GcwbdZZ1rE_-jEcE, reason: not valid java name */
    public static /* synthetic */ void m2482$r8$lambda$S0g9cn7F5_2GcwbdZZ1rE_jEcE(OnePointAreaStep1Fragment onePointAreaStep1Fragment, View view) {
        if (onePointAreaStep1Fragment.binding.toothView.getVisibility() == 0 && onePointAreaStep1Fragment.onePointAreaEntity.shovelTipType == -1) {
            ((BaseActivity) onePointAreaStep1Fragment.requireActivity()).showToastDialog(onePointAreaStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            onePointAreaStep1Fragment.handleMeasureCollectClick(onePointAreaStep1Fragment.onePointAreaEntity.shovelTipType, onePointAreaStep1Fragment.createToothCollectHandler());
        }
    }

    private void showData() {
        this.binding.toothView.setCurrentType(this.onePointAreaEntity.shovelTipType);
        this.binding.ivReset.setVisibility(this.onePointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.onePointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.onePointAreaEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.onePointAreaEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.onePointAreaEntity.editState == 0);
        this.binding.edtDepth.setEnabled(this.onePointAreaEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.onePointAreaEntity.editState == 0);
        this.binding.edtDepth.setText(this.onePointAreaEntity.depth == 0.0d ? "0" : formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.onePointAreaEntity.depth))));
        this.binding.fillDigType.setEnabled(this.onePointAreaEntity.editState == 0);
        this.binding.fillDigType.setCurrentType(this.onePointAreaEntity.depth > 0.0d ? 1 : 0);
        this.binding.tvContinue.setEnabled(true);
        OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
        if (onePointAreaEntity != null) {
            showCoords(onePointAreaEntity.east, onePointAreaEntity.north, onePointAreaEntity.elev);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
        onePointAreaEntity.east = d;
        onePointAreaEntity.north = d2;
        onePointAreaEntity.elev = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            OnePointAreaEntity onePointAreaEntity2 = this.onePointAreaEntity;
            onePointAreaEntity2.lon = 0.0d;
            onePointAreaEntity2.lat = 0.0d;
            return false;
        }
        this.onePointAreaEntity.lon = Double.parseDouble(formatCoords(dArr[0]));
        this.onePointAreaEntity.lat = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private void initObserve() {
        ((OnePointAreaCreateActivity) requireActivity()).observeCoords().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !OnePointAreaStep1Fragment.this.isAdded()) {
                    return;
                }
                OnePointAreaStep1Fragment.this.clearCadPath();
                OnePointAreaStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
        if (onePointAreaEntity.id == 0) {
            onePointAreaEntity.cadPath = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoords(double d, double d2, double d3) {
        saveInputCoordsToGeodetic(d, d2, d3);
        this.binding.edtEast.setText(d != 0.0d ? formatCoords(d, 3) : "");
        this.binding.edtNorth.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
        this.binding.edtElev.setText(d3 != 0.0d ? formatCoords(d3, 3) : "");
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.OnePointAreaStep1Fragment.7
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                OnePointAreaStep1Fragment.this.clearCadPath();
                OnePointAreaStep1Fragment.this.onePointAreaEntity.shovelTipType = 0;
                ((OnePointAreaCreateActivity) OnePointAreaStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                OnePointAreaStep1Fragment.this.clearCadPath();
                OnePointAreaStep1Fragment.this.onePointAreaEntity.shovelTipType = i;
                ((OnePointAreaCreateActivity) OnePointAreaStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                OnePointAreaStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    OnePointAreaStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                OnePointAreaStep1Fragment.this.onePointAreaEntity.shovelTipType = i;
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
