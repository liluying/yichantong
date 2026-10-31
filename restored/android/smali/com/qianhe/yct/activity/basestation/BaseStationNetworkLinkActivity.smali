.class public Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BaseStationNetworkLinkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->network_link:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    .line 31
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 33
    new-instance p1, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 34
    new-instance v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->network_config:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/qianhe/yct/fragment/NetStateFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/NetStateFragment;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->network_status:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 39
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 41
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object v3, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v7, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity$1;

    invoke-direct {v7, p0, p1}, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity$1;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;Lcom/qianhe/yct/adapter/ViewPagerAdapter;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 47
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 48
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

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
