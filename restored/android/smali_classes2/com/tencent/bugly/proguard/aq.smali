.class public final Lcom/tencent/bugly/proguard/aq;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# static fields
.field private static d:Lcom/tencent/bugly/proguard/aq;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->e:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aq;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aq;)Landroid/content/IntentFilter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/bugly/proguard/aq;->a:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/aq;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/aq;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/aq;->d:Lcom/tencent/bugly/proguard/aq;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/tencent/bugly/proguard/aq;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/aq;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/aq;->d:Lcom/tencent/bugly/proguard/aq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    sget-object v1, Lcom/tencent/bugly/proguard/aq;->d:Lcom/tencent/bugly/proguard/aq;
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

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 127
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 131
    :cond_0
    iget-boolean p2, p0, Lcom/tencent/bugly/proguard/aq;->e:Z

    if-eqz p2, :cond_1

    .line 133
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/aq;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 137
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aq;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 138
    const-string v2, "is Connect BC "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-string v2, "network %s changed to %s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aq;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return v0

    .line 146
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/aq;->c:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aq;->c:Ljava/lang/String;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 151
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object v5

    .line 152
    invoke-static {}, Lcom/tencent/bugly/proguard/ai;->a()Lcom/tencent/bugly/proguard/ai;

    move-result-object v6

    .line 153
    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object p1

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-nez p1, :cond_3

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 162
    sget p1, Lcom/tencent/bugly/proguard/at;->a:I

    .line 163
    invoke-virtual {v6, p1}, Lcom/tencent/bugly/proguard/ai;->a(I)J

    move-result-wide p1

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x7530

    cmp-long v2, v3, p1

    if-lez v2, :cond_5

    .line 165
    const-string p1, "try to upload crash on network changed."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/tencent/bugly/proguard/at;->a()Lcom/tencent/bugly/proguard/at;

    move-result-object p1

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x0

    .line 168
    invoke-virtual {p1, v2, v3}, Lcom/tencent/bugly/proguard/at;->a(J)V

    .line 170
    :cond_4
    const-string p1, "try to upload userinfo on network changed."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 172
    sget-object p1, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/r;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_5
    monitor-exit p0

    return v0

    .line 156
    :cond_6
    :goto_0
    :try_start_3
    const-string p1, "not inited BC not work"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    monitor-exit p0

    return v0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 128
    :cond_7
    :goto_2
    monitor-exit p0

    return v1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/aq;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/bugly/proguard/aq;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Lcom/tencent/bugly/proguard/aq;
    .locals 1

    .line 27
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->d:Lcom/tencent/bugly/proguard/aq;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aq;->b:Landroid/content/Context;

    .line 72
    new-instance p1, Lcom/tencent/bugly/proguard/aq$1;

    invoke-direct {p1, p0, p0}, Lcom/tencent/bugly/proguard/aq$1;-><init>(Lcom/tencent/bugly/proguard/aq;Lcom/tencent/bugly/proguard/aq;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
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

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    const-string v0, "add action %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 110
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/aq;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 112
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
