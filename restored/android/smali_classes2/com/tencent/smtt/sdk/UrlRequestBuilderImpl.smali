.class public Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;
.super Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;


# static fields
.field private static final a:Ljava/lang/String; = "UrlRequestBuilderImpl"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->f:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->h:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->c:Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->d:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "URL is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;
    .locals 1

    .line 0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-string v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid header value."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid header name."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/tencent/smtt/export/external/interfaces/UrlRequest;
    .locals 34

    .line 0
    move-object/from16 v0, p0

    const-class v1, [B

    const-class v4, Ljava/util/ArrayList;

    const-class v5, Ljava/util/concurrent/Executor;

    const-class v6, Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

    const-class v7, Ljava/lang/String;

    const/16 v8, 0xb

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/smtt/sdk/u;->b()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/smtt/sdk/u;->c()Lcom/tencent/smtt/sdk/v;

    move-result-object v18

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/smtt/sdk/v;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x9

    new-array v3, v8, [Ljava/lang/Class;

    aput-object v7, v3, v17

    aput-object v18, v3, v16

    aput-object v6, v3, v15

    aput-object v5, v3, v14

    aput-object v20, v3, v13

    aput-object v7, v3, v12

    aput-object v4, v3, v11

    aput-object v7, v3, v10

    aput-object v1, v3, v9

    aput-object v7, v3, v21

    aput-object v7, v3, v19

    const/16 v22, 0x6

    iget-object v11, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->b:Ljava/lang/String;

    const/16 v23, 0x5

    iget v12, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->h:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v24, 0x4

    iget-object v13, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->c:Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

    const/16 v25, 0x3

    iget-object v14, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->d:Ljava/util/concurrent/Executor;

    const/16 v26, 0x2

    iget-boolean v15, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->g:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v27, 0x7

    iget-object v10, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->e:Ljava/lang/String;

    const/16 v28, 0x8

    iget-object v9, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->f:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->i:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->j:[B

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->k:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->l:Ljava/lang/String;

    move-object/from16 v32, v1

    move-object/from16 v33, v4

    const/16 v1, 0xb

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v11, v4, v17

    aput-object v12, v4, v16

    aput-object v13, v4, v26

    aput-object v14, v4, v25

    aput-object v15, v4, v24

    aput-object v10, v4, v23

    aput-object v9, v4, v22

    aput-object v8, v4, v27

    aput-object v30, v4, v28

    aput-object v31, v4, v21

    aput-object v32, v4, v19

    const-string v1, "com.tencent.smtt.net.X5UrlRequestProvider"

    const-string v8, "GetX5UrlRequestProvider"

    invoke-virtual {v2, v1, v8, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/smtt/export/external/interfaces/UrlRequest;

    if-nez v3, :cond_0

    const/16 v4, 0x8

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v7, v3, v17

    aput-object v18, v3, v16

    aput-object v6, v3, v26

    aput-object v5, v3, v25

    aput-object v20, v3, v24

    aput-object v7, v3, v23

    aput-object v33, v3, v22

    aput-object v7, v3, v27

    iget-object v4, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->b:Ljava/lang/String;

    iget v9, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->c:Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

    iget-object v11, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->d:Ljava/util/concurrent/Executor;

    iget-boolean v12, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->g:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v13, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->e:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->f:Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->i:Ljava/lang/String;

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    const/16 v4, 0x8

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v30, v5, v17

    aput-object v9, v5, v16

    aput-object v10, v5, v26

    aput-object v11, v5, v25

    aput-object v12, v5, v24

    aput-object v13, v5, v23

    aput-object v14, v5, v22

    aput-object v15, v5, v27

    invoke-virtual {v2, v1, v8, v3, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/smtt/export/external/interfaces/UrlRequest;

    goto :goto_0

    :cond_0
    move-object/from16 v31, v5

    :goto_0
    if-nez v3, :cond_1

    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v7, v3, v17

    aput-object v18, v3, v16

    aput-object v6, v3, v26

    aput-object v31, v3, v25

    aput-object v20, v3, v24

    aput-object v7, v3, v23

    aput-object v33, v3, v22

    iget-object v4, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->b:Ljava/lang/String;

    iget v5, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v9, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->c:Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

    iget-object v10, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->d:Ljava/util/concurrent/Executor;

    iget-boolean v11, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->g:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->e:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->f:Ljava/util/ArrayList;

    const/4 v14, 0x7

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v4, v15, v17

    aput-object v5, v15, v16

    aput-object v9, v15, v26

    aput-object v10, v15, v25

    aput-object v11, v15, v24

    aput-object v12, v15, v23

    aput-object v13, v15, v22

    invoke-virtual {v2, v1, v8, v3, v15}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/tencent/smtt/export/external/interfaces/UrlRequest;

    :cond_1
    if-nez v3, :cond_2

    const/16 v1, 0xb

    new-array v3, v1, [Ljava/lang/Class;

    aput-object v7, v3, v17

    aput-object v18, v3, v16

    aput-object v6, v3, v26

    aput-object v31, v3, v25

    aput-object v20, v3, v24

    aput-object v7, v3, v23

    aput-object v33, v3, v22

    const/16 v27, 0x7

    aput-object v7, v3, v27

    const/16 v28, 0x8

    aput-object v29, v3, v28

    aput-object v7, v3, v21

    aput-object v7, v3, v19

    iget-object v1, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->b:Ljava/lang/String;

    iget v4, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->c:Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Callback;

    iget-object v6, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->d:Ljava/util/concurrent/Executor;

    iget-boolean v7, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->g:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->f:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->j:[B

    iget-object v12, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->k:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->l:Ljava/lang/String;

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v17

    aput-object v4, v14, v16

    aput-object v5, v14, v26

    aput-object v6, v14, v25

    aput-object v7, v14, v24

    aput-object v8, v14, v23

    aput-object v9, v14, v22

    const/16 v27, 0x7

    aput-object v10, v14, v27

    const/16 v28, 0x8

    aput-object v11, v14, v28

    aput-object v12, v14, v21

    aput-object v13, v14, v19

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "UrlRequest_getX5UrlRequestProvider"

    invoke-virtual {v2, v1, v4, v3, v14}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/tencent/smtt/export/external/interfaces/UrlRequest;

    :cond_2
    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "UrlRequest build fail"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic disableCache()Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->disableCache()Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public disableCache()Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->g:Z

    return-object p0
.end method

.method public bridge synthetic setDns(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->setDns(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDns(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;
    .locals 7

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/u;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/u;->c()Lcom/tencent/smtt/sdk/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/v;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object p1

    const-string p2, "com.tencent.smtt.net.X5UrlRequestProvider"

    const-string v3, "setDns"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    aput-object v6, v2, v0

    invoke-virtual {p1, p2, v3, v4, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "host and address are required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHttpMethod(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Method is required."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setPriority(I)Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->setPriority(I)Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(I)Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;
    .locals 0

    .line 0
    iput p1, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->h:I

    return-object p0
.end method

.method public setRequestBody(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Body is required."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestBodyBytes([B)Lcom/tencent/smtt/export/external/interfaces/UrlRequest$Builder;
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/UrlRequestBuilderImpl;->j:[B

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Body is required."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
