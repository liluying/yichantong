.class Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$8;
.super Ljava/lang/Object;
.source "OnePointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
