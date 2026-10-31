.class Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$2;
.super Ljava/lang/Object;
.source "DebugUpgradefmwActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;

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
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;

    iget-object v2, v2, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    const-class v3, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
