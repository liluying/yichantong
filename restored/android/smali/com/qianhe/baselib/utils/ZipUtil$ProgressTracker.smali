.class final Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressTracker"
.end annotation


# instance fields
.field private doneBytes:J

.field private lastPercent:I

.field private final listener:Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;

.field private final totalBytes:J


# direct methods
.method constructor <init>(JLcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;)V
    .locals 2

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 447
    iput v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->lastPercent:I

    const-wide/16 v0, 0x1

    .line 450
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->totalBytes:J

    .line 451
    iput-object p3, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->listener:Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;

    .line 452
    invoke-direct {p0}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->publish()V

    return-void
.end method

.method private publish()V
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-direct {p0, v0}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->publish(Z)V

    return-void
.end method

.method private publish(Z)V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->listener:Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x64

    goto :goto_0

    .line 485
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->doneBytes:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->totalBytes:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x63

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    .line 486
    :goto_0
    iget v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->lastPercent:I

    if-eq p1, v0, :cond_2

    .line 487
    iput p1, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->lastPercent:I

    .line 488
    iget-object v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->listener:Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;

    invoke-interface {v0, p1}, Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;->onProgress(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method declared-synchronized addDone(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 461
    monitor-exit p0

    return-void

    .line 463
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->totalBytes:J

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->doneBytes:J

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->doneBytes:J

    .line 464
    invoke-direct {p0}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->publish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized finish()V
    .locals 2

    monitor-enter p0

    .line 473
    :try_start_0
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->totalBytes:J

    iput-wide v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->doneBytes:J

    const/4 v0, 0x1

    .line 474
    invoke-direct {p0, v0}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->publish(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized getDone()J
    .locals 2

    monitor-enter p0

    .line 456
    :try_start_0
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->doneBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setDone(J)V
    .locals 4

    monitor-enter p0

    .line 468
    :try_start_0
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->totalBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->doneBytes:J

    .line 469
    invoke-direct {p0}, Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;->publish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
