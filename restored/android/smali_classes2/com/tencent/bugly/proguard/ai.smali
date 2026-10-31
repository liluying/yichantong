.class public final Lcom/tencent/bugly/proguard/ai;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/ai;


# instance fields
.field public a:Lcom/tencent/bugly/proguard/ah;

.field private final c:Lcom/tencent/bugly/proguard/w;

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/Map;

.field private f:J

.field private g:J

.field private h:Ljava/util/concurrent/LinkedBlockingQueue;

.field private i:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final j:Ljava/lang/Object;

.field private k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ai;->e:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ai;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 82
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ai;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ai;->j:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ai;->k:J

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/tencent/bugly/proguard/ai;->l:I

    .line 95
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ai;->d:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/ai;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/ai;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ai;->b:Lcom/tencent/bugly/proguard/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ai;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/ai;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ai;->b:Lcom/tencent/bugly/proguard/ai;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/tencent/bugly/proguard/ai;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/ai;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ai;->b:Lcom/tencent/bugly/proguard/ai;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/ai;->b:Lcom/tencent/bugly/proguard/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ai;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/bugly/proguard/ai;->j:Ljava/lang/Object;

    return-object p0
.end method

.method private a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;Z)V
    .locals 11

    .line 173
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/aj;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ai;->d:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/aj;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;IIZ)V

    move-object p2, v0

    const/4 p4, 0x0

    const-wide/16 v0, 0x0

    move-object p1, p0

    move/from16 p3, p7

    move-wide/from16 p5, v0

    .line 176
    invoke-direct/range {p1 .. p6}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 178
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private a(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 472
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v3

    if-lez p1, :cond_0

    .line 474
    const-string v4, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v6, v8, v2

    aput-object v7, v8, v0

    .line 474
    invoke-static {v4, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 479
    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    .line 483
    iget-object v6, p0, Lcom/tencent/bugly/proguard/ai;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 485
    :try_start_0
    iget v7, p0, Lcom/tencent/bugly/proguard/ai;->l:I

    if-lt v7, v0, :cond_1

    if-eqz v3, :cond_1

    .line 488
    invoke-virtual {v3, v5}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;)Z

    .line 489
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 493
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    const-string v6, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "BUGLY_ASYNC_UPLOAD"

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 496
    new-instance v6, Lcom/tencent/bugly/proguard/ai$1;

    invoke-direct {v6, p0, v5}, Lcom/tencent/bugly/proguard/ai$1;-><init>(Lcom/tencent/bugly/proguard/ai;Ljava/lang/Runnable;)V

    const-string v7, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 506
    iget-object v6, p0, Lcom/tencent/bugly/proguard/ai;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 508
    :try_start_1
    iget v5, p0, Lcom/tencent/bugly/proguard/ai;->l:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/tencent/bugly/proguard/ai;->l:I

    .line 509
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 512
    :cond_2
    const-string v6, "[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0, v5, v2}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;Z)Z

    :goto_1
    add-int/2addr v4, v2

    goto :goto_0

    .line 493
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 588
    const-string p1, "[UploadManager] Upload task should not be null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 592
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    .line 591
    const-string v2, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)"

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 593
    const-string v2, "BUGLY_SYNC_UPLOAD"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_1

    .line 595
    const-string p2, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 598
    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;Z)Z

    return-void

    .line 602
    :cond_1
    :try_start_0
    invoke-virtual {v2, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 606
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    .line 604
    const-string p2, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 608
    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;Z)Z

    .line 610
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ai;->b()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;ZZJ)V
    .locals 4

    .line 627
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 628
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 627
    const-string v0, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 630
    invoke-direct {p0, p1, p4, p5}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 632
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;Z)Z

    .line 634
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ai;->b()V

    return-void
.end method

.method private static a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 452
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 457
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 458
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 461
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 460
    const-string v3, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 558
    const-string p1, "[UploadManager] Upload task should not be null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    .line 562
    :cond_0
    :try_start_0
    const-string v2, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    .line 563
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    .line 562
    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 565
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ai;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    .line 568
    :try_start_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/ai;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 570
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/ai;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 572
    :goto_0
    monitor-exit v2

    return v0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 575
    const-string p2, "[UploadManager] Failed to add upload task to queue: %s"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/ai;)I
    .locals 1

    .line 30
    iget v0, p0, Lcom/tencent/bugly/proguard/ai;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/ai;->l:I

    return v0
.end method

.method private b()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 401
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v3

    .line 405
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 406
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 409
    iget-object v6, p0, Lcom/tencent/bugly/proguard/ai;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 410
    :try_start_0
    const-string v7, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    .line 412
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v2

    aput-object v9, v10, v0

    .line 410
    invoke-static {v7, v10}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 413
    iget-object v7, p0, Lcom/tencent/bugly/proguard/ai;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v7

    .line 414
    iget-object v8, p0, Lcom/tencent/bugly/proguard/ai;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 416
    const-string v0, "[UploadManager] There is no upload task in queue."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 417
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 429
    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ak;->c()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v8, 0x0

    .line 434
    :cond_2
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ai;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v3, v4, v7}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    .line 436
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ai;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v3, v5, v8}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    .line 437
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-direct {p0, v7, v4}, Lcom/tencent/bugly/proguard/ai;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V

    if-lez v8, :cond_3

    .line 1526
    const-string v3, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    .line 1528
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v2

    aput-object v6, v9, v0

    aput-object v7, v9, v1

    .line 1526
    invoke-static {v3, v9}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1531
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1534
    new-instance v1, Lcom/tencent/bugly/proguard/ai$2;

    invoke-direct {v1, p0, v8, v5}, Lcom/tencent/bugly/proguard/ai$2;-><init>(Lcom/tencent/bugly/proguard/ai;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    .line 437
    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ai;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 339
    :cond_0
    :try_start_1
    const-string v0, "[UploadManager] Unknown upload ID: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_1
    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Z)J
    .locals 11

    const/4 v0, 0x0

    .line 225
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    move-result-wide v1

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    .line 228
    :goto_0
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    invoke-virtual {v5, v4}, Lcom/tencent/bugly/proguard/w;->a(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 229
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-wide/16 v6, 0x0

    .line 231
    :try_start_0
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/y;

    .line 232
    iget-wide v8, p1, Lcom/tencent/bugly/proguard/y;->e:J

    cmp-long v10, v8, v1

    if-ltz v10, :cond_2

    .line 233
    iget-object v1, p1, Lcom/tencent/bugly/proguard/y;->g:[B

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ap;->d([B)J

    move-result-wide v6

    if-ne v4, v3, :cond_1

    .line 235
    iput-wide v6, p0, Lcom/tencent/bugly/proguard/ai;->f:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 237
    :cond_1
    iput-wide v6, p0, Lcom/tencent/bugly/proguard/ai;->g:J

    .line 239
    :goto_1
    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 242
    :goto_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 244
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 245
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    invoke-virtual {p1, v5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/util/List;)V

    goto :goto_5

    :cond_3
    if-eqz p1, :cond_4

    .line 248
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/ai;->g:J

    :goto_4
    move-wide v6, v1

    goto :goto_5

    :cond_4
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/ai;->f:J

    goto :goto_4

    :cond_5
    :goto_5
    const-wide/16 v1, 0x400

    .line 250
    div-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "[UploadManager] Local network consume: %d KB"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v6
.end method

.method public final declared-synchronized a(IJ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ai;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v2, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 314
    iput p1, v2, Lcom/tencent/bugly/proguard/y;->b:I

    .line 315
    iput-wide p2, v2, Lcom/tencent/bugly/proguard/y;->e:J

    .line 316
    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/bugly/proguard/y;->c:Ljava/lang/String;

    .line 317
    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/String;

    .line 318
    new-array v3, v1, [B

    iput-object v3, v2, Lcom/tencent/bugly/proguard/y;->g:[B

    .line 319
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    invoke-virtual {v3, p1}, Lcom/tencent/bugly/proguard/w;->b(I)V

    .line 320
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/y;)Z

    .line 321
    const-string v2, "[UploadManager] Uploading(ID:%d) time: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 322
    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/ap;->a(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p2, p3, v0

    .line 321
    invoke-static {v2, p3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 324
    :cond_0
    :try_start_1
    const-string p2, "[UploadManager] Unknown uploading ID: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/bq;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;JZ)V
    .locals 11

    .line 152
    iget v3, p2, Lcom/tencent/bugly/proguard/bq;->g:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ae;->a(Ljava/lang/Object;)[B

    move-result-object v4

    .line 1128
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/aj;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ai;->d:Landroid/content/Context;

    move v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/proguard/aj;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;Z)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v5, p0

    move-wide/from16 v9, p6

    move-object v6, v0

    .line 1131
    invoke-direct/range {v5 .. v10}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1133
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/bq;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;Z)V
    .locals 8

    .line 214
    iget v2, p2, Lcom/tencent/bugly/proguard/bq;->g:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ae;->a(Ljava/lang/Object;)[B

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/ai;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;Z)V

    return-void
.end method

.method protected final declared-synchronized a(JZ)V
    .locals 4

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 291
    :goto_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 292
    iput v0, v1, Lcom/tencent/bugly/proguard/y;->b:I

    .line 293
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->e:J

    .line 294
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->c:Ljava/lang/String;

    .line 295
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/String;

    .line 296
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/ap;->c(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->g:[B

    .line 297
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/w;->b(I)V

    .line 298
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ai;->c:Lcom/tencent/bugly/proguard/w;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/y;)Z

    if-eqz p3, :cond_1

    .line 300
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ai;->g:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 302
    :cond_1
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ai;->f:J

    .line 304
    :goto_1
    const-string p3, "[UploadManager] Network total consume: %d KB"

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(I)Z
    .locals 7

    .line 351
    sget-boolean v0, Lcom/tencent/bugly/proguard/p;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 352
    const-string p1, "Uploading frequency will not be checked if SDK is in debug mode."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    .line 355
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ai;->a(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    .line 356
    div-long v5, v3, v5

    .line 357
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object p1, v5, v1

    .line 356
    const-string p1, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    invoke-static {p1, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v5, 0x7530

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    const-wide/16 v3, 0x1e

    .line 360
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 359
    const-string p1, "[UploadManager] Data only be uploaded once in %d seconds."

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v1
.end method
