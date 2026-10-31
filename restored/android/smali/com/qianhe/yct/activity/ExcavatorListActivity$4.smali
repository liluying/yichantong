.class Lcom/qianhe/yct/activity/ExcavatorListActivity$4;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity;->onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$4;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$4;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$4;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->config_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$4;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method
