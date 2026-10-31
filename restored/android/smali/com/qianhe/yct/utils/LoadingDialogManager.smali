.class public Lcom/qianhe/yct/utils/LoadingDialogManager;
.super Ljava/lang/Object;
.source "LoadingDialogManager.java"


# instance fields
.field private currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mainHandler:Landroid/os/Handler;

.field private pendingDismissRunnable:Ljava/lang/Runnable;

.field private pendingShowRunnable:Ljava/lang/Runnable;

.field private final showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$ZgXQwQD2KnLs4YnknMtIxOO_cVM(Lcom/qianhe/yct/utils/LoadingDialogManager;I)V
    .locals 3

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingDismissRunnable:Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismiss failed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->forceCloseDialog(Z)V

    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->forceCloseDialog(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uuTwiYdalVVyYGCZPw_8bQkgLu4(Lcom/qianhe/yct/utils/LoadingDialogManager;ILjava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingShowRunnable:Ljava/lang/Runnable;

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/utils/LoadingDialogManager;->show(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$va7FerQFB4g8v8QCmgb-lsBBu-0(Lcom/qianhe/yct/utils/LoadingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->invalidatePendingShow()V

    .line 258
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->resetDialogState(Z)V

    if-eqz p1, :cond_1

    .line 260
    invoke-interface {p1, p2}, Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;->onClose(I)V

    :cond_1
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDialog(Lcom/qianhe/yct/utils/LoadingDialogManager;)Lcom/qianhe/yct/dialog/LoadingFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPendingDismiss(Lcom/qianhe/yct/utils/LoadingDialogManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowGeneration(Lcom/qianhe/yct/utils/LoadingDialogManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissFragmentQuietly(Lcom/qianhe/yct/utils/LoadingDialogManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissFragmentQuietly(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissOrphanByTag(Lcom/qianhe/yct/utils/LoadingDialogManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissOrphanByTag()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/LoadingDialogManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->resetDialogState(Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->mainHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private cancelPendingDismiss()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingDismissRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private cancelPendingShow()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingShowRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private createNewDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 201
    new-instance v1, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    .line 202
    iput-object v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 203
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    const-string/jumbo v3, "tip"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string p1, "requestKey"

    const-string v3, "allowRotate"

    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 207
    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->wrapCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p2, Lcom/qianhe/yct/utils/LoadingDialogManager$1;

    invoke-direct {p2, p0, v1, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager$1;-><init>(Lcom/qianhe/yct/utils/LoadingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 227
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "LoadingFragment"

    if-nez p1, :cond_0

    .line 228
    :try_start_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/DialogFragment;->showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 233
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show failed -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 235
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->resetDialogState(Z)V

    return-void
.end method

.method private dismissFragmentQuietly(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 169
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-nez v0, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 181
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dismiss fragment failed -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private dismissOrphanByTag()V
    .locals 3

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "LoadingFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissFragmentQuietly(Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismiss orphan loading dialog failed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private forceCloseDialog(Z)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 158
    :try_start_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissFragmentQuietly(Landroidx/fragment/app/Fragment;)V

    .line 159
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissOrphanByTag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->resetDialogState(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force close failed - > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->resetDialogState(Z)V

    return-void

    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->resetDialogState(Z)V

    .line 165
    throw v0
.end method

.method private invalidatePendingShow()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 135
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->cancelPendingShow()V

    return-void
.end method

.method private resetDialogState(Z)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private scheduleDelayedShow(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->cancelPendingShow()V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 123
    new-instance v1, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/utils/LoadingDialogManager;ILjava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    iput-object v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingShowRunnable:Ljava/lang/Runnable;

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryUpdateExistingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 246
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->wrapCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private wrapCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;
    .locals 1

    .line 254
    new-instance v0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/LoadingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 78
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->invalidatePendingShow()V

    .line 79
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->cancelPendingDismiss()V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->showGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 90
    new-instance v1, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/utils/LoadingDialogManager;I)V

    iput-object v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->pendingDismissRunnable:Ljava/lang/Runnable;

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 84
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissOrphanByTag()V

    return-void
.end method

.method public dismissImmediately()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->invalidatePendingShow()V

    .line 116
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->cancelPendingDismiss()V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->forceCloseDialog(Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public show(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 8

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isPendingDismiss:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->cancelPendingDismiss()V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->tryUpdateExistingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->cancelPendingShow()V

    return-void

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->scheduleDelayedShow(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->createNewDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager;->lastShowTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_2
    return-void
.end method
