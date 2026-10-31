.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 998
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "diffClientDisconnect"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 999
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    .line 1000
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1001
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->cors_connect_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
