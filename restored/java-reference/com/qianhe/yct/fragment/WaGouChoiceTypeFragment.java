package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.enums.WaGouEnum;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentWgChoiceTypeBinding;
import com.qianhe.yct.db.DatabaseManager;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouChoiceTypeFragment extends BaseProjectFragment {
    private FragmentWgChoiceTypeBinding binding;
    private WaGouEntity initEntity;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private WaGouEntity waGouEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentWgChoiceTypeBinding.inflate(getLayoutInflater());
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
            this.initEntity = (WaGouEntity) arguments.getSerializable("initEntity");
            this.waGouEntity = (WaGouEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        showData();
    }

    private void initView() {
        this.binding.ivWgFlat.setEnabled(this.waGouEntity.editState == 0);
        this.binding.ivWgDown.setEnabled(this.waGouEntity.editState == 0);
        this.binding.ivWgUp.setEnabled(this.waGouEntity.editState == 0);
        this.binding.ivWgFlat.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouChoiceTypeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouChoiceTypeFragment.this.binding.ivWgFlat.setSelected(true);
                if (WaGouChoiceTypeFragment.this.binding.ivWgFlat.isSelected()) {
                    WaGouChoiceTypeFragment.this.binding.ivWgDown.setSelected(false);
                    WaGouChoiceTypeFragment.this.binding.ivWgUp.setSelected(false);
                    WaGouChoiceTypeFragment.this.waGouEntity.subType = WaGouEnum.FLAT.getType();
                }
            }
        });
        this.binding.ivWgDown.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouChoiceTypeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouChoiceTypeFragment.this.binding.ivWgDown.setSelected(true);
                if (WaGouChoiceTypeFragment.this.binding.ivWgDown.isSelected()) {
                    WaGouChoiceTypeFragment.this.binding.ivWgFlat.setSelected(false);
                    WaGouChoiceTypeFragment.this.binding.ivWgUp.setSelected(false);
                    WaGouChoiceTypeFragment.this.waGouEntity.subType = WaGouEnum.DOWN.getType();
                }
            }
        });
        this.binding.ivWgUp.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouChoiceTypeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaGouChoiceTypeFragment.this.binding.ivWgUp.setSelected(true);
                if (WaGouChoiceTypeFragment.this.binding.ivWgUp.isSelected()) {
                    WaGouChoiceTypeFragment.this.binding.ivWgFlat.setSelected(false);
                    WaGouChoiceTypeFragment.this.binding.ivWgDown.setSelected(false);
                    WaGouChoiceTypeFragment.this.waGouEntity.subType = WaGouEnum.UP.getType();
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouChoiceTypeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.WaGouChoiceTypeFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!WaGouChoiceTypeFragment.this.binding.ivWgFlat.isSelected() && !WaGouChoiceTypeFragment.this.binding.ivWgDown.isSelected() && !WaGouChoiceTypeFragment.this.binding.ivWgUp.isSelected()) {
                    ((BaseActivity) WaGouChoiceTypeFragment.this.requireActivity()).showToastDialog(WaGouChoiceTypeFragment.this.getString(R$string.please_select_ditch_type));
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    private void showData() {
        long j;
        double d;
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity.id <= 0 || waGouEntity.length != 0.0d) {
            j = 0;
        } else {
            if (waGouEntity.subType == WaGouEnum.FLAT.getType()) {
                WaGouEntity waGouEntity2 = this.waGouEntity;
                waGouEntity2.length = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{waGouEntity2.east1, waGouEntity2.north1, waGouEntity2.targetElevation1}, new double[]{waGouEntity2.east2, waGouEntity2.north2, waGouEntity2.targetElevation2});
            } else {
                WaGouEntity waGouEntity3 = this.waGouEntity;
                double d2 = waGouEntity3.depth;
                if (d2 != 0.0d && waGouEntity3.ratio != 0.0d) {
                    double d3 = waGouEntity3.targetElevationBenchmark;
                    double d4 = waGouEntity3.targetElevation1;
                    if (d3 == d4) {
                        d = (d4 - d2) - waGouEntity3.targetElevation2;
                        j = 0;
                    } else {
                        j = 0;
                        double d5 = waGouEntity3.targetElevation2;
                        d = d3 == d5 ? d4 - (d5 - d2) : 0.0d;
                    }
                    waGouEntity3.length = d != 0.0d ? Math.abs(d) / (this.waGouEntity.ratio / 100.0d) : CoordsCalculUtils.calculateDistanceGAUSS(new double[]{waGouEntity3.east1, waGouEntity3.north1, d4}, new double[]{waGouEntity3.east2, waGouEntity3.north2, waGouEntity3.targetElevation2});
                    this.waGouEntity.subType = (d > 0.0d ? WaGouEnum.DOWN : WaGouEnum.UP).getType();
                }
            }
            j = 0;
        }
        if (this.binding.ivWgDown.isSelected() || this.waGouEntity.subType == WaGouEnum.DOWN.getType()) {
            this.waGouEntity.subType = WaGouEnum.DOWN.getType();
            this.binding.ivWgDown.setSelected(true);
            this.binding.ivWgFlat.setSelected(false);
            this.binding.ivWgUp.setSelected(false);
            return;
        }
        if (this.binding.ivWgUp.isSelected() || this.waGouEntity.subType == WaGouEnum.UP.getType()) {
            this.waGouEntity.subType = WaGouEnum.UP.getType();
            this.binding.ivWgUp.setSelected(true);
            this.binding.ivWgDown.setSelected(false);
            this.binding.ivWgFlat.setSelected(false);
            return;
        }
        WaGouEntity waGouEntity4 = this.waGouEntity;
        if (waGouEntity4.id != j) {
            waGouEntity4.subType = WaGouEnum.FLAT.getType();
            this.binding.ivWgFlat.setSelected(true);
            this.binding.ivWgDown.setSelected(false);
            this.binding.ivWgUp.setSelected(false);
        }
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
