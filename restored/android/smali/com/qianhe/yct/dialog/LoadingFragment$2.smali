.class Lcom/qianhe/yct/dialog/LoadingFragment$2;
.super Ljava/lang/Object;
.source "LoadingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/LoadingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/LoadingFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/LoadingFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment$2;->this$0:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment$2;->this$0:Lcom/qianhe/yct/dialog/LoadingFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/LoadingFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/LoadingFragment;Z)V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment$2;->this$0:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->-$$Nest$mnotifyCloseOnce(Lcom/qianhe/yct/dialog/LoadingFragment;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment$2;->this$0:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
