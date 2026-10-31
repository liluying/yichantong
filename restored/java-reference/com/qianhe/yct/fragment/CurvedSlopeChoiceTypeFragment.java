package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCurvedslopeChoiceTypeBinding;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopeChoiceTypeFragment extends BaseProjectFragment {
    private FragmentCurvedslopeChoiceTypeBinding binding;
    private CurvedSlopeEntity curvedSlopeEntity;
    private CurvedSlopeEntity initEntity;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCurvedslopeChoiceTypeBinding.inflate(getLayoutInflater());
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
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.ivSlopeTop.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.ivSlopeBottom.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.ivSlopeTop.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeChoiceTypeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CurvedSlopeChoiceTypeFragment.this.binding.ivSlopeTop.setSelected(true);
                CurvedSlopeChoiceTypeFragment.this.binding.ivSlopeBottom.setSelected(false);
                CurvedSlopeChoiceTypeFragment.this.curvedSlopeEntity.subType = 0;
            }
        });
        this.binding.ivSlopeBottom.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeChoiceTypeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CurvedSlopeChoiceTypeFragment.this.binding.ivSlopeBottom.setSelected(true);
                CurvedSlopeChoiceTypeFragment.this.binding.ivSlopeTop.setSelected(false);
                CurvedSlopeChoiceTypeFragment.this.curvedSlopeEntity.subType = 1;
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeChoiceTypeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeChoiceTypeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!CurvedSlopeChoiceTypeFragment.this.binding.ivSlopeTop.isSelected() && !CurvedSlopeChoiceTypeFragment.this.binding.ivSlopeBottom.isSelected()) {
                    ((BaseActivity) CurvedSlopeChoiceTypeFragment.this.requireActivity()).showToastDialog(CurvedSlopeChoiceTypeFragment.this.getString(R$string.please_select_type));
                } else {
                    EventBus.getDefault().post("next");
                }
            }
        });
        showData();
    }

    private void showData() {
        int i = this.curvedSlopeEntity.subType;
        if (i == 1) {
            this.binding.ivSlopeBottom.setSelected(true);
        } else if (i == 0) {
            this.binding.ivSlopeTop.setSelected(true);
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
