.class Lcom/qianhe/yct/activity/line/LineWorkActivity$9;
.super Ljava/lang/Object;
.source "LineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
