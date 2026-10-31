.class Lcom/qianhe/yct/utils/AppUpgrader$6;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;


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

.field final synthetic val$apkRootPath:Ljava/lang/String;

.field final synthetic val$context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    iput-object p4, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$apkRootPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/qh/bspatch/BsPatch$Result;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 350
    iget-boolean v0, p1, Lcom/qh/bspatch/BsPatch$Result;->success:Z

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo p1, "\u5dee\u5206\u5305\u5408\u5e76\u5f02\u5e38\uff1a\u5408\u5e76\u540e\u5b8c\u6574\u5305md5\u4e0d\u5339\u914d"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5dee\u5206\u5305\u5408\u5e76\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/qh/bspatch/BsPatch$Result;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "\u5dee\u5206\u5305md5\u4e0d\u5339\u914d"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 355
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;I)V

    .line 357
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetstartDownload(Lcom/qianhe/yct/utils/AppUpgrader;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    if-lez p1, :cond_2

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5dee\u5206\u5305\u5408\u5e76\u5931\u8d25\uff0c\u81ea\u52a8\u6539\u4e0b\u5b8c\u6574\u5305 full_apk_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$apkRootPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v2

    iget v2, v2, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    iget-object v3, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mdownLoad(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v0, Lcom/qianhe/yct/utils/AppUpgrader$6$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/AppUpgrader$6$3;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$6;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcessing()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$6$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/AppUpgrader$6$1;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;I)V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$6;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$6$2;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/utils/AppUpgrader$6$2;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
