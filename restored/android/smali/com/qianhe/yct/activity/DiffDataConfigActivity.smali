.class public Lcom/qianhe/yct/activity/DiffDataConfigActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "DiffDataConfigActivity.java"


# instance fields
.field private applyingToBase:Z

.field private binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

.field private channelArray:[Ljava/lang/String;

.field private corsListDb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

.field private isAdd:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mSave:Z

.field private ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

.field private final onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

.field private peerProtocolArray:[Ljava/lang/String;

.field private powerArray:[Ljava/lang/String;

.field private protocolArray:[Ljava/lang/String;

.field private radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private totalBytes:J


# direct methods
.method public static synthetic $r8$lambda$5OBne2J06Y2oS2QeYgmDA27zPQE(Lcom/qianhe/yct/activity/DiffDataConfigActivity;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 760
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyCustomCorsConfig(Ljava/lang/String;)V

    return-void

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    .line 762
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->channelArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitCorsBean(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/CorsEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAdd(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGGA(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mSave:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonCloseListener(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpowerArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->powerArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprotocolArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->protocolArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAdd(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mSave:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyCustomCorsUiShell(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyCustomCorsUiShell()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyLocalCorsSelection(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyLocalCorsSelection(Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRadioConfigToBase(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyRadioConfigToBase()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRadioDiffSource(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyRadioDiffSource()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyXFixedDiffSource(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyXFixedDiffSource()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSelectableProtocolArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->getSelectableProtocolArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misProviderNameMissing(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isProviderNameMissing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misXFixedProvider(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/bean/CorsEntity;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isXFixedProvider(Lcom/qianhe/baselib/bean/CorsEntity;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetCustomCorsForm(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->resetCustomCorsForm(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveDiffSourceCurrentIndex(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/util/ArrayList;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->resolveDiffSourceCurrentIndex(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msaveCorsToDatabase(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/base/BaseConfig;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->saveCorsToDatabase(Lcom/qianhe/baselib/base/BaseConfig;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRadioConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->sendRadioConfig(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowChooseCorsDialog(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->showChooseCorsDialog(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCorsProviderInputDialog(Lcom/qianhe/yct/activity/DiffDataConfigActivity;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->showCorsProviderInputDialog(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateChoosePortVisibility(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->updateChoosePortVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$1;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private applyCustomCorsConfig(Ljava/lang/String;)V
    .locals 1

    .line 770
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->resetCustomCorsForm(Ljava/lang/String;)V

    .line 771
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private applyCustomCorsUiShell()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsConfig:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltReceptionData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-eqz v0, :cond_0

    .line 668
    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    :cond_0
    return-void
.end method

.method private applyDiffSourceByName(Ljava/lang/String;)V
    .locals 1

    .line 584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    sget v0, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyCustomCorsUiShell()V

    .line 588
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyOverseasXfixProviderIfNeeded()V

    return-void

    .line 589
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyXFixedDiffSource()V

    return-void

    .line 591
    :cond_2
    sget v0, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 592
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyRadioDiffSource()V

    :cond_3
    :goto_0
    return-void
.end method

.method private applyLocalCorsSelection(Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 4

    .line 798
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {v1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 802
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 804
    new-instance v1, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    .line 805
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 806
    iget-object v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 807
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    iput v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 808
    iget-object v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 809
    iget v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 810
    iget-object v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 811
    iget-object v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 812
    iget-object v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    .line 814
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setHost(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setPort(I)V

    .line 821
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setUsername(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setPassword(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setMountPoint(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->customize:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 830
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CORS\u6570\u636e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private applyOverseasXfixProviderIfNeeded()V
    .locals 6

    .line 597
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isInChinaMainlandByStoredCoords()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->shouldSwitchToOverseasXfix()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 598
    const-string v1, "XFIX"

    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/utils/CorsPortUtils;->findPresetByName(Landroid/content/Context;ZLjava/lang/String;)Lcom/qianhe/baselib/bean/CorsEntity;

    move-result-object v2

    .line 599
    const-string v3, ""

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host_xfix:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 600
    iget v5, v2, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    if-eqz v5, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    if-eqz v5, :cond_4

    iget v0, v5, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    .line 601
    :cond_4
    :goto_1
    invoke-direct {p0, v4}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->findLocalCorsByHost(Ljava/lang/String;)Lcom/qianhe/baselib/bean/CorsEntity;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 603
    invoke-direct {p0, v5}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyLocalCorsSelection(Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void

    :cond_5
    const/4 v5, 0x1

    .line 606
    iput-boolean v5, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    if-eqz v2, :cond_6

    .line 607
    iget-object v5, v2, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v1, v2, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 608
    :cond_6
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-nez v1, :cond_8

    new-instance v1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {v1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    .line 615
    :cond_8
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 616
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v1, v4}, Lcom/qianhe/baselib/base/BaseConfig;->setHost(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/base/BaseConfig;->setPort(I)V

    .line 618
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v0, v3}, Lcom/qianhe/baselib/base/BaseConfig;->setMountPoint(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v0, v3}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setUsername(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v0, v3}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setPassword(Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->updateChoosePortVisibility()V

    :cond_9
    :goto_3
    return-void
.end method

.method private applyRadioConfigToBase()V
    .locals 3

    .line 1132
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    sget v0, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/DiffDataConfigActivity$25;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$25;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1146
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyingToBase:Z

    .line 1147
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 1148
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->sendRadioConfig(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method private applyRadioDiffSource()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsConfig:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltReceptionData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 841
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,RADIO_CHANNEL"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private applyXFixedDiffSource()V
    .locals 5

    .line 646
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsConfig:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltReceptionData:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    .line 650
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    sget-object v3, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v3

    iput v3, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 652
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 653
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isInChinaMainlandByStoredCoords()Z

    move-result v0

    .line 654
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isWeChatInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private findCorsMatchingAppConfig(Ljava/util/List;)Lcom/qianhe/baselib/bean/CorsEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;)",
            "Lcom/qianhe/baselib/bean/CorsEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 938
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    if-nez v1, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 942
    iget-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    if-ne v2, v4, :cond_1

    iget-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private findLocalCorsByHost(Ljava/lang/String;)Lcom/qianhe/baselib/bean/CorsEntity;
    .locals 4

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 640
    iget-object v3, v2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getSelectableProtocolArray()[Ljava/lang/String;
    .locals 3

    .line 1071
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->protocolArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->peerProtocolArray:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isBothRadioDevicesConnected()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->getSelectableProtocols([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isInChinaMainlandByStoredCoords()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "SUPPORT_NTRIP"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5SupportRadioains()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_2
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->resolveInitialDiffSource(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyDiffSourceByName(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v4, :cond_4

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_arrow_bottom_black:I

    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v3, v3, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$5;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltChooseCors:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$6;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->fltChoosePort:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$8;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->fltMountpoint:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$11;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 448
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$12;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$13;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    const-string v2, "DIFF_SOURCE"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 481
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$15;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$15;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    const-string v2, "radio_channel"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->RADIO_PROTOCOL:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/activity/DiffDataConfigActivity$16;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$16;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$17;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$17;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    const-string v2, "radio_power"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$18;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$18;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    const-string v2, "appliedtobaseradio"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private isBothRadioDevicesConnected()Z
    .locals 2

    .line 1066
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 1067
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInChinaMainlandByStoredCoords()Z
    .locals 4

    .line 853
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "current_coords"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 857
    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0

    return v0

    .line 859
    :cond_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH_CN(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isProviderNameMissing()Z
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->customize:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isXFixedProvider(Lcom/qianhe/baselib/bean/CorsEntity;)Z
    .locals 2

    .line 744
    iget-object v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    const-string/jumbo v0, "\u95ea\u7535\u56fa\u5b9a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private markRadioDiffSourceSaved()V
    .locals 3

    .line 1127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "diffClientDisconnect"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "obtain_difference_type"

    const-string v2, "radio"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NONE:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private requestRadioProtocolLists()V
    .locals 4

    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->peerProtocolArray:[Ljava/lang/String;

    .line 1059
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,RADIO_PROTOCOL_LIST"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1060
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isBothRadioDevicesConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private resetCustomCorsForm(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    .line 779
    new-instance v0, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    .line 780
    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 781
    new-instance v0, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    .line 782
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 783
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->updateChoosePortVisibility()V

    return-void
.end method

.method private resolveDiffSourceCurrentIndex(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    return v1

    .line 554
    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->cors:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/qianhe/yct/R$string;->custom_cors:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->x_fixed:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private resolveInitialDiffSource(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 561
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 565
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "obtain_difference_type"

    const-string v3, "bluetooth"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v1, "radio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    sget p1, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    sget p1, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 574
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    sget p1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 577
    :cond_4
    sget v0, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    sget p1, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 580
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 562
    :cond_6
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveCorsToDatabase(Lcom/qianhe/baselib/base/BaseConfig;Z)V
    .locals 7

    .line 950
    iget v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isProviderNameMissing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 952
    :cond_1
    new-instance v0, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    .line 953
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 954
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 955
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 956
    iget v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    iput v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 957
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 958
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 959
    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    .line 961
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORSByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 962
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 963
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->insertCORS(Lcom/qianhe/baselib/bean/CorsEntity;Z)J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-lez p1, :cond_5

    .line 964
    const-string p1, "cors\u6570\u636e\u63d2\u5165\u6210\u529f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 967
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 968
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/CorsEntity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_4

    .line 969
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->updateCORS(Lcom/qianhe/baselib/bean/CorsEntity;Z)I

    move-result v1

    if-lez v1, :cond_4

    .line 970
    const-string v1, "cors\u6570\u636e\u66f4\u65b0\u6210\u529f"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 972
    :cond_4
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    :cond_5
    :goto_0
    cmp-long p1, v5, v2

    if-lez p1, :cond_7

    .line 975
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    if-eqz p2, :cond_6

    .line 977
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isAdd:Z

    .line 978
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iput-wide v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 979
    iget-object p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 980
    iget p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    iput p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 981
    iget-object p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 982
    iget p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 983
    iget-object p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 984
    iget-object p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 985
    iget-object p2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    :cond_6
    :goto_1
    return-void

    .line 988
    :cond_7
    sget p1, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 989
    const-string p1, "cors\u6570\u636e\u4fdd\u5b58\u5931\u8d25"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private sendRadioConfig(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 6

    .line 1153
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->channelArray:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/utils/RadioChannelUtils;->getChannelIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1155
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->protocolArray:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1156
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1157
    iget-object v5, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1158
    invoke-static {v4}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->getProtocolNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1163
    :cond_1
    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->high:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/qianhe/yct/enums/RadioPowerEnum;->HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->middle:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/qianhe/yct/enums/RadioPowerEnum;->MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/qianhe/yct/enums/RadioPowerEnum;->LOW:Lcom/qianhe/yct/enums/RadioPowerEnum;

    goto :goto_2

    .line 1164
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET,RADIO,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "SET,DATALINK,RADIO"

    invoke-direct {v2, p1, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1166
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;

    invoke-direct {v2, p0, p1, v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldSwitchToOverseasXfix()Z
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 626
    :cond_0
    iget v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 628
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "rss.rtkiot.cn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 629
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    if-eqz v2, :cond_4

    .line 630
    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host_xfix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 631
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 633
    :cond_4
    const-string v2, "XFIX"

    invoke-static {p0, v1, v2}, Lcom/qianhe/yct/utils/CorsPortUtils;->findPresetByName(Landroid/content/Context;ZLjava/lang/String;)Lcom/qianhe/baselib/bean/CorsEntity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 634
    iget-object v2, v2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v1
.end method

.method private showChooseCorsDialog(Z)V
    .locals 7

    .line 673
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;-><init>()V

    .line 674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 675
    sget v2, Lcom/qianhe/yct/R$string;->choose_provider:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v2, "gga"

    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 677
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 678
    const-string v4, "currentUsedCorsId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->isProviderNameMissing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 682
    const-string v3, "currentUsedCorsName"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 685
    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;)V

    .line 740
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "ChooseCorsDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showCorsProviderInputDialog(JZ)V
    .locals 6

    .line 748
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsProviderInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 752
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;-><init>()V

    .line 753
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 755
    const-string v3, "excludeCorsId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 757
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 758
    new-instance p1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;)V

    .line 766
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startTimer()V
    .locals 5

    .line 994
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 995
    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private updateChoosePortVisibility()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->fltChoosePort:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CorsPortUtils;->hasPresetPort(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public formatLength(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x100000

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v2

    .line 1181
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.3f MB"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x400

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v2

    .line 1185
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.3f KB"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1187
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 6

    .line 1193
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_3

    .line 1194
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 1195
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    cmpl-double p1, v4, v2

    if-eqz p1, :cond_3

    .line 1197
    invoke-static {v0, v1, v4, v5}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result p1

    .line 1198
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "obtain_difference_type"

    const-string v2, "bluetooth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 1199
    const-string p1, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1200
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isWeChatInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1203
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 7

    .line 541
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsAccountExpire:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "corsAccountExpireEpoch"

    const-wide/16 v5, -0x2

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->getExpireDate(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->diff_config:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 870
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    .line 110
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 112
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    .line 115
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance p1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {p1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/base/BaseConfig;->setHost(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/base/BaseConfig;->setPort(I)V

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/base/BaseConfig;->setMountPoint(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setUsername(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setPassword(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 126
    :cond_1
    new-instance p1, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    iput v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 128
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v5, v2, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    iput-object v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 129
    iget v5, v2, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    iput v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 130
    iget-object v5, v2, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    iput-object v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 131
    iget-object v5, v2, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    iput-object v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 132
    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    iput-object v2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->findCorsMatchingAppConfig(Ljava/util/List;)Lcom/qianhe/baselib/bean/CorsEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 137
    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    goto :goto_1

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    iput-wide v5, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->corsListDb:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 144
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "current_coords"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v5, "obtain_difference_type"

    const-string v6, "bluetooth"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "XFIX"

    if-nez v5, :cond_a

    .line 147
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 148
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 150
    invoke-static {v9, v10, v7, v8}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 151
    const-string p1, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 152
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v5

    if-eq v0, v5, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isWeChatInstalled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    goto :goto_4

    :cond_6
    sget v0, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 158
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 164
    :cond_a
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH_CN(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 165
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v5

    if-eq v0, v5, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    const/16 v0, 0x8

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isWeChatInstalled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    const/16 v3, 0x8

    :goto_6
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initCorsBean:Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    goto :goto_7

    :cond_d
    sget v0, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_e
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 171
    :cond_f
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-eqz v0, :cond_10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_8
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->ntripClientConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->updateChoosePortVisibility()V

    .line 181
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1222
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1224
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->stopTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/OrderBean;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1014
    iget-object p1, p1, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    if-eqz p1, :cond_0

    .line 1015
    iget-wide v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->totalBytes:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->totalBytes:J

    .line 1016
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvLength:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->formatLength(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 897
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mSave:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 898
    :cond_0
    iget v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 899
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->startTimer()V

    .line 900
    sget p1, Lcom/qianhe/yct/R$string;->connecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 902
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->stopTimer()V

    .line 903
    sget p1, Lcom/qianhe/yct/R$string;->authenticating:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 905
    iget-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-direct {p0, v0, v2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->saveCorsToDatabase(Lcom/qianhe/baselib/base/BaseConfig;Z)V

    .line 906
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    iget-object v2, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/manage/AppConfigManager;->setCors(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 907
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mSave:Z

    .line 909
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/ntripclientlib/bean/AuthResult;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 923
    sget p1, Lcom/qianhe/yct/R$string;->authenticating:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    :cond_4
    if-nez v0, :cond_7

    .line 925
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->mSave:Z

    .line 926
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvLength:Landroid/widget/TextView;

    const-string v1, "0 bytes"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "diffClientDisconnect"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 929
    iget-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "Bad Password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 930
    sget v0, Lcom/qianhe/yct/R$string;->cors_input_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    .line 932
    :cond_5
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->cors_auth_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/event/MountPointsEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 876
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 877
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooseListDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 878
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 879
    sget v2, Lcom/qianhe/yct/R$string;->mount_point_empty:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v2, p1, Lcom/qianhe/ntripclientlib/event/MountPointsEvent;->mountPoints:Ljava/util/ArrayList;

    const-string v3, "list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 881
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 882
    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/ntripclientlib/event/MountPointsEvent;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1022
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 1023
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;->channelArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->channelArray:[Ljava/lang/String;

    .line 1024
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->requestRadioProtocolLists()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1046
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1048
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    .line 1049
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->channelNumber:I

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->channelArray:[Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/qianhe/yct/utils/RadioChannelUtils;->getChannelLabel(Landroid/content/Context;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->protocolArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->protocolNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->findProtocolNameByNumber([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->power:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/qianhe/yct/R$string;->high:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->power:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/qianhe/yct/R$string;->middle:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->low:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1039
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 1040
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;->powerArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->powerArray:[Ljava/lang/String;

    .line 1041
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,RADIO"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1029
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1030
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;->protocolArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->protocolArray:[Ljava/lang/String;

    .line 1031
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,RADIO_POWER_LIST,"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1032
    :cond_0
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 1033
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;->protocolArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->peerProtocolArray:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1076
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 1077
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1078
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1079
    invoke-direct {p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->markRadioDiffSourceSaved()V

    .line 1080
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1081
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$23;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$23;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1097
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1098
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1101
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->config_fail:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1103
    :cond_2
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyingToBase:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1104
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyingToBase:Z

    .line 1105
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1106
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CorsExpireEpochEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 533
    iget v0, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->state:I

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->expireEpoch:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const-string v5, "corsAccountExpireEpoch"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsAccountExpire:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->expireEpoch:J

    mul-long v5, v5, v3

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->getExpireDate(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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

.method protected onResume()V
    .locals 5

    .line 526
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 528
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "deviceSn"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
