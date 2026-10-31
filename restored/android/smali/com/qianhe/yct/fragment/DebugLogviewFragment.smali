.class public Lcom/qianhe/yct/fragment/DebugLogviewFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "DebugLogviewFragment.java"


# instance fields
.field private ahrsHeadingError:D

.field private ahrsPitchError:D

.field private ahrsRollError:D

.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

.field private final filterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasSend:Z

.field private final historyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFixed:Z

.field private logAdapter:Lcom/qianhe/yct/activity/debug/DebugAdapter;

.field private naviHeading:D

.field private naviPitch:D

.field private naviRoll:D


# direct methods
.method public static synthetic $r8$lambda$2agZac__WOsRh8chw9Uc02DroJQ(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->edtOrder:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Tf03xeI6Dl0HUp_3cUB20y2b8sk(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/FileUtil;->saveOrderList(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$qZ7eeb7MbUaPY0_1PJL_PVWG_Xc(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->adjustNsvHeight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetappConfig(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/bean/AppConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethistoryList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->historyList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->isFixed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->logAdapter:Lcom/qianhe/yct/activity/debug/DebugAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputahrsHeadingError(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->ahrsHeadingError:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputahrsPitchError(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->ahrsPitchError:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputahrsRollError(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->ahrsRollError:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasSend(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->hasSend:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->isFixed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnaviHeading(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->naviHeading:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnaviPitch(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->naviPitch:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnaviRoll(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->naviRoll:D

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustNsvHeight(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->adjustNsvHeight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshData(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->refreshData(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshInsAngleViews(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->refreshInsAngleViews()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshInsState(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->refreshInsState(Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldDisplayMessage(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->shouldDisplayMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->historyList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private adjustNsvHeight()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rltBest:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 474
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rltBest:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->lltInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_2

    goto :goto_0

    .line 480
    :cond_2
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_3

    .line 481
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 482
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private formatFixed(DI)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 415
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 419
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "f"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {v1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 416
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initLiveData()V
    .locals 3

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeInsNavi()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeInsAhrs()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeSensorInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeGGA()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeBestpos()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeGst()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeGpdop()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeDebugdata()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 10

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->btnFixed:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->btnClear:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$2;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->btnHistory:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$3;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->btnSend:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$4;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->btnSend:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveIns:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$6;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveBestpos:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$7;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveGst:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$9;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 281
    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->logAdapter:Lcom/qianhe/yct/activity/debug/DebugAdapter;

    .line 282
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveIns:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveBestpos:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveGst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    const-string v2, "$INS.NAVI,"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    const-string v2, "#BESTPOSA,"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    const-string v2, "$GPSNR,"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    const-string v2, "$GPGST,"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/DebugLogCache;->setFilter(Ljava/util/List;)V

    .line 294
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->refreshInsAngleViews()V

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvExtRoll:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->roll_angle:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    aput-object v6, v7, v1

    const-string v2, "%s\uff1a%s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvExtPitch:Landroid/widget/TextView;

    sget v6, Lcom/qianhe/yct/R$string;->pitch_angle:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v8

    aput-object v7, v9, v1

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvExtHeading:Landroid/widget/TextView;

    sget v6, Lcom/qianhe/yct/R$string;->heading_angle:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v8

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshData(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    iget v2, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    packed-switch v2, :pswitch_data_0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/qianhe/yct/R$string;->unknown_solution:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 517
    :pswitch_0
    sget v2, Lcom/qianhe/yct/R$string;->sbas_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 514
    :pswitch_1
    sget v2, Lcom/qianhe/yct/R$string;->UWL:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 511
    :pswitch_2
    sget v2, Lcom/qianhe/yct/R$string;->base_fixed:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 508
    :pswitch_3
    sget v2, Lcom/qianhe/yct/R$string;->calcul_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 505
    :pswitch_4
    sget v2, Lcom/qianhe/yct/R$string;->float_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 502
    :pswitch_5
    sget v2, Lcom/qianhe/yct/R$string;->fixed_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 499
    :pswitch_6
    sget v2, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 496
    :pswitch_7
    sget v2, Lcom/qianhe/yct/R$string;->diff_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 493
    :pswitch_8
    sget v2, Lcom/qianhe/yct/R$string;->singlepoint_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 490
    :pswitch_9
    sget v2, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvQuality:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvQuality:Landroid/widget/TextView;

    iget v3, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v4, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 524
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvUTC:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->utc_time:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->utc:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/TimeConverter;->formatUTCTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object p1, v4, v0

    const-string p1, "%s\uff1a%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method private refreshInsAngleViews()V
    .locals 10

    .line 408
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsRoll:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->roll_angle:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->naviRoll:D

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v2

    iget-wide v5, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->ahrsRollError:D

    invoke-direct {p0, v5, v6, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    aput-object v3, v6, v4

    const-string v2, "%s\uff1a%s|%s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsPitch:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->pitch_angle:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v8, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->naviPitch:D

    invoke-direct {p0, v8, v9, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->ahrsPitchError:D

    invoke-direct {p0, v8, v9, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v7

    aput-object v6, v9, v1

    aput-object v8, v9, v4

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsHeading:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->heading_angle:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v8, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->naviHeading:D

    invoke-direct {p0, v8, v9, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->ahrsHeadingError:D

    invoke-direct {p0, v8, v9, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->formatFixed(DI)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    aput-object v6, v5, v1

    aput-object v8, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshInsState(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 4

    .line 425
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 427
    iget v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 429
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->lost_star:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 430
    :cond_1
    iget v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 432
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->ins_invalid:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 433
    :cond_2
    iget v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 435
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->swing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 436
    :cond_3
    iget v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 438
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 439
    :cond_4
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->ins_ok:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 446
    :cond_5
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 448
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->arm_vertical:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 451
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->arm_tilt:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 454
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private shouldDisplayMessage(Ljava/lang/String;)Z
    .locals 2

    .line 462
    const-string v0, "$INS.NAVI,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 463
    :cond_0
    const-string v0, "#BESTPOSA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 464
    :cond_1
    const-string v0, "$GPSNR,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 465
    :cond_2
    const-string v0, "$GPGST,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->historyList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/FileUtil;->readOrders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->historyList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 72
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initLiveData()V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    const-string v0, "command_list"

    invoke-virtual {p1, v0, p0, p2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    const-string v0, "delete"

    invoke-virtual {p1, v0, p0, p2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    if-eqz p3, :cond_3

    .line 93
    const-string p1, "order"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    const-string p2, "hasSend"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 96
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->logAdapter:Lcom/qianhe/yct/activity/debug/DebugAdapter;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->setFilter(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string p1, "filterList"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object p2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/DebugLogCache;->setFilter(Ljava/util/List;)V

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    const-string p2, "saveSel"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveIns:Landroid/widget/TextView;

    const-string p2, "insSel"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveBestpos:Landroid/widget/TextView;

    const-string p2, "bestPosSel"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    const-string/jumbo p2, "snrSel"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveGst:Landroid/widget/TextView;

    const-string p2, "gstSel"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/qianhe/yct/R$string;->stop_save:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/qianhe/yct/R$string;->start_save:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->lltInfo:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/qianhe/yct/fragment/DebugLogviewFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 114
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->edtOrder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "hasSend"

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->hasSend:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-string v0, "filterList"

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->filterList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "saveSel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveIns:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "insSel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveBestpos:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "bestPosSel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "snrSel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveGst:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "gstSel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "isFixed"

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->isFixed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
