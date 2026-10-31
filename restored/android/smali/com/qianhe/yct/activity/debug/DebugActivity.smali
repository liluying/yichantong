.class public Lcom/qianhe/yct/activity/debug/DebugActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "DebugActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

.field private final bestposLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

.field private final debugLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private final ggaLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final gpdopLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final gstLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final insAhrsLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final insNaviLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final sensorInfoLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/debug/DebugActivity;)Lcom/qianhe/yct/adapter/ViewPagerAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->insAhrsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->sensorInfoLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->ggaLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 51
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->bestposLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->gstLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->gpdopLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->debugLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->ggaLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 4

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "LOG,DOP,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "LOG,SNR,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "LOG,GST,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public observeBestpos()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->bestposLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeDebugdata()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->debugLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeGGA()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->ggaLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeGpdop()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->gpdopLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeGst()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->gstLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeInsAhrs()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->insAhrsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeInsNavi()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeSensorInfo()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->sensorInfoLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 220
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 221
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->stop()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    .line 94
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 96
    sput-boolean p1, Lcom/qianhe/rtkclientlib/RtkConstant;->debug:Z

    .line 97
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->mkOrderDir(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 106
    :cond_1
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    .line 107
    new-instance v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;-><init>()V

    .line 108
    new-instance v2, Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;-><init>()V

    .line 109
    iget-object v3, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    sget v4, Lcom/qianhe/yct/R$string;->message_output:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    sget v3, Lcom/qianhe/yct/R$string;->elev_info:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    iget-object v3, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v7, Lcom/qianhe/yct/activity/debug/DebugActivity$1;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/activity/debug/DebugActivity$1;-><init>(Lcom/qianhe/yct/activity/debug/DebugActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 120
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public onDebugSensorInfo(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->sensorInfoLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 226
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 227
    sput-boolean v0, Lcom/qianhe/rtkclientlib/RtkConstant;->debug:Z

    .line 228
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,DOP"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,SNR"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG,GST,ONTIME,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->gst_interval:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BestPosEntity;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->bestposLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GPDOPEntity;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->gpdopLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GSTEntity;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->gstLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsAhrs;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsAhrs;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->insAhrsLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/DebugData;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 201
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/DebugData;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->debugLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 2

    .line 213
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    :cond_0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 165
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
