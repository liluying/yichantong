.class Lcom/qianhe/yct/dialog/QRPayDialogFragment$1;
.super Ljava/lang/Object;
.source "QRPayDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/QRPayDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/QRPayDialogFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/QRPayDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/QRPayDialogFragment;Z)V

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
