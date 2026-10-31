package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCurvedslopeStep2Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopeStep2Fragment extends BaseProjectFragment {
    private FragmentCurvedslopeStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private CurvedSlopeEntity curvedSlopeEntity;
    private CurvedSlopeEntity initEntity;
    private boolean isH5Pro;
    private InsNavi mINS;
    private int mToothType;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment$$ExternalSyntheticLambda0
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
                CurvedSlopeStep2Fragment.m2257$r8$lambda$z7JWVkqzFRrtpYMfCY_VcrYh6o(this.f$0, str, dArr);
            }
        });
    }

    /* renamed from: $r8$lambda$z7JW-VkqzFRrtpYMfCY_VcrYh6o, reason: not valid java name */
    public static /* synthetic */ void m2257$r8$lambda$z7JWVkqzFRrtpYMfCY_VcrYh6o(CurvedSlopeStep2Fragment curvedSlopeStep2Fragment, String str, double[] dArr) {
        curvedSlopeStep2Fragment.curvedSlopeEntity.cadPath = str;
        curvedSlopeStep2Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCurvedslopeStep2Binding.inflate(getLayoutInflater());
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
            this.initEntity = (CurvedSlopeEntity) arguments.getSerializable("initEntity");
            this.curvedSlopeEntity = (CurvedSlopeEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        this.binding.unitDropdown.initUnit(requireContext(), getGlobalUnit());
        showData();
    }

    private void initView() {
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) CurvedSlopeStep2Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep2Fragment.this.getString(R$string.reset_data), CurvedSlopeStep2Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        CurvedSlopeStep2Fragment.this.curvedSlopeEntity.east2 = CurvedSlopeStep2Fragment.this.initEntity.east2;
                        CurvedSlopeStep2Fragment.this.curvedSlopeEntity.north2 = CurvedSlopeStep2Fragment.this.initEntity.north2;
                        CurvedSlopeStep2Fragment.this.curvedSlopeEntity.elev2 = CurvedSlopeStep2Fragment.this.initEntity.elev2;
                        CurvedSlopeStep2Fragment.this.curvedSlopeEntity.cadPath = CurvedSlopeStep2Fragment.this.initEntity.cadPath;
                        CurvedSlopeStep2Fragment curvedSlopeStep2Fragment = CurvedSlopeStep2Fragment.this;
                        curvedSlopeStep2Fragment.showCoords(curvedSlopeStep2Fragment.initEntity.east2, CurvedSlopeStep2Fragment.this.initEntity.north2, CurvedSlopeStep2Fragment.this.initEntity.elev2);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep2Fragment.this.curvedSlopeEntity.east2 = CurvedSlopeStep2Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep2Fragment.this.curvedSlopeEntity.north2 = CurvedSlopeStep2Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep2Fragment.this.curvedSlopeEntity.elev2 = CurvedSlopeStep2Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CurvedSlopeStep2Fragment.m2255$r8$lambda$pYnA0JiDJwNqUzm0BjnupZNHaQ(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return CurvedSlopeStep2Fragment.m2256$r8$lambda$rNwUbcp3hpyvcFVPHPeS2IrfYY(this.f$0, view);
            }
        });
        this.binding.fillDigType.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.5
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                CurvedSlopeStep2Fragment.this.curvedSlopeEntity.depthB = CurvedSlopeStep2Fragment.this.binding.fillDigType.getCurrentType() == 0 ? -Math.abs(CurvedSlopeStep2Fragment.this.binding.edtValue.getNumericValue()) : Math.abs(CurvedSlopeStep2Fragment.this.binding.edtValue.getNumericValue());
            }
        });
        this.binding.edtValue.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep2Fragment.this.curvedSlopeEntity.depthB = CurvedSlopeStep2Fragment.this.binding.fillDigType.getCurrentType() == 0 ? -Math.abs(CurvedSlopeStep2Fragment.this.binding.edtValue.getNumericValue()) : Math.abs(CurvedSlopeStep2Fragment.this.binding.edtValue.getNumericValue());
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = CurvedSlopeStep2Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = CurvedSlopeStep2Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = CurvedSlopeStep2Fragment.this.binding.edtElev.getNumericValue();
                double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{CurvedSlopeStep2Fragment.this.curvedSlopeEntity.east1, CurvedSlopeStep2Fragment.this.curvedSlopeEntity.north1, CurvedSlopeStep2Fragment.this.curvedSlopeEntity.elev1}, new double[]{CurvedSlopeStep2Fragment.this.binding.edtEast.getNumericValue(), CurvedSlopeStep2Fragment.this.binding.edtNorth.getNumericValue(), CurvedSlopeStep2Fragment.this.binding.edtElev.getNumericValue()});
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) CurvedSlopeStep2Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep2Fragment.this.getString(R$string.please_collect_coordinates), CurvedSlopeStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (!CurvedSlopeStep2Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) CurvedSlopeStep2Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep2Fragment.this.getString(R$string.please_confirm_matches_engineering), CurvedSlopeStep2Fragment.this.getString(R$string.ok), null);
                } else if (dCalculateDistanceGAUSS < 0.1d) {
                    ((BaseActivity) CurvedSlopeStep2Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep2Fragment.this.getString(R$string.ac_cannot_coincide), CurvedSlopeStep2Fragment.this.getString(R$string.ok), null);
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    /* renamed from: $r8$lambda$pYnA0JiDJwNqUzm0BjnupZNHa-Q, reason: not valid java name */
    public static /* synthetic */ void m2255$r8$lambda$pYnA0JiDJwNqUzm0BjnupZNHaQ(CurvedSlopeStep2Fragment curvedSlopeStep2Fragment, View view) {
        CadPickHelper cadPickHelper = curvedSlopeStep2Fragment.cadPickHelper;
        CurvedSlopeEntity curvedSlopeEntity = curvedSlopeStep2Fragment.curvedSlopeEntity;
        cadPickHelper.pickFromFile(curvedSlopeEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(curvedSlopeEntity.east2, curvedSlopeEntity.north2, curvedSlopeEntity.elev2));
    }

    /* renamed from: $r8$lambda$rNwUbcp-3hpyvcFVPHPeS2IrfYY, reason: not valid java name */
    public static /* synthetic */ boolean m2256$r8$lambda$rNwUbcp3hpyvcFVPHPeS2IrfYY(CurvedSlopeStep2Fragment curvedSlopeStep2Fragment, View view) {
        curvedSlopeStep2Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    private void showData() {
        this.binding.toothView.setVisibility(this.curvedSlopeEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setCurrentType(this.mToothType);
        this.binding.ivReset.setVisibility(this.curvedSlopeEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.edtValue.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.unitDropdown.initUnit(requireContext(), getGlobalUnit());
        this.binding.fillDigType.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.fillDigType.setCurrentType(this.curvedSlopeEntity.depthB > 0.0d ? 1 : 0);
        this.binding.tvContinue.setEnabled(true);
        this.binding.lltCollect.setVisibility(0);
        this.binding.edtValue.setText(this.curvedSlopeEntity.depthB != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.curvedSlopeEntity.depthB))) : "0");
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        if (curvedSlopeEntity != null) {
            showCoords(curvedSlopeEntity.east2, curvedSlopeEntity.north2, curvedSlopeEntity.elev2);
        }
    }

    private void initObserve() {
        ((CurvedSlopeCreateActivity) requireActivity()).observeCoordsStep2().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !CurvedSlopeStep2Fragment.this.isAdded()) {
                    return;
                }
                CurvedSlopeStep2Fragment.this.clearCadPath();
                CurvedSlopeStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        if (curvedSlopeEntity.id == 0) {
            curvedSlopeEntity.cadPath = "";
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
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        curvedSlopeEntity.east2 = d;
        curvedSlopeEntity.north2 = d2;
        curvedSlopeEntity.elev2 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            CurvedSlopeEntity curvedSlopeEntity2 = this.curvedSlopeEntity;
            curvedSlopeEntity2.lon2 = 0.0d;
            curvedSlopeEntity2.lat2 = 0.0d;
            return false;
        }
        this.curvedSlopeEntity.lon2 = Double.parseDouble(formatCoords(dArr[0]));
        this.curvedSlopeEntity.lat2 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep2Fragment.10
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                CurvedSlopeStep2Fragment.this.clearCadPath();
                ((CurvedSlopeCreateActivity) CurvedSlopeStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                CurvedSlopeStep2Fragment.this.clearCadPath();
                ((CurvedSlopeCreateActivity) CurvedSlopeStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                CurvedSlopeStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    CurvedSlopeStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                CurvedSlopeStep2Fragment.this.mToothType = i;
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
