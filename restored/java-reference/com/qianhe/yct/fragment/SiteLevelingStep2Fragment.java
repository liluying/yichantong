package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.siteleveling.SiteLevelingWorkActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSitelevelingStep2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SiteLevelingStep2Fragment extends BaseProjectFragment {
    private FragmentSitelevelingStep2Binding binding;
    private SiteLevelingEntity initEntity;
    private InsNavi mINS;
    private SiteLevelingEntity siteLevelingEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSitelevelingStep2Binding.inflate(getLayoutInflater());
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
        this.binding.edtRatio.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep2Fragment.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                SiteLevelingStep2Fragment.this.binding.ivStatus.setImageResource(SiteLevelingStep2Fragment.this.binding.edtRatio.getNumericValue() > 0.0d ? R$drawable.icon_polyline_zheng : R$drawable.icon_polyline_fu);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep2Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep2Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SiteLevelingStep2Fragment.this.siteLevelingEntity.subType == 1 && SiteLevelingStep2Fragment.this.binding.edtRatio.getNumericValue() == 0.0d) {
                    ((BaseActivity) SiteLevelingStep2Fragment.this.requireActivity()).showTipDialog(SiteLevelingStep2Fragment.this.getString(R$string.please_enter_slope_ratio), SiteLevelingStep2Fragment.this.getString(R$string.ok), null);
                    return;
                }
                SiteLevelingStep2Fragment siteLevelingStep2Fragment = SiteLevelingStep2Fragment.this;
                siteLevelingStep2Fragment.createEntity(siteLevelingStep2Fragment.siteLevelingEntity);
                if (SiteLevelingStep2Fragment.this.siteLevelingEntity.id == 0) {
                    SiteLevelingStep2Fragment.this.siteLevelingEntity.id = DatabaseManager.getInstance(SiteLevelingStep2Fragment.this.requireContext()).insert(SiteLevelingStep2Fragment.this.siteLevelingEntity);
                    SiteLevelingStep2Fragment.this.next();
                } else {
                    if (!SiteLevelingStep2Fragment.this.initEntity.equals(SiteLevelingStep2Fragment.this.siteLevelingEntity)) {
                        SiteLevelingStep2Fragment.this.siteLevelingEntity.updateTime = System.currentTimeMillis() / 1000;
                        DatabaseManager.getInstance(SiteLevelingStep2Fragment.this.requireContext()).updateEntityById(SiteLevelingStep2Fragment.this.siteLevelingEntity);
                        NetworkUserLoader.getInstance().modifyProject(SiteLevelingStep2Fragment.this.mINS, SiteLevelingStep2Fragment.this.siteLevelingEntity);
                    }
                    SiteLevelingStep2Fragment.this.next();
                }
            }
        });
        showData();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.binding.lltRatio.setVisibility(this.siteLevelingEntity.subType == 1 ? 0 : 8);
        NumericEditText numericEditText = this.binding.edtRatio;
        double d = this.siteLevelingEntity.ratio;
        numericEditText.setText(d == 0.0d ? "" : formatDouble(d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) SiteLevelingWorkActivity.class);
        intent.putExtra("id", this.siteLevelingEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    private void showData() {
        this.binding.ivStatus.setImageResource(this.siteLevelingEntity.ratio > 0.0d ? R$drawable.icon_polyline_zheng : R$drawable.icon_polyline_fu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity(SiteLevelingEntity siteLevelingEntity) {
        siteLevelingEntity.ratio = this.binding.edtRatio.getNumericValue();
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }
}
