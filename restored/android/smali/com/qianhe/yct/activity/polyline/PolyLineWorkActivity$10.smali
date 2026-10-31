.class Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;
.super Ljava/lang/Object;
.source "PolyLineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
