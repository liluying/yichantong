.class public Lcom/qianhe/yct/activity/DealerActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "DealerActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/DealerListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
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

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/activity/DealerActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/activity/DealerActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7ecf\u9500\u5546\u5217\u8868"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/activity/DealerActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/DealerActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    .line 31
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/qianhe/yct/activity/DealerActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    const-string v0, "dealerResponse"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/event/DealerResponse;

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/qianhe/yct/adapter/DealerListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/adapter/DealerListAdapter;-><init>(Landroid/content/Context;Lcom/qianhe/yct/event/DealerResponse;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/DealerActivity;->adapter:Lcom/qianhe/yct/adapter/DealerListAdapter;

    .line 39
    iget-object p1, p0, Lcom/qianhe/yct/activity/DealerActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/DealerResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
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
