.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11$1;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->onClose(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetmodel(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "SET,RESTART"

    invoke-direct {v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
