.class public Lcom/qianhe/yct/activity/AppConfigActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "AppConfigActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

.field private count:I

.field private final isAdmin:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field public keyboardShown:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcount(Lcom/qianhe/yct/activity/AppConfigActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAdmin(Lcom/qianhe/yct/activity/AppConfigActivity;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->isAdmin:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lcom/qianhe/yct/activity/AppConfigActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->isAdmin:Landroidx/lifecycle/MutableLiveData;

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

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->app_config:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/AppConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/AppConfigActivity$2;-><init>(Lcom/qianhe/yct/activity/AppConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tvAdmin:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/AppConfigActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/AppConfigActivity$3;-><init>(Lcom/qianhe/yct/activity/AppConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public observeAdmin()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->isAdmin:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    .line 46
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance p1, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 48
    new-instance v0, Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;-><init>()V

    .line 49
    new-instance v1, Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;-><init>()V

    .line 50
    sget v2, Lcom/qianhe/yct/R$string;->level:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget v0, Lcom/qianhe/yct/R$string;->base:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v2, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v6, Lcom/qianhe/yct/activity/AppConfigActivity$1;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/AppConfigActivity$1;-><init>(Lcom/qianhe/yct/activity/AppConfigActivity;Lcom/qianhe/yct/adapter/ViewPagerAdapter;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/activity/AppConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 130
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

.method public restartApp()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
