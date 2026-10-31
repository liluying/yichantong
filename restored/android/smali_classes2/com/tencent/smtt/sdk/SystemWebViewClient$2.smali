.class Lcom/tencent/smtt/sdk/SystemWebViewClient$2;
.super Lcom/tencent/smtt/export/external/interfaces/WebResourceError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/SystemWebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebResourceError;

.field final synthetic b:Lcom/tencent/smtt/sdk/SystemWebViewClient;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/SystemWebViewClient;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$2;->b:Lcom/tencent/smtt/sdk/SystemWebViewClient;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$2;->a:Landroid/webkit/WebResourceError;

    invoke-direct {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceError;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$2;->a:Landroid/webkit/WebResourceError;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/SystemWebViewClient$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$2;->a:Landroid/webkit/WebResourceError;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/SystemWebViewClient$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)I

    move-result v0

    return v0
.end method
