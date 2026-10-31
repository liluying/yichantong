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
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSpStep2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoStep2Fragment extends BaseProjectFragment {
    private FragmentSpStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private ShuaPoEntity initEntity;
    private boolean isH5Pro;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private int mToothType;
    private ShuaPoEntity shuaPoEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment$$ExternalSyntheticLambda3
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
                ShuaPoStep2Fragment.$r8$lambda$ebOK12u7krpov9NQWuPX9e1uh0A(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ebOK12u7krpov9NQWuPX9e1uh0A(ShuaPoStep2Fragment shuaPoStep2Fragment, String str, double[] dArr) {
        shuaPoStep2Fragment.shuaPoEntity.cadPath = str;
        shuaPoStep2Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSpStep2Binding.inflate(getLayoutInflater());
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
        this.binding.toothView.setVisibility(this.shuaPoEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.lltSel.setEnabled(this.shuaPoEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.shuaPoEntity.editState == 0);
        if (this.shuaPoEntity.subType == ShuaPoEnum.DOWN.getType()) {
            this.binding.ivStep2.setImageResource(R$drawable.icon_sp_down2);
            this.binding.tvSpType.setText(R$string.down_slope);
        } else if (this.shuaPoEntity.subType == ShuaPoEnum.UP.getType()) {
            this.binding.ivStep2.setImageResource(R$drawable.icon_sp_up2);
            this.binding.tvSpType.setText(R$string.up_slope);
        }
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ShuaPoStep2Fragment.this.requireActivity()).showTipDialog(ShuaPoStep2Fragment.this.getString(R$string.reset_data), ShuaPoStep2Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ShuaPoStep2Fragment.this.shuaPoEntity.east2 = ShuaPoStep2Fragment.this.initEntity.east2;
                        ShuaPoStep2Fragment.this.shuaPoEntity.north2 = ShuaPoStep2Fragment.this.initEntity.north2;
                        ShuaPoStep2Fragment.this.shuaPoEntity.targetElevation2 = ShuaPoStep2Fragment.this.initEntity.targetElevation2;
                        ShuaPoStep2Fragment.this.shuaPoEntity.cadPath = ShuaPoStep2Fragment.this.initEntity.cadPath;
                        ShuaPoStep2Fragment shuaPoStep2Fragment = ShuaPoStep2Fragment.this;
                        shuaPoStep2Fragment.showCoords(shuaPoStep2Fragment.initEntity.east2, ShuaPoStep2Fragment.this.initEntity.north2, ShuaPoStep2Fragment.this.initEntity.targetElevation2);
                    }
                });
            }
        });
        this.binding.edtEast.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep2Fragment.this.shuaPoEntity.east2 = ShuaPoStep2Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep2Fragment.this.shuaPoEntity.north2 = ShuaPoStep2Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShuaPoStep2Fragment.this.shuaPoEntity.targetElevation2 = ShuaPoStep2Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuaPoStep2Fragment.m2563$r8$lambda$BhGy1j3UutjagpOYKiwVMYgjk8(this.f$0, view);
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ShuaPoStep2Fragment.$r8$lambda$0c43B2tPgALilgMWfSpFvDGmOVI(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuaPoStep2Fragment.$r8$lambda$OBHpzCL3aR46eKe2p47A2ACBMp8(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoStep2Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep2Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.lltSel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoStep2Fragment.this.binding.ivSelB.setSelected(!ShuaPoStep2Fragment.this.binding.ivSelB.isSelected());
                if (ShuaPoStep2Fragment.this.binding.ivSelB.isSelected()) {
                    ShuaPoStep2Fragment.this.binding.edtElev.setEnabled(true);
                    ShuaPoStep2Fragment.this.shuaPoEntity.tickB = 1;
                    ShuaPoStep2Fragment.this.shuaPoEntity.tickA = 0;
                    if (ShuaPoStep2Fragment.this.shuaPoEntity.targetElevationBenchmark == ShuaPoStep2Fragment.this.shuaPoEntity.targetElevation1) {
                        ShuaPoStep2Fragment.this.shuaPoEntity.targetElevationBenchmark = 0.0d;
                        return;
                    }
                    return;
                }
                ShuaPoStep2Fragment.this.shuaPoEntity.tickB = 0;
                if (ShuaPoStep2Fragment.this.shuaPoEntity.targetElevationBenchmark == ShuaPoStep2Fragment.this.shuaPoEntity.targetElevation2) {
                    ShuaPoStep2Fragment.this.shuaPoEntity.targetElevationBenchmark = 0.0d;
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = ShuaPoStep2Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = ShuaPoStep2Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = ShuaPoStep2Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) ShuaPoStep2Fragment.this.requireActivity()).showToastDialog(ShuaPoStep2Fragment.this.getString(R$string.please_collect_direction_point));
                } else if (0.1d > CoordsCalculUtils.calculateDistanceGAUSS(new double[]{ShuaPoStep2Fragment.this.shuaPoEntity.east1, ShuaPoStep2Fragment.this.shuaPoEntity.north1}, new double[]{numericValue, numericValue2})) {
                    ((BaseActivity) ShuaPoStep2Fragment.this.requireActivity()).showTipDialog(ShuaPoStep2Fragment.this.getString(R$string.AB_must_greater_than_10cm), ShuaPoStep2Fragment.this.getString(R$string.ok), null);
                } else {
                    ShuaPoStep2Fragment.this.next(numericValue, numericValue2, numericValue3);
                }
            }
        });
        showData(this.shuaPoEntity);
    }

    /* renamed from: $r8$lambda$BhGy1j3UutjagpOYKiwVMYgj-k8, reason: not valid java name */
    public static /* synthetic */ void m2563$r8$lambda$BhGy1j3UutjagpOYKiwVMYgjk8(ShuaPoStep2Fragment shuaPoStep2Fragment, View view) {
        CadPickHelper cadPickHelper = shuaPoStep2Fragment.cadPickHelper;
        ShuaPoEntity shuaPoEntity = shuaPoStep2Fragment.shuaPoEntity;
        cadPickHelper.pickFromFile(shuaPoEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(shuaPoEntity.east2, shuaPoEntity.north2, shuaPoEntity.targetElevation2));
    }

    public static /* synthetic */ boolean $r8$lambda$0c43B2tPgALilgMWfSpFvDGmOVI(ShuaPoStep2Fragment shuaPoStep2Fragment, View view) {
        shuaPoStep2Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$OBHpzCL3aR46eKe2p47A2ACBMp8(ShuaPoStep2Fragment shuaPoStep2Fragment, View view) {
        if (shuaPoStep2Fragment.binding.toothView.getVisibility() == 0 && shuaPoStep2Fragment.mToothType == -1) {
            ((BaseActivity) shuaPoStep2Fragment.requireActivity()).showToastDialog(shuaPoStep2Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            shuaPoStep2Fragment.handleMeasureCollectClick(shuaPoStep2Fragment.mToothType, shuaPoStep2Fragment.createToothCollectHandler());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next(double d, double d2, double d3) {
        if (!saveInputCoordsToGeodetic(d, d2, d3)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.please_confirm_matches_engineering), getString(R$string.ok), null);
        } else {
            EventBus.getDefault().post("next");
        }
    }

    private void showData(ShuaPoEntity shuaPoEntity) {
        double d = shuaPoEntity.targetElevationBenchmark;
        boolean z = true;
        if (d != 0.0d && d == shuaPoEntity.targetElevation2) {
            shuaPoEntity.tickB = 1;
        }
        this.binding.toothView.setCurrentType(this.mToothType);
        showCoords(shuaPoEntity.east2, shuaPoEntity.north2, shuaPoEntity.targetElevation2);
        this.binding.ivSelB.setSelected(shuaPoEntity.tickB == 1);
        NumericEditText numericEditText = this.binding.edtElev;
        if (shuaPoEntity.tickB != 1 && shuaPoEntity.tickA != 0) {
            z = false;
        }
        numericEditText.setEnabled(z);
    }

    private void initObserve() {
        ((ShuaPoCreateActivity) requireActivity()).observeCoordsStep2().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.10
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ShuaPoStep2Fragment.this.isAdded()) {
                    return;
                }
                ShuaPoStep2Fragment.this.clearCadPath();
                ShuaPoStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
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

    private boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        shuaPoEntity.east2 = d;
        shuaPoEntity.north2 = d2;
        shuaPoEntity.targetElevation2 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ShuaPoEntity shuaPoEntity2 = this.shuaPoEntity;
            shuaPoEntity2.targetLon2 = 0.0d;
            shuaPoEntity2.targetLat2 = 0.0d;
            return false;
        }
        this.shuaPoEntity.targetLon2 = Double.parseDouble(formatCoords(dArr[0]));
        this.shuaPoEntity.targetLat2 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ShuaPoStep2Fragment.11
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ShuaPoStep2Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ShuaPoStep2Fragment.this.clearCadPath();
                ((ShuaPoCreateActivity) ShuaPoStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ShuaPoStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    ShuaPoStep2Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ShuaPoStep2Fragment.this.mToothType = i;
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
