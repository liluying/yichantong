.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

.field final synthetic val$event:Lcom/qianhe/ntripclientlib/bean/AuthResult;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->val$event:Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 912
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 914
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->val$event:Lcom/qianhe/ntripclientlib/bean/AuthResult;

    iget-boolean v0, v0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->isInit:Z

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->auth_successful:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 916
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->access$300(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "obtain_difference_type"

    const-string v2, "bluetooth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 917
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$21;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
