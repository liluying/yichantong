.class Lcom/qianhe/yct/utils/TipsDialogManager$1;
.super Ljava/lang/Object;
.source "TipsDialogManager.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/TipsDialogManager;->createNewDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/TipsDialogManager;

.field final synthetic val$listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/TipsDialogManager;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager$1;->this$0:Lcom/qianhe/yct/utils/TipsDialogManager;

    iput-object p2, p0, Lcom/qianhe/yct/utils/TipsDialogManager$1;->val$listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager$1;->this$0:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/TipsDialogManager;->-$$Nest$mnotifyUserClose(Lcom/qianhe/yct/utils/TipsDialogManager;Z)V

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/utils/TipsDialogManager$1;->this$0:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-static {p1}, Lcom/qianhe/yct/utils/TipsDialogManager;->-$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/TipsDialogManager;)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager$1;->val$listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;->onConfirm()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/TipsDialogManager$1;->this$0:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-static {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->-$$Nest$mresetDialogState(Lcom/qianhe/yct/utils/TipsDialogManager;)V

    return-void
.end method
