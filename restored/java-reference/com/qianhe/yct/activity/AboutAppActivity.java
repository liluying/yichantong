package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityAboutAppBinding;
import com.qianhe.yct.utils.AboutAppIconHelper;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AboutAppActivity extends BaseActivity {
    private ActivityAboutAppBinding binding;

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
        this.binding = ActivityAboutAppBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.binding.tvVersion.setText(String.format(Locale.ROOT, getString(R$string.app_version) + " v%s", "2.0.2609.109"));
        this.binding.ivIcon.setImageResource(AboutAppIconHelper.resolve(this));
        this.binding.tvPrivacyPolicy.setVisibility(getPackageName().equals("com.qianhe.xfix") ? 8 : 0);
        this.binding.tvAppUpgrade.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.AboutAppActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AboutAppActivity.this.hasPermissions("basic")) {
                    AboutAppActivity.this.getApkList(DeviceType.ZPY, true);
                } else {
                    AboutAppActivity.this.checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvPrivacyPolicy.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.AboutAppActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AboutAppActivity.this.startActivity(new Intent(AboutAppActivity.this, (Class<?>) PrivacyPolicyActivity.class));
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.about_app);
        return this.binding.topBar.getRoot();
    }
}
