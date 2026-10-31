.class Lcom/qianhe/yct/utils/AppUpgrader$5;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;


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

    .line 218
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    iput-object p4, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadInfo(Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetstartDownload(Lcom/qianhe/yct/utils/AppUpgrader;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$5$1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/utils/AppUpgrader$5$1;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5;Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    const-string v1, ".apk"

    const/4 v2, 0x1

    const-string v3, "/"

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".patch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->version:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputmMegerApkPath(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V

    .line 235
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmMegerApkPath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521b\u5efa\u6587\u4ef6\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->version:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V

    .line 242
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v3, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->file_size:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->file_md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 301
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetsourceMD5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetbaseFileMd5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I

    move-result p1

    if-ge p1, v2, :cond_3

    .line 303
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mmergeDiffPackage(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    goto :goto_2

    .line 305
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v0, Lcom/qianhe/yct/utils/AppUpgrader$5$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/AppUpgrader$5$4;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 243
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LogToFile;->deleteFolderFile(Ljava/lang/String;Z)Z

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$5$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/AppUpgrader$5$2;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->download_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/utils/AppUpgrader$5$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/utils/AppUpgrader$5$3;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->downloadApkWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V

    :cond_5
    :goto_2
    return-void
.end method
