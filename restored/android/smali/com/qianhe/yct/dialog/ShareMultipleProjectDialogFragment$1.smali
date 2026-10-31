.class Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$1;
.super Ljava/lang/Object;
.source "ShareMultipleProjectDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->-$$Nest$fputmContent(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->-$$Nest$mupdateFilterList(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
