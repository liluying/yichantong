.class Lcom/qianhe/yct/dialog/ChooseListDialogFragment$2;
.super Ljava/lang/Object;
.source "ChooseListDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
