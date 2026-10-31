package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.enums.ShuaPoEnum;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSpChoiceTypeBinding;
import com.qianhe.yct.db.DatabaseManager;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoChoiceTypeFragment extends BaseProjectFragment {
    private FragmentSpChoiceTypeBinding binding;
    private ShuaPoEntity initEntity;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;
    private ShuaPoEntity shuaPoEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSpChoiceTypeBinding.inflate(getLayoutInflater());
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
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        showData();
    }

    private void initView() {
        this.binding.ivSpDown.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoChoiceTypeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoChoiceTypeFragment.this.binding.ivSpDown.setSelected(true);
                if (ShuaPoChoiceTypeFragment.this.binding.ivSpDown.isSelected()) {
                    ShuaPoChoiceTypeFragment.this.binding.ivSpUp.setSelected(false);
                    ShuaPoChoiceTypeFragment.this.shuaPoEntity.subType = ShuaPoEnum.DOWN.getType();
                }
            }
        });
        this.binding.ivSpUp.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoChoiceTypeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShuaPoChoiceTypeFragment.this.binding.ivSpUp.setSelected(true);
                if (ShuaPoChoiceTypeFragment.this.binding.ivSpUp.isSelected()) {
                    ShuaPoChoiceTypeFragment.this.binding.ivSpDown.setSelected(false);
                    ShuaPoChoiceTypeFragment.this.shuaPoEntity.subType = ShuaPoEnum.UP.getType();
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoChoiceTypeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ShuaPoChoiceTypeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ShuaPoChoiceTypeFragment.this.binding.ivSpDown.isSelected() && !ShuaPoChoiceTypeFragment.this.binding.ivSpUp.isSelected()) {
                    ((BaseActivity) ShuaPoChoiceTypeFragment.this.requireActivity()).showToastDialog(ShuaPoChoiceTypeFragment.this.getString(R$string.please_select_slope_type));
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    private void showData() {
        if (this.binding.ivSpDown.isSelected() || this.shuaPoEntity.subType == ShuaPoEnum.DOWN.getType()) {
            this.shuaPoEntity.subType = ShuaPoEnum.DOWN.getType();
            this.binding.ivSpDown.setSelected(true);
        } else if (this.binding.ivSpUp.isSelected() || this.shuaPoEntity.subType == ShuaPoEnum.UP.getType()) {
            this.shuaPoEntity.subType = ShuaPoEnum.UP.getType();
            this.binding.ivSpUp.setSelected(true);
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
