package com.qianhe.yct;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.activity.PrivacyPolicyActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.databinding.ActivitySplashBinding;
import com.qianhe.yct.utils.ScreenOrientationHelper;
import com.qianhe.yct.utils.SpannableUtils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SplashActivity extends AppCompatActivity {
    private ActivitySplashBinding binding;

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(LanguagePrefs.wrapContext(context));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"SourceLockedOrientationActivity"})
    protected void onCreate(Bundle bundle) {
        int iResolveWelcomeDrawable = resolveWelcomeDrawable(this);
        setTheme(resolveSplashTheme(this));
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(iResolveWelcomeDrawable);
        getWindow().getDecorView().setSystemUiVisibility(5380);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ScreenOrientationHelper.apply(this);
        super.onCreate(bundle);
        ((YCTApplication) getApplication()).getActivityList().add(this);
        ActivitySplashBinding activitySplashBindingInflate = ActivitySplashBinding.inflate(getLayoutInflater());
        this.binding = activitySplashBindingInflate;
        activitySplashBindingInflate.iv.setImageResource(iResolveWelcomeDrawable);
        setContentView(this.binding.getRoot());
        if (bundle == null && !isTaskRoot()) {
            finish();
            return;
        }
        final SharedPreferences sharedPreferences = getSharedPreferences("sp", 0);
        boolean zEquals = getPackageName().equals("com.qianhe.xfix");
        if (zEquals || sharedPreferences.getBoolean("agree_privacy_agreement", false)) {
            if (zEquals && !sharedPreferences.getBoolean("agree_privacy_agreement", false)) {
                sharedPreferences.edit().putBoolean("agree_privacy_agreement", true).apply();
            }
            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.SplashActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SplashActivity.this.isDestroyed()) {
                        return;
                    }
                    SplashActivity.this.startActivity(new Intent(SplashActivity.this, (Class<?>) MainActivity.class));
                    SplashActivity.this.overridePendingTransition(0, 0);
                    if (((YCTApplication) SplashActivity.this.getApplication()).isPad()) {
                        return;
                    }
                    SplashActivity.this.finish();
                }
            }, 800L);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        View viewInflate = getLayoutInflater().inflate(R$layout.dialog_privacy_tips, (ViewGroup) null);
        builder.setView(viewInflate);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        alertDialogCreate.setCancelable(false);
        final TextView textView = (TextView) viewInflate.findViewById(R$id.tvAgree);
        textView.setEnabled(false);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvContent);
        View viewFindViewById = viewInflate.findViewById(R$id.lltTick);
        final ImageView imageView = (ImageView) viewInflate.findViewById(R$id.ivSel);
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvAgreeTerms);
        TextView textView4 = (TextView) viewInflate.findViewById(R$id.tvCancel);
        textView2.setText(R$string.privacy_policy_details);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.SplashActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (imageView.isSelected()) {
                    alertDialogCreate.dismiss();
                    sharedPreferences.edit().putBoolean("agree_privacy_agreement", true).apply();
                    if (SplashActivity.this.isDestroyed()) {
                        return;
                    }
                    SplashActivity.this.startActivity(new Intent(SplashActivity.this, (Class<?>) MainActivity.class));
                    SplashActivity.this.overridePendingTransition(0, 0);
                    if (((YCTApplication) SplashActivity.this.getApplication()).isPad()) {
                        return;
                    }
                    SplashActivity.this.finish();
                }
            }
        });
        String str = "《" + getString(R$string.privacy_policy) + "》";
        SpannableUtils.setClickableSpan(textView3, getString(R$string.continue_tips) + str, str, ContextCompat.getColor(this, R$color.theme), new View.OnClickListener() { // from class: com.qianhe.yct.SplashActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplashActivity.m1192$r8$lambda$hPuD4kvnhyDzm6OIZGfWmZRIyU(this.f$0, view);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.SplashActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialogCreate.dismiss();
                SplashActivity.this.finishAffinity();
                Process.killProcess(Process.myPid());
            }
        });
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.SplashActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                imageView.setSelected(!r2.isSelected());
                textView.setEnabled(imageView.isSelected());
            }
        });
    }

    /* renamed from: $r8$lambda$hPuD4kvnhyDzm-6OIZGfWmZRIyU, reason: not valid java name */
    public static /* synthetic */ void m1192$r8$lambda$hPuD4kvnhyDzm6OIZGfWmZRIyU(SplashActivity splashActivity, View view) {
        splashActivity.getClass();
        splashActivity.startActivity(new Intent(splashActivity, (Class<?>) PrivacyPolicyActivity.class));
    }

    public static int resolveSplashTheme(Context context) {
        if (context.getPackageName().equals("com.qianhe.xfix")) {
            return R$style.Theme_Splash_XFIX;
        }
        if (LanguagePrefs.isZH(context)) {
            return R$style.Theme_Splash_ZH;
        }
        return R$style.Theme_Splash;
    }

    public static int resolveWelcomeDrawable(Context context) {
        if (context.getPackageName().equals("com.qianhe.xfix")) {
            return R$drawable.bg_wel_xfix;
        }
        return LanguagePrefs.isZH(context) ? R$drawable.bg_wel_zh : R$drawable.bg_wel_en;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ((YCTApplication) getApplication()).getActivityList().remove(this);
        String str = getClass().getName() + " ——> onDestroy()";
    }
}
