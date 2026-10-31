.class public Lcom/qianhe/yct/utils/AppUpgrader;
.super Ljava/lang/Object;
.source "AppUpgrader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;,
        Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;,
        Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/qianhe/yct/utils/AppUpgrader;


# instance fields
.field private baseFileMd5:Ljava/lang/String;

.field private mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

.field private mFilePath:Ljava/lang/String;

.field private mMegerApkPath:Ljava/lang/String;

.field private mPreparedUpgradeLog:Ljava/lang/String;

.field private sourceMD5:Ljava/lang/String;

.field private startDownload:Z

.field private upgradeErrorCount:I

.field private upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseFileMd5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->baseFileMd5:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApkInfo(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMegerApkPath(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mMegerApkPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsourceMD5(Lcom/qianhe/yct/utils/AppUpgrader;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->sourceMD5:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartDownload(Lcom/qianhe/yct/utils/AppUpgrader;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->startDownload:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeErrorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupgradeTipsDialogFragment(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFilePath(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMegerApkPath(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mMegerApkPath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreparedUpgradeLog(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mPreparedUpgradeLog:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsourceMD5(Lcom/qianhe/yct/utils/AppUpgrader;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->sourceMD5:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupgradeErrorCount(Lcom/qianhe/yct/utils/AppUpgrader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeErrorCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdownLoad(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/utils/AppUpgrader;->downLoad(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCheckResult(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/utils/AppUpgrader;->handleCheckResult(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeDiffPackage(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/AppUpgrader;->mergeDiffPackage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/AppUpgrader;->notifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smresolveInstalledApkMd5(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/utils/AppUpgrader;->resolveInstalledApkMd5(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/AppUpgrader;-><init>()V

    sput-object v0, Lcom/qianhe/yct/utils/AppUpgrader;->INSTANCE:Lcom/qianhe/yct/utils/AppUpgrader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeErrorCount:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->sourceMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->baseFileMd5:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mPreparedUpgradeLog:Ljava/lang/String;

    return-void
.end method

.method private downLoad(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 2

    if-eqz p4, :cond_0

    .line 211
    new-instance v0, Lcom/qianhe/yct/utils/AppUpgrader$4;

    invoke-direct {v0, p0, p4}, Lcom/qianhe/yct/utils/AppUpgrader$4;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$5;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/qianhe/yct/utils/AppUpgrader$5;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkDownloadUrl(ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V

    return-void
.end method

.method private handleCheckResult(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 92
    :cond_0
    :try_start_0
    iget v0, p6, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    if-nez v0, :cond_a

    .line 93
    iget-object v0, p6, Lcom/qianhe/yct/event/ApkListResponse;->apk_list:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    iget-object v0, p6, Lcom/qianhe/yct/event/ApkListResponse;->apk_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    .line 95
    iget-object p6, p6, Lcom/qianhe/yct/event/ApkListResponse;->base_file_md5:Ljava/lang/String;

    iput-object p6, p0, Lcom/qianhe/yct/utils/AppUpgrader;->baseFileMd5:Ljava/lang/String;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p5, :cond_2

    .line 97
    invoke-interface {p5, v0}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->hasNewVersion(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_3

    .line 98
    :cond_2
    :goto_0
    iget-object p6, p0, Lcom/qianhe/yct/utils/AppUpgrader;->sourceMD5:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_3

    iget-object p6, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget-boolean p6, p6, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->forced:Z

    if-eqz p6, :cond_3

    if-eqz p5, :cond_b

    .line 100
    sget p2, Lcom/qianhe/yct/R$string;->upgrade_failed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p2}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onUpgradeFailed(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_3
    iget-object p6, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    if-eqz p6, :cond_6

    iget-boolean v0, p6, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->forced:Z

    if-nez v0, :cond_6

    .line 105
    iget-object p6, p6, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->version:Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    goto :goto_1

    .line 108
    :cond_4
    const-string/jumbo p2, "\u5df2\u5ffd\u7565app\u7248\u672c\u66f4\u65b0"

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p5, :cond_b

    .line 109
    iget-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    invoke-interface {p5, p2}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onIgnore(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V

    return-void

    .line 106
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2, p5}, Lcom/qianhe/yct/utils/AppUpgrader;->showUpgradeTipsDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    :cond_6
    if-eqz p6, :cond_b

    .line 114
    iget-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader;->sourceMD5:Ljava/lang/String;

    iget-object p4, p0, Lcom/qianhe/yct/utils/AppUpgrader;->baseFileMd5:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 116
    iget-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget p4, p3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    if-lez p4, :cond_7

    iget p6, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeErrorCount:I

    const/4 v0, 0x1

    if-ge p6, v0, :cond_7

    goto :goto_2

    :cond_7
    iget p4, p3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    :goto_2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/qianhe/yct/utils/AppUpgrader;->downLoad(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    .line 118
    :cond_8
    iget-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget p3, p3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_apk_id:I

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/qianhe/yct/utils/AppUpgrader;->downLoad(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    :cond_9
    if-eqz p5, :cond_b

    .line 123
    invoke-interface {p5}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onLatestVersion()V

    return-void

    :cond_a
    if-eqz p5, :cond_b

    .line 126
    iget-object p2, p6, Lcom/qianhe/yct/event/ApkListResponse;->err_msg:Ljava/lang/String;

    invoke-interface {p5, p2}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onCheckFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 129
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "\u68c0\u6d4bapp\u66f4\u65b0"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p5, :cond_b

    .line 131
    sget p2, Lcom/qianhe/yct/R$string;->upgrade_failed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onUpgradeFailed(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private mergeDiffPackage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 7

    .line 322
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 323
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 324
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6b63\u5728\u5408\u5e76\u2014\u2014> apkPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cmFilePath\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cmMegerApkPath\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mMegerApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/qianhe/yct/utils/BsPatchManager;->getInstance()Lcom/qianhe/yct/utils/BsPatchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget-object v4, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mMegerApkPath:Ljava/lang/String;

    new-instance v6, Lcom/qianhe/yct/utils/AppUpgrader$6;

    invoke-direct {v6, p0, p1, p3, p2}, Lcom/qianhe/yct/utils/AppUpgrader$6;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/utils/BsPatchManager;->merge(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;)V

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 371
    :cond_0
    new-instance p2, Lcom/qianhe/yct/utils/AppUpgrader$7;

    invoke-direct {p2, p0, p3, p1}, Lcom/qianhe/yct/utils/AppUpgrader$7;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 379
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeDiffPackage\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 381
    new-instance p2, Lcom/qianhe/yct/utils/AppUpgrader$8;

    invoke-direct {p2, p0, p3, p1}, Lcom/qianhe/yct/utils/AppUpgrader$8;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;->onUpgradeTipsDialogShown()V

    :cond_0
    return-void
.end method

.method private static resolveInstalledApkMd5(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;
    .locals 2

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 200
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    .line 201
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveInstalledApkMd5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 206
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private showUpgradeTipsDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0, p3}, Lcom/qianhe/yct/utils/AppUpgrader;->notifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-direct {p0, p3}, Lcom/qianhe/yct/utils/AppUpgrader;->notifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void

    .line 148
    :cond_2
    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mPreparedUpgradeLog:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mPreparedUpgradeLog:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->getLocalizedUpdateLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_0
    const-string/jumbo v2, "upgradeLog"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "versionOld"

    const-string v2, "2.0.2609.109"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget-object v1, v1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->version:Ljava/lang/String;

    const-string/jumbo v2, "versionNew"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->sourceMD5:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader;->baseFileMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    iget v2, v1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_apk_id:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeErrorCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    iget-wide v1, v1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_file_size:J

    goto :goto_2

    :cond_4
    :goto_1
    iget-wide v1, v1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_file_size:J

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    goto :goto_1

    :goto_2
    const-string v3, "fileSize"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 155
    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$2;

    invoke-direct {v1, p0, p3}, Lcom/qianhe/yct/utils/AppUpgrader$2;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "UpgradeFmwDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->upgradeTipsDialogFragment:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qianhe/yct/utils/AppUpgrader$3;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->setOnActionListener(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;)V

    return-void

    .line 137
    :cond_6
    :goto_3
    invoke-direct {p0, p3}, Lcom/qianhe/yct/utils/AppUpgrader;->notifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->startDownload:Z

    .line 392
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->cancelDownload()V

    return-void
.end method

.method public getApkInfo()Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    return-object v0
.end method

.method public startCheckAppUprage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 8

    .line 52
    const-string v0, "---------\u5f00\u59cb\u68c0\u6d4bAPP\u5347\u7ea7-----------"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mApkInfo:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->startDownload:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->baseFileMd5:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader;->mPreparedUpgradeLog:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/AppUpgrader$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/utils/AppUpgrader$1;-><init>(Lcom/qianhe/yct/utils/AppUpgrader;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    invoke-virtual {v0, p5, p6, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkList(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;)V

    return-void
.end method
