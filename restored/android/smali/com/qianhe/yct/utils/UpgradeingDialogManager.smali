.class public Lcom/qianhe/yct/utils/UpgradeingDialogManager;
.super Ljava/lang/Object;
.source "UpgradeingDialogManager.java"


# instance fields
.field private currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$1TZYvg9ztfrjr42YR1uv-CfqZDw(Lcom/qianhe/yct/utils/UpgradeingDialogManager;Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->show(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GClbxfjyzibRlNjkhJGtUJMcTUc(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismiss failed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->forceCloseDialog()V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->forceCloseDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDialog(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Lcom/qianhe/yct/dialog/LoadingFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPendingDismiss(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainHandler(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->resetDialogState()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->mainHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private createNewDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 2

    .line 128
    new-instance v0, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    iget-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    new-instance v0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;-><init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p2, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;-><init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    iget-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "LoadingFragment"

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show failed -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->resetDialogState()V

    return-void
.end method

.method private forceCloseDialog()V
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "LoadingFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    instance-of v1, v0, Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v1, :cond_2

    .line 109
    check-cast v0, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force close failed - > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 121
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->resetDialogState()V

    return-void
.end method

.method private resetDialogState()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private tryUpdateExistingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Z
    .locals 0

    .line 169
    iget-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p2

    if-nez p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/utils/UpgradeingDialogManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dismissImmediately()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->forceCloseDialog()V

    return-void
.end method

.method public show(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 8

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    iget-object v2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/utils/UpgradeingDialogManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager;Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 52
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->tryUpdateExistingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->createNewDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_2
    :goto_0
    return-void
.end method
