.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;
.super Ljava/lang/Object;
.source "ChooseSensorDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
