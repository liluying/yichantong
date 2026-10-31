.class public final Lcom/tencent/bugly/proguard/aj;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:I

.field protected b:J

.field protected c:J

.field private d:I

.field private e:I

.field private final f:Landroid/content/Context;

.field private final g:I

.field private final h:[B

.field private final i:Lcom/tencent/bugly/proguard/aa;

.field private final j:Lcom/tencent/bugly/proguard/ac;

.field private final k:Lcom/tencent/bugly/proguard/af;

.field private final l:Lcom/tencent/bugly/proguard/ai;

.field private final m:I

.field private final n:Lcom/tencent/bugly/proguard/ah;

.field private final o:Lcom/tencent/bugly/proguard/ah;

.field private p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/Map;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;IIZ)V
    .locals 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    const/16 v0, 0x7530

    .line 45
    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->e:I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    const-wide/16 v2, 0x0

    .line 63
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    .line 64
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    .line 66
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    .line 105
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->f:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    .line 107
    iput-object p4, p0, Lcom/tencent/bugly/proguard/aj;->h:[B

    .line 108
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    .line 1069
    sget-object p4, Lcom/tencent/bugly/proguard/af;->a:Lcom/tencent/bugly/proguard/af;

    if-nez p4, :cond_0

    .line 1070
    new-instance p4, Lcom/tencent/bugly/proguard/af;

    invoke-direct {p4, p1}, Lcom/tencent/bugly/proguard/af;-><init>(Landroid/content/Context;)V

    sput-object p4, Lcom/tencent/bugly/proguard/af;->a:Lcom/tencent/bugly/proguard/af;

    .line 1072
    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/af;->a:Lcom/tencent/bugly/proguard/af;

    .line 109
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    .line 110
    invoke-static {}, Lcom/tencent/bugly/proguard/ai;->a()Lcom/tencent/bugly/proguard/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    .line 111
    iput p2, p0, Lcom/tencent/bugly/proguard/aj;->m:I

    .line 112
    iput-object p5, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/lang/String;

    .line 114
    iput-object p7, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ah;

    .line 115
    iget-object p1, p1, Lcom/tencent/bugly/proguard/ai;->a:Lcom/tencent/bugly/proguard/ah;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->o:Lcom/tencent/bugly/proguard/ah;

    .line 116
    iput p3, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    if-lez p8, :cond_1

    .line 118
    iput p8, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    :cond_1
    if-lez p9, :cond_2

    .line 121
    iput p9, p0, Lcom/tencent/bugly/proguard/aj;->e:I

    .line 124
    :cond_2
    iput-boolean p10, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    .line 125
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;Z)V
    .locals 11

    const/4 v8, 0x2

    const/16 v9, 0x7530

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p8

    .line 84
    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/aj;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;IIZ)V

    return-void
.end method

.method private a(Ljava/util/Map;)Landroid/util/Pair;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 4453
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 4457
    :cond_0
    const-string v3, "status"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "[Upload] Headers does not contain %s"

    if-nez v4, :cond_1

    .line 4458
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4462
    :cond_1
    const-string v4, "Bugly-Version"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4463
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v5, v3}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4466
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4467
    const-string v5, "bugly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4468
    const-string v3, "[Upload] Bugly version is not valid: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 4471
    :cond_3
    const-string v5, "[Upload] Bugly version from headers is: %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 354
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    const-string v3, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 357
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    .line 355
    invoke-static {v3, v7}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_4

    .line 367
    const-string v0, "status of server is "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    .line 369
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 371
    :cond_4
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    const/4 p1, -0x1

    .line 360
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {p1}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    .line 363
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 4454
    :cond_5
    :goto_0
    const-string v3, "[Upload] Headers is empty."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 338
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    .line 336
    const-string v3, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 339
    const-string v3, "[Upload] Failed to upload for no status header."

    invoke-static {v3}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 344
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v4, v6, v1

    .line 343
    const-string v4, "[key]: %s, [value]: %s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 347
    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 348
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a([BLjava/util/Map;)Landroid/util/Pair;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 305
    const-string p1, "Failed to upload for no response!"

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    .line 307
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 309
    :cond_0
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "[Upload] Received %d bytes"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 311
    array-length p1, p1

    if-nez p1, :cond_2

    .line 312
    const-string p1, "response data from server is empty"

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 316
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object p2, v3, v1

    .line 317
    const-string p2, "[Upload] HTTP headers from server: key = %s, value = %s"

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 324
    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p0, v2, v0

    const-string p0, "[Upload] Failed to upload(%d): %s"

    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private a(ZILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 157
    iget v2, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    const/16 v3, 0x276

    if-eq v2, v3, :cond_1

    const/16 v3, 0x280

    if-eq v2, v3, :cond_0

    const/16 v3, 0x33e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x348

    if-eq v2, v3, :cond_0

    .line 167
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_0
    const-string v2, "userinfo"

    goto :goto_0

    .line 161
    :cond_1
    const-string v2, "crash"

    :goto_0
    if-eqz p1, :cond_2

    .line 170
    const-string p2, "[Upload] Success: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    aput-object v2, v3, v1

    const/4 p2, 0x2

    aput-object p3, v3, p2

    const-string p2, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 175
    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    .line 176
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    .line 177
    invoke-virtual {p2, v0}, Lcom/tencent/bugly/proguard/ai;->a(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    add-long/2addr v0, v2

    .line 178
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    invoke-virtual {p2, v0, v1, v2}, Lcom/tencent/bugly/proguard/ai;->a(JZ)V

    .line 181
    :cond_3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ah;

    if-eqz p2, :cond_4

    .line 182
    invoke-interface {p2, p1, p3}, Lcom/tencent/bugly/proguard/ah;->a(ZLjava/lang/String;)V

    .line 184
    :cond_4
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->o:Lcom/tencent/bugly/proguard/ah;

    if-eqz p2, :cond_5

    .line 185
    invoke-interface {p2, p1, p3}, Lcom/tencent/bugly/proguard/ah;->a(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/br;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ac;)Z
    .locals 6

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 195
    const-string p0, "resp == null!"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 199
    :cond_0
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/br;->a:B

    if-eqz v1, :cond_1

    .line 200
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    new-array p1, p2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "resp result error %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 204
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v1

    sget v2, Lcom/tencent/bugly/proguard/ac;->a:I

    const-string v3, "device"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    const-string v5, "UTF-8"

    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 206
    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;[BZ)Z

    .line 208
    iget-object v1, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/aa;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 211
    invoke-static {v1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 213
    :cond_2
    :goto_0
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/br;->e:J

    iput-wide v1, p1, Lcom/tencent/bugly/proguard/aa;->m:J

    .line 216
    iget p1, p0, Lcom/tencent/bugly/proguard/br;->b:I

    const/16 v1, 0x1fe

    if-ne p1, v1, :cond_4

    .line 217
    iget-object v1, p0, Lcom/tencent/bugly/proguard/br;->c:[B

    if-nez v1, :cond_3

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, p2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 221
    :cond_3
    const-class p1, Lcom/tencent/bugly/proguard/bt;

    .line 222
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/ae;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 224
    iget p0, p0, Lcom/tencent/bugly/proguard/br;->b:I

    .line 225
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, p2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    .line 224
    const-string p0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_4
    return p2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 441
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 445
    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 447
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 432
    iget v0, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    .line 433
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 437
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    return-void
.end method

.method public final run()V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 237
    :try_start_0
    iput v1, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    const-wide/16 v3, 0x0

    .line 238
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    .line 239
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    .line 1508
    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1509
    const-string v3, "network is not available"

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 1512
    :cond_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->h:[B

    if-eqz v3, :cond_5

    array-length v3, v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1516
    :cond_1
    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->f:Landroid/content/Context;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    if-nez v4, :cond_2

    goto :goto_0

    .line 1520
    :cond_2
    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1522
    const-string v3, "illegal local strategy"

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 1517
    :cond_4
    :goto_0
    const-string v3, "illegal access error"

    goto :goto_2

    .line 1513
    :cond_5
    :goto_1
    const-string v3, "request package is empty!"

    :goto_2
    if-eqz v3, :cond_6

    .line 245
    invoke-direct {p0, v1, v1, v3}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    return-void

    .line 250
    :cond_6
    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->h:[B

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ap;->a([B)[B

    move-result-object v3

    if-nez v3, :cond_7

    .line 252
    const-string v0, "failed to zip request body"

    invoke-direct {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    return-void

    .line 2480
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 2481
    const-string v5, "tls"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    const-string v5, "prodId"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/aa;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    const-string v5, "bundleId"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/aa;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    const-string v5, "appVer"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/aa;->o:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 2488
    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2492
    :cond_8
    const-string v5, "cmd"

    iget v6, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    const-string v5, "platformId"

    .line 2494
    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    .line 2493
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    const-string v5, "sdkVer"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/aa;->h:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    const-string v5, "strategylastUpdateTime"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    .line 2497
    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v6

    iget-wide v6, v6, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 2496
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3132
    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    iget v6, p0, Lcom/tencent/bugly/proguard/aj;->m:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/bugly/proguard/ai;->a(IJ)V

    .line 259
    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/lang/String;

    .line 261
    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v6, 0x1

    .line 262
    iget v9, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    if-ge v6, v9, :cond_11

    if-le v8, v2, :cond_9

    .line 264
    const-string v6, "[Upload] Failed to upload last time, wait and try(%d) again."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 265
    iget v6, p0, Lcom/tencent/bugly/proguard/aj;->e:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/ap;->b(J)V

    .line 266
    iget v6, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    if-ne v8, v6, :cond_9

    .line 267
    const-string v5, "[Upload] Use the back-up url at the last time: %s"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/lang/String;

    .line 273
    :cond_9
    const-string v6, "[Upload] Send %d bytes"

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 274
    invoke-static {v5}, Lcom/tencent/bugly/proguard/aj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    const-string v6, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    iget v7, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    .line 276
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v1

    aput-object v7, v11, v2

    aput-object v9, v11, v0

    const/4 v7, 0x3

    aput-object v10, v11, v7

    .line 275
    invoke-static {v6, v11}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    invoke-virtual {v6, v5, v3, p0, v4}, Lcom/tencent/bugly/proguard/af;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/aj;Ljava/util/Map;)[B

    move-result-object v6

    .line 278
    iget-object v7, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/af;->c:Ljava/util/Map;

    .line 3414
    invoke-direct {p0, v6, v7}, Lcom/tencent/bugly/proguard/aj;->a([BLjava/util/Map;)Landroid/util/Pair;

    move-result-object v9

    .line 3415
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_a

    .line 3416
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto/16 :goto_6

    .line 3419
    :cond_a
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v7

    .line 3420
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_b

    .line 3421
    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_6

    .line 4382
    :cond_b
    invoke-static {v6}, Lcom/tencent/bugly/proguard/ap;->b([B)[B

    move-result-object v7

    if-eqz v7, :cond_c

    move-object v6, v7

    .line 4387
    :cond_c
    invoke-static {v6}, Lcom/tencent/bugly/proguard/ae;->a([B)Lcom/tencent/bugly/proguard/br;

    move-result-object v6

    if-nez v6, :cond_d

    .line 4389
    const-string v6, "failed to decode response package"

    invoke-direct {p0, v1, v2, v6}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    .line 4391
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 4394
    :cond_d
    const-string v7, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    iget v9, v6, Lcom/tencent/bugly/proguard/br;->b:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v6, Lcom/tencent/bugly/proguard/br;->c:[B

    if-nez v10, :cond_e

    const/4 v10, 0x0

    goto :goto_4

    :cond_e
    array-length v10, v10

    .line 4395
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v9, v11, v1

    aput-object v10, v11, v2

    .line 4394
    invoke-static {v7, v11}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4397
    iget-object v7, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    invoke-static {v6, v7, v9}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/br;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ac;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 4398
    const-string v6, "failed to process response package"

    invoke-direct {p0, v1, v0, v6}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    .line 4400
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 4402
    :cond_f
    const-string v6, "successfully uploaded"

    invoke-direct {p0, v2, v0, v6}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    .line 4403
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3425
    :goto_5
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_10

    .line 3426
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_12

    move v6, v8

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 289
    :cond_11
    const-string v0, "failed after many attempts"

    invoke-direct {p0, v1, v7, v0}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 291
    :goto_7
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    return-void
.end method
