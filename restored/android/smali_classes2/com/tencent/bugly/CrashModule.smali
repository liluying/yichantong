.class public Lcom/tencent/bugly/CrashModule;
.super Lcom/tencent/bugly/proguard/o;
.source "BUGLY"


# static fields
.field private static c:I

.field private static e:Lcom/tencent/bugly/CrashModule;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/tencent/bugly/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/CrashModule;->e:Lcom/tencent/bugly/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/o;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/tencent/bugly/CrashModule;->d:Z

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 0

    monitor-enter p0

    .line 111
    monitor-exit p0

    return-void
.end method

.method public static getInstance()Lcom/tencent/bugly/CrashModule;
    .locals 2

    .line 33
    sget-object v0, Lcom/tencent/bugly/CrashModule;->e:Lcom/tencent/bugly/CrashModule;

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/tencent/bugly/proguard/o;->id:I

    return-object v0
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 1

    .line 146
    const-string v0, "t_cr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasInitialized()Z
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/CrashModule;->d:Z
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

.method public declared-synchronized init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/CrashModule;->d:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    const-string v0, "Initializing crash module."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/CrashModule;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/tencent/bugly/CrashModule;->c:I

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(I)V

    .line 53
    iput-boolean v2, p0, Lcom/tencent/bugly/CrashModule;->d:Z

    .line 54
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    const/4 p3, 0x0

    .line 56
    invoke-static {p1, p2, p3}, Lcom/tencent/bugly/proguard/at;->a(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;)Lcom/tencent/bugly/proguard/at;

    move-result-object p2

    .line 1236
    iget-object p3, p2, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/av;->a()V

    .line 5285
    iget-object p3, p2, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->enableCatchAnrTrace()V

    .line 5432
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    move-result-object p3

    iget-object p3, p3, Lcom/tencent/bugly/proguard/aa;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5433
    iget-object p3, p2, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->removeEmptyNativeRecordFiles()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/at;->e()V

    .line 83
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/at;->f()V

    const-wide/16 v0, 0x0

    .line 93
    invoke-virtual {p2, v0, v1}, Lcom/tencent/bugly/proguard/at;->a(J)V

    .line 6424
    iget-object p2, p2, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->checkUploadRecordCrash()V

    .line 98
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/au;

    .line 101
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->a()Lcom/tencent/bugly/proguard/aq;

    move-result-object p2

    .line 102
    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p3}, Lcom/tencent/bugly/proguard/aq;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/proguard/aq;->a(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object p1

    sget p2, Lcom/tencent/bugly/CrashModule;->c:I

    sub-int/2addr p2, v2

    sput p2, Lcom/tencent/bugly/CrashModule;->c:I

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/u;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 49
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/at;->a()Lcom/tencent/bugly/proguard/at;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7171
    iget-object v1, v0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/av;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 7172
    iget-object v1, v0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 7173
    iget-object p1, v0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/ay;->b()V

    :cond_1
    :goto_0
    return-void
.end method
