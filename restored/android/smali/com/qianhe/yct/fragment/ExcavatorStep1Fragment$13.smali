.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showCheckInsDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

.field final synthetic val$fromContinue:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;->val$fromContinue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fputcheckInsDismissedManually(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    .line 424
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fputcheckInsDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/dialog/CheckInsDialogFragment;)V

    .line 425
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;->val$fromContinue:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    :cond_0
    return-void
.end method
