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
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.line.LineCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentLineStep1Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.LinePreView;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineStep1Fragment extends BaseProjectFragment {
    private FragmentLineStep1Binding binding;
    private CadPickHelper cadPickHelper;
    private LineEntity initEntity;
    private boolean isH5Pro;
    private LineEntity lineEntity;
    private InsNavi mINS;
    private int mToothType;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.LineStep1Fragment$$ExternalSyntheticLambda3
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
                LineStep1Fragment.$r8$lambda$gtSLCCGHmSA4lelfLAAVGEzgVtA(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$gtSLCCGHmSA4lelfLAAVGEzgVtA(LineStep1Fragment lineStep1Fragment, String str, double[] dArr) {
        lineStep1Fragment.lineEntity.cadPath = str;
        lineStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentLineStep1Binding.inflate(getLayoutInflater());
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
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) LineStep1Fragment.this.requireActivity()).showTipDialog(LineStep1Fragment.this.getString(R$string.reset_data), LineStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        LineStep1Fragment.this.lineEntity.east1 = LineStep1Fragment.this.initEntity.east1;
                        LineStep1Fragment.this.lineEntity.north1 = LineStep1Fragment.this.initEntity.north1;
                        LineStep1Fragment.this.lineEntity.targetElevation1 = LineStep1Fragment.this.initEntity.targetElevation1;
                        LineStep1Fragment.this.lineEntity.cadPath = LineStep1Fragment.this.initEntity.cadPath;
                        LineStep1Fragment lineStep1Fragment = LineStep1Fragment.this;
                        lineStep1Fragment.showCoords(lineStep1Fragment.initEntity.east1, LineStep1Fragment.this.initEntity.north1, LineStep1Fragment.this.initEntity.targetElevation1);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineStep1Fragment.this.lineEntity.east1 = LineStep1Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineStep1Fragment.this.lineEntity.north1 = LineStep1Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineStep1Fragment.this.lineEntity.targetElevation1 = LineStep1Fragment.this.binding.edtElev.getNumericValue();
                LineStep1Fragment.this.binding.linePreView.setPointA(new double[]{LineStep1Fragment.this.lineEntity.east1, LineStep1Fragment.this.lineEntity.targetElevation1});
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStep1Fragment.$r8$lambda$WpBETJwAwffGd5lwjROtzfhcnIo(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return LineStep1Fragment.m2426$r8$lambda$l0osKbvB9ca65_CzdC2Qn5bcgc(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStep1Fragment.m2425$r8$lambda$egBy9ULWCz6dfWgXLME4ibHulA(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LineStep1Fragment.this.clearCadPath();
                ((LineCreateActivity) LineStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = LineStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = LineStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = LineStep1Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) LineStep1Fragment.this.requireActivity()).showToastDialog(LineStep1Fragment.this.getString(R$string.please_collect_start_point));
                } else if (!LineStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) LineStep1Fragment.this.requireActivity()).showTipDialog(LineStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), LineStep1Fragment.this.getString(R$string.ok), null);
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    public static /* synthetic */ void $r8$lambda$WpBETJwAwffGd5lwjROtzfhcnIo(LineStep1Fragment lineStep1Fragment, View view) {
        CadPickHelper cadPickHelper = lineStep1Fragment.cadPickHelper;
        LineEntity lineEntity = lineStep1Fragment.lineEntity;
        cadPickHelper.pickFromFile(lineEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(lineEntity.east1, lineEntity.north1, lineEntity.targetElevation1));
    }

    /* renamed from: $r8$lambda$l0osKbvB-9ca65_CzdC2Qn5bcgc, reason: not valid java name */
    public static /* synthetic */ boolean m2426$r8$lambda$l0osKbvB9ca65_CzdC2Qn5bcgc(LineStep1Fragment lineStep1Fragment, View view) {
        lineStep1Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* renamed from: $r8$lambda$egBy9ULWCz6dfWgXLME4ibH-ulA, reason: not valid java name */
    public static /* synthetic */ void m2425$r8$lambda$egBy9ULWCz6dfWgXLME4ibHulA(LineStep1Fragment lineStep1Fragment, View view) {
        if (lineStep1Fragment.binding.toothView.getVisibility() == 0 && lineStep1Fragment.mToothType == -1) {
            ((BaseActivity) lineStep1Fragment.requireActivity()).showToastDialog(lineStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            lineStep1Fragment.handleMeasureCollectClick(lineStep1Fragment.mToothType, lineStep1Fragment.createToothCollectHandler());
        }
    }

    private void showData() {
        this.binding.toothView.setCurrentType(this.mToothType);
        this.binding.ivReset.setVisibility(this.lineEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.lineEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.lineEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.lineEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.lineEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.lineEntity.editState == 0);
        LineEntity lineEntity = this.lineEntity;
        showCoords(lineEntity.east1, lineEntity.north1, lineEntity.targetElevation1);
        refreshData();
    }

    private void refreshData() {
        LinePreView linePreView = this.binding.linePreView;
        LineEntity lineEntity = this.lineEntity;
        linePreView.setPointA(new double[]{lineEntity.east1, lineEntity.targetElevation1});
    }

    private void initObserve() {
        ((LineCreateActivity) requireActivity()).observeCoordsStep1().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !LineStep1Fragment.this.isAdded()) {
                    return;
                }
                LineStep1Fragment.this.clearCadPath();
                LineStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
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
        this.binding.linePreView.setPointA(new double[]{d, d2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        LineEntity lineEntity = this.lineEntity;
        lineEntity.east1 = d;
        lineEntity.north1 = d2;
        lineEntity.targetElevation1 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            LineEntity lineEntity2 = this.lineEntity;
            lineEntity2.targetLon1 = 0.0d;
            lineEntity2.targetLat1 = 0.0d;
            return false;
        }
        this.lineEntity.targetLon1 = Double.parseDouble(formatCoords(dArr[0]));
        this.lineEntity.targetLat1 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.LineStep1Fragment.9
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                LineStep1Fragment.this.clearCadPath();
                ((LineCreateActivity) LineStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                LineStep1Fragment.this.clearCadPath();
                ((LineCreateActivity) LineStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                LineStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    LineStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                LineStep1Fragment.this.mToothType = i;
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
