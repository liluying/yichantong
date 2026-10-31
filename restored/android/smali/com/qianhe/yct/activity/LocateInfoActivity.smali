.class public Lcom/qianhe/yct/activity/LocateInfoActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "LocateInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;
    }
.end annotation


# static fields
.field private static sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;


# instance fields
.field private basestationInfoFragment:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

.field private binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

.field private demoCustomDataFragment:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

.field private final insNaviLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private locationFragment:Lcom/qianhe/yct/fragment/LocationFragment;

.field private mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private snrFragment:Lcom/qianhe/yct/fragment/SNRFragment;

.field private starMapFragment:Lcom/qianhe/yct/fragment/StarMapFragment;


# direct methods
.method public static synthetic $r8$lambda$OnMcFVU-Ne912FDMqKgGuvlz07o(Lcom/qianhe/yct/activity/LocateInfoActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ltz p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 157
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/LocateInfoActivity;->switchPageInstant(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method

.method private bindTabClickInstantSwitch()V
    .locals 4

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    new-instance v3, Lcom/qianhe/yct/activity/LocateInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/qianhe/yct/activity/LocateInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/LocateInfoActivity;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;
    .locals 1

    .line 90
    sget-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    return-object v0
.end method

.method public static retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;
    .locals 1

    .line 84
    sget-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;-><init>()V

    sput-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    .line 85
    :cond_0
    sget-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    return-object v0
.end method

.method private switchPageInstant(I)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 166
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 168
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 170
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 171
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
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

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getTabLayoutHeigth()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected initData()V
    .locals 5

    .line 181
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iput-object v1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iput-object v1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 186
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG,DOP,ONTIME,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->dop_interval:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

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

    .line 189
    sget-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrStreamInited:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    iget v2, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    invoke-virtual {p0, v1, v2, v0}, Lcom/qianhe/yct/activity/LocateInfoActivity;->requestData(FFF)V

    return-void

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p0, v0, v0, v0}, Lcom/qianhe/yct/activity/LocateInfoActivity;->requestData(FFF)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->locate_info:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

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

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    .line 100
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 102
    new-instance p1, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 103
    new-instance v0, Lcom/qianhe/yct/fragment/LocationFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/LocationFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->locationFragment:Lcom/qianhe/yct/fragment/LocationFragment;

    .line 104
    new-instance v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->basestationInfoFragment:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    .line 105
    new-instance v0, Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->starMapFragment:Lcom/qianhe/yct/fragment/StarMapFragment;

    .line 106
    new-instance v0, Lcom/qianhe/yct/fragment/SNRFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/SNRFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->snrFragment:Lcom/qianhe/yct/fragment/SNRFragment;

    .line 107
    new-instance v0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->demoCustomDataFragment:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->locationFragment:Lcom/qianhe/yct/fragment/LocationFragment;

    sget v1, Lcom/qianhe/yct/R$string;->locate_info:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->basestationInfoFragment:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    sget v1, Lcom/qianhe/yct/R$string;->base:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->starMapFragment:Lcom/qianhe/yct/fragment/StarMapFragment;

    sget v1, Lcom/qianhe/yct/R$string;->star_map:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->snrFragment:Lcom/qianhe/yct/fragment/SNRFragment;

    sget v1, Lcom/qianhe/yct/R$string;->snr:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->demoCustomDataFragment:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    sget v1, Lcom/qianhe/yct/R$string;->simulated_data:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v3, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v7, Lcom/qianhe/yct/activity/LocateInfoActivity$1;

    invoke-direct {v7, p0, p1}, Lcom/qianhe/yct/activity/LocateInfoActivity$1;-><init>(Lcom/qianhe/yct/activity/LocateInfoActivity;Lcom/qianhe/yct/adapter/ViewPagerAdapter;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 126
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 131
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    .line 132
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/LocateInfoActivity;->bindTabClickInstantSwitch()V

    .line 136
    sget-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    if-eqz v0, :cond_4

    .line 137
    iget v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->tabIndex:I

    if-ltz v0, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 141
    :cond_3
    sget-object p1, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    iget-object p1, p1, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->ins:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz p1, :cond_4

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    if-eqz v0, :cond_1

    .line 245
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityLocateInfoBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->tabIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    sput-object v0, Lcom/qianhe/yct/activity/LocateInfoActivity;->sRetain:Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    .line 249
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,DOP"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,SNR"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 251
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,SAV"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,SAU"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 254
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 255
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 204
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 205
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/LocateInfoActivity;->initData()V

    :cond_0
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    iput-object p1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->ins:Lcom/qianhe/baselib/bean/InsNavi;

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->insNaviLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestData(FFF)V
    .locals 5

    .line 197
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG,SNR,ONTIME,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,SAV,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOG,SAU,ONTIME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
