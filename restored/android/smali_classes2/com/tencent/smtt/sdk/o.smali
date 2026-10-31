.class Lcom/tencent/smtt/sdk/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/DexLoader;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 7

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v4, :cond_0

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    const-string p1, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    invoke-virtual {v4, p1, v5, v3}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v3, "pauseTask"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v0

    const-string v4, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v5, "removeTask"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v3, "resumeTask"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v3, "stopTask"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()J
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v3, "getContentLength"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()I
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Class;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v3, "getDownloadedSize"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v6
.end method

.method public f()I
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->b:Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Class;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.cache.TbsVideoCacheTaskProxy"

    const-string v3, "getProgress"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v6
.end method
