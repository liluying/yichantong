package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityCadpreviewBinding;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CADPreviewActivity extends BaseActivity {
    private ActivityCadpreviewBinding binding;

    /* JADX INFO: Access modifiers changed from: private */
    public void pickDwgFile() {
    }

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
        this.binding = ActivityCadpreviewBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.binding.tvChooseCad.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADPreviewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADPreviewActivity.this.pickDwgFile();
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText("CAD放样");
        return this.binding.topBar.getRoot();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
