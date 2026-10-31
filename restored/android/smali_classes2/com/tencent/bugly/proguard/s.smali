.class public abstract Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/s$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Lcom/tencent/bugly/proguard/r; = null

.field private static c:I = 0xa

.field private static d:J = 0x493e0L

.field private static e:J = 0x7530L

.field private static f:J = 0x0L

.field private static g:I = 0x0

.field private static h:J = 0x0L

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks; = null

.field private static l:Ljava/lang/Class; = null

.field private static m:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3254
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3255
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3258
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 4

    .line 169
    sget-boolean v0, Lcom/tencent/bugly/proguard/s;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/aa;->f:Z

    sput-boolean v0, Lcom/tencent/bugly/proguard/s;->m:Z

    .line 175
    new-instance v0, Lcom/tencent/bugly/proguard/r;

    sget-boolean v1, Lcom/tencent/bugly/proguard/s;->m:Z

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/proguard/r;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    const/4 v0, 0x1

    .line 177
    sput-boolean v0, Lcom/tencent/bugly/proguard/s;->a:Z

    const-wide/16 v0, 0x0

    cmp-long v2, v0, v0

    if-gtz v2, :cond_1

    .line 187
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/s;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void

    .line 189
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/proguard/s$1;

    invoke-direct {v3, p0, p1}, Lcom/tencent/bugly/proguard/s$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 4

    .line 218
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->b()V

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 225
    sput-wide v0, Lcom/tencent/bugly/proguard/s;->e:J

    .line 227
    :cond_2
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:I

    if-lez p1, :cond_3

    .line 228
    sput p1, Lcom/tencent/bugly/proguard/s;->c:I

    .line 230
    :cond_3
    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:J

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    .line 231
    sput-wide p0, Lcom/tencent/bugly/proguard/s;->d:J

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(J)J
    .locals 0

    .line 28
    sput-wide p0, Lcom/tencent/bugly/proguard/s;->j:J

    return-wide p0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/bugly/proguard/s;->l:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/s;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void
.end method

.method static synthetic c()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/tencent/bugly/proguard/s;->i:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .locals 0

    .line 28
    sput-wide p0, Lcom/tencent/bugly/proguard/s;->h:J

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 3

    .line 1153
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1157
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/aa;->a(IZ)V

    .line 1273
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 1274
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 1280
    :try_start_0
    sget-object p1, Lcom/tencent/bugly/proguard/s;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p1, :cond_2

    .line 1281
    new-instance p1, Lcom/tencent/bugly/proguard/s$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/s$a;-><init>()V

    sput-object p1, Lcom/tencent/bugly/proguard/s;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 1283
    :cond_2
    :goto_1
    sget-object p1, Lcom/tencent/bugly/proguard/s;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1285
    :goto_2
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1286
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    :cond_3
    :goto_3
    sget-boolean p0, Lcom/tencent/bugly/proguard/s;->m:Z

    if-eqz p0, :cond_4

    .line 2238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/tencent/bugly/proguard/s;->i:J

    .line 2239
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(IZ)V

    .line 2240
    const-string p0, "[session] launch app, new start"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/r;->a()V

    .line 148
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(J)V

    :cond_4
    return-void
.end method

.method static synthetic d()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/tencent/bugly/proguard/s;->h:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/tencent/bugly/proguard/s;->f:J

    return-wide v0
.end method

.method static synthetic f()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/tencent/bugly/proguard/s;->e:J

    return-wide v0
.end method

.method static synthetic g()I
    .locals 2

    .line 28
    sget v0, Lcom/tencent/bugly/proguard/s;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/proguard/s;->g:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .line 28
    sget v0, Lcom/tencent/bugly/proguard/s;->g:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .line 28
    sget v0, Lcom/tencent/bugly/proguard/s;->c:I

    return v0
.end method

.method static synthetic j()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/tencent/bugly/proguard/s;->m:Z

    return v0
.end method

.method static synthetic k()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/tencent/bugly/proguard/s;->j:J

    return-wide v0
.end method

.method static synthetic l()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/tencent/bugly/proguard/s;->d:J

    return-wide v0
.end method
