.class Lcom/qianhe/yct/dialog/TipsDialogFragment$1;
.super Ljava/lang/Object;
.source "TipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/TipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 129
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->access$000(Lcom/qianhe/yct/dialog/TipsDialogFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "calibration_failed"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->-$$Nest$mshouldPerformCloseOnBack(Lcom/qianhe/yct/dialog/TipsDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->-$$Nest$mperformClose(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    return p2

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
