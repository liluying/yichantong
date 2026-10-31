.class Lcom/qianhe/yct/utils/AppUpgrader$6$2;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader$6;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/utils/AppUpgrader$6;

.field final synthetic val$newApkFileSavePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader$6;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6$2;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$6;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$6$2;->val$newApkFileSavePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6$2;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$6;

    iget-object v1, v0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->forced:Z

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$6$2;->val$newApkFileSavePath:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onDownloadDone(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
