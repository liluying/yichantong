.class Lcom/qianhe/yct/utils/AppUpgrader$5$3;
.super Ljava/lang/Object;
.source "AppUpgrader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;


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

    .line 250
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object v0, v0, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$5$3$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/AppUpgrader$5$3$4;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(JJZ)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 253
    div-long/2addr p1, p3

    long-to-int p2, p1

    if-eqz p5, :cond_2

    .line 254
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetsourceMD5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p2, p2, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p2}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetbaseFileMd5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I

    move-result p1

    if-ge p1, p2, :cond_0

    .line 257
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p2, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iget-object p3, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object p4, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$apkRootPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-static {p2, p3, p4, p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mmergeDiffPackage(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "\u5b8c\u6574\u5305md5\u6bd4\u5bf9\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "  \u2014\u2014\u2014\u2014  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p4, p4, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p4}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p4

    iget-object p4, p4, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_file_md5:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 261
    iget-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p3, p3, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_file_md5:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;I)V

    .line 263
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance p2, Lcom/qianhe/yct/utils/AppUpgrader$5$3$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/utils/AppUpgrader$5$3$1;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5$3;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fputupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;I)V

    .line 271
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance p2, Lcom/qianhe/yct/utils/AppUpgrader$5$3$2;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/utils/AppUpgrader$5$3$2;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5$3;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$5$3;->this$1:Lcom/qianhe/yct/utils/AppUpgrader$5;

    iget-object p1, p1, Lcom/qianhe/yct/utils/AppUpgrader$5;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance p3, Lcom/qianhe/yct/utils/AppUpgrader$5$3$3;

    invoke-direct {p3, p0, p2}, Lcom/qianhe/yct/utils/AppUpgrader$5$3$3;-><init>(Lcom/qianhe/yct/utils/AppUpgrader$5$3;I)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
