.class Lcom/qianhe/yct/base/BaseActivity$15;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->promptOpenSharedProject(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1208
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$15;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$15;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1222
    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$sfputsShareCodePrompting(Z)V

    .line 1223
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$15;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->clearPendingClipShareCode()V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    const/4 v0, 0x0

    .line 1211
    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$sfputsShareCodePrompting(Z)V

    .line 1212
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$15;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->clearPendingClipShareCode()V

    .line 1213
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cancel()V

    .line 1214
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$15;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    const-class v2, Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 1215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1216
    const-string v1, "shareCode"

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$15;->val$code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$15;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
