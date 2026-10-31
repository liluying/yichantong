.class public Lcom/qianhe/yct/activity/BucketCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BucketCreateActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

.field private bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private bucketCreateFragment:Lcom/qianhe/yct/fragment/BucketCreateFragment;

.field private currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private localId:J


# direct methods
.method public static synthetic $r8$lambda$QFmSBNbqZ5j_fZoH7VUQr-IOW84(Lcom/qianhe/yct/activity/BucketCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initViewPager()V
    .locals 5

    .line 70
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 71
    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucketCreateFragment:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v2, "initBucket"

    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    const-string v2, "bucket"

    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isSupportBucket"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v2, "currentExcavator"

    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucketCreateFragment:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucketCreateFragment:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 82
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucketCreateFragment:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->gga(Lcom/qianhe/baselib/bean/GGAEntity;)V

    :cond_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/BucketCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/BucketCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/BucketCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->modify:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->create:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/BucketCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/BucketCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/BucketCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketCreateBinding;

    .line 44
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 46
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 48
    const-string v0, "localId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->localId:J

    .line 49
    const-string v0, "currentExcavator"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 50
    iget-wide v3, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->localId:J

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByLocalId(J)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez p1, :cond_1

    .line 55
    new-instance p1, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 56
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez p1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 62
    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 64
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketCreateActivity;->initViewPager()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 133
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
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketCreateActivity;->bucketCreateFragment:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    if-eqz v0, :cond_0

    .line 110
    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    :cond_0
    return-void
.end method
