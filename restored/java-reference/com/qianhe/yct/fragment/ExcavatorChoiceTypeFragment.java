package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorChoiceTypeBinding;
import com.qianhe.yct.db.DatabaseManager;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorChoiceTypeFragment extends BaseProjectFragment {
    private FragmentExcavatorChoiceTypeBinding binding;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorChoiceTypeBinding.inflate(getLayoutInflater());
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
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentExcavatorChoiceTypeBinding fragmentExcavatorChoiceTypeBinding = this.binding;
        restoreContinueEnabled(fragmentExcavatorChoiceTypeBinding != null ? fragmentExcavatorChoiceTypeBinding.tvContinue : null);
        showData();
    }

    private void initView() {
        this.binding.lltType1.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceTypeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorChoiceTypeFragment.this.binding.ivType1.setSelected(true);
                ExcavatorChoiceTypeFragment.this.binding.tvTypeDes1.setSelected(true);
                if (ExcavatorChoiceTypeFragment.this.binding.ivType1.isSelected()) {
                    ExcavatorChoiceTypeFragment.this.binding.ivType2.setSelected(false);
                    ExcavatorChoiceTypeFragment.this.binding.tvTypeDes2.setSelected(false);
                    ExcavatorChoiceTypeFragment.this.excavatorEntity.method = 0;
                    return;
                }
                ExcavatorChoiceTypeFragment.this.excavatorEntity.method = -1;
            }
        });
        this.binding.lltType2.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceTypeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorChoiceTypeFragment.this.binding.ivType2.setSelected(true);
                ExcavatorChoiceTypeFragment.this.binding.tvTypeDes2.setSelected(true);
                if (ExcavatorChoiceTypeFragment.this.binding.ivType2.isSelected()) {
                    ExcavatorChoiceTypeFragment.this.binding.ivType1.setSelected(false);
                    ExcavatorChoiceTypeFragment.this.binding.tvTypeDes1.setSelected(false);
                    ExcavatorChoiceTypeFragment.this.excavatorEntity.method = 1;
                    return;
                }
                ExcavatorChoiceTypeFragment.this.excavatorEntity.method = -1;
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceTypeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceTypeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ExcavatorChoiceTypeFragment.this.binding.ivType1.isSelected() && !ExcavatorChoiceTypeFragment.this.binding.ivType2.isSelected()) {
                    ((BaseActivity) ExcavatorChoiceTypeFragment.this.requireActivity()).showToastDialog(ExcavatorChoiceTypeFragment.this.getString(R$string.select_measurement_method));
                } else {
                    ExcavatorChoiceTypeFragment excavatorChoiceTypeFragment = ExcavatorChoiceTypeFragment.this;
                    excavatorChoiceTypeFragment.postWizardNext(excavatorChoiceTypeFragment.binding.tvContinue);
                }
            }
        });
        showData();
    }

    private void showData() {
        this.binding.ivType1.setSelected(this.excavatorEntity.method == 0);
        this.binding.ivType2.setSelected(this.excavatorEntity.method == 1);
        FragmentExcavatorChoiceTypeBinding fragmentExcavatorChoiceTypeBinding = this.binding;
        fragmentExcavatorChoiceTypeBinding.tvTypeDes1.setSelected(fragmentExcavatorChoiceTypeBinding.ivType1.isSelected());
        FragmentExcavatorChoiceTypeBinding fragmentExcavatorChoiceTypeBinding2 = this.binding;
        fragmentExcavatorChoiceTypeBinding2.tvTypeDes2.setSelected(fragmentExcavatorChoiceTypeBinding2.ivType2.isSelected());
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
