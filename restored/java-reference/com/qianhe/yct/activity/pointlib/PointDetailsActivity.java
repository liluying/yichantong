package com.qianhe.yct.activity.pointlib;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityPointDetailsBinding;

@Deprecated
/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointDetailsActivity extends BaseActivity {
    private ActivityPointDetailsBinding binding;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityPointDetailsBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        Intent intent = new Intent(this, (Class<?>) PointGroupCreateActivity.class);
        Intent intent2 = getIntent();
        if (intent2 != null) {
            intent.putExtra("pointId", intent2.getLongExtra("pointId", 0L));
        }
        startActivity(intent);
        finish();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.details));
        return this.binding.topBar.getRoot();
    }
}
