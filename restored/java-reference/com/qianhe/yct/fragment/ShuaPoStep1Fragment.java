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
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.enums.ShuaPoEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSpStep1Binding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoStep1Fragment extends BaseProjectFragment {
    private FragmentSpStep1Binding binding;
    private CadPickHelper cadPickHelper;
    private ShuaPoEntity initEntity;
    private boolean isH5Pro;
    private InsNavi mINS;
    private int mToothType;
    private ShuaPoEntity shuaPoEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment$$ExternalSyntheticLambda3
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
                ShuaPoStep1Fragment.$r8$lambda$Usti1yFRqhM1OPXK7ejk0QhrdLw(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Usti1yFRqhM1OPXK7ejk0QhrdLw(ShuaPoStep1Fragment shuaPoStep1Fragment, String str, double[] dArr) {
        shuaPoStep1Fragment.shuaPoEntity.cadPath = str;
        shuaPoStep1Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSpStep1Binding.inflate(getLayoutInflater());
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
            this.initEntity = (ShuaPoEntity) arguments.getSerializable("initEntity");
            this.shuaPoEntity = (ShuaPoEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        initView();
    }

    private void initView() {
        this.binding.ivReset.setVisibility(this.shuaPoEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.lltSel.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.shuaPoEntity.editState == 0);
        if (this.shuaPoEntity.subType == ShuaPoEnum.DOWN.getType()) {
            this.binding.ivStep1.setImageResource(R$drawable.icon_sp_down1);
            this.binding.tvSpType.setText(R$string.down_slope);
        } else if (this.shuaPoEntity.subType == ShuaPoEnum.UP.getType()) {
            this.binding.ivStep1.setImageResource(R$drawable.icon_sp_up1);
            this.binding.tvSpType.setText(R$string.up_slope);
        }
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ShuaPoStep1Fragment.this.requireActivity()).showTipDialog(ShuaPoStep1Fragment.this.getString(R$string.reset_data), ShuaPoStep1Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ShuaPoStep1Fragment.this.shuaPoEntity.east1 = ShuaPoStep1Fragment.this.initEntity.east1;
                        ShuaPoStep1Fragment.this.shuaPoEntity.north1 = ShuaPoStep1Fragment.this.initEntity.north1;
                        ShuaPoStep1Fragment.this.shuaPoEntity.targetElevation1 = ShuaPoStep1Fragment.this.initEntity.targetElevation1;
                        ShuaPoStep1Fragment.this.shuaPoEntity.cadPath = ShuaPoStep1Fragment.this.initEntity.cadPath;
                        ShuaPoStep1Fragment shuaPoStep1Fragment = ShuaPoStep1Fragment.this;
                        shuaPoStep1Fragment.showCoords(shuaPoStep1Fragment.initEntity.east1, ShuaPoStep1Fragment.this.initEntity.north1, ShuaPoStep1Fragment.this.initEntity.targetElevation1);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep1Fragment.this.shuaPoEntity.east1 = ShuaPoStep1Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep1Fragment.this.shuaPoEntity.north1 = ShuaPoStep1Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep1Fragment.this.shuaPoEntity.targetElevation1 = ShuaPoStep1Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuaPoStep1Fragment.m2554$r8$lambda$7ZRc0eBIA6uRdLcDzPz6qENEw(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ShuaPoStep1Fragment.m2555$r8$lambda$CHsTDt_XFkLaErBVg7qhSqtELo(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuaPoStep1Fragment.$r8$lambda$QUlA1TtKmvlBLOIhWkzxIRn7y4o(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoStep1Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltSel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoStep1Fragment.this.binding.ivSelA.setSelected(!ShuaPoStep1Fragment.this.binding.ivSelA.isSelected());
                if (ShuaPoStep1Fragment.this.binding.ivSelA.isSelected()) {
                    ShuaPoStep1Fragment.this.binding.edtElev.setEnabled(true);
                    ShuaPoStep1Fragment.this.shuaPoEntity.tickA = 1;
                    ShuaPoStep1Fragment.this.shuaPoEntity.tickB = 0;
                    if (ShuaPoStep1Fragment.this.shuaPoEntity.targetElevationBenchmark == ShuaPoStep1Fragment.this.shuaPoEntity.targetElevation2) {
                        ShuaPoStep1Fragment.this.shuaPoEntity.targetElevationBenchmark = 0.0d;
                        return;
                    }
                    return;
                }
                ShuaPoStep1Fragment.this.shuaPoEntity.tickA = 0;
                if (ShuaPoStep1Fragment.this.shuaPoEntity.targetElevationBenchmark == ShuaPoStep1Fragment.this.shuaPoEntity.targetElevation1) {
                    ShuaPoStep1Fragment.this.shuaPoEntity.targetElevationBenchmark = 0.0d;
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = ShuaPoStep1Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = ShuaPoStep1Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = ShuaPoStep1Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) ShuaPoStep1Fragment.this.requireActivity()).showToastDialog(ShuaPoStep1Fragment.this.getString(R$string.please_collect_start_point));
                } else if (!ShuaPoStep1Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) ShuaPoStep1Fragment.this.requireActivity()).showTipDialog(ShuaPoStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), ShuaPoStep1Fragment.this.getString(R$string.ok), null);
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData(this.shuaPoEntity);
    }

    /* renamed from: $r8$lambda$7ZRc0eBIA6uRdLcDzPz6-qE-NEw, reason: not valid java name */
    public static /* synthetic */ void m2554$r8$lambda$7ZRc0eBIA6uRdLcDzPz6qENEw(ShuaPoStep1Fragment shuaPoStep1Fragment, View view) {
        CadPickHelper cadPickHelper = shuaPoStep1Fragment.cadPickHelper;
        ShuaPoEntity shuaPoEntity = shuaPoStep1Fragment.shuaPoEntity;
        cadPickHelper.pickFromFile(shuaPoEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(shuaPoEntity.east1, shuaPoEntity.north1, shuaPoEntity.targetElevation1));
    }

    /* renamed from: $r8$lambda$CHsTDt_XF-kLaErBVg7qhSqtELo, reason: not valid java name */
    public static /* synthetic */ boolean m2555$r8$lambda$CHsTDt_XFkLaErBVg7qhSqtELo(ShuaPoStep1Fragment shuaPoStep1Fragment, View view) {
        shuaPoStep1Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$QUlA1TtKmvlBLOIhWkzxIRn7y4o(ShuaPoStep1Fragment shuaPoStep1Fragment, View view) {
        if (shuaPoStep1Fragment.binding.toothView.getVisibility() == 0 && shuaPoStep1Fragment.mToothType == -1) {
            ((BaseActivity) shuaPoStep1Fragment.requireActivity()).showToastDialog(shuaPoStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            shuaPoStep1Fragment.handleMeasureCollectClick(shuaPoStep1Fragment.mToothType, shuaPoStep1Fragment.createToothCollectHandler());
        }
    }

    private void showData(ShuaPoEntity shuaPoEntity) {
        double d = shuaPoEntity.targetElevationBenchmark;
        if (d != 0.0d && d == shuaPoEntity.targetElevation1) {
            shuaPoEntity.tickA = 1;
        }
        this.binding.toothView.setCurrentType(this.mToothType);
        showCoords(shuaPoEntity.east1, shuaPoEntity.north1, shuaPoEntity.targetElevation1);
        this.binding.ivSelA.setSelected(shuaPoEntity.tickA == 1);
        this.binding.edtElev.setEnabled(shuaPoEntity.tickB == 0);
    }

    private void initObserve() {
        ((ShuaPoCreateActivity) requireActivity()).observeCoordsStep1().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ShuaPoStep1Fragment.this.isAdded()) {
                    return;
                }
                ShuaPoStep1Fragment.this.clearCadPath();
                ShuaPoStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity.id == 0) {
            shuaPoEntity.cadPath = "";
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
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        shuaPoEntity.east1 = d;
        shuaPoEntity.north1 = d2;
        shuaPoEntity.targetElevation1 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
            shuaPoEntity2.targetLon1 = 0.0d;
            shuaPoEntity2.targetLat1 = 0.0d;
            return false;
        }
        this.shuaPoEntity.targetLon1 = Double.parseDouble(formatCoords(dArr[0]));
        this.shuaPoEntity.targetLat1 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ShuaPoStep1Fragment.10
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ShuaPoStep1Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ShuaPoStep1Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ShuaPoStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    ShuaPoStep1Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ShuaPoStep1Fragment.this.mToothType = i;
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
