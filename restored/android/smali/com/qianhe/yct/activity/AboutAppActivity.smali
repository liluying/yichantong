.class public Lcom/qianhe/yct/activity/AboutAppActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "AboutAppActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/AboutAppActivity;Lcom/qianhe/baselib/enums/DeviceType;Z)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->getApkList(Lcom/qianhe/baselib/enums/DeviceType;Z)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->about_app:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    .line 31
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvVersion:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->app_version:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "2.0.2609.109"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->ivIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lcom/qianhe/yct/utils/AboutAppIconHelper;->resolve(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 34
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvPrivacyPolicy:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qianhe.xfix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvAppUpgrade:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/AboutAppActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/AboutAppActivity$1;-><init>(Lcom/qianhe/yct/activity/AboutAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvPrivacyPolicy:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/AboutAppActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/AboutAppActivity$2;-><init>(Lcom/qianhe/yct/activity/AboutAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method
