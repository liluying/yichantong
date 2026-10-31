.class public Lcom/qianhe/yct/activity/CADPreviewActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CADPreviewActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;


# direct methods
.method static bridge synthetic -$$Nest$mpickDwgFile(Lcom/qianhe/yct/activity/CADPreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADPreviewActivity;->pickDwgFile()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method private pickDwgFile()V
    .locals 0

    .line 0
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

    .line 44
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADPreviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADPreviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "CAD\u653e\u6837"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADPreviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CADPreviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    .line 28
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADPreviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->tvChooseCad:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/CADPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/CADPreviewActivity$1;-><init>(Lcom/qianhe/yct/activity/CADPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

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
