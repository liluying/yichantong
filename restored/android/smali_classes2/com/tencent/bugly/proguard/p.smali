.class public abstract Lcom/tencent/bugly/proguard/p;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z = true

.field public static b:Ljava/util/List;

.field public static c:Z

.field private static d:Lcom/tencent/bugly/proguard/w;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/tencent/bugly/proguard/p;

    monitor-enter v2

    .line 103
    :try_start_0
    sget-boolean v3, Lcom/tencent/bugly/proguard/p;->e:Z

    if-eqz v3, :cond_0

    .line 104
    const-string p0, "[init] initial Multi-times, ignore this."

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    if-nez p0, :cond_1

    .line 108
    :try_start_1
    sget-object p0, Lcom/tencent/bugly/proguard/al;->b:Ljava/lang/String;

    const-string p1, "[init] context is null, check it."

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit v2

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 113
    :try_start_2
    sget-object p0, Lcom/tencent/bugly/proguard/al;->b:Ljava/lang/String;

    const-string p1, "init arg \'crashReportAppID\' should not be null!"

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit v2

    return-void

    .line 116
    :cond_2
    :try_start_3
    sput-boolean v1, Lcom/tencent/bugly/proguard/p;->e:Z

    if-eqz p2, :cond_3

    .line 119
    sput-boolean v1, Lcom/tencent/bugly/proguard/p;->c:Z

    .line 120
    sput-boolean v1, Lcom/tencent/bugly/proguard/al;->c:Z

    .line 121
    const-string v3, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 123
    const-string v3, "--------------------------------------------------------------------------------------------"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    const-string v3, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 127
    const-string v3, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 129
    const-string v3, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    const-string v3, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 132
    const-string v3, "--------------------------------------------------------------------------------------------"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    const-string v3, "[init] Open debug mode of Bugly."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    :cond_3
    const-string v3, " crash report start initializing..."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    const-string v3, "[init] Bugly start initializing..."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-string v3, "[init] Bugly complete version: v%s"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "4.1.9.3"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 144
    invoke-static {p0}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/aa;->o()Ljava/lang/String;

    .line 147
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ao;->a(Landroid/content/Context;)V

    .line 148
    sget-object v4, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-static {p0, v4}, Lcom/tencent/bugly/proguard/w;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/w;

    move-result-object v4

    sput-object v4, Lcom/tencent/bugly/proguard/p;->d:Lcom/tencent/bugly/proguard/w;

    .line 149
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ai;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ai;

    .line 150
    sget-object v4, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-static {p0, v4}, Lcom/tencent/bugly/proguard/ac;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/ac;

    .line 151
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/u;

    move-result-object v4

    .line 154
    invoke-static {v3}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/aa;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 155
    sput-boolean v0, Lcom/tencent/bugly/proguard/p;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    monitor-exit v2

    return-void

    .line 1349
    :cond_4
    :try_start_4
    iput-object p1, v3, Lcom/tencent/bugly/proguard/aa;->r:Ljava/lang/String;

    .line 1350
    const-string v5, "APP_ID"

    invoke-virtual {v3, v5, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "[param] Set APP ID:%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 165
    :goto_0
    sget-object v3, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge p1, v3, :cond_6

    .line 167
    :try_start_5
    sget-object v3, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/o;

    iget v3, v3, Lcom/tencent/bugly/proguard/o;->id:I

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/u;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    sget-object v3, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/o;

    invoke-virtual {v3, p0, p2, p3}, Lcom/tencent/bugly/proguard/o;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 171
    :try_start_6
    invoke-static {v3}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 172
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    add-int/2addr p1, v1

    goto :goto_0

    .line 177
    :cond_6
    invoke-static {p0, p3}, Lcom/tencent/bugly/proguard/s;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 181
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object p0

    .line 4085
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ac;->c:Lcom/tencent/bugly/proguard/ak;

    new-instance p2, Lcom/tencent/bugly/proguard/ac$1;

    invoke-direct {p2, p0}, Lcom/tencent/bugly/proguard/ac$1;-><init>(Lcom/tencent/bugly/proguard/ac;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p1, p2, v3, v4}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    .line 183
    const-string p0, "[init] Bugly initialization finished."

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    monitor-exit v2

    return-void

    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/proguard/o;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/p;

    monitor-enter v0

    .line 286
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 289
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Lcom/tencent/bugly/proguard/aa;)Z
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/tencent/bugly/proguard/aa;->v:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 50
    const-string v0, "bugly"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
