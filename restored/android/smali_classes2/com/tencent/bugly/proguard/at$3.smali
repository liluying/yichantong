.class public final Lcom/tencent/bugly/proguard/at$3;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Lcom/tencent/bugly/proguard/at;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/at;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/tencent/bugly/proguard/at$3;->h:Lcom/tencent/bugly/proguard/at;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/at$3;->a:Z

    iput-object p2, p0, Lcom/tencent/bugly/proguard/at$3;->b:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/at$3;->c:Ljava/lang/Throwable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at$3;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at$3;->e:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/at$3;->f:Z

    iput-boolean p4, p0, Lcom/tencent/bugly/proguard/at$3;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    :try_start_0
    const-string v0, "post a throwable %b"

    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/at$3;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at$3;->h:Lcom/tencent/bugly/proguard/at;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/at;->a(Lcom/tencent/bugly/proguard/at;)Lcom/tencent/bugly/proguard/av;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/at$3;->b:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/at$3;->c:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/tencent/bugly/proguard/at$3;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/at$3;->e:[B

    iget-boolean v9, p0, Lcom/tencent/bugly/proguard/at$3;->f:Z

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/bugly/proguard/av;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    .line 337
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/at$3;->g:Z

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "clear user datas"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at$3;->h:Lcom/tencent/bugly/proguard/at;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/at;->b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/aa;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 343
    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at$3;->c:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "java catch error: %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
