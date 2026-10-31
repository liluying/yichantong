.class Lcom/qianhe/yct/utils/LoadingDialogManager$1;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "LoadingDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/LoadingDialogManager;->createNewDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

.field final synthetic val$dialog:Lcom/qianhe/yct/dialog/LoadingFragment;

.field final synthetic val$generation:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/LoadingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    iput-object p2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->val$dialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    iput p3, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->val$generation:I

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->val$dialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 216
    iget p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->val$generation:I

    iget-object p2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-static {p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->-$$Nest$fgetshowGeneration(Lcom/qianhe/yct/utils/LoadingDialogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-static {p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->-$$Nest$fgetisPendingDismiss(Lcom/qianhe/yct/utils/LoadingDialogManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    iget-object p2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->val$dialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->-$$Nest$mdismissFragmentQuietly(Lcom/qianhe/yct/utils/LoadingDialogManager;Landroidx/fragment/app/Fragment;)V

    .line 218
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-static {p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->-$$Nest$fgetcurrentDialog(Lcom/qianhe/yct/utils/LoadingDialogManager;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->val$dialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-ne p1, p2, :cond_3

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->-$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/LoadingDialogManager;Z)V

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-static {p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->-$$Nest$mdismissOrphanByTag(Lcom/qianhe/yct/utils/LoadingDialogManager;)V

    return-void
.end method
