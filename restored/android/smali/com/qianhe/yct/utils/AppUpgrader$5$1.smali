.class Lcom/qianhe/yct/utils/AppUpgrader$5$1;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader$5;->onDownloadInfo(Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

.field final synthetic val$response:Lcom/qianhe/yct/event/ApkDownloadUrlResponse;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader$5;Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$1;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$1;->val$response:Lcom/qianhe/yct/event/ApkDownloadUrlResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$1;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object v1, v0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$1;->val$response:Lcom/qianhe/yct/event/ApkDownloadUrlResponse;

    iget v2, v2, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->state:I

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onUpgradeFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
