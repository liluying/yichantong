.class Lcom/tencent/smtt/sdk/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/DexLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/q;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/q;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    invoke-virtual {v2, v5, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v6, p0, Lcom/tencent/smtt/sdk/q;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v10, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v10, v1

    new-array v11, v0, [Ljava/lang/Object;

    aput-object p1, v11, v1

    const-string v8, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    const-string v9, "getCurWDPDecodeType"

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/smtt/sdk/q;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v3, :cond_0

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    invoke-virtual {v3, v6, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v7, p0, Lcom/tencent/smtt/sdk/q;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v11, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v11, v2

    const-class v3, Ljava/lang/String;

    aput-object v3, v11, v0

    new-array v12, v1, [Ljava/lang/Object;

    aput-object p1, v12, v2

    aput-object p2, v12, v0

    const-string v9, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    const-string v10, "deleteVideoCache"

    invoke-virtual/range {v7 .. v12}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
