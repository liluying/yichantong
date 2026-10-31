.class Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$8;
.super Ljava/lang/Object;
.source "ZhaoPingWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
