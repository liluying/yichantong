.class Lcom/qianhe/yct/base/BaseActivity$20;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/CorsExpireEpochEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 2232
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$20;->this$0:Lcom/qianhe/yct/base/BaseActivity;

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

    .line 2235
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$20;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$20;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    const-class v3, Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
