.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$7;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->onEventMessage(Lcom/qianhe/rtkclientlib/event/Wlan0Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->wifi_config_fail:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->access$200(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
