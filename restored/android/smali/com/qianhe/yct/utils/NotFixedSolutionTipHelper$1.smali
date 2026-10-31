.class Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;
.super Ljava/lang/Object;
.source "NotFixedSolutionTipHelper.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->show(Lcom/qianhe/baselib/bean/GGAEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;->this$0:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;->this$0:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->-$$Nest$fputdismissedManually(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;Z)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;->this$0:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->-$$Nest$fputdialog(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;->this$0:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->-$$Nest$fputdismissedManually(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;Z)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;->this$0:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->-$$Nest$fputdialog(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    return-void
.end method
