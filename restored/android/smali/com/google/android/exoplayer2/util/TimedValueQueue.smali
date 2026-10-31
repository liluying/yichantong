.class public final Lcom/google/android/exoplayer2/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "TimedValueQueue.java"


# instance fields
.field private first:I

.field private size:I

.field private timestamps:[J

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    return-void
.end method

.method private static newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 182
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private poll(JZ)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    .line 120
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-lez v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    aget-wide v4, v3, v4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    if-nez p3, :cond_1

    neg-long v6, v4

    cmp-long v3, v6, v1

    if-ltz v3, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private popFirst()Ljava/lang/Object;
    .locals 5

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 135
    aput-object v4, v0, v2

    add-int/2addr v2, v1

    .line 136
    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    return-object v3
.end method


# virtual methods
.method public declared-synchronized poll(J)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized pollFloor(J)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 90
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
