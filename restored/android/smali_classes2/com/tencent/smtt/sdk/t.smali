.class Lcom/tencent/smtt/sdk/t;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tencent/smtt/export/external/DexLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/DexLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ldalvik/system/DexClassLoader;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/DexLoader;->getClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object v3, v1, v5

    const-string p1, "com.tencent.tbs.player.TbsPlayerProxy"

    invoke-virtual {v0, p1, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v3, "onUserStateChanged"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/app/Activity;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p3, v1, v5

    const-string v2, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v3, "onActivity"

    move-object v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/os/Bundle;Landroid/widget/FrameLayout;Ljava/lang/Object;)Z
    .locals 12

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Landroid/widget/FrameLayout;

    const-class v5, Landroid/os/Bundle;

    if-eqz p4, :cond_0

    iget-object v6, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v10, v0, [Ljava/lang/Class;

    aput-object v5, v10, v3

    aput-object v4, v10, v2

    const-class v4, Ljava/lang/Object;

    aput-object v4, v10, v1

    new-array v11, v0, [Ljava/lang/Object;

    aput-object p2, v11, v3

    aput-object p3, v11, v2

    aput-object p4, v11, v1

    const-string v8, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v9, "play"

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, v4

    iget-object v4, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v5, v8, v3

    aput-object v0, v8, v2

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p2, v9, v3

    aput-object p3, v9, v2

    const-string v6, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v7, "play"

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v3
.end method
