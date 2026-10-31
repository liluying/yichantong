.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startGnssUpgrade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateFailed(ILjava/lang/String;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgethandler(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateProgress(II)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgethandler(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$3;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateSuccessed()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgethandler(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
