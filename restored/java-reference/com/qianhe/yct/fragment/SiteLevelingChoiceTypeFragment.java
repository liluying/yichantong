package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSitelevelingChoiceTypeBinding;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SiteLevelingChoiceTypeFragment extends BaseProjectFragment {
    private FragmentSitelevelingChoiceTypeBinding binding;
    private SiteLevelingEntity initEntity;
    private InsNavi mINS;
    private SiteLevelingEntity siteLevelingEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSitelevelingChoiceTypeBinding.inflate(getLayoutInflater());
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
            this.initEntity = (SiteLevelingEntity) arguments.getSerializable("initEntity");
            this.siteLevelingEntity = (SiteLevelingEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.ivLeveling.setEnabled(this.siteLevelingEntity.editState == 0);
        this.binding.ivSlope.setEnabled(this.siteLevelingEntity.editState == 0);
        this.binding.ivLeveling.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingChoiceTypeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SiteLevelingChoiceTypeFragment.this.binding.ivLeveling.setSelected(true);
                SiteLevelingChoiceTypeFragment.this.binding.ivSlope.setSelected(false);
                SiteLevelingChoiceTypeFragment.this.siteLevelingEntity.subType = 0;
                SiteLevelingChoiceTypeFragment.this.siteLevelingEntity.ratio = 0.0d;
            }
        });
        this.binding.ivSlope.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingChoiceTypeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SiteLevelingChoiceTypeFragment.this.binding.ivSlope.setSelected(true);
                SiteLevelingChoiceTypeFragment.this.binding.ivLeveling.setSelected(false);
                SiteLevelingChoiceTypeFragment.this.siteLevelingEntity.subType = 1;
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingChoiceTypeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingChoiceTypeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!SiteLevelingChoiceTypeFragment.this.binding.ivLeveling.isSelected() && !SiteLevelingChoiceTypeFragment.this.binding.ivSlope.isSelected()) {
                    ((BaseActivity) SiteLevelingChoiceTypeFragment.this.requireActivity()).showToastDialog(SiteLevelingChoiceTypeFragment.this.getString(R$string.please_select_type));
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    private void showData() {
        int i = this.siteLevelingEntity.subType;
        if (i == 1) {
            this.binding.ivSlope.setSelected(true);
        } else if (i == 0) {
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
