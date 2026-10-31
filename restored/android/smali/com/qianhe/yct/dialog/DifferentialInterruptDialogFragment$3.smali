.class Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$3;
.super Ljava/lang/Object;
.source "DifferentialInterruptDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;Z)V

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
