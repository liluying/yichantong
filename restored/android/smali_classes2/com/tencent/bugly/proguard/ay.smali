.class public final Lcom/tencent/bugly/proguard/ay;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static f:Lcom/tencent/bugly/proguard/ay;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Landroid/app/ActivityManager;

.field final c:Lcom/tencent/bugly/proguard/aa;

.field final d:Lcom/tencent/bugly/proguard/ak;

.field e:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/tencent/bugly/proguard/ac;

.field private final i:Lcom/tencent/bugly/proguard/as;

.field private final j:Ljava/lang/Object;

.field private k:Landroid/os/FileObserver;

.field private l:Z

.field private m:Lcom/tencent/bugly/proguard/bg;

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ak;Lcom/tencent/bugly/proguard/as;)V
    .locals 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->j:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ay;->l:Z

    const-wide/16 v2, 0x0

    .line 74
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ay;->o:J

    .line 117
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->g:Landroid/content/Context;

    .line 118
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->b:Landroid/app/ActivityManager;

    .line 119
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "bugly"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    .line 125
    :goto_0
    iput-object p3, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    .line 126
    iput-object p4, p0, Lcom/tencent/bugly/proguard/ay;->d:Lcom/tencent/bugly/proguard/ak;

    .line 127
    iput-object p2, p0, Lcom/tencent/bugly/proguard/ay;->h:Lcom/tencent/bugly/proguard/ac;

    .line 128
    iput-object p5, p0, Lcom/tencent/bugly/proguard/ay;->i:Lcom/tencent/bugly/proguard/as;

    return-void
.end method

.method private a(Lcom/tencent/bugly/proguard/ax;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 4

    .line 163
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    .line 166
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->j()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 167
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 168
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->l()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 169
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->k()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 170
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->j()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 171
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->l()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 172
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->b(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    .line 173
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    .line 174
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    const/4 v1, 0x3

    .line 179
    iput v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 180
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/aa;->o:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 182
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 184
    const-string v1, "ANR_EXCEPTION"

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 185
    iget-object v1, p1, Lcom/tencent/bugly/proguard/ax;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 186
    iget-object v1, p1, Lcom/tencent/bugly/proguard/ax;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    .line 188
    const-string v2, "BUGLY_CR_01"

    iget-object v3, p1, Lcom/tencent/bugly/proguard/ax;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 192
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-lez v1, :cond_1

    .line 194
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v3, 0x0

    .line 195
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "GET_FAIL"

    :goto_1
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 197
    iget-wide v1, p1, Lcom/tencent/bugly/proguard/ax;->c:J

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 198
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ap;->c([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 202
    :cond_2
    iget-object v1, p1, Lcom/tencent/bugly/proguard/ax;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 203
    iget-object v1, p1, Lcom/tencent/bugly/proguard/ax;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 204
    const-string v1, "main(1)"

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->p()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 207
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->A()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 208
    iget-object p1, p1, Lcom/tencent/bugly/proguard/ax;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 209
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aa;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    .line 210
    iget-wide v1, p1, Lcom/tencent/bugly/proguard/aa;->a:J

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:J

    .line 211
    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->a()Z

    move-result p1

    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Z

    .line 213
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->z()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    .line 214
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    .line 1996
    iget v1, p1, Lcom/tencent/bugly/proguard/aa;->x:I

    .line 214
    iput v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:I

    .line 215
    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->t()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    .line 216
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->y()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 218
    invoke-static {}, Lcom/tencent/bugly/proguard/ao;->a()[B

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 220
    :goto_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/util/List;J)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_3

    .line 360
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    const-string v1, "\n>>>>> \u4ee5\u4e0b\u4e3aanr\u8fc7\u7a0b\u4e2d\u4e3b\u7ebf\u7a0b\u5806\u6808\u8bb0\u5f55\uff0c\u53ef\u6839\u636e\u5806\u6808\u51fa\u73b0\u6b21\u6570\u63a8\u6d4b\u5728\u8be5\u5806\u6808\u963b\u585e\u7684\u65f6\u95f4\uff0c\u51fa\u73b0\u6b21\u6570\u8d8a\u591a\u5bf9anr\u8d21\u732e\u8d8a\u5927\uff0c\u8d8a\u53ef\u80fd\u662f\u9020\u6210anr\u7684\u539f\u56e0 >>>>>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, "\n>>>>> Thread Stack Traces Records Start >>>>>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 366
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 367
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/ba;

    .line 369
    const-string v3, "Thread name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ba;->a:Ljava/lang/String;

    .line 369
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    iget-wide v4, v2, Lcom/tencent/bugly/proguard/ba;->b:J

    sub-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    .line 371
    const-string v6, "before "

    goto :goto_1

    :cond_1
    const-string v6, "after "

    .line 372
    :goto_1
    const-string v7, "Got "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v6, "anr:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    iget-object v2, v2, Lcom/tencent/bugly/proguard/ba;->c:Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x18c00

    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_2
    const-string p0, "\n<<<<< Thread Stack Traces Records End <<<<<\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 361
    :cond_3
    :goto_2
    const-string p0, "main thread stack not enable"

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ay;)V
    .locals 5

    .line 9584
    sget-wide v0, Lcom/tencent/bugly/proguard/at;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 9586
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    const-string v3, "bugly_trace_"

    const-string v4, ".txt"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 9588
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    const-string v3, "manual_bugly_trace_"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 9590
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    const-string v3, "main_stack_record_"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 9592
    iget-object p0, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    const-string v2, ".txt.merged"

    invoke-static {p0, v3, v2, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ay;JLjava/lang/String;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/ay;->a(JLjava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x1

    .line 231
    invoke-static {p2, p0, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 232
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 236
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    const-string v3, "main"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 239
    const-string v4, "\n\n"

    const-string v5, "\n"

    const-string v6, " :\n"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    array-length v9, v2

    if-lt v9, v7, :cond_1

    .line 240
    const-string v9, "\"main\" tid="

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v1

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v0

    .line 241
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 249
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    array-length v9, v9

    if-lt v9, v7, :cond_2

    .line 250
    const-string v9, "\""

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" tid="

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p0, p2}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 233
    :cond_4
    :goto_1
    const-string p0, "not found trace dump for %s"

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method private declared-synchronized c(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ay;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 537
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ay;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized d(Z)V
    .locals 4

    monitor-enter p0

    .line 554
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ay;->l:Z

    if-eq v0, p1, :cond_0

    .line 555
    const-string v0, "user change anr %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 556
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ay;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 558
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->k:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 547
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ay;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 736
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ay;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    const-string v0, "start when started!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 740
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 741
    monitor-exit p0

    return-void

    .line 6697
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6698
    :try_start_3
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 6699
    :cond_2
    :goto_0
    new-instance v3, Lcom/tencent/bugly/proguard/bg;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/bg;-><init>()V

    iput-object v3, p0, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    .line 6700
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    .line 7401
    iget-boolean v4, v4, Lcom/tencent/bugly/proguard/aa;->S:Z

    .line 8035
    iput-boolean v4, v3, Lcom/tencent/bugly/proguard/bg;->b:Z

    .line 8036
    const-string v3, "set record stack trace enable:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 6701
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bugly-ThreadMonitor"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/tencent/bugly/proguard/ay;->n:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tencent/bugly/proguard/ay;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6702
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/bg;->b()Z

    .line 6704
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 745
    :try_start_4
    new-instance v2, Lcom/tencent/bugly/proguard/ay$3;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/tencent/bugly/proguard/ay$3;-><init>(Lcom/tencent/bugly/proguard/ay;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/bugly/proguard/ay;->k:Landroid/os/FileObserver;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 785
    :try_start_5
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 786
    const-string v2, "startWatchingPrivateAnrDir! dumFilePath is %s"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->d:Lcom/tencent/bugly/proguard/ak;

    new-instance v2, Lcom/tencent/bugly/proguard/ay$4;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/ay$4;-><init>(Lcom/tencent/bugly/proguard/ay;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 800
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    .line 795
    :try_start_6
    iput-object v2, p0, Lcom/tencent/bugly/proguard/ay;->k:Landroid/os/FileObserver;

    .line 796
    const-string v2, "startWatchingPrivateAnrDir failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 797
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 798
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 802
    :cond_4
    monitor-exit p0

    return-void

    .line 6704
    :goto_1
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :goto_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 824
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ay;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 825
    const-string v0, "close when closed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 8711
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8712
    :try_start_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 8713
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/bg;->a()Z

    .line 8714
    iput-object v3, p0, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 8716
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 829
    :try_start_3
    const-string v0, "stopWatchingPrivateAnrDir"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 832
    :try_start_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->k:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 833
    iput-object v3, p0, Lcom/tencent/bugly/proguard/ay;->k:Landroid/os/FileObserver;

    .line 834
    const-string v0, "close anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 840
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    .line 836
    :try_start_5
    const-string v2, "stop anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 837
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 838
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 842
    :cond_2
    monitor-exit p0

    return-void

    .line 8716
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method


# virtual methods
.method final a(JLjava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 632
    :try_start_0
    const-string v6, "anr time:%s"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v6, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 633
    iget-object v6, v1, Lcom/tencent/bugly/proguard/ay;->j:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 634
    :try_start_1
    iget-object v7, v1, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    if-eqz v7, :cond_0

    .line 635
    const-string v7, "Disable record main stack trace."

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 636
    iget-object v7, v1, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    invoke-virtual {v7}, Lcom/tencent/bugly/proguard/bg;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 638
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v6

    .line 642
    iget-object v7, v1, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    .line 3397
    iget-boolean v7, v7, Lcom/tencent/bugly/proguard/aa;->R:Z

    .line 642
    sget v8, Lcom/tencent/bugly/proguard/at;->h:I

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/ap;->a(ZI)Ljava/util/Map;

    move-result-object v7

    .line 645
    iget-object v8, v1, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v8}, Lcom/tencent/bugly/proguard/aa;->a()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_4

    .line 4039
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->o()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->p()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 4040
    :goto_2
    const-string v11, "isAnrCrashDevice:%s"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v12, v13, v5

    invoke-static {v11, v13}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v8, :cond_3

    goto :goto_3

    .line 650
    :cond_3
    iget-object v8, v1, Lcom/tencent/bugly/proguard/ay;->b:Landroid/app/ActivityManager;

    const-wide/16 v11, 0x5208

    invoke-static {v8, v11, v12}, Lcom/tencent/bugly/proguard/az;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v8

    goto :goto_4

    .line 647
    :cond_4
    :goto_3
    iget-object v8, v1, Lcom/tencent/bugly/proguard/ay;->b:Landroid/app/ActivityManager;

    invoke-static {v8, v9, v10}, Lcom/tencent/bugly/proguard/az;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v8

    :goto_4
    if-nez v8, :cond_5

    .line 655
    const-string v0, "proc state is invisible or not my proc!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 668
    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    return-void

    .line 5142
    :cond_5
    :try_start_3
    new-instance v11, Lcom/tencent/bugly/proguard/ax;

    invoke-direct {v11}, Lcom/tencent/bugly/proguard/ax;-><init>()V

    .line 5143
    iput-wide v2, v11, Lcom/tencent/bugly/proguard/ax;->c:J

    .line 5144
    iget-object v12, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 5145
    iput-object v12, v11, Lcom/tencent/bugly/proguard/ax;->a:Ljava/lang/String;

    .line 5146
    iget-object v12, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v12, v11, Lcom/tencent/bugly/proguard/ax;->f:Ljava/lang/String;

    .line 5147
    iget-object v8, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v8, v11, Lcom/tencent/bugly/proguard/ax;->e:Ljava/lang/String;

    .line 5148
    iput-object v7, v11, Lcom/tencent/bugly/proguard/ax;->b:Ljava/util/Map;

    .line 5149
    iput-object v6, v11, Lcom/tencent/bugly/proguard/ax;->g:Ljava/lang/String;

    .line 5150
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5151
    const-string v6, "main stack is null , some error may be encountered."

    iput-object v6, v11, Lcom/tencent/bugly/proguard/ax;->g:Ljava/lang/String;

    .line 5153
    :cond_6
    const-string v6, "anr time:%d\ntrace file:%s\nproc:%s\nmain stack:%s\nshort msg:%s\nlong msg:%s\n threads:%d"

    iget-wide v7, v11, Lcom/tencent/bugly/proguard/ax;->c:J

    .line 5154
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v11, Lcom/tencent/bugly/proguard/ax;->d:Ljava/lang/String;

    iget-object v12, v11, Lcom/tencent/bugly/proguard/ax;->a:Ljava/lang/String;

    iget-object v13, v11, Lcom/tencent/bugly/proguard/ax;->g:Ljava/lang/String;

    iget-object v14, v11, Lcom/tencent/bugly/proguard/ax;->f:Ljava/lang/String;

    iget-object v15, v11, Lcom/tencent/bugly/proguard/ax;->e:Ljava/lang/String;

    move-wide/from16 v16, v9

    iget-object v9, v11, Lcom/tencent/bugly/proguard/ax;->b:Ljava/util/Map;

    if-nez v9, :cond_7

    const/4 v9, 0x0

    goto :goto_5

    .line 5155
    :cond_7
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    :goto_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v5

    aput-object v8, v10, v4

    const/4 v7, 0x2

    aput-object v12, v10, v7

    const/4 v7, 0x3

    aput-object v13, v10, v7

    const/4 v7, 0x4

    aput-object v14, v10, v7

    const/4 v7, 0x5

    aput-object v15, v10, v7

    const/4 v7, 0x6

    aput-object v9, v10, v7

    .line 5153
    invoke-static {v6, v10}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4279
    const-string v6, "found visible anr , start to upload!"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5319
    const-string v6, "trace file:%s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_9

    .line 5324
    :cond_8
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bugly_trace_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    const-string v7, "trace file exists"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5327
    const-string v7, "/data/anr/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5328
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v11, Lcom/tencent/bugly/proguard/ax;->a:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/tencent/bugly/proguard/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 5329
    const-string v7, "backup trace isOK:%s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v5

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 5331
    :cond_9
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 5332
    const-string v7, "trace file rename :%s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v5

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5336
    :goto_6
    iget-object v7, v1, Lcom/tencent/bugly/proguard/ay;->j:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5337
    :try_start_4
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    if-eqz v0, :cond_a

    .line 6179
    iget-object v0, v0, Lcom/tencent/bugly/proguard/bg;->a:Lcom/tencent/bugly/proguard/bf;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/bf;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    .line 5340
    :goto_7
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_b

    .line 5343
    :try_start_5
    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/proguard/ay;->a(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    .line 5344
    const-string v7, "save main stack trace"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/32 v7, 0x7fffffff

    .line 5347
    invoke-static {v6, v0, v7, v8, v4}, Lcom/tencent/bugly/proguard/am;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    .line 5349
    :cond_b
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/tencent/bugly/proguard/ax;->d:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    .line 5340
    :goto_8
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 5321
    :cond_c
    :goto_9
    const-string v0, "trace file is null or not exists, just ignore"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4283
    :goto_a
    invoke-direct {v1, v11}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ax;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 4290
    invoke-static {}, Lcom/tencent/bugly/proguard/at;->a()Lcom/tencent/bugly/proguard/at;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/tencent/bugly/proguard/at;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 4291
    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v8, v6, v16

    if-ltz v8, :cond_d

    .line 4292
    const-string v6, "backup anr record success!"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_b

    .line 4294
    :cond_d
    const-string v6, "backup anr record fail!"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4297
    :goto_b
    const-string v18, "ANR"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/ap;->a(J)Ljava/lang/String;

    move-result-object v19

    iget-object v2, v11, Lcom/tencent/bugly/proguard/ax;->a:Ljava/lang/String;

    const-string v21, "main"

    iget-object v3, v11, Lcom/tencent/bugly/proguard/ax;->g:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    invoke-static/range {v18 .. v23}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    move-object/from16 v0, v23

    .line 4300
    iget-object v2, v1, Lcom/tencent/bugly/proguard/ay;->i:Lcom/tencent/bugly/proguard/as;

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->r()Z

    move-result v3

    xor-int/2addr v3, v4

    .line 6300
    invoke-virtual {v2, v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 4301
    iget-object v2, v1, Lcom/tencent/bugly/proguard/ay;->i:Lcom/tencent/bugly/proguard/as;

    invoke-virtual {v2, v0, v4}, Lcom/tencent/bugly/proguard/as;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)V

    .line 4303
    :cond_e
    iget-object v2, v1, Lcom/tencent/bugly/proguard/ay;->i:Lcom/tencent/bugly/proguard/as;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/as;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 659
    iget-object v2, v1, Lcom/tencent/bugly/proguard/ay;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 660
    :try_start_8
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    if-eqz v0, :cond_f

    .line 661
    const-string v0, "Finish anr process."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 662
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ay;->m:Lcom/tencent/bugly/proguard/bg;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/bg;->d()V

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_d

    .line 664
    :cond_f
    :goto_c
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 668
    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    return-void

    .line 664
    :goto_d
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 638
    :goto_e
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 666
    :goto_f
    :try_start_d
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 668
    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    return-void

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    .line 669
    throw v0
.end method

.method public final a(Z)Z
    .locals 5

    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    .line 433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v0

    const-string p1, "tryChangeAnrState to %s, success:%s"

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 603
    :try_start_0
    const-string v0, "customer decides whether to open or close."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
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

.method public final b(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 565
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ay;->d(Z)V

    .line 568
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ay;->f()Z

    move-result p1

    .line 569
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 573
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ay;->e()Z

    move-result v2

    if-eq p1, v2, :cond_2

    .line 574
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "anr changed to %b"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 575
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ay;->c(Z)V

    :cond_2
    return-void
.end method
