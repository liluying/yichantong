.class Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;
.super Ljava/lang/Object;
.source "ShareWayDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ShareWayDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ShareWayDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ShareWayDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ShareWayDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ShareWayDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;->onShare()V

    :cond_0
    return-void
.end method
