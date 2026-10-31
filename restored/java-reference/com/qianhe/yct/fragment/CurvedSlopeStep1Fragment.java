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
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCurvedslopeStep1Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.DitchTypeDropdown;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopeStep1Fragment extends BaseProjectFragment {
    private FragmentCurvedslopeStep1Binding binding;
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
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment$$ExternalSyntheticLambda2
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
                CurvedSlopeStep1Fragment.$r8$lambda$dKvHvEc6xw6Lp5tk0n6U6gbIUPU(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$dKvHvEc6xw6Lp5tk0n6U6gbIUPU(CurvedSlopeStep1Fragment curvedSlopeStep1Fragment, String str, double[] dArr) {
        curvedSlopeStep1Fragment.curvedSlopeEntity.cadPath = str;
        curvedSlopeStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCurvedslopeStep1Binding.inflate(getLayoutInflater());
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
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) CurvedSlopeStep1Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep1Fragment.this.getString(R$string.reset_data), CurvedSlopeStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        CurvedSlopeStep1Fragment.this.curvedSlopeEntity.east1 = CurvedSlopeStep1Fragment.this.initEntity.east1;
                        CurvedSlopeStep1Fragment.this.curvedSlopeEntity.north1 = CurvedSlopeStep1Fragment.this.initEntity.north1;
                        CurvedSlopeStep1Fragment.this.curvedSlopeEntity.elev1 = CurvedSlopeStep1Fragment.this.initEntity.elev1;
                        CurvedSlopeStep1Fragment.this.curvedSlopeEntity.cadPath = CurvedSlopeStep1Fragment.this.initEntity.cadPath;
                        CurvedSlopeStep1Fragment curvedSlopeStep1Fragment = CurvedSlopeStep1Fragment.this;
                        curvedSlopeStep1Fragment.showCoords(curvedSlopeStep1Fragment.initEntity.east1, CurvedSlopeStep1Fragment.this.initEntity.north1, CurvedSlopeStep1Fragment.this.initEntity.elev1);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep1Fragment.this.curvedSlopeEntity.east1 = CurvedSlopeStep1Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep1Fragment.this.curvedSlopeEntity.north1 = CurvedSlopeStep1Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep1Fragment.this.curvedSlopeEntity.elev1 = CurvedSlopeStep1Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        this.binding.fillDigType.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.5
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                CurvedSlopeStep1Fragment.this.curvedSlopeEntity.depthA = CurvedSlopeStep1Fragment.this.binding.fillDigType.getCurrentType() == 0 ? -Math.abs(CurvedSlopeStep1Fragment.this.binding.edtValue.getNumericValue()) : Math.abs(CurvedSlopeStep1Fragment.this.binding.edtValue.getNumericValue());
            }
        });
        this.binding.edtValue.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CurvedSlopeStep1Fragment.this.curvedSlopeEntity.depthA = CurvedSlopeStep1Fragment.this.binding.fillDigType.getCurrentType() == 0 ? -Math.abs(CurvedSlopeStep1Fragment.this.binding.edtValue.getNumericValue()) : Math.abs(CurvedSlopeStep1Fragment.this.binding.edtValue.getNumericValue());
            }
        });
        this.binding.fillDigType.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.7
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                CurvedSlopeStep1Fragment.this.curvedSlopeEntity.depthA = CurvedSlopeStep1Fragment.this.binding.fillDigType.getCurrentType() == 0 ? -Math.abs(CurvedSlopeStep1Fragment.this.curvedSlopeEntity.depthA) : Math.abs(CurvedSlopeStep1Fragment.this.curvedSlopeEntity.depthA);
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CurvedSlopeStep1Fragment.$r8$lambda$gbauHkVsSKjJ1qXxs3dKgYJqVNs(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return CurvedSlopeStep1Fragment.$r8$lambda$SoxwegouDDR_3xzZoCpH2QD7N8k(this.f$0, view);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = CurvedSlopeStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = CurvedSlopeStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = CurvedSlopeStep1Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) CurvedSlopeStep1Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep1Fragment.this.getString(R$string.please_collect_coordinates), CurvedSlopeStep1Fragment.this.getString(R$string.ok), null);
                } else if (!CurvedSlopeStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) CurvedSlopeStep1Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), CurvedSlopeStep1Fragment.this.getString(R$string.ok), null);
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    public static /* synthetic */ void $r8$lambda$gbauHkVsSKjJ1qXxs3dKgYJqVNs(CurvedSlopeStep1Fragment curvedSlopeStep1Fragment, View view) {
        CadPickHelper cadPickHelper = curvedSlopeStep1Fragment.cadPickHelper;
        CurvedSlopeEntity curvedSlopeEntity = curvedSlopeStep1Fragment.curvedSlopeEntity;
        cadPickHelper.pickFromFile(curvedSlopeEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(curvedSlopeEntity.east1, curvedSlopeEntity.north1, curvedSlopeEntity.elev1));
    }

    public static /* synthetic */ boolean $r8$lambda$SoxwegouDDR_3xzZoCpH2QD7N8k(CurvedSlopeStep1Fragment curvedSlopeStep1Fragment, View view) {
        curvedSlopeStep1Fragment.cadPickHelper.pickFromFile(1);
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
        this.binding.fillDigType.setCurrentType(this.curvedSlopeEntity.depthA > 0.0d ? 1 : 0);
        this.binding.tvContinue.setEnabled(true);
        this.binding.lltCollect.setVisibility(0);
        this.binding.edtValue.setText(this.curvedSlopeEntity.depthA != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.curvedSlopeEntity.depthA))) : "0");
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        if (curvedSlopeEntity != null) {
            showCoords(curvedSlopeEntity.east1, curvedSlopeEntity.north1, curvedSlopeEntity.elev1);
        }
    }

    private void initObserve() {
        ((CurvedSlopeCreateActivity) requireActivity()).observeCoordsStep1().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.10
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !CurvedSlopeStep1Fragment.this.isAdded()) {
                    return;
                }
                CurvedSlopeStep1Fragment.this.clearCadPath();
                CurvedSlopeStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
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
        curvedSlopeEntity.east1 = d;
        curvedSlopeEntity.north1 = d2;
        curvedSlopeEntity.elev1 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            CurvedSlopeEntity curvedSlopeEntity2 = this.curvedSlopeEntity;
            curvedSlopeEntity2.lon1 = 0.0d;
            curvedSlopeEntity2.lat1 = 0.0d;
            return false;
        }
        this.curvedSlopeEntity.lon1 = Double.parseDouble(formatCoords(dArr[0]));
        this.curvedSlopeEntity.lat1 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep1Fragment.11
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                CurvedSlopeStep1Fragment.this.clearCadPath();
                ((CurvedSlopeCreateActivity) CurvedSlopeStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                CurvedSlopeStep1Fragment.this.clearCadPath();
                ((CurvedSlopeCreateActivity) CurvedSlopeStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                CurvedSlopeStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    CurvedSlopeStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                CurvedSlopeStep1Fragment.this.mToothType = i;
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

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
