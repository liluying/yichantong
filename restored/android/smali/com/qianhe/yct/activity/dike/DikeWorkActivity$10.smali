.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
