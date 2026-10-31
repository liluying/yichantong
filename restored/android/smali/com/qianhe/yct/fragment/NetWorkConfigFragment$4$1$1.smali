.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;->this$2:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;->this$2:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;->this$2:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->wifi_password_format_error:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;->this$2:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;

    iget-object v2, v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v2, v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->access$000(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method
