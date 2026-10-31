.class Lcom/qianhe/yct/utils/AppUpgrader$6$3;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader$6;->onError(Lcom/qh/bspatch/BsPatch$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/utils/AppUpgrader$6;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader$6;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$6;

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onParsingError()V

    :cond_0
    return-void
.end method
