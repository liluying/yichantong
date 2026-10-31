.class public Lcom/qianhe/yct/utils/BsPatchManager;
.super Ljava/lang/Object;
.source "BsPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/qianhe/yct/utils/BsPatchManager;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$N1V5-s6rYlaOtnoGjWD0kldZLWs(Lcom/qianhe/yct/utils/BsPatchManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/Future;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "\u5dee\u5206\u5305\u5408\u5e76\u8d85\u65f6(600000ms)\uff0c\u56de\u843d\u5b8c\u6574\u5305"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 85
    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 86
    new-instance p2, Lcom/qh/bspatch/BsPatch$Result;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "merge timeout"

    invoke-direct {p2, v1, v2, v0}, Lcom/qh/bspatch/BsPatch$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p2}, Lcom/qianhe/yct/utils/BsPatchManager;->notifyError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Lcom/qh/bspatch/BsPatch$Result;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$aBtBhi-agUQYybBm294tSos7tU0(Lcom/qianhe/yct/utils/BsPatchManager;Ljava/lang/String;Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string v0, "  \u2014\u2014\u2014\u2014  "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5dee\u5206\u5305md5\u6bd4\u5bf9\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_file_md5:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const-string v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 53
    invoke-interface {p3}, Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;->onProcessing()V

    :cond_1
    if-eqz p2, :cond_6

    .line 54
    iget-object v4, p2, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->diff_file_md5:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 59
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f00\u59cbBsPatch.patch old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " patch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 60
    invoke-static {p5, p1, p6}, Lcom/qh/bspatch/BsPatch;->patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qh/bspatch/BsPatch$Result;

    move-result-object p1

    .line 61
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5dee\u5206\u5305\u5408\u5e76\u7ed3\u679c\uff1a"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/qh/bspatch/BsPatch$Result;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "result = null"

    :goto_1
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 62
    iget-boolean p5, p1, Lcom/qh/bspatch/BsPatch$Result;->success:Z

    if-eqz p5, :cond_5

    .line 63
    invoke-static {p6}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5408\u5e76\u540e \u5b8c\u6574\u5305md5\u6bd4\u5bf9\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_file_md5:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 65
    iget-object p2, p2, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->full_file_md5:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p4, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 67
    invoke-interface {p3, p6}, Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_4
    invoke-direct {p0, p4, p3, p1}, Lcom/qianhe/yct/utils/BsPatchManager;->notifyError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Lcom/qh/bspatch/BsPatch$Result;)V

    return-void

    .line 73
    :cond_5
    invoke-direct {p0, p4, p3, p1}, Lcom/qianhe/yct/utils/BsPatchManager;->notifyError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Lcom/qh/bspatch/BsPatch$Result;)V

    return-void

    .line 56
    :cond_6
    :goto_2
    invoke-direct {p0, p4, p3, v1}, Lcom/qianhe/yct/utils/BsPatchManager;->notifyError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Lcom/qh/bspatch/BsPatch$Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 77
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "\u5dee\u5206\u5305\u5408\u5e76\u5f02\u5e38(Throwable)\uff1a"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 78
    new-instance p2, Lcom/qh/bspatch/BsPatch$Result;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1, v1}, Lcom/qh/bspatch/BsPatch$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p3, p2}, Lcom/qianhe/yct/utils/BsPatchManager;->notifyError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Lcom/qh/bspatch/BsPatch$Result;)V

    :cond_7
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/BsPatchManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/BsPatchManager;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/yct/utils/BsPatchManager;
    .locals 2

    const-class v0, Lcom/qianhe/yct/utils/BsPatchManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/utils/BsPatchManager;->INSTANCE:Lcom/qianhe/yct/utils/BsPatchManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/qianhe/yct/utils/BsPatchManager;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/BsPatchManager;-><init>()V

    sput-object v1, Lcom/qianhe/yct/utils/BsPatchManager;->INSTANCE:Lcom/qianhe/yct/utils/BsPatchManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/yct/utils/BsPatchManager;->INSTANCE:Lcom/qianhe/yct/utils/BsPatchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Lcom/qh/bspatch/BsPatch$Result;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 93
    invoke-interface {p2, p3}, Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;->onError(Lcom/qh/bspatch/BsPatch$Result;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public merge(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;)V
    .locals 9

    .line 48
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    iget-object v8, p0, Lcom/qianhe/yct/utils/BsPatchManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v2, p3

    move-object v7, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/utils/BsPatchManager;Ljava/lang/String;Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 82
    iget-object p2, v1, Lcom/qianhe/yct/utils/BsPatchManager;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v5, p1, v4}, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/BsPatchManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/Future;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;)V

    const-wide/32 p4, 0x927c0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p3, p4, p5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/qianhe/yct/utils/BsPatchManager;->INSTANCE:Lcom/qianhe/yct/utils/BsPatchManager;

    return-void
.end method
