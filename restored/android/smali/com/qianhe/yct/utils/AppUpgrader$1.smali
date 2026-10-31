.class Lcom/qianhe/yct/utils/AppUpgrader$1;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader;->startCheckAppUprage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/AppUpgrader;

.field final synthetic val$apkRootPath:Ljava/lang/String;

.field final synthetic val$context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$ignoreVersion:Ljava/lang/String;

.field final synthetic val$isShowTips:Z

.field final synthetic val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# direct methods
.method public static synthetic $r8$lambda$01Bf-ujMtRPcsQVJl09FZzKa9Bs(Lcom/qianhe/yct/utils/AppUpgrader$1;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0, p2}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputsourceMD5(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p2, p3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputmPreparedUpgradeLog(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mhandleCheckResult(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$OANHtPjBj6ZPLoRQufomrajWyX4(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 82
    iget v0, p2, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    const/16 v1, 0x1f44

    if-ne v0, v1, :cond_1

    sget p2, Lcom/qianhe/yct/R$string;->machine_num_not_exist:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/qianhe/yct/event/ApkListResponse;->err_msg:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, p0}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onUpgradeFailed(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$apkRootPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$ignoreVersion:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$isShowTips:Z

    iput-object p6, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckResult(Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 11

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$smresolveInstalledApkMd5(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;

    move-result-object v4

    .line 64
    iget v0, p1, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/yct/event/ApkListResponse;->apk_list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/yct/event/ApkListResponse;->apk_list:Ljava/util/List;

    const/4 v1, 0x0

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p1, Lcom/qianhe/yct/event/ApkListResponse;->apk_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->getLocalizedUpdateLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 69
    :cond_0
    const-string v0, ""

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v6, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$apkRootPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$ignoreVersion:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$isShowTips:Z

    iget-object v9, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$1;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$1;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    new-instance v2, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1}, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
