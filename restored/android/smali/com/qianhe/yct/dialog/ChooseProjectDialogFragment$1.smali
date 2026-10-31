.class Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$1;
.super Ljava/lang/Object;
.source "ChooseProjectDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
