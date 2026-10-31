.class Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;
.super Ljava/lang/Object;
.source "WaGouWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
