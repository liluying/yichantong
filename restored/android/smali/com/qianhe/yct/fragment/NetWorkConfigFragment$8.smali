.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileNetResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

.field final synthetic val$event:Lcom/qianhe/rtkclientlib/event/MobileNetResponse;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Lcom/qianhe/rtkclientlib/event/MobileNetResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->val$event:Lcom/qianhe/rtkclientlib/event/MobileNetResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->val$event:Lcom/qianhe/rtkclientlib/event/MobileNetResponse;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/MobileNetResponse;->result:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->access$300(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->mobile_network_config_fail:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->access$400(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method
