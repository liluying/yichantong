.class Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;
.super Ljava/lang/Object;
.source "UpgradeingDialogManager.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


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

.field final synthetic val$listener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/UpgradeingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    iput-object p2, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;->val$listener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {v0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->-$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {v0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->-$$Nest$fgetisPendingDismiss(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;->this$0:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {v0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->-$$Nest$fgetisPendingDismiss(Lcom/qianhe/yct/utils/UpgradeingDialogManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/UpgradeingDialogManager$1;->val$listener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;->onClose(I)V

    :cond_1
    return-void
.end method
