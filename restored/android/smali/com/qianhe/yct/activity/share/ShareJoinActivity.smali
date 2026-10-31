.class public Lcom/qianhe/yct/activity/share/ShareJoinActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ShareJoinActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

.field private request:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrequest(Lcom/qianhe/yct/activity/share/ShareJoinActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->request:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method private setDefaultCursor()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;-><init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->join_share:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    .line 37
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->fltClearCode:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;-><init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->tvJoin:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;-><init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->setDefaultCursor()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryShareResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->request:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->request:Z

    .line 95
    iget v1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->state:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShareEntity;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const-string v1, "shareCode"

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 103
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->data_empty:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 106
    :cond_2
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

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

.method protected onPause()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
