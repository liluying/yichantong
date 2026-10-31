package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.ZhaoPingEnum;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentZpChoiceTypeBinding;
import com.qianhe.yct.db.DatabaseManager;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ZhaoPingChoiceTypeFragment extends BaseProjectFragment {
    private FragmentZpChoiceTypeBinding binding;
    private ZhaoPingEntity initEntity;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private ZhaoPingEntity zhaoPingEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentZpChoiceTypeBinding.inflate(getLayoutInflater());
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
            this.initEntity = (ZhaoPingEntity) arguments.getSerializable("initEntity");
            this.zhaoPingEntity = (ZhaoPingEntity) arguments.getSerializable("baseProEntity");
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
        this.binding.ivLeveling.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.ivFill.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.ivDig.setEnabled(this.zhaoPingEntity.editState == 0);
        this.binding.ivLeveling.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingChoiceTypeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZhaoPingChoiceTypeFragment.this.binding.ivLeveling.setSelected(true);
                if (ZhaoPingChoiceTypeFragment.this.binding.ivLeveling.isSelected()) {
                    ZhaoPingChoiceTypeFragment.this.binding.ivFill.setSelected(false);
                    ZhaoPingChoiceTypeFragment.this.binding.ivDig.setSelected(false);
                    ZhaoPingChoiceTypeFragment.this.zhaoPingEntity.subType = ZhaoPingEnum.LEVEING.getType();
                    ZhaoPingChoiceTypeFragment.this.zhaoPingEntity.depth = 0.0d;
                }
            }
        });
        this.binding.ivFill.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingChoiceTypeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZhaoPingChoiceTypeFragment.this.binding.ivFill.setSelected(true);
                if (ZhaoPingChoiceTypeFragment.this.binding.ivFill.isSelected()) {
                    ZhaoPingChoiceTypeFragment.this.binding.ivLeveling.setSelected(false);
                    ZhaoPingChoiceTypeFragment.this.binding.ivDig.setSelected(false);
                    ZhaoPingChoiceTypeFragment.this.zhaoPingEntity.subType = ZhaoPingEnum.FILL.getType();
                }
            }
        });
        this.binding.ivDig.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingChoiceTypeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZhaoPingChoiceTypeFragment.this.binding.ivDig.setSelected(true);
                if (ZhaoPingChoiceTypeFragment.this.binding.ivDig.isSelected()) {
                    ZhaoPingChoiceTypeFragment.this.binding.ivLeveling.setSelected(false);
                    ZhaoPingChoiceTypeFragment.this.binding.ivFill.setSelected(false);
                    ZhaoPingChoiceTypeFragment.this.zhaoPingEntity.subType = ZhaoPingEnum.DIG.getType();
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingChoiceTypeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ZhaoPingChoiceTypeFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ZhaoPingChoiceTypeFragment.this.binding.ivLeveling.isSelected() && !ZhaoPingChoiceTypeFragment.this.binding.ivFill.isSelected() && !ZhaoPingChoiceTypeFragment.this.binding.ivDig.isSelected()) {
                    ((BaseActivity) ZhaoPingChoiceTypeFragment.this.requireActivity()).showToastDialog(ZhaoPingChoiceTypeFragment.this.getString(R$string.please_select_reference_point));
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    private void showData() {
        ZhaoPingEntity zhaoPingEntity = this.zhaoPingEntity;
        double d = zhaoPingEntity.height;
        if (d != 0.0d) {
            zhaoPingEntity.depth = d;
        }
        if (zhaoPingEntity.subType == 0) {
            double d2 = zhaoPingEntity.depth;
            if (d2 < 0.0d) {
                zhaoPingEntity.subType = ZhaoPingEnum.DIG.getType();
            } else if (d2 > 0.0d) {
                zhaoPingEntity.subType = ZhaoPingEnum.FILL.getType();
            } else if (zhaoPingEntity.id != 0) {
                zhaoPingEntity.subType = ZhaoPingEnum.LEVEING.getType();
            }
        }
        if (this.binding.ivFill.isSelected() || this.zhaoPingEntity.subType == ZhaoPingEnum.FILL.getType()) {
            this.zhaoPingEntity.subType = ZhaoPingEnum.FILL.getType();
            this.binding.ivFill.setSelected(true);
        } else if (this.binding.ivDig.isSelected() || this.zhaoPingEntity.subType == ZhaoPingEnum.DIG.getType()) {
            this.zhaoPingEntity.subType = ZhaoPingEnum.DIG.getType();
            this.binding.ivDig.setSelected(true);
        } else if (this.binding.ivLeveling.isSelected() || this.zhaoPingEntity.subType == ZhaoPingEnum.LEVEING.getType()) {
            this.zhaoPingEntity.subType = ZhaoPingEnum.LEVEING.getType();
            this.binding.ivLeveling.setSelected(true);
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
