.class Lcom/qianhe/yct/utils/AppUpgrader$3;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader;->showUpgradeTipsDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/AppUpgrader;

.field final synthetic val$apkRootPath:Ljava/lang/String;

.field final synthetic val$context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$apkRootPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onCancel(I)V

    :cond_0
    return-void
.end method

.method public onDownload()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetsourceMD5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetbaseFileMd5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$apkRootPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v3

    iget v3, v3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v3

    iget v3, v3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v3

    iget v3, v3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mdownLoad(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$apkRootPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v3

    iget v3, v3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    iget-object v4, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mdownLoad(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    :cond_2
    return-void
.end method

.method public onIgnore()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$3;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onIgnore(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V

    :cond_0
    return-void
.end method
