.class Lcom/qianhe/yct/dialog/CalibrateDialogFragment$2;
.super Ljava/lang/Object;
.source "CalibrateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;Z)V

    .line 165
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
