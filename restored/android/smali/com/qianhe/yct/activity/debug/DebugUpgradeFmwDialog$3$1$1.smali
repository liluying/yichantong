.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;->this$2:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;->this$2:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;->this$2:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;

    iget-object v1, v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v1, v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetmodel(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;->this$2:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v2, v2, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v2}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    const-string v3, "SET,RESTART"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;->this$2:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method
