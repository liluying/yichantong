.class public Lcom/tencent/smtt/sdk/X5JsCore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/X5JsCore$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/smtt/sdk/X5JsCore$a;

.field private static b:Lcom/tencent/smtt/sdk/X5JsCore$a;

.field private static c:Lcom/tencent/smtt/sdk/X5JsCore$a;


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Ljava/lang/Object;

.field private f:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/X5JsCore;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/X5JsCore;->canUseX5JsCore(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v0, "createX5JavaBridge"

    invoke-static {v0, v2, v3}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "X5JsCore"

    const-string v2, "X5JsCore create X5JavaBridge failure, use fallback!"

    nop

    nop

    nop

    new-instance v0, Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {v0, p1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Looper;)Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;
    .locals 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/X5JsCore;->canUseX5JsCore(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    const-class v4, Landroid/os/Looper;

    aput-object v4, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    const-string p0, "createX5JsVirtualMachine"

    invoke-static {p0, v3, v2}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    return-object p0

    :cond_0
    const-string p0, "X5JsCore"

    const-string p1, "X5JsCore#createVirtualMachine failure!"

    nop

    nop

    nop

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static a()Ljava/lang/Object;
    .locals 3

    .line 0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "currentContextData"

    invoke-static {v2, v1, v0}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/u;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->c()Lcom/tencent/smtt/sdk/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/v;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "X5JsCore"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "X5Jscore#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - x5CoreEngine is null or is not x5core."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static canUseX5JsCore(Landroid/content/Context;)Z
    .locals 4

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sget-object v1, Lcom/tencent/smtt/sdk/X5JsCore$a;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/tencent/smtt/sdk/X5JsCore;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    if-ne p0, v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "canUseX5JsCore"

    invoke-static {p0, v0, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v3, [Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    aput-object v0, p0, v2

    invoke-static {}, Lcom/tencent/smtt/sdk/JsValue;->a()Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue$JsValueFactory;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "setJsValueFactory"

    invoke-static {v0, p0, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/tencent/smtt/sdk/X5JsCore$a;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object p0, Lcom/tencent/smtt/sdk/X5JsCore;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    return v3

    :cond_2
    return v2
.end method

.method public static canUseX5JsCoreNewAPI(Landroid/content/Context;)Z
    .locals 4

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sget-object v1, Lcom/tencent/smtt/sdk/X5JsCore$a;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/tencent/smtt/sdk/X5JsCore;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    if-ne p0, v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "canUseX5JsCoreNewAPI"

    invoke-static {p0, v0, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tencent/smtt/sdk/X5JsCore$a;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object p0, Lcom/tencent/smtt/sdk/X5JsCore;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    return v3

    :cond_2
    return v2
.end method

.method public static canX5JsCoreUseNativeBuffer(Landroid/content/Context;)Z
    .locals 4

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sget-object v1, Lcom/tencent/smtt/sdk/X5JsCore$a;->a:Lcom/tencent/smtt/sdk/X5JsCore$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/tencent/smtt/sdk/X5JsCore;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/X5JsCore$a;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object v0, Lcom/tencent/smtt/sdk/X5JsCore;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/X5JsCore;->canUseX5JsCore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "canX5JsCoreUseBuffer"

    invoke-static {p0, v0, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/tencent/smtt/sdk/X5JsCore$a;->c:Lcom/tencent/smtt/sdk/X5JsCore$a;

    sput-object p0, Lcom/tencent/smtt/sdk/X5JsCore;->b:Lcom/tencent/smtt/sdk/X5JsCore$a;

    return v2

    :cond_3
    return v3
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v4, :cond_0

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v1

    aput-object v6, v5, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object v4, v3, v0

    const-string p1, "addJavascriptInterface"

    invoke-static {p1, v5, v3}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "destroyX5JsCore"

    invoke-static {v0, v4, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->freeMemory()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->pauseTimers()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    iput-object v3, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    :cond_1
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v4, :cond_0

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Landroid/webkit/ValueCallback;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object v4, v3, v0

    const-string p1, "evaluateJavascript"

    invoke-static {p1, v5, v3}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    :cond_1
    return-void
.end method

.method public getNativeBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/smtt/sdk/X5JsCore;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/X5JsCore;->canX5JsCoreUseNativeBuffer(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object p1, v2, v0

    const-string p1, "getNativeBuffer"

    invoke-static {p1, v3, v2}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNativeBufferId()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/X5JsCore;->canX5JsCoreUseNativeBuffer(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "getNativeBufferId"

    invoke-static {v0, v2, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public pause()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "pause"

    invoke-static {v0, v3, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "pauseTimers"

    invoke-static {v0, v3, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v3, :cond_0

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    const-string p1, "removeJavascriptInterface"

    invoke-static {p1, v4, v2}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/X5JsCore;->f:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "resume"

    invoke-static {v0, v3, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public resumeTimers()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "resumeTimers"

    invoke-static {v0, v3, v1}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setNativeBuffer(ILjava/nio/ByteBuffer;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/smtt/sdk/X5JsCore;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/X5JsCore;->canX5JsCoreUseNativeBuffer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/nio/ByteBuffer;

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/tencent/smtt/sdk/X5JsCore;->e:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const-string p1, "setNativeBuffer"

    invoke-static {p1, v4, v3}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
