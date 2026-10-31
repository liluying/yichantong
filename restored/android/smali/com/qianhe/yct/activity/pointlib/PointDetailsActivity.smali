.class public Lcom/qianhe/yct/activity/pointlib/PointDetailsActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "PointDetailsActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

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

    .line 43
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointDetailsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointDetailsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->details:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointDetailsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointDetailsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    .line 27
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 31
    const-string v3, "pointId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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
