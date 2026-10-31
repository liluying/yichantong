.class Lcom/qianhe/yct/utils/AppUpgrader$8;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader;->mergeDiffPackage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/AppUpgrader;

.field final synthetic val$context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$8;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$8;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    iput-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$8;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$8;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$8;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/qianhe/yct/R$string;->upgrade_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onUpgradeFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
