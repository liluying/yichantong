.class public Lcom/qianhe/yct/utils/TipsDialogManager;
.super Ljava/lang/Object;
.source "TipsDialogManager.java"


# instance fields
.field private closeCallbackConsumed:Z

.field private currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

.field private currentRequestKey:Ljava/lang/String;

.field private currentUserListener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private volatile isShowing:Z

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$LtnmCC1OkhLtEe6yi12W0sEa7DU(Lcom/qianhe/yct/utils/TipsDialogManager;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isBluetoothPairingDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->notifyUserClose(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const-string v1, "TipsDialogFragment"

    if-nez v0, :cond_1

    .line 127
    :try_start_1
    iget-object v2, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 128
    instance-of v3, v2, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v3, :cond_1

    .line 129
    move-object v0, v2

    check-cast v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    :cond_1
    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->resetDialogState()V

    return-void

    .line 144
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force close failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-direct {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->resetDialogState()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->resetDialogState()V

    .line 147
    throw v0
.end method

.method public static synthetic $r8$lambda$f-WSnnZ7SdRp_cVUZI9AKllKM1U(Lcom/qianhe/yct/utils/TipsDialogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/utils/TipsDialogManager;->createNewDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUserClose(Lcom/qianhe/yct/utils/TipsDialogManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/TipsDialogManager;->notifyUserClose(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/TipsDialogManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->resetDialogState()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private createNewDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    .line 162
    iput-object p6, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentRequestKey:Ljava/lang/String;

    .line 163
    iput-object p5, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentUserListener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->closeCallbackConsumed:Z

    .line 166
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "btnStr"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "cancelStr"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "hintTip"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "requestKey"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 175
    iget-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    new-instance p2, Lcom/qianhe/yct/utils/TipsDialogManager$1;

    invoke-direct {p2, p0, p5}, Lcom/qianhe/yct/utils/TipsDialogManager$1;-><init>(Lcom/qianhe/yct/utils/TipsDialogManager;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 190
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "TipsDialogFragment"

    if-eqz p1, :cond_4

    .line 191
    :try_start_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p3, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 193
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    iget-object p3, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 197
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Show dialog failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->resetDialogState()V

    return-void
.end method

.method private notifyUserClose(Z)V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->closeCallbackConsumed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentUserListener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 218
    iput-boolean v1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->closeCallbackConsumed:Z

    .line 220
    :try_start_0
    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;->onClose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tips dialog close callback failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetDialogState()V
    .locals 2

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    .line 209
    iput-object v1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentRequestKey:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentUserListener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    .line 211
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->closeCallbackConsumed:Z

    return-void
.end method


# virtual methods
.method public dismissImmediately()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    new-instance v0, Lcom/qianhe/yct/utils/TipsDialogManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/TipsDialogManager$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/utils/TipsDialogManager;)V

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isBluetoothPairingDialogShowing()Z
    .locals 5

    .line 253
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentRequestKey:Ljava/lang/String;

    const-string v2, "bluetooth_pairing"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-nez v0, :cond_2

    .line 261
    iget-object v3, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v4, "TipsDialogFragment"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 262
    instance-of v4, v3, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v4, :cond_2

    .line 263
    move-object v0, v3

    check-cast v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    :cond_2
    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestKey"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public isPermissionDialogShowing()Z
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-nez v0, :cond_1

    .line 240
    iget-object v2, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v3, "TipsDialogFragment"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 241
    instance-of v3, v2, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v3, :cond_1

    .line 242
    move-object v0, v2

    check-cast v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    :cond_1
    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestKey"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "permission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public isShowing()Z
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "TipsDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

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

.method public show(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
    .locals 9

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo p1, "tip is empty, ignore show"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isPermissionDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "permission"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string p1, "Permission dialog is showing, ignore new tips dialog"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    const-string v1, "bluetooth_pairing"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isBluetoothPairingDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    const-string v0, "Replace bluetooth pairing tip with new tips dialog"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismiss pairing tip failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 86
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->resetDialogState()V

    .line 88
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isBluetoothPairingDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, p0

    goto :goto_2

    .line 92
    :cond_4
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager;->currentDialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v0, :cond_5

    .line 94
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous dialog dismiss failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 100
    :cond_5
    :goto_1
    new-instance v1, Lcom/qianhe/yct/utils/TipsDialogManager$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/utils/TipsDialogManager$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/TipsDialogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, v2, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_6

    .line 102
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 104
    :cond_6
    iget-object p1, v2, Lcom/qianhe/yct/utils/TipsDialogManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method
