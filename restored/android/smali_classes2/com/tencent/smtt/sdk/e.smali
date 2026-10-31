.class public Lcom/tencent/smtt/sdk/e;
.super Lcom/tencent/smtt/sdk/ProxyController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ProxyController;-><init>()V

    return-void
.end method

.method private a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 8

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "androidx.webkit.internal.ProxyControllerImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getBoundaryInterface"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clearProxyOverride"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Runnable;

    aput-object v7, v6, v2

    const-class v7, Ljava/util/concurrent/Executor;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Ljava/util/List;)[[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/smtt/sdk/ProxyConfig$ProxyRule;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/smtt/sdk/ProxyConfig$ProxyRule;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/ProxyConfig$ProxyRule;->getSchemeFilter()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v4, v0, v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/smtt/sdk/ProxyConfig$ProxyRule;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/ProxyConfig$ProxyRule;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 10

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/u;->c()Lcom/tencent/smtt/sdk/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/v;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v4

    const-string v3, "android.webview.chromium.tencent.TencentSupportProxyController"

    new-array v5, v2, [Ljava/lang/Class;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5, v6}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "android.webview.chromium.tencent.TencentSupportProxyController"

    const-string v7, "clearProxyOverride"

    new-array v8, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Runnable;

    aput-object v3, v8, v2

    const-class v3, Ljava/util/concurrent/Executor;

    aput-object v3, v8, v0

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p2, v9, v2

    aput-object p1, v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a([[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 13

    .line 0
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/u;->c()Lcom/tencent/smtt/sdk/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/v;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v7

    const-string v6, "android.webview.chromium.tencent.TencentSupportProxyController"

    new-array v8, v5, [Ljava/lang/Class;

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8, v9}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "android.webview.chromium.tencent.TencentSupportProxyController"

    const-string v10, "setProxyOverride"

    new-array v11, v4, [Ljava/lang/Class;

    const-class v6, [[Ljava/lang/String;

    aput-object v6, v11, v5

    const-class v6, [Ljava/lang/String;

    aput-object v6, v11, v3

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v11, v2

    const-class v6, Ljava/util/concurrent/Executor;

    aput-object v6, v11, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v11, v0

    new-array v12, v4, [Ljava/lang/Object;

    aput-object p1, v12, v5

    aput-object p2, v12, v3

    aput-object p3, v12, v2

    aput-object p4, v12, v1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v12, v0

    invoke-virtual/range {v7 .. v12}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b([[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 10

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "androidx.webkit.internal.ProxyControllerImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getBoundaryInterface"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setProxyOverride"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, [[Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/Runnable;

    aput-object v9, v8, v1

    const-class v9, Ljava/util/concurrent/Executor;

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public clearProxyOverride(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/e;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/e;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setProxyOverride(Lcom/tencent/smtt/sdk/ProxyConfig;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/ProxyConfig;->getProxyRules()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/e;->a(Ljava/util/List;)[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/ProxyConfig;->getBypassRules()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/tencent/smtt/sdk/e;->a([[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/tencent/smtt/sdk/e;->b([[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
