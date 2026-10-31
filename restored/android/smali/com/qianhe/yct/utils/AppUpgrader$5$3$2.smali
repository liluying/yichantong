.class Lcom/qianhe/yct/utils/AppUpgrader$5$3$2;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader$5$3;->update(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qianhe/yct/utils/AppUpgrader$5$3;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader$5$3;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3$2;->this$2:Lcom/qianhe/yct/utils/AppUpgrader$5$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3$2;->this$2:Lcom/qianhe/yct/utils/AppUpgrader$5$3;

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onParsingError()V

    :cond_0
    return-void
.end method
