package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.line.LineCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentLineStep2Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.LinePreView;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineStep2Fragment extends BaseProjectFragment {
    private FragmentLineStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private LineEntity initEntity;
    private boolean isH5Pro;
    private LineEntity lineEntity;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.LineStep2Fragment$$ExternalSyntheticLambda0
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
                LineStep2Fragment.m2434$r8$lambda$RbH3VRNv3dNJwRwN_CWPCWBiF0(this.f$0, str, dArr);
            }
        });
    }

    /* renamed from: $r8$lambda$R-bH3VRNv3dNJwRwN_CWPCWBiF0, reason: not valid java name */
    public static /* synthetic */ void m2434$r8$lambda$RbH3VRNv3dNJwRwN_CWPCWBiF0(LineStep2Fragment lineStep2Fragment, String str, double[] dArr) {
        lineStep2Fragment.lineEntity.cadPath = str;
        lineStep2Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentLineStep2Binding.inflate(getLayoutInflater());
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
            this.initEntity = (LineEntity) arguments.getSerializable("initEntity");
            this.lineEntity = (LineEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        refreshData();
    }

    private void initView() {
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) LineStep2Fragment.this.requireActivity()).showTipDialog(LineStep2Fragment.this.getString(R$string.reset_data), LineStep2Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        LineStep2Fragment.this.lineEntity.east2 = LineStep2Fragment.this.initEntity.east2;
                        LineStep2Fragment.this.lineEntity.north2 = LineStep2Fragment.this.initEntity.north2;
                        LineStep2Fragment.this.lineEntity.targetElevation2 = LineStep2Fragment.this.initEntity.targetElevation2;
                        LineStep2Fragment.this.lineEntity.cadPath = LineStep2Fragment.this.initEntity.cadPath;
                        LineStep2Fragment lineStep2Fragment = LineStep2Fragment.this;
                        lineStep2Fragment.showCoords(lineStep2Fragment.initEntity.east2, LineStep2Fragment.this.initEntity.north2, LineStep2Fragment.this.initEntity.targetElevation2);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineStep2Fragment.this.lineEntity.east2 = LineStep2Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineStep2Fragment.this.lineEntity.north2 = LineStep2Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineStep2Fragment.this.lineEntity.targetElevation2 = LineStep2Fragment.this.binding.edtElev.getNumericValue();
                LineStep2Fragment.this.binding.linePreView.setPointAB(new double[]{LineStep2Fragment.this.lineEntity.east1, LineStep2Fragment.this.lineEntity.targetElevation1}, new double[]{LineStep2Fragment.this.lineEntity.east2, LineStep2Fragment.this.lineEntity.targetElevation2});
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStep2Fragment.m2435$r8$lambda$ukb7zg1xyF5u_wYmiRO3L8N64(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return LineStep2Fragment.$r8$lambda$6Fp1EWifiOwdjjBw3Ep2axDJ1jE(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStep2Fragment.$r8$lambda$QKIz2AKUkpqqFNUgBL04Qy9MpaA(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LineStep2Fragment.this.clearCadPath();
                ((LineCreateActivity) LineStep2Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = LineStep2Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = LineStep2Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = LineStep2Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) LineStep2Fragment.this.requireActivity()).showToastDialog(LineStep2Fragment.this.getString(R$string.please_collect_direction_point));
                    return;
                }
                if (!LineStep2Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) LineStep2Fragment.this.requireActivity()).showTipDialog(LineStep2Fragment.this.getString(R$string.please_confirm_matches_engineering), LineStep2Fragment.this.getString(R$string.ok), null);
                } else if (0.1d > CoordsCalculUtils.calculateDistanceGAUSS(new double[]{LineStep2Fragment.this.lineEntity.east1, LineStep2Fragment.this.lineEntity.north1}, new double[]{numericValue, numericValue2})) {
                    ((BaseActivity) LineStep2Fragment.this.requireActivity()).showTipDialog(LineStep2Fragment.this.getString(R$string.AB_must_greater_than_10cm), LineStep2Fragment.this.getString(R$string.ok), null);
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    /* renamed from: $r8$lambda$ukb7zg1xyF5u_wYmiRO-3L-8N64, reason: not valid java name */
    public static /* synthetic */ void m2435$r8$lambda$ukb7zg1xyF5u_wYmiRO3L8N64(LineStep2Fragment lineStep2Fragment, View view) {
        CadPickHelper cadPickHelper = lineStep2Fragment.cadPickHelper;
        LineEntity lineEntity = lineStep2Fragment.lineEntity;
        cadPickHelper.pickFromFile(lineEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(lineEntity.east2, lineEntity.north2, lineEntity.targetElevation2));
    }

    public static /* synthetic */ boolean $r8$lambda$6Fp1EWifiOwdjjBw3Ep2axDJ1jE(LineStep2Fragment lineStep2Fragment, View view) {
        lineStep2Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$QKIz2AKUkpqqFNUgBL04Qy9MpaA(LineStep2Fragment lineStep2Fragment, View view) {
        if (lineStep2Fragment.binding.toothView.getVisibility() == 0 && lineStep2Fragment.lineEntity.shovelTipType == -1) {
            ((BaseActivity) lineStep2Fragment.requireActivity()).showToastDialog(lineStep2Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            lineStep2Fragment.handleMeasureCollectClick(lineStep2Fragment.lineEntity.shovelTipType, lineStep2Fragment.createToothCollectHandler());
        }
    }

    private void showData() {
        this.binding.ivReset.setVisibility(this.lineEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.lineEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.lineEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.lineEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.lineEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.lineEntity.editState == 0);
        this.binding.toothView.setCurrentType(this.lineEntity.shovelTipType);
        LineEntity lineEntity = this.lineEntity;
        showCoords(lineEntity.east2, lineEntity.north2, lineEntity.targetElevation2);
        refreshData();
    }

    private void refreshData() {
        LinePreView linePreView = this.binding.linePreView;
        LineEntity lineEntity = this.lineEntity;
        linePreView.setPointAB(new double[]{lineEntity.east1, lineEntity.targetElevation1}, new double[]{lineEntity.east2, lineEntity.targetElevation2});
    }

    private void initObserve() {
        ((LineCreateActivity) requireActivity()).observeCoordsStep2().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !LineStep2Fragment.this.isAdded()) {
                    return;
                }
                LineStep2Fragment.this.clearCadPath();
                LineStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        LineEntity lineEntity = this.lineEntity;
        if (lineEntity.id == 0) {
            lineEntity.cadPath = "";
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
        LineEntity lineEntity = this.lineEntity;
        lineEntity.east2 = d;
        lineEntity.north2 = d2;
        lineEntity.targetElevation2 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            LineEntity lineEntity2 = this.lineEntity;
            lineEntity2.targetLon2 = 0.0d;
            lineEntity2.targetLat2 = 0.0d;
            return false;
        }
        this.lineEntity.targetLon2 = Double.parseDouble(formatCoords(dArr[0]));
        this.lineEntity.targetLat2 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.LineStep2Fragment.9
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                LineStep2Fragment.this.clearCadPath();
                LineStep2Fragment.this.lineEntity.shovelTipType = 0;
                ((LineCreateActivity) LineStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                LineStep2Fragment.this.clearCadPath();
                LineStep2Fragment.this.lineEntity.shovelTipType = i;
                ((LineCreateActivity) LineStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                LineStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    LineStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                LineStep2Fragment.this.lineEntity.shovelTipType = i;
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
    }
}
