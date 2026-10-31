.class public final Lcom/tencent/bugly/proguard/at;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static D:Lcom/tencent/bugly/proguard/at; = null

.field public static a:I = 0x0

.field public static b:Z = false

.field public static d:I = 0x2

.field public static e:Z = false

.field public static f:I = 0x5000

.field public static h:I = 0x5000

.field public static i:J = 0xc800000L

.field public static j:J = 0x240c8400L

.field public static k:Ljava/lang/String; = null

.field public static l:Z = false

.field public static m:Ljava/lang/String; = null

.field public static n:I = 0x1388

.field public static o:Z = true

.field public static p:Z = false

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;


# instance fields
.field public B:I

.field public C:Z

.field public final c:Landroid/content/Context;

.field public final s:Lcom/tencent/bugly/proguard/as;

.field public final t:Lcom/tencent/bugly/proguard/av;

.field public final u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field public final v:Lcom/tencent/bugly/proguard/ac;

.field public final w:Lcom/tencent/bugly/proguard/ak;

.field public final x:Lcom/tencent/bugly/proguard/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ak;ZLcom/tencent/bugly/BuglyStrategy$a;)V
    .locals 8

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 91
    iput v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/at;->C:Z

    const/16 v0, 0x3ec

    .line 108
    sput v0, Lcom/tencent/bugly/proguard/at;->a:I

    .line 109
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 110
    iput-object v2, p0, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    .line 111
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/proguard/at;->v:Lcom/tencent/bugly/proguard/ac;

    .line 112
    iput-object p2, p0, Lcom/tencent/bugly/proguard/at;->w:Lcom/tencent/bugly/proguard/ak;

    move-object v4, v3

    .line 115
    invoke-static {}, Lcom/tencent/bugly/proguard/ai;->a()Lcom/tencent/bugly/proguard/ai;

    move-result-object v3

    move-object v5, v4

    .line 116
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v4

    .line 117
    new-instance v1, Lcom/tencent/bugly/proguard/as;

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/as;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ai;Lcom/tencent/bugly/proguard/w;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/BuglyStrategy$a;)V

    move-object v4, v5

    iput-object v1, p0, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    move-object v3, v1

    move-object v1, v2

    .line 119
    invoke-static {v1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v2

    .line 120
    new-instance p1, Lcom/tencent/bugly/proguard/av;

    invoke-direct {p1, v1, v3, v4, v2}, Lcom/tencent/bugly/proguard/av;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    const/4 v7, 0x0

    move-object v5, p2

    move v6, p3

    .line 121
    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/ak;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p1

    move-object p2, v2

    move-object v2, v1

    move-object v1, v3

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 123
    iput-object p1, p2, Lcom/tencent/bugly/proguard/aa;->N:Lcom/tencent/bugly/proguard/q;

    .line 1091
    sget-object p1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    if-nez p1, :cond_0

    move-object v3, v1

    .line 1092
    new-instance v1, Lcom/tencent/bugly/proguard/ay;

    move-object v6, v3

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/ay;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ak;Lcom/tencent/bugly/proguard/as;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    .line 1095
    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    .line 124
    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/at;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/at;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;
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

.method public static declared-synchronized a(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;)Lcom/tencent/bugly/proguard/at;
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/at;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/tencent/bugly/proguard/at;

    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/tencent/bugly/proguard/at;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ak;ZLcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 146
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;
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

.method static synthetic a(Lcom/tencent/bugly/proguard/at;)Lcom/tencent/bugly/proguard/av;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 362
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/at$4;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/at$4;-><init>(Lcom/tencent/bugly/proguard/at;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/as;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    new-instance v1, Lcom/tencent/bugly/proguard/at$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/at$1;-><init>(Lcom/tencent/bugly/proguard/at;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->b(Z)V

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    .line 3263
    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 485
    iget v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 494
    iget v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
