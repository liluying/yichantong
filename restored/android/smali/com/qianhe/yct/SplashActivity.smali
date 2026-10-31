.class public Lcom/qianhe/yct/SplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivitySplashBinding;


# direct methods
.method public static synthetic $r8$lambda$hPuD4kvnhyDzm-6OIZGfWmZRIyU(Lcom/qianhe/yct/SplashActivity;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static resolveSplashTheme(Landroid/content/Context;)I
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qianhe.xfix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget p0, Lcom/qianhe/yct/R$style;->Theme_Splash_XFIX:I

    return p0

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 154
    sget p0, Lcom/qianhe/yct/R$style;->Theme_Splash_ZH:I

    return p0

    .line 156
    :cond_1
    sget p0, Lcom/qianhe/yct/R$style;->Theme_Splash:I

    return p0
.end method

.method public static resolveWelcomeDrawable(Landroid/content/Context;)I
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qianhe.xfix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget p0, Lcom/qianhe/yct/R$drawable;->bg_wel_xfix:I

    return p0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/qianhe/yct/R$drawable;->bg_wel_zh:I

    return p0

    :cond_1
    sget p0, Lcom/qianhe/yct/R$drawable;->bg_wel_en:I

    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/qianhe/yct/SplashActivity;->resolveWelcomeDrawable(Landroid/content/Context;)I

    move-result v0

    .line 45
    invoke-static {p0}, Lcom/qianhe/yct/SplashActivity;->resolveSplashTheme(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x1504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 53
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Lcom/qianhe/yct/SplashActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->apply(Landroid/app/Activity;)V

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/databinding/ActivitySplashBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivitySplashBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/SplashActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySplashBinding;

    .line 62
    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySplashBinding;->iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySplashBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivitySplashBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 70
    :cond_1
    const-string/jumbo p1, "sp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.qianhe.xfix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    const-string v3, "agree_privacy_agreement"

    if-nez v2, :cond_3

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_0

    .line 87
    :cond_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$layout;->dialog_privacy_tips:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 93
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 94
    sget v3, Lcom/qianhe/yct/R$id;->tvAgree:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    sget v0, Lcom/qianhe/yct/R$id;->tvContent:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    sget v4, Lcom/qianhe/yct/R$id;->lltTick:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 98
    sget v5, Lcom/qianhe/yct/R$id;->ivSel:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 99
    sget v6, Lcom/qianhe/yct/R$id;->tvAgreeTerms:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 100
    sget v7, Lcom/qianhe/yct/R$id;->tvCancel:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    sget v7, Lcom/qianhe/yct/R$string;->privacy_policy_details:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 102
    new-instance v0, Lcom/qianhe/yct/SplashActivity$2;

    invoke-direct {v0, p0, v5, v1, p1}, Lcom/qianhe/yct/SplashActivity$2;-><init>(Lcom/qianhe/yct/SplashActivity;Landroid/widget/ImageView;Landroidx/appcompat/app/AlertDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u300a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/qianhe/yct/R$string;->privacy_policy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u300b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/qianhe/yct/R$string;->continue_tips:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    sget v7, Lcom/qianhe/yct/R$color;->theme:I

    .line 123
    invoke-static {p0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    new-instance v8, Lcom/qianhe/yct/SplashActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/qianhe/yct/SplashActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/SplashActivity;)V

    .line 120
    invoke-static {v6, v0, p1, v7, v8}, Lcom/qianhe/yct/utils/SpannableUtils;->setClickableSpan(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 129
    new-instance p1, Lcom/qianhe/yct/SplashActivity$3;

    invoke-direct {p1, p0, v1}, Lcom/qianhe/yct/SplashActivity$3;-><init>(Lcom/qianhe/yct/SplashActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance p1, Lcom/qianhe/yct/SplashActivity$4;

    invoke-direct {p1, p0, v5, v3}, Lcom/qianhe/yct/SplashActivity$4;-><init>(Lcom/qianhe/yct/SplashActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 73
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySplashBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivitySplashBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/SplashActivity$1;-><init>(Lcom/qianhe/yct/SplashActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014\u2014> onDestroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loglog"

    nop

    nop

    nop

    return-void
.end method
