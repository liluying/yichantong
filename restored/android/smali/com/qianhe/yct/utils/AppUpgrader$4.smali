.class Lcom/qianhe/yct/utils/AppUpgrader$4;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader;->downLoad(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/AppUpgrader;

.field final synthetic val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$4;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$4;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$4;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-interface {v0}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onDownloadInfo()V

    return-void
.end method
