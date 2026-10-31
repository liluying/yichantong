.class public Lcom/qianhe/yct/fragment/LocationFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "LocationFragment.java"


# instance fields
.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

.field private count:I

.field private init:Z

.field private isResume:Z

.field private isShowTips:Z

.field private mAvailable:Z

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private restoring:Z

.field private final scrollIdleRunnable:Ljava/lang/Runnable;

.field private userScrolling:Z


# direct methods
.method public static synthetic $r8$lambda$SYOUTgo3SjOLf8jzQ35x124cHXU(Lcom/qianhe/yct/fragment/LocationFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->userScrolling:Z

    return-void
.end method

.method public static synthetic $r8$lambda$btu3tBwzEDbhYGK5c5B_nxdlhVo(Lcom/qianhe/yct/fragment/LocationFragment;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->isResume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->restoring:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/LocationFragment;->onINS(Lcom/qianhe/baselib/bean/InsNavi;)V

    :cond_1
    :goto_0
    return-void

    .line 0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$f1J0mCWnKxOvBvH_7ZEw4o4YrYE(Lcom/qianhe/yct/fragment/LocationFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->userScrolling:Z

    .line 84
    iget-object p2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->scrollIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->scrollIdleRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x78

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/LocationFragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->scrollIdleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private initLiveData()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/LocateInfoActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/LocateInfoActivity;->observeInsNavi()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/LocationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->lltDataStaus:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvUTC:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLocalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 82
    new-instance v1, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/LocationFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method private onINS(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->shouldSkipLiveUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v4, p0

    goto/16 :goto_2

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHeading:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLon:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    const/16 v5, 0x8

    invoke-virtual {p0, v3, v4, v5}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLat:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    invoke-virtual {p0, v3, v4, v5}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvElev:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v4, v5}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v7, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v9, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/fragment/LocationFragment;->updateSourcePlaneCoords(DDD)V

    .line 198
    iget-object v2, v4, Lcom/qianhe/yct/fragment/LocationFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v2, :cond_2

    iget-object v2, v4, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvCentralMeridian:Landroid/widget/TextView;

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseFragment;->getCentralMeridian(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    const-string v3, "%s\u00b0"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->mAvailable:Z

    if-eqz p1, :cond_4

    .line 204
    iput v0, v4, Lcom/qianhe/yct/fragment/LocationFragment;->count:I

    .line 205
    iput-boolean v0, v4, Lcom/qianhe/yct/fragment/LocationFragment;->isShowTips:Z

    .line 206
    iget-object p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDataStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->data_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 207
    :cond_4
    iget-boolean p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->isResume:Z

    if-eqz p1, :cond_5

    .line 208
    iget p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->count:I

    add-int/2addr p1, v1

    iput p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->count:I

    .line 209
    iget-object p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDataStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-boolean p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->isShowTips:Z

    if-nez p1, :cond_5

    iget p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->count:I

    iget-object v0, v4, Lcom/qianhe/yct/fragment/LocationFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    if-le p1, v0, :cond_5

    .line 211
    iput-boolean v1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->isShowTips:Z

    .line 215
    :cond_5
    :goto_1
    iget-object p1, v4, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDataStatus:Landroid/widget/TextView;

    iget-boolean v0, v4, Lcom/qianhe/yct/fragment/LocationFragment;->mAvailable:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 217
    :cond_6
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, v4, Lcom/qianhe/yct/fragment/LocationFragment;->mAvailable:Z

    :cond_8
    :goto_2
    return-void
.end method

.method private restoreRetainedData()V
    .locals 4

    .line 94
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 95
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->restoring:Z

    const/4 v2, 0x0

    .line 98
    :try_start_0
    iget-boolean v3, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->locationInited:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->init:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->gga:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/fragment/LocationFragment;->onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V

    .line 100
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->gst:Lcom/qianhe/baselib/bean/GSTEntity;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/fragment/LocationFragment;->onEventMessage(Lcom/qianhe/baselib/bean/GSTEntity;)V

    .line 101
    :cond_3
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->dop:Lcom/qianhe/baselib/bean/GPDOPEntity;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/fragment/LocationFragment;->onEventMessage(Lcom/qianhe/baselib/bean/GPDOPEntity;)V

    .line 102
    :cond_4
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->bestPos:Lcom/qianhe/baselib/bean/BestPosEntity;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/fragment/LocationFragment;->onEventMessage(Lcom/qianhe/baselib/bean/BestPosEntity;)V

    .line 103
    :cond_5
    iget-object v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->ins:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/LocationFragment;->onINS(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_6
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->restoring:Z

    return-void

    :goto_1
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->restoring:Z

    .line 106
    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method private shouldSkipLiveUpdate()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->restoring:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->isResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->userScrolling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateSourcePlaneCoords(DDD)V
    .locals 9

    const/4 v0, 0x3

    .line 240
    new-array v8, v0, [D

    .line 241
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProjOnly(DDD[D)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvEast:Landroid/widget/TextView;

    const/4 p2, 0x0

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3, v0}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvNorth:Landroid/widget/TextView;

    const/4 p2, 0x1

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3, v0}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 57
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->initView()V

    .line 58
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->initLiveData()V

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->scrollIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 280
    :cond_0
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    .line 282
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BestPosEntity;)V
    .locals 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->shouldSkipLiveUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v3, p0

    goto/16 :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    iput-object p1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->bestPos:Lcom/qianhe/baselib/bean/BestPosEntity;

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLon:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lon:D

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLat:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lat:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "base_antennaheight_real"

    const v2, 0x3fd4c986    # 1.6624f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    .line 232
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvElev:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->elve:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->elveDiff:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    sub-double/2addr v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0, v3, v4, v0}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lon:D

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lat:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvElev:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/qianhe/yct/fragment/LocationFragment;->updateSourcePlaneCoords(DDD)V

    .line 234
    iget-object v0, v3, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvCentralMeridian:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lon:D

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseFragment;->getCentralMeridian(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s\u00b0"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_5

    .line 111
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->shouldSkipLiveUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 114
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    iput-object p1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->gga:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 116
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->unknown_solution:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_0
    sget v0, Lcom/qianhe/yct/R$string;->sbas_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_1
    sget v0, Lcom/qianhe/yct/R$string;->UWL:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_2
    sget v0, Lcom/qianhe/yct/R$string;->base_fixed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_3
    sget v0, Lcom/qianhe/yct/R$string;->calcul_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_4
    sget v0, Lcom/qianhe/yct/R$string;->float_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_5
    sget v0, Lcom/qianhe/yct/R$string;->fixed_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_6
    sget v0, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_7
    sget v0, Lcom/qianhe/yct/R$string;->diff_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_8
    sget v0, Lcom/qianhe/yct/R$string;->singlepoint_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_9
    sget v0, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvQuality:Landroid/widget/TextView;

    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget-object v2, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDiffDelay:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->no_difference:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDiffDelay:Landroid/widget/TextView;

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvGeoHeight:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->geodeticHeight:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvUTC:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->utc:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/TimeConverter;->formatUTCTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLocalTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/TimeConverter;->convertLocalTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GPDOPEntity;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->shouldSkipLiveUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    iput-object p1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->dop:Lcom/qianhe/baselib/bean/GPDOPEntity;

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHDOP:Landroid/widget/TextView;

    iget v1, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->hdop:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvVDOP:Landroid/widget/TextView;

    iget p1, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->vdop:F

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double v1, p1

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GSTEntity;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->shouldSkipLiveUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GSTEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    iget v0, p1, Lcom/qianhe/baselib/bean/GSTEntity;->latstd:F

    mul-float v0, v0, v0

    iget v1, p1, Lcom/qianhe/baselib/bean/GSTEntity;->lonstd:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 170
    iget v1, p1, Lcom/qianhe/baselib/bean/GSTEntity;->altstd:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    .line 171
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHRMS:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHRMS:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/LocationFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvVRMS:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->binding:Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvVRMS:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LocationFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 175
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    iput-object p1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->gst:Lcom/qianhe/baselib/bean/GSTEntity;

    .line 177
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/LocationFragment;->init:Z

    if-nez p1, :cond_4

    .line 178
    iput-boolean v5, p0, Lcom/qianhe/yct/fragment/LocationFragment;->init:Z

    .line 179
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object p1

    iput-boolean v5, p1, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->locationInited:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->isResume:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LocationFragment;->isResume:Z

    .line 66
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LocationFragment;->restoreRetainedData()V

    return-void
.end method
