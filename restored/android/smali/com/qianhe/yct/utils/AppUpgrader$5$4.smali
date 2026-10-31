.class Lcom/qianhe/yct/utils/AppUpgrader$5$4;
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


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader$5;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$4;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$4;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object v1, v0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->forced:Z

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$4;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object v2, v2, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v2}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onDownloadDone(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
