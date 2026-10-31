.class Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "UpgradeingDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/UpgradeingDialogManager;->createNewDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;


# direct methods
.method public static synthetic $r8$lambda$KAkA39IchZIfn3aRpZ6mygAQJF8(Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    .line 150
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->dismiss()V

    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {v0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->-$$Nest$fgetcurrentDialog(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 149
    iget-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->-$$Nest$fgetisPendingDismiss(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->-$$Nest$fgetmainHandler(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager$2;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    :cond_1
    return-void
.end method
