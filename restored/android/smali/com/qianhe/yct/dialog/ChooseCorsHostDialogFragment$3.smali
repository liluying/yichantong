.class Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;
.super Ljava/lang/Object;
.source "ChooseCorsHostDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->confirmDeleteProvider(Lcom/qianhe/baselib/bean/CorsEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

.field final synthetic val$bean:Lcom/qianhe/baselib/bean/CorsEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;->val$bean:Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;->val$bean:Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteCORS(Lcom/qianhe/baselib/bean/CorsEntity;)J

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->-$$Nest$mrefreshCorsList(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    return-void
.end method
