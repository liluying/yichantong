.class Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;
.super Ljava/lang/Object;
.source "ChooseCorsHostDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->-$$Nest$mconfirmDeleteProvider(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void
.end method

.method public onDeleteCurrentBlocked()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->cannot_delete_current_provider:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onEdit(Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->-$$Nest$mshowEditProviderDialog(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void
.end method

.method public onPresetBlocked()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->cannot_delete_preset_provider:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->access$100(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Ljava/lang/String;)V

    return-void
.end method
