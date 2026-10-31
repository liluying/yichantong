.class public Lcom/qianhe/yct/fragment/NetStateFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "NetStateFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

.field private timeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private timeFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    return-void
.end method

.method private startTimer()V
    .locals 7

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->timeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    new-instance v1, Lcom/qianhe/yct/fragment/NetStateFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/NetStateFragment$1;-><init>(Lcom/qianhe/yct/fragment/NetStateFragment;)V

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->timeFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    .line 43
    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileStateResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMobileState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->sim_card_not_detected:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    const-string v1, "ONLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMobileState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->online:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    const-string v1, "OFFLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMobileState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->offline:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMobileState:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvSIMtype:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/qianhe/yct/R$string;->sim_card_not_detected:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->type:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvSIMimei:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->imei:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvSIMiccid:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->iccid:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/WifiStateResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->lltWifiStatus:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->mode:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/WifiRoleEnum;->STATION:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMode:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->mode:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/WifiRoleEnum;->DISABLE:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/qianhe/yct/R$string;->disable:I

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->mode:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/WifiRoleEnum;->AP:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/qianhe/yct/R$string;->hotspot:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/qianhe/yct/R$string;->client:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->state:Ljava/lang/String;

    const-string v2, "UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/qianhe/yct/R$string;->connected:I

    :goto_3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget v1, Lcom/qianhe/yct/R$string;->not_connected:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvWifiName:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvAddress:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMask:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvGateway:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvDNS:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->dns:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 102
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->timeFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetStateFragment;->timeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/NetStateFragment;->startTimer()V

    return-void
.end method
