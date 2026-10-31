.class Lcom/tencent/smtt/sdk/k;
.super Ljava/lang/Object;


# static fields
.field private static d:I = 0x5

.field private static e:I = 0x1

.field private static final f:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field a:[Ljava/lang/String;

.field b:I

.field private c:Z

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/io/File;

.field private l:J

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/net/HttpURLConnection;

.field private u:Ljava/lang/String;

.field private final v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 0
    const-string v0, "tbs_downloading_com.tencent.tbs"

    const-string v1, "tbs_downloading_com.qzone"

    const-string v2, "tbs_downloading_com.tencent.mtt"

    const-string v3, "tbs_downloading_com.tencent.mm"

    const-string v4, "tbs_downloading_com.tencent.mobileqq"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/k;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    const/16 v1, 0x7530

    iput v1, p0, Lcom/tencent/smtt/sdk/k;->m:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/tencent/smtt/sdk/k;->n:I

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->A:Z

    sget v1, Lcom/tencent/smtt/sdk/k;->d:I

    iput v1, p0, Lcom/tencent/smtt/sdk/k;->B:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tbs_downloading_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->u:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/k;->f()V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/k;->w:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/smtt/sdk/k;->x:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "TbsCorePrivateDir is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(JJ)J
    .locals 3

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p1, v0, p1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownConsumeTime(J)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadSize(J)V

    return-wide v0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 1

    .line 0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/tencent/smtt/sdk/k;->p:I

    iget v0, p0, Lcom/tencent/smtt/sdk/k;->B:I

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    return-void
.end method

.method private a(J)V
    .locals 3

    .line 0
    iget v0, p0, Lcom/tencent/smtt/sdk/k;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->p:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/k;->m()J

    move-result-wide p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 0
    const-string v0, "TbsDownload"

    :try_start_0
    const-string v1, "clearDecoupleDirOld #00"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tbs_64"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "clearDecoupleDirOld dir is "

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "tbs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDecoupleDirOld stack is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TbsDownload"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/tencent/smtt/sdk/k;->n:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/tencent/smtt/sdk/k;->m:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 0
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/m;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "x5.tbs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    const-string v1, "x5.tbs.temp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(ZZ)Z
    .locals 12

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TbsDownload"

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    if-nez p1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    const-string v5, "x5.tbs.temp"

    :goto_0
    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    return v5

    :cond_1
    iget-object v3, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_apk_md5"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_d

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.verifyTbsApk] md5("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") successful!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_apkfilesize"

    invoke-interface {v3, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    cmp-long v3, v10, v8

    if-lez v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v3, v10, v8

    if-eqz v3, :cond_4

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " filelength failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",contentLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    return v5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TbsApkDownloader.verifyTbsApk] length("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    iget-object v3, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    iget-object v8, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_download_version"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v3, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " versionCode failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",configVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_5
    return v5

    :cond_6
    const/4 v3, -0x1

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TbsApkDownloader.verifyTbsApk] tbsApkVersionCode("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    iget-object p2, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {p2, v5, v0}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " signature failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_8

    const-string p2, "null"

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_9
    return v5

    :cond_a
    const-string p2, "[TbsApkDownloader.verifyTbsApk] signature successful!"

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_c

    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v7, p1

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_b

    const/16 p1, 0x6d

    invoke-direct {p0, v7}, Lcom/tencent/smtt/sdk/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    return v5

    :cond_b
    move v5, p1

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[TbsApkDownloader.verifyTbsApk] rename("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_d
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " md5 failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-string p2, "fileMd5 not match"

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_e
    return v5
.end method

.method private c(Z)V
    .locals 5

    .line 0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object v0, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "request_full_package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const/16 v1, -0x7b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "tbs_download_interrupt_code_reason"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/16 v1, 0x64

    iput v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    iget-object v0, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_responsecode"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/k;->b()V

    iget-object v0, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "tbs_download_version"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/k;->a(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TbsDownload"

    if-nez p1, :cond_3

    const-string p1, "downloadSuccess RESPONSECODE_TPATCH bundle is null "

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/k;->a(Landroid/content/Context;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadSuccess RESPONSECODE_TPATCH bundle is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/smtt/sdk/m;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private d(Z)Z
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.deleteFile] isApk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v1, "x5.tbs"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v1, "x5.tbs.temp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_1
    return v1
.end method

.method private f()V
    .locals 3

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->p:I

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->q:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tencent/smtt/sdk/k;->l:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->o:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->r:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->s:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->y:Z

    return-void
.end method

.method private g()V
    .locals 4

    .line 0
    const-string v0, "[TbsApkDownloader.closeHttpRequest]"

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[closeHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.closeHttpRequest] download finish code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/k;->r:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/k;->y:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/k;->h()V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->saveDownloadInterruptCode()V

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v1, v0}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    return-void
.end method

.method private h()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setApn(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkType(I)V

    iget v2, p0, Lcom/tencent/smtt/sdk/k;->x:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    if-eqz v1, :cond_3

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_5

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->getDownFinalFlag()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x65

    if-nez v0, :cond_4

    :goto_0
    invoke-direct {p0, v3, v2, v1}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/k;->l()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_CDN_DOWNLOAD_STAT:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    return-void
.end method

.method private i()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->w:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v3, p0, Lcom/tencent/smtt/sdk/k;->x:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/tencent/smtt/sdk/k;->w:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->x:I

    return-void

    :cond_0
    iget v3, p0, Lcom/tencent/smtt/sdk/k;->x:I

    if-ne v0, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    .line 0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private k()J
    .locals 3

    .line 0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private l()Z
    .locals 9

    .line 0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "www.qq.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "TTL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const-string v6, "ttl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v7

    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    return v3

    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    move-object v2, v0

    move-object v0, v4

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    return v3

    :catchall_4
    move-exception v2

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method private m()J
    .locals 4

    .line 0
    iget v0, p0, Lcom/tencent/smtt/sdk/k;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-wide/32 v0, 0x30d40

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x186a0

    return-wide v0

    :cond_1
    int-to-long v0, v0

    const-wide/16 v2, 0x4e20

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private n()Z
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsApkDwonloader.detectWifiNetworkAvailable] isWifi="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TbsDownload"

    invoke-static {v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v5, "https://pms.mb.qq.com/rsp204"

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsApkDwonloader.detectWifiNetworkAvailable] responseCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0xcc

    if-ne v5, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_3

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_2
    throw v1

    :cond_3
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_4

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/k;->A:Z

    goto :goto_5

    :cond_4
    iput-boolean v3, p0, Lcom/tencent/smtt/sdk/k;->A:Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->z:Landroid/os/Handler;

    const/16 v2, 0x96

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->z:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_5
    return v4
.end method


# virtual methods
.method public a(I)Landroid/os/Bundle;
    .locals 7

    .line 0
    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/m;->g(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTpatchBundle tbsApkFile is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TbsDownload"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/smtt/sdk/m;->e(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "operation"

    invoke-virtual {v5, v6, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "old_core_ver"

    invoke-virtual {v5, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "new_core_ver"

    invoke-virtual {v5, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "old_apk_location"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "new_apk_location"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diff_file_location"

    invoke-virtual {v5, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "core_type_tpatch"

    const-string v0, "not_stable"

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "for_self_core"

    const/4 v0, 0x1

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v5
.end method

.method public a()V
    .locals 3

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->r:Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v1, -0x135

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/k;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 41

    .line 0
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "  but contentLength="

    const-string v4, "tbs_downloadstarttime"

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    iget-object v5, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/tencent/smtt/sdk/m;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    sput-boolean v5, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x142

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    :goto_0
    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_responsecode"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    const/4 v8, 0x4

    if-ne v0, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    iput-boolean v2, v1, Lcom/tencent/smtt/sdk/k;->C:Z

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloadurl"

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/smtt/sdk/k;->h:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloadurl_list"

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backupUrlStrings:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "TbsDownload"

    invoke-static {v11, v9, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v10, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    iput v5, v1, Lcom/tencent/smtt/sdk/k;->b:I

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    const-string v9, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TbsApkDownloader.startDownload] mDownloadUrl="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/tencent/smtt/sdk/k;->h:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " backupUrlStrings="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mLocation="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mCanceled="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mHttpRequest="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x12e

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0x84

    goto/16 :goto_0

    :cond_4
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x12f

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0x85

    goto/16 :goto_0

    :cond_5
    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->f()V

    const-string v0, "STEP 1/2 begin downloading..."

    invoke-static {v11, v0, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v12

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloadflow"

    const-wide/16 v14, 0x0

    invoke-interface {v0, v9, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    if-eqz v2, :cond_6

    sget v0, Lcom/tencent/smtt/sdk/k;->e:I

    goto :goto_3

    :cond_6
    sget v0, Lcom/tencent/smtt/sdk/k;->d:I

    :goto_3
    iput v0, v1, Lcom/tencent/smtt/sdk/k;->B:I

    move-wide/from16 v5, v16

    const/16 v16, 0x0

    :goto_4
    iget v0, v1, Lcom/tencent/smtt/sdk/k;->p:I

    iget v14, v1, Lcom/tencent/smtt/sdk/k;->B:I

    if-le v0, v14, :cond_7

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x131

    :goto_5
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_39

    :cond_7
    iget v0, v1, Lcom/tencent/smtt/sdk/k;->q:I

    const/16 v14, 0x8

    if-le v0, v14, :cond_8

    const/16 v0, 0x7b

    invoke-direct {v1, v0, v10, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x132

    goto :goto_5

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v0, -0x133

    const-string v10, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    if-nez v2, :cond_c

    :try_start_0
    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v22, v14

    const-wide/16 v14, 0x0

    invoke-interface {v7, v4, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    sub-long v14, v22, v24

    const-wide/32 v24, 0x5265c00

    cmp-long v7, v14, v24

    if-lez v7, :cond_9

    const-string v7, "[TbsApkDownloader.startDownload] OVER DOWNLOAD_PERIOD"

    invoke-static {v11, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v7, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v7, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const-wide/16 v5, 0x0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v26, v4

    :goto_6
    move-wide/from16 v27, v12

    goto/16 :goto_38

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[TbsApkDownloader.startDownload] downloadFlow="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v7, v5, v12

    if-ltz v7, :cond_a

    const/4 v7, 0x1

    invoke-static {v11, v10, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v10, 0x0

    const/16 v14, 0x70

    invoke-direct {v1, v14, v10, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_45

    :goto_7
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_8
    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_39

    :cond_a
    :goto_9
    :try_start_1
    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v0, "DownloadBegin FreeSpace too small"

    const/4 v7, 0x1

    invoke-static {v11, v0, v7}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v10, 0x0

    const/16 v14, 0x69

    invoke-direct {v1, v14, v10, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v7, -0x134

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_45

    goto :goto_7

    :cond_b
    :goto_a
    const/4 v7, 0x1

    goto :goto_b

    :cond_c
    move-wide/from16 v22, v14

    goto :goto_a

    :goto_b
    :try_start_2
    iput-boolean v7, v1, Lcom/tencent/smtt/sdk/k;->y:Z

    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    if-eqz v7, :cond_d

    goto :goto_c

    :cond_d
    iget-object v7, v1, Lcom/tencent/smtt/sdk/k;->h:Ljava/lang/String;

    :goto_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "try url:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",mRetryTimes:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/tencent/smtt/sdk/k;->p:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v11, v14, v15}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v14, v1, Lcom/tencent/smtt/sdk/k;->i:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_14

    if-nez v14, :cond_e

    :try_start_3
    iget-object v14, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v14, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    :try_start_4
    iput-object v7, v1, Lcom/tencent/smtt/sdk/k;->i:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/tencent/smtt/sdk/k;->a(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/tencent/smtt/sdk/k;->o:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_14

    const-string v14, "/"

    if-nez v7, :cond_10

    move-object v7, v4

    move-wide/from16 v24, v5

    :try_start_5
    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->k()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TbsApkDownloader.startDownload] range="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v15, v7

    :try_start_6
    iget-wide v6, v1, Lcom/tencent/smtt/sdk/k;->l:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v2, "-"

    move-wide/from16 v26, v6

    const-string v6, "bytes="

    const-string v7, "Range"

    const-wide/16 v18, 0x0

    cmp-long v28, v26, v18

    if-gtz v28, :cond_f

    move-object/from16 v26, v15

    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide/from16 v27, v12

    :try_start_8
    const-string v12, "STEP 1/2 begin downloading...current"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    invoke-static {v11, v12, v15}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v7, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v29, v4

    move-object v15, v14

    goto :goto_10

    :catchall_1
    move-exception v0

    :goto_d
    move-object/from16 v36, v3

    :goto_e
    move-wide/from16 v5, v24

    goto/16 :goto_38

    :catchall_2
    move-exception v0

    :goto_f
    move-wide/from16 v27, v12

    goto :goto_d

    :cond_f
    move-wide/from16 v27, v12

    move-object/from16 v26, v15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#1 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v14

    iget-wide v13, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v29, v4

    iget-wide v4, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v7, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catchall_3
    move-exception v0

    move-wide/from16 v27, v12

    move-object/from16 v26, v15

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v26, v7

    goto :goto_f

    :cond_10
    move-object/from16 v26, v4

    move-wide/from16 v24, v5

    move-wide/from16 v27, v12

    move-object v15, v14

    const-wide/16 v29, 0x0

    :goto_10
    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-wide/16 v18, 0x0

    cmp-long v4, v29, v18

    if-nez v4, :cond_11

    const/4 v4, 0x0

    goto :goto_11

    :cond_11
    const/4 v4, 0x1

    :goto_11
    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->i()V

    iget v2, v1, Lcom/tencent/smtt/sdk/k;->p:I

    const/4 v7, 0x1

    if-lt v2, v7, :cond_12

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    const-string v4, "Referer"

    iget-object v5, v1, Lcom/tencent/smtt/sdk/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsApkDownloader.startDownload] responseCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setHttpCode(I)V

    const/4 v4, 0x3

    const/16 v5, 0x6f

    if-nez p1, :cond_14

    iget-object v6, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v6

    if-eq v6, v4, :cond_14

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->canDownloadWithoutWifi()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/k;->a()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v6, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x144

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v6, :cond_13

    invoke-interface {v6, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_13
    const-string v6, "Download is canceled due to NOT_WIFI error!"

    const/4 v7, 0x0

    invoke-static {v11, v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_14
    iget-boolean v6, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    if-eqz v6, :cond_15

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x135

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez p1, :cond_45

    :goto_12
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_8

    :cond_15
    const/16 v6, 0xc8

    if-eq v2, v6, :cond_25

    const/16 v6, 0xce

    if-ne v2, v6, :cond_16

    goto/16 :goto_15

    :cond_16
    const/16 v0, 0x12c

    if-lt v2, v0, :cond_18

    const/16 v0, 0x133

    if-gt v2, v0, :cond_18

    :try_start_9
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    iput-object v0, v1, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    iget v0, v1, Lcom/tencent/smtt/sdk/k;->q:I

    const/16 v21, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/tencent/smtt/sdk/k;->q:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez p1, :cond_27

    :goto_13
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_16

    :cond_17
    const/16 v0, 0x7c

    const/4 v7, 0x1

    const/4 v10, 0x0

    :try_start_a
    invoke-direct {v1, v0, v10, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x138

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez p1, :cond_45

    :goto_14
    goto :goto_12

    :cond_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x66

    const/4 v7, 0x0

    invoke-direct {v1, v4, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    const/16 v0, 0x1a0

    if-ne v2, v0, :cond_1b

    const/4 v7, 0x1

    invoke-direct {v1, v7, v8}, Lcom/tencent/smtt/sdk/k;->b(ZZ)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_1a

    :try_start_b
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x143

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-nez p1, :cond_19

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_19
    const/16 v16, 0x1

    goto/16 :goto_39

    :catchall_5
    move-exception v0

    move-object/from16 v36, v3

    move-wide/from16 v5, v24

    const/16 v16, 0x1

    goto/16 :goto_38

    :cond_1a
    const/4 v7, 0x0

    :try_start_c
    invoke-direct {v1, v7}, Lcom/tencent/smtt/sdk/k;->d(Z)Z

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x139

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez p1, :cond_45

    goto :goto_14

    :cond_1b
    const/16 v0, 0x193

    if-eq v2, v0, :cond_1c

    const/16 v0, 0x196

    if-ne v2, v0, :cond_1d

    :cond_1c
    iget-wide v4, v1, Lcom/tencent/smtt/sdk/k;->l:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x13a

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez p1, :cond_45

    goto/16 :goto_12

    :cond_1d
    const/16 v0, 0xca

    if-ne v2, v0, :cond_1e

    if-nez p1, :cond_27

    goto/16 :goto_13

    :cond_1e
    iget v0, v1, Lcom/tencent/smtt/sdk/k;->p:I

    iget v4, v1, Lcom/tencent/smtt/sdk/k;->B:I

    if-ge v0, v4, :cond_20

    const/16 v5, 0x1f7

    if-ne v2, v5, :cond_20

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    const-string v2, "Retry-After"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/tencent/smtt/sdk/k;->a(J)V

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x135

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez p1, :cond_45

    goto/16 :goto_14

    :cond_1f
    if-nez p1, :cond_27

    goto/16 :goto_13

    :cond_20
    if-ge v0, v4, :cond_23

    const/16 v0, 0x198

    if-eq v2, v0, :cond_21

    const/16 v0, 0x1f8

    if-eq v2, v0, :cond_21

    const/16 v0, 0x1f6

    if-ne v2, v0, :cond_23

    :cond_21
    const-wide/16 v14, 0x0

    invoke-direct {v1, v14, v15}, Lcom/tencent/smtt/sdk/k;->a(J)V

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x135

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez p1, :cond_45

    goto/16 :goto_12

    :cond_22
    if-nez p1, :cond_27

    goto/16 :goto_13

    :cond_23
    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->k()J

    move-result-wide v4

    const-wide/16 v18, 0x0

    cmp-long v0, v4, v18

    if-gtz v0, :cond_24

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->o:Z

    if-nez v0, :cond_24

    const/16 v0, 0x19a

    if-eq v2, v0, :cond_24

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/tencent/smtt/sdk/k;->o:Z

    if-nez p1, :cond_27

    goto/16 :goto_13

    :cond_24
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x13b

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez p1, :cond_45

    goto/16 :goto_14

    :cond_25
    :goto_15
    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v6, v2

    add-long v6, v6, v29

    iput-wide v6, v1, Lcom/tencent/smtt/sdk/k;->l:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsApkDownloader.startDownload] mContentLength="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget-wide v6, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v2, v6, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPkgSize(J)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_apkfilesize"

    const-wide/16 v12, 0x0

    invoke-interface {v2, v6, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v12

    if-eqz v2, :cond_2a

    iget-wide v12, v1, Lcom/tencent/smtt/sdk/k;->l:J

    cmp-long v2, v12, v6

    if-eqz v2, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBegin tbsApkFileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    invoke-static {v11, v0, v15}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_29

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->n()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->canDownloadWithoutWifi()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_26
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    if-eqz v0, :cond_28

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/k;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez p1, :cond_27

    goto/16 :goto_13

    :cond_27
    :goto_16
    move/from16 v2, p1

    move-wide/from16 v5, v24

    move-object/from16 v4, v26

    move-wide/from16 v12, v27

    :goto_17
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-wide/16 v14, 0x0

    goto/16 :goto_4

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tbsApkFileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    const/4 v7, 0x1

    invoke-direct {v1, v2, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x136

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_18

    :cond_29
    const-string v0, "WifiNetworkUnAvailable"

    const/16 v2, 0x65

    const/4 v7, 0x1

    invoke-direct {v1, v2, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x130

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_18
    if-nez p1, :cond_45

    goto/16 :goto_12

    :cond_2a
    const-string v2, "[TbsApkDownloader.startDownload] begin readResponse"

    invoke-static {v11, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_11

    if-eqz v2, :cond_3c

    :try_start_e
    iget-object v6, v1, Lcom/tencent/smtt/sdk/k;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    if-eqz v6, :cond_2b

    :try_start_f
    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_19

    :catchall_6
    move-exception v0

    move-object/from16 v36, v3

    move-wide/from16 v5, v24

    const/4 v10, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    goto/16 :goto_37

    :catch_0
    move-exception v0

    move-object/from16 v36, v3

    move-wide/from16 v5, v24

    const/4 v10, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    goto/16 :goto_32

    :cond_2b
    if-eqz v6, :cond_2c

    const-string v7, "deflate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    new-instance v7, Ljava/util/zip/Inflater;

    const/4 v13, 0x1

    invoke-direct {v7, v13}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v6, v2, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_19

    :cond_2c
    move-object v6, v2

    :goto_19
    const/16 v7, 0x2000

    :try_start_10
    new-array v7, v7, [B

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v14, "x5.tbs.temp"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileDownloadApk is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-wide/from16 v4, v22

    move-wide/from16 v33, v31

    move-wide/from16 v31, v29

    :goto_1a
    iget-boolean v12, v1, Lcom/tencent/smtt/sdk/k;->r:Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    if-eqz v12, :cond_2d

    :try_start_12
    const-string v0, "STEP 1/2 begin downloading...Canceled!"

    invoke-static {v11, v0, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x135

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :goto_1b
    move-object/from16 v36, v3

    :goto_1c
    const/4 v0, 0x0

    goto/16 :goto_28

    :catchall_7
    move-exception v0

    move-object/from16 v36, v3

    move-object v10, v13

    move-object v3, v2

    move-object v2, v6

    :goto_1d
    move-wide/from16 v5, v24

    goto/16 :goto_37

    :catch_1
    move-exception v0

    move-object/from16 v36, v3

    move-object v10, v13

    move-object v3, v2

    move-object v2, v6

    :goto_1e
    move-wide/from16 v5, v24

    goto/16 :goto_32

    :cond_2d
    const/16 v12, 0x2000

    const/4 v14, 0x0

    :try_start_13
    invoke-virtual {v6, v7, v14, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    if-gtz v12, :cond_31

    :try_start_14
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    if-eqz v0, :cond_2f

    const/4 v7, 0x1

    invoke-direct {v1, v7, v8}, Lcom/tencent/smtt/sdk/k;->b(ZZ)Z

    move-result v0

    if-nez v0, :cond_2f

    if-nez p1, :cond_2e

    invoke-virtual {v1, v14}, Lcom/tencent/smtt/sdk/k;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object/from16 v36, v3

    const/4 v0, 0x1

    goto/16 :goto_28

    :cond_2e
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/tencent/smtt/sdk/k;->s:Z

    move-object/from16 v36, v3

    const/4 v0, 0x0

    const/16 v16, 0x0

    goto/16 :goto_28

    :cond_2f
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/tencent/smtt/sdk/k;->s:Z

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    if-eqz v0, :cond_30

    const/16 v16, 0x1

    :cond_30
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x137

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_1b

    :cond_31
    :try_start_15
    invoke-virtual {v13, v7, v14, v12}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    if-nez p1, :cond_34

    move-object/from16 v35, v15

    int-to-long v14, v12

    add-long v14, v24, v14

    cmp-long v24, v14, v27

    if-ltz v24, :cond_32

    move-object/from16 v36, v3

    const/4 v3, 0x1

    :try_start_16
    invoke-static {v11, v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFlow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " downloadMaxflow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-wide/from16 v4, v27

    :try_start_17
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    const/16 v10, 0x70

    invoke-direct {v1, v10, v3, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-wide/from16 v27, v4

    goto/16 :goto_23

    :catchall_8
    move-exception v0

    move-object v3, v2

    move-wide/from16 v27, v4

    :goto_1f
    move-object v2, v6

    move-object v10, v13

    move-wide v5, v14

    goto/16 :goto_37

    :catch_2
    move-exception v0

    move-object v3, v2

    move-wide/from16 v27, v4

    :goto_20
    move-object v2, v6

    move-object v10, v13

    move-wide v5, v14

    goto/16 :goto_32

    :catchall_9
    move-exception v0

    move-wide/from16 v4, v27

    :goto_21
    move-object v3, v2

    goto :goto_1f

    :catch_3
    move-exception v0

    move-wide/from16 v4, v27

    :goto_22
    move-object v3, v2

    goto :goto_20

    :cond_32
    move-object/from16 v36, v3

    const/16 v20, 0x70

    :try_start_18
    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v0, "DownloadEnd FreeSpace too small "

    const/4 v7, 0x1

    invoke-static {v11, v0, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freespace="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/s;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",and minFreeSpace="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x69

    const/4 v7, 0x1

    invoke-direct {v1, v3, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v7, -0x134

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :goto_23
    move-wide/from16 v24, v14

    goto/16 :goto_1c

    :catchall_a
    move-exception v0

    goto :goto_21

    :catch_4
    move-exception v0

    goto :goto_22

    :cond_33
    move-wide/from16 v24, v14

    goto :goto_24

    :cond_34
    move-object/from16 v36, v3

    move-object/from16 v35, v15

    const/16 v20, 0x70

    :goto_24
    int-to-long v14, v12

    :try_start_19
    invoke-direct {v1, v4, v5, v14, v15}, Lcom/tencent/smtt/sdk/k;->a(JJ)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    add-long v14, v29, v14

    sub-long v29, v37, v33

    const-wide/16 v39, 0x3e8

    cmp-long v3, v29, v39

    if-lez v3, :cond_3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#2 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v12, v35

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v29, v4

    iget-wide v4, v1, Lcom/tencent/smtt/sdk/k;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v11, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v3, :cond_35

    long-to-double v4, v14

    move-wide/from16 v33, v4

    iget-wide v4, v1, Lcom/tencent/smtt/sdk/k;->l:J

    long-to-double v4, v4

    div-double v4, v33, v4

    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v33

    double-to-int v4, v4

    invoke-interface {v3, v4}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V

    goto :goto_27

    :catchall_b
    move-exception v0

    :goto_25
    move-object v3, v2

    move-object v2, v6

    move-object v10, v13

    goto/16 :goto_1d

    :catch_5
    move-exception v0

    :goto_26
    move-object v3, v2

    move-object v2, v6

    move-object v10, v13

    goto/16 :goto_1e

    :cond_35
    :goto_27
    if-nez p1, :cond_3a

    sub-long v3, v14, v31

    const-wide/32 v33, 0x100000

    cmp-long v5, v3, v33

    if-lez v5, :cond_3a

    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_38

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->canDownloadWithoutWifi()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/k;->a()V

    const-string v0, "Download is paused due to NOT_WIFI error!"

    const/4 v7, 0x0

    invoke-static {v11, v0, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x6f

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-direct {v1, v3, v10, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x130

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    goto/16 :goto_1c

    :goto_28
    if-eqz v0, :cond_37

    :try_start_1a
    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v6}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    if-nez p1, :cond_36

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_36
    move/from16 v2, p1

    move-wide/from16 v5, v24

    :goto_29
    move-object/from16 v4, v26

    move-wide/from16 v12, v27

    move-object/from16 v3, v36

    goto/16 :goto_17

    :catchall_c
    move-exception v0

    goto/16 :goto_e

    :cond_37
    move-object v0, v6

    move-object v10, v13

    :goto_2a
    move-wide/from16 v5, v24

    goto/16 :goto_30

    :cond_38
    const/16 v3, 0x6f

    goto :goto_2b

    :cond_39
    const/16 v3, 0x6f

    const/4 v4, 0x3

    :goto_2b
    move-wide/from16 v31, v14

    goto :goto_2c

    :cond_3a
    const/16 v3, 0x6f

    const/4 v4, 0x3

    :goto_2c
    move-wide/from16 v33, v37

    goto :goto_2d

    :cond_3b
    move-wide/from16 v29, v4

    move-object/from16 v12, v35

    const/16 v3, 0x6f

    const/4 v4, 0x3

    :goto_2d
    move-wide/from16 v4, v29

    move-object/from16 v3, v36

    move-wide/from16 v29, v14

    const/4 v14, 0x1

    move-object v15, v12

    goto/16 :goto_1a

    :catchall_d
    move-exception v0

    move-object/from16 v36, v3

    goto/16 :goto_25

    :catch_6
    move-exception v0

    move-object/from16 v36, v3

    goto/16 :goto_26

    :catchall_e
    move-exception v0

    move-object/from16 v36, v3

    move-object v3, v2

    move-object v2, v6

    move-wide/from16 v5, v24

    :goto_2e
    const/4 v10, 0x0

    goto/16 :goto_37

    :catch_7
    move-exception v0

    move-object/from16 v36, v3

    move-object v3, v2

    move-object v2, v6

    move-wide/from16 v5, v24

    :goto_2f
    const/4 v10, 0x0

    goto :goto_32

    :catchall_f
    move-exception v0

    move-object/from16 v36, v3

    move-object v3, v2

    move-wide/from16 v5, v24

    const/4 v2, 0x0

    goto :goto_2e

    :catch_8
    move-exception v0

    move-object/from16 v36, v3

    move-object v3, v2

    move-wide/from16 v5, v24

    const/4 v2, 0x0

    goto :goto_2f

    :cond_3c
    move-object/from16 v36, v3

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_2a

    :goto_30
    :try_start_1b
    invoke-direct {v1, v10}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->s:Z

    if-nez v0, :cond_3d

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x13f

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    goto :goto_31

    :catchall_10
    move-exception v0

    goto/16 :goto_38

    :cond_3d
    :goto_31
    if-nez p1, :cond_45

    goto/16 :goto_7

    :catchall_11
    move-exception v0

    move-object/from16 v36, v3

    move-wide/from16 v5, v24

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_2e

    :catch_9
    move-exception v0

    move-object/from16 v36, v3

    move-wide/from16 v5, v24

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_2f

    :goto_32
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    if-nez v4, :cond_41

    instance-of v4, v0, Ljava/net/SocketException;

    if-eqz v4, :cond_3e

    goto/16 :goto_35

    :cond_3e
    if-nez p1, :cond_3f

    iget-object v4, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freespace="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/s;->a()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",and minFreeSpace="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    const/16 v14, 0x69

    invoke-direct {v1, v14, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v7, -0x134

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, v14}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    :try_start_1d
    invoke-direct {v1, v10}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    if-nez p1, :cond_45

    goto/16 :goto_7

    :catchall_12
    move-exception v0

    goto :goto_37

    :cond_3f
    const-wide/16 v14, 0x0

    :try_start_1e
    invoke-direct {v1, v14, v15}, Lcom/tencent/smtt/sdk/k;->a(J)V

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->j()Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    if-nez v4, :cond_40

    :try_start_1f
    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    const/16 v4, 0x6a

    const/4 v7, 0x0

    :try_start_20
    invoke-direct {v1, v4, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    goto :goto_33

    :catchall_13
    move-exception v0

    const/4 v7, 0x0

    goto :goto_37

    :cond_40
    const/4 v7, 0x0

    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x68

    invoke-direct {v1, v4, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    :goto_33
    :try_start_21
    invoke-direct {v1, v10}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    if-nez p1, :cond_42

    :goto_34
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_36

    :cond_41
    :goto_35
    const v4, 0x186a0

    :try_start_22
    iput v4, v1, Lcom/tencent/smtt/sdk/k;->m:I

    const-wide/16 v14, 0x0

    invoke-direct {v1, v14, v15}, Lcom/tencent/smtt/sdk/k;->a(J)V

    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x67

    const/4 v7, 0x0

    invoke-direct {v1, v4, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    :try_start_23
    invoke-direct {v1, v10}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    if-nez p1, :cond_42

    goto :goto_34

    :cond_42
    :goto_36
    move/from16 v2, p1

    goto/16 :goto_29

    :goto_37
    invoke-direct {v1, v10}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/k;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    :catchall_14
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v26, v4

    move-wide/from16 v24, v5

    goto/16 :goto_6

    :goto_38
    :try_start_24
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_44

    if-nez p1, :cond_44

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    if-eqz v2, :cond_44

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/tencent/smtt/sdk/k;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startdownload]url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " download exception\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    const-wide/16 v14, 0x0

    :cond_43
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v13, 0x1

    goto/16 :goto_40

    :catchall_15
    move-exception v0

    goto/16 :goto_41

    :cond_44
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v14, 0x0

    invoke-direct {v1, v14, v15}, Lcom/tencent/smtt/sdk/k;->a(J)V

    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    const/4 v7, 0x0

    invoke-direct {v1, v2, v0, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    if-eqz v0, :cond_43

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x135

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    if-nez p1, :cond_45

    goto/16 :goto_7

    :cond_45
    :goto_39
    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->r:Z

    if-nez v0, :cond_4d

    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->s:Z

    if-eqz v0, :cond_4a

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    if-nez v0, :cond_46

    if-nez v16, :cond_46

    const/4 v7, 0x1

    invoke-direct {v1, v7, v8}, Lcom/tencent/smtt/sdk/k;->b(ZZ)Z

    move-result v16

    :cond_46
    move/from16 v0, v16

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setUnpkgFlag(I)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-nez v8, :cond_48

    if-eqz v0, :cond_47

    const/4 v3, 0x1

    goto :goto_3a

    :cond_47
    const/4 v3, 0x2

    :goto_3a
    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    goto :goto_3b

    :cond_48
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    :goto_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadSuccess is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_49

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Lcom/tencent/smtt/sdk/k;->c(Z)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x13d

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v2, 0x64

    const-string v3, "success"

    invoke-direct {v1, v2, v3, v7}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    const/4 v7, 0x0

    goto :goto_3c

    :cond_49
    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x13e

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/tencent/smtt/sdk/k;->d(Z)Z

    goto :goto_3c

    :cond_4a
    const/4 v7, 0x0

    move/from16 v0, v16

    :goto_3c
    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    if-eqz v0, :cond_4b

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_success_retrytimes"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const/16 v21, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "tbs_download_success_retrytimes"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_4b
    const/16 v21, 0x1

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_failed_retrytimes"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "tbs_download_failed_retrytimes"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v4

    if-ne v3, v4, :cond_4c

    iget-object v3, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    :cond_4c
    :goto_3d
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownFinalFlag(I)V

    goto :goto_3f

    :cond_4d
    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/k;->c:Z

    if-eqz v0, :cond_4e

    const/16 v0, 0x86

    const-string v2, "pauseDownload()"

    const/4 v13, 0x1

    :goto_3e
    invoke-direct {v1, v0, v2, v13}, Lcom/tencent/smtt/sdk/k;->a(ILjava/lang/String;Z)V

    goto :goto_3f

    :cond_4e
    const/4 v13, 0x1

    const/16 v0, 0x83

    const-string v2, "stopDownload()"

    goto :goto_3e

    :goto_3f
    invoke-direct {v1}, Lcom/tencent/smtt/sdk/k;->g()V

    return-void

    :goto_40
    :try_start_25
    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x13c

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    if-nez p1, :cond_4f

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_4f
    move/from16 v2, p1

    move-object/from16 v4, v26

    move-wide/from16 v12, v27

    move-object/from16 v3, v36

    const/4 v7, 0x1

    goto/16 :goto_4

    :goto_41
    if-nez p1, :cond_50

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_50
    throw v0
.end method

.method public b()V
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/k;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/k;->d(Z)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/k;->d(Z)Z

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 0
    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/smtt/sdk/m;->a()Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/m;->c()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    if-lez p1, :cond_1

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public b(Z)Z
    .locals 3

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/k;->n()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->canDownloadWithoutWifi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/k;->a:[Ljava/lang/String;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/tencent/smtt/sdk/k;->b:I

    if-ltz v1, :cond_2

    array-length v2, p1

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/smtt/sdk/k;->b:I

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->j:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->p:I

    iput v0, p0, Lcom/tencent/smtt/sdk/k;->q:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tencent/smtt/sdk/k;->l:J

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->o:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->r:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->s:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->y:Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public c()Z
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.isDownloadForeground] mIsDownloadForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/k;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->C:Z

    return v0
.end method

.method d()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseDownload,isPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isDownloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/k;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->y:Z

    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeDownload,isPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isDownloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/k;->c:Z

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/k;->a(Z)V

    :cond_0
    return-void
.end method
