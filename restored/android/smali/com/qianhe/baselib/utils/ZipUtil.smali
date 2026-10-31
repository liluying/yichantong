.class public abstract Lcom/qianhe/baselib/utils/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;,
        Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;,
        Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;,
        Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;
    }
.end annotation


# static fields
.field private static final FALLBACK_PREFIXES:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$G-a3ZtxItakz8xAYEy2wB-2BFq0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 538
    const-string p0, "logdec_"

    .line 539
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".tmp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$SgH0IOMwkj1VaFuXbHp0BLsvqgQ(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;
    .locals 0

    .line 312
    invoke-static {p0, p1, p2}, Lcom/qianhe/baselib/utils/ZipUtil;->decryptEncToTemp(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bHHq7rXZjYq8U8w2XGDB24K9v4U(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;JLcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;JJJ)V
    .locals 2

    .line 286
    invoke-static {p0}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p0, p8, v0

    if-lez p0, :cond_1

    mul-long p6, p6, p1

    .line 289
    div-long/2addr p6, p8

    goto :goto_0

    :cond_1
    move-wide p6, p1

    .line 290
    :goto_0
    invoke-static {p1, p2, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    add-long/2addr p4, p0

    invoke-virtual {p3, p4, p5}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->setDone(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 187
    const-string v0, "log"

    const-string v1, "calibrate"

    const-string v2, "ble"

    const-string v3, "dev"

    const-string v4, "diff"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/utils/ZipUtil;->FALLBACK_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method private static addFileDeflated(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    .locals 1

    .line 597
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 598
    :try_start_0
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-direct {p1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 601
    :goto_0
    invoke-virtual {v0, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    .line 602
    invoke-virtual {p0, p3, p2, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 604
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    .line 597
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private static addFileStored(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    .locals 7

    .line 609
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 611
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x0

    .line 613
    :goto_0
    :try_start_0
    invoke-virtual {v1, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    .line 614
    invoke-virtual {v0, p3, v6, v4}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 617
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 618
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 620
    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 621
    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 622
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 623
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 624
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 626
    :goto_1
    :try_start_1
    invoke-virtual {p2, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-eq p1, v5, :cond_1

    .line 627
    invoke-virtual {p0, p3, v6, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 629
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 630
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    .line 624
    :goto_2
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    .line 611
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method private static decryptEncToTemp(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 496
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "cancelled"

    if-nez v1, :cond_3

    .line 499
    :try_start_1
    const-string v1, "logdec_"

    const-string v3, ".tmp"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {v1, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_1

    .line 501
    :try_start_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_3

    .line 503
    :cond_1
    :goto_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 504
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/qianhe/baselib/utils/LogToFile;->decryptLogToStream(Ljava/lang/String;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 506
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 509
    new-instance v1, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;

    invoke-direct {v1, p0, p1, v0}, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/Exception;)V

    return-object v1

    .line 507
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catchall_0
    move-exception v2

    .line 503
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 497
    :cond_3
    :try_start_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 511
    :goto_3
    invoke-static {v1}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteQuietly(Ljava/io/File;)V

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 513
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 515
    :cond_4
    new-instance p2, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;

    invoke-direct {p2, p0, v0, p1}, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/Exception;)V

    return-object p2
.end method

.method public static deleteLogdecTempFiles(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 535
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 543
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 544
    invoke-static {v2}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteQuietly(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static deleteQuietly(Ljava/io/File;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 549
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5220\u9664\u89e3\u5bc6\u4e34\u65f6\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static deleteTempFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    monitor-enter p0

    .line 525
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 526
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 527
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 529
    invoke-static {v0}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteQuietly(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 527
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static filterExisting(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    .line 588
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static findLatestFilesByPrefix(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    sget-object v1, Lcom/qianhe/baselib/utils/ZipUtil;->FALLBACK_PREFIXES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 639
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    if-eqz v9, :cond_0

    .line 640
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 644
    invoke-static {v10, v4}, Lcom/qianhe/baselib/utils/ZipUtil;->matchesLogPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .line 647
    :cond_2
    invoke-static {v10}, Lcom/qianhe/baselib/utils/ZipUtil;->parseLogFileTime(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 649
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    :cond_3
    cmp-long v12, v10, v7

    if-lez v12, :cond_0

    move-object v6, v9

    move-wide v7, v10

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    .line 657
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z
    .locals 1

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static matchesLogPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 664
    const-string v0, "ble"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 665
    const-string p1, "ble-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ble("

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 667
    :cond_2
    const-string v0, "log"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    const-string p1, "log-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 670
    :cond_3
    const-string v0, "calibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 671
    const-string p1, "calibrate("

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "calibrate-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1

    .line 673
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static parseLogFileTime(Ljava/lang/String;)J
    .locals 5

    const/16 v0, 0x2d

    const-wide/16 v1, -0x1

    .line 679
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 684
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v3, 0x0

    .line 685
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 686
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy_MM_dd_HH_mm_ss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 687
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_2
    return-wide v1
.end method

.method private static sumFileLengths(Ljava/util/List;Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_0

    .line 428
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 429
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :cond_2
    if-eqz p1, :cond_4

    .line 434
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_3

    .line 435
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 436
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    :cond_4
    return-wide v2
.end method

.method private static throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V
    .locals 1

    .line 419
    invoke-static {p0}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cancelled"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toExistingFiles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 575
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static uniqueEntryName(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 778
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 781
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 782
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    if-lez v0, :cond_2

    .line 783
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 787
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v0

    .line 789
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v3
.end method

.method private static zipLogUploadInternal(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;",
            "Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 252
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u538b\u7f29\u5931\u8d25: \u65e0\u6cd5\u521b\u5efa\u76ee\u5f55 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v3

    .line 259
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 261
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0x2000

    .line 264
    new-array v6, v0, [B

    .line 265
    new-instance v11, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;

    invoke-static/range {p0 .. p1}, Lcom/qianhe/baselib/utils/ZipUtil;->sumFileLengths(Ljava/util/List;Ljava/util/List;)J

    move-result-wide v7

    move-object/from16 v0, p4

    invoke-direct {v11, v7, v8, v0}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;-><init>(JLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;)V

    .line 267
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_17

    .line 268
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_15

    .line 269
    :try_start_2
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    .line 271
    :try_start_3
    invoke-virtual {v8, v0}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v10, v2

    move-object/from16 p2, v3

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v1, v0

    move-object/from16 v7, p2

    goto/16 :goto_20

    .line 273
    :cond_1
    :try_start_4
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_13

    .line 276
    :goto_0
    const-string v10, ", "

    const-wide/16 v12, 0x0

    move-object/from16 p2, v3

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    :try_start_5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    move-object/from16 v14, p0

    .line 278
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/io/File;

    .line 279
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/qianhe/baselib/utils/ZipUtil;->uniqueEntryName(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 282
    :try_start_6
    new-instance v15, Ljava/util/zip/ZipEntry;

    invoke-direct {v15, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 283
    invoke-virtual {v11}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->getDone()J

    move-result-wide v16
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v15, v10

    .line 284
    :try_start_7
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 285
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v18, v7

    :try_start_8
    new-instance v7, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v19, v6

    move-object v3, v15

    move-object v15, v8

    move-object/from16 v8, p5

    move-wide/from16 v20, v16

    move-object/from16 v17, v5

    move-wide v5, v12

    move-wide/from16 v12, v20

    :try_start_9
    invoke-direct/range {v7 .. v13}, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;JLcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;J)V

    invoke-static {v0, v15, v7}, Lcom/qianhe/baselib/utils/LogToFile;->decryptLogToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;)J

    .line 292
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V

    .line 293
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    add-long v7, v12, v9

    .line 294
    invoke-virtual {v11, v7, v8}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->setDone(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v9, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v7, p2

    :goto_2
    move-object/from16 v16, v1

    :goto_3
    move-object v10, v2

    :goto_4
    move-object v1, v0

    goto/16 :goto_20

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_5
    move-object v15, v8

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    :goto_6
    move-wide v5, v12

    move-object v3, v15

    move-object v15, v8

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v3, v10

    move-wide v5, v12

    .line 297
    :goto_7
    :try_start_a
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8df3\u8fc7\u65e0\u6cd5\u89e3\u5bc6\u538b\u7f29\u7684\u6587\u4ef6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v16, 0x1

    :goto_8
    move-object/from16 v7, p2

    move/from16 v12, v16

    move-object/from16 v5, v17

    move-object/from16 v16, v1

    move-object/from16 v1, v19

    goto/16 :goto_16

    .line 298
    :cond_2
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_3
    move-object/from16 v14, p0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v3, v10

    move-wide v5, v12

    .line 304
    :try_start_b
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    if-nez v0, :cond_d

    .line 306
    :try_start_c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v7, 0x4

    .line 305
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 307
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 308
    :try_start_d
    new-instance v8, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v8, v7}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 309
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v9, :cond_4

    :try_start_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 312
    new-instance v10, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda1;

    invoke-direct {v10, v9, v2, v4}, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    goto/16 :goto_2

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 314
    :goto_a
    :try_start_f
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    .line 315
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V

    .line 316
    invoke-virtual {v8}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;

    if-eqz v13, :cond_5

    .line 318
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move-object/from16 v16, v1

    move/from16 p4, v9

    move-object/from16 v5, v17

    move-object/from16 v1, v19

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    goto/16 :goto_13

    .line 327
    :cond_6
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v17

    invoke-static {v0, v5}, Lcom/qianhe/baselib/utils/ZipUtil;->uniqueEntryName(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 331
    :try_start_10
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz p3, :cond_7

    .line 333
    :try_start_11
    iget-object v6, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v16, v1

    move-object/from16 v1, v19

    :try_start_12
    invoke-static {v15, v6, v0, v1}, Lcom/qianhe/baselib/utils/ZipUtil;->addFileDeflated(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V

    goto :goto_d

    :catchall_5
    move-exception v0

    :goto_b
    move-object/from16 v17, v7

    goto/16 :goto_12

    :catch_4
    move-exception v0

    :goto_c
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move/from16 p4, v9

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v1, v19

    goto :goto_c

    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v1, v19

    .line 335
    iget-object v6, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    invoke-static {v15, v6, v0, v1}, Lcom/qianhe/baselib/utils/ZipUtil;->addFileStored(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :goto_d
    add-int/lit8 v10, v10, 0x1

    .line 345
    :try_start_13
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object/from16 v17, v7

    :try_start_14
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v19, v8

    move/from16 p4, v9

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V

    .line 346
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 347
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    :goto_e
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    move-object/from16 v7, v17

    goto/16 :goto_20

    :catchall_8
    move-exception v0

    :goto_f
    move-object/from16 v17, v7

    :goto_10
    move-object v1, v0

    move-object v10, v2

    goto/16 :goto_20

    :catch_6
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v7

    move/from16 p4, v9

    move-object/from16 v1, v19

    move-object/from16 v19, v8

    .line 339
    :goto_11
    :try_start_15
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result v6

    if-nez v6, :cond_8

    add-int/lit8 v12, v12, 0x1

    .line 343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u8df3\u8fc7\u65e0\u6cd5\u538b\u7f29\u7684\u89e3\u5bc6\u4e34\u65f6\u6587\u4ef6: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 345
    :try_start_16
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V

    .line 346
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 347
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_e

    :catchall_9
    move-exception v0

    goto :goto_12

    .line 340
    :cond_8
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 345
    :goto_12
    :try_start_18
    iget-object v1, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V

    .line 346
    iget-object v1, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 347
    iget-object v1, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 349
    :cond_9
    throw v0

    :catchall_a
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_f

    :goto_13
    add-int/lit8 v12, v12, 0x1

    if-eqz v13, :cond_b

    .line 320
    iget-object v0, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8df3\u8fc7\u89e3\u5bc6\u5931\u8d25\u7684\u6587\u4ef6: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v6, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->error:Ljava/lang/Exception;

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->error:Ljava/lang/Exception;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    :cond_a
    const-string v6, ""

    :goto_14
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :cond_b
    :goto_15
    add-int/lit8 v9, p4, 0x1

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    move-object/from16 v19, v1

    move-object/from16 v17, v5

    move-object/from16 v1, v16

    const-wide/16 v5, 0x0

    goto/16 :goto_a

    :cond_c
    move-object/from16 v16, v1

    move-object/from16 v5, v17

    move-object/from16 v1, v19

    move-object/from16 v17, v7

    move v9, v10

    goto :goto_16

    :catchall_b
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v7, p2

    goto/16 :goto_10

    :cond_d
    move-object/from16 v16, v1

    move-object/from16 v5, v17

    move-object/from16 v1, v19

    move-object/from16 v7, p2

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 353
    :goto_16
    :try_start_19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/io/File;

    .line 354
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V

    if-eqz v8, :cond_e

    .line 355
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    move-object/from16 v19, v1

    move-object v10, v2

    const-wide/16 v13, 0x0

    goto/16 :goto_1c

    .line 359
    :cond_f
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/qianhe/baselib/utils/ZipUtil;->uniqueEntryName(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    if-eqz p3, :cond_10

    .line 363
    :try_start_1a
    invoke-static {v15, v8, v0, v1}, Lcom/qianhe/baselib/utils/ZipUtil;->addFileDeflated(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V

    goto :goto_18

    :catchall_c
    move-exception v0

    move-object v10, v2

    goto :goto_1b

    :catch_7
    move-exception v0

    move-object/from16 v19, v1

    move-object v10, v2

    goto :goto_19

    .line 365
    :cond_10
    invoke-static {v15, v8, v0, v1}, Lcom/qianhe/baselib/utils/ZipUtil;->addFileStored(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :goto_18
    add-int/lit8 v9, v9, 0x1

    .line 375
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    move-object/from16 v19, v1

    move-object v10, v2

    const-wide/16 v1, 0x0

    :try_start_1c
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    goto :goto_1a

    :catchall_d
    move-exception v0

    goto/16 :goto_4

    :catchall_e
    move-exception v0

    goto/16 :goto_3

    .line 369
    :goto_19
    :try_start_1d
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result v1

    if-nez v1, :cond_11

    add-int/lit8 v12, v12, 0x1

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8df3\u8fc7\u65e0\u6cd5\u538b\u7f29\u7684\u6587\u4ef6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 375
    :try_start_1e
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    :goto_1a
    move-object v2, v10

    move-object/from16 v1, v19

    goto/16 :goto_17

    :catchall_f
    move-exception v0

    goto :goto_1b

    .line 370
    :cond_11
    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    .line 375
    :goto_1b
    :try_start_20
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->addDone(J)V

    .line 376
    throw v0

    :goto_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_12
    move-object v10, v2

    .line 379
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->throwIfCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)V

    if-eqz v9, :cond_15

    .line 383
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->finish()V

    if-lez v12, :cond_13

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u538b\u7f29\u5b8c\u6210(\u90e8\u5206): \u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e2a, \u8df3\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 387
    :cond_13
    :try_start_21
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    :try_start_22
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    if-eqz v7, :cond_14

    .line 399
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 401
    :try_start_23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-interface {v7, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_8

    goto :goto_1d

    .line 403
    :catch_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 406
    :cond_14
    :goto_1d
    invoke-static {v4}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteTempFiles(Ljava/util/List;)V

    .line 407
    invoke-static {v10}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteLogdecTempFiles(Ljava/io/File;)V

    .line 410
    invoke-virtual {v11}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->finish()V

    return-object v16

    :catchall_10
    move-exception v0

    move-object v3, v7

    goto/16 :goto_27

    :catch_9
    move-exception v0

    goto :goto_24

    :catchall_11
    move-exception v0

    :goto_1e
    move-object v1, v0

    goto :goto_22

    .line 381
    :cond_15
    :try_start_24
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "\u6ca1\u6709\u53ef\u538b\u7f29\u7684\u6709\u6548\u6587\u4ef6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    :catchall_12
    move-exception v0

    move-object/from16 v16, v1

    move-object v10, v2

    :goto_1f
    move-object/from16 v7, p2

    goto/16 :goto_4

    :catchall_13
    move-exception v0

    move-object/from16 v16, v1

    move-object v10, v2

    move-object/from16 p2, v3

    move-object/from16 v18, v7

    move-object v15, v8

    goto :goto_1f

    .line 267
    :goto_20
    :try_start_25
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    goto :goto_21

    :catchall_14
    move-exception v0

    :try_start_26
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    :catchall_15
    move-exception v0

    move-object/from16 v16, v1

    move-object v10, v2

    move-object/from16 p2, v3

    move-object/from16 v18, v7

    move-object/from16 v7, p2

    goto :goto_1e

    :goto_22
    :try_start_27
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    goto :goto_23

    :catchall_16
    move-exception v0

    :try_start_28
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_9
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    :catchall_17
    move-exception v0

    move-object v10, v2

    move-object/from16 p2, v3

    goto :goto_27

    :catch_a
    move-exception v0

    move-object/from16 v16, v1

    move-object v10, v2

    move-object/from16 p2, v3

    move-object/from16 v7, p2

    .line 388
    :goto_24
    :try_start_29
    invoke-static/range {p5 .. p5}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 389
    const-string/jumbo v0, "\u538b\u7f29\u5df2\u53d6\u6d88"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_25

    .line 391
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u538b\u7f29\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 393
    :goto_25
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_17

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u538b\u7f29\u5931\u8d25: \u65e0\u6cd5\u5220\u9664\u4e0d\u5b8c\u6574\u7684\u538b\u7f29\u5305 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    :cond_17
    if-eqz v7, :cond_18

    .line 399
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 401
    :try_start_2a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-interface {v7, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_b

    goto :goto_26

    .line 403
    :catch_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 406
    :cond_18
    :goto_26
    invoke-static {v4}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteTempFiles(Ljava/util/List;)V

    .line 407
    invoke-static {v10}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteLogdecTempFiles(Ljava/io/File;)V

    return-object p2

    :goto_27
    if-eqz v3, :cond_19

    .line 399
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 401
    :try_start_2b
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    invoke-interface {v3, v5, v6, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_c

    goto :goto_28

    .line 403
    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 406
    :cond_19
    :goto_28
    invoke-static {v4}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteTempFiles(Ljava/util/List;)V

    .line 407
    invoke-static {v10}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteLogdecTempFiles(Ljava/io/File;)V

    .line 408
    throw v0
.end method

.method public static zipLogUploadPackage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, p1, p2, v0}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadPackage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zipLogUploadPackage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, p2, p3, v0}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadPackage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zipLogUploadPackage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;",
            "Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/qianhe/baselib/utils/ZipUtil;->toExistingFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/qianhe/baselib/utils/ZipUtil;->filterExisting(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 130
    const-string/jumbo p0, "\u538b\u7f29\u5931\u8d25: \u6e90\u6587\u4ef6\u5217\u8868\u4e3a\u7a7a"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v6

    .line 134
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v3, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadInternal(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zipLogUploadPackage DEFLATED ok: enc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " plain="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " zipSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " costMs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-object p0

    .line 143
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 144
    const-string/jumbo p0, "zipLogUploadPackage cancelled"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-object v6

    .line 148
    :cond_2
    const-string p0, "DEFLATED\u538b\u7f29\u5931\u8d25\uff0c\u5c1d\u8bd5STORED\u65e0\u538b\u7f29\u65b9\u5f0f"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 149
    invoke-static/range {v0 .. v5}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadInternal(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    .line 153
    :cond_3
    invoke-static/range {p4 .. p4}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v6

    .line 157
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-static {p0}, Lcom/qianhe/baselib/utils/ZipUtil;->findLatestFilesByPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6279\u91cf\u538b\u7f29\u5931\u8d25\uff0c\u5c1d\u8bd5\u4ec5\u538b\u7f29\u5404\u7c7b\u578b\u6700\u8fd1\u65e5\u5fd7(\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e2a)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 163
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_5
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/4 v12, 0x1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 172
    invoke-static/range {v9 .. v14}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadInternal(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 176
    :cond_7
    invoke-static/range {p4 .. p4}, Lcom/qianhe/baselib/utils/ZipUtil;->isCancelled(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Z

    move-result p0

    if-eqz p0, :cond_8

    return-object v6

    :cond_8
    const/4 v12, 0x0

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 179
    invoke-static/range {v9 .. v14}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadInternal(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    return-object v6
.end method

.method public static zipWithPassword(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 706
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 707
    const-string/jumbo p0, "zipWithPassword: \u76ee\u6807\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 710
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 711
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 713
    const-string/jumbo p0, "zipWithPassword: \u6e90\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v1

    .line 716
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 718
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_4

    .line 719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "zipWithPassword: \u65e0\u6cd5\u521b\u5efa\u76ee\u5f55 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v1

    .line 722
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5

    .line 723
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "zipWithPassword: \u65e0\u6cd5\u8986\u76d6\u5df2\u6709\u6587\u4ef6 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v1

    :cond_5
    if-nez p1, :cond_6

    .line 726
    const-string/jumbo p1, "yct.xfix"

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 727
    new-instance p1, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {p1, v0, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 729
    :try_start_0
    new-instance p0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 730
    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 731
    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 732
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 733
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V

    if-eqz p2, :cond_9

    .line 735
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 736
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_7

    .line 737
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    .line 740
    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setFileNameInZip(Ljava/lang/String;)V

    .line 741
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :try_start_1
    invoke-virtual {p1, v2, p0}, Lnet/lingala/zip4j/ZipFile;->addStream(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    .line 741
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_9
    if-eqz p3, :cond_c

    .line 747
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_3

    .line 751
    :cond_b
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setFileNameInZip(Ljava/lang/String;)V

    .line 752
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 753
    :try_start_5
    invoke-virtual {p1, v2, p0}, Lnet/lingala/zip4j/ZipFile;->addStream(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 754
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 752
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    .line 757
    :cond_c
    invoke-virtual {p1}, Lnet/lingala/zip4j/ZipFile;->close()V

    .line 758
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-gtz p0, :cond_d

    goto :goto_5

    :cond_d
    return-object v0

    .line 759
    :cond_e
    :goto_5
    const-string/jumbo p0, "zipWithPassword: \u751f\u6210\u6587\u4ef6\u65e0\u6548"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-object v1

    .line 764
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "zipWithPassword: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 767
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 770
    :cond_f
    :try_start_9
    invoke-virtual {p1}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    return-object v1
.end method

.method public static zipWithPassword(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 701
    const-string/jumbo v0, "yct.xfix"

    invoke-static {p0, v0, p1, p2}, Lcom/qianhe/baselib/utils/ZipUtil;->zipWithPassword(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
