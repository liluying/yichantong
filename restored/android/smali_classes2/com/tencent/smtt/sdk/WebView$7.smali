.class Lcom/tencent/smtt/sdk/WebView$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/WebView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->b(Lcom/tencent/smtt/sdk/WebView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    iget v0, v0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->b(Lcom/tencent/smtt/sdk/WebView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    iget v0, v0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->b(Lcom/tencent/smtt/sdk/WebView;Z)Z

    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/WebView;->c(Lcom/tencent/smtt/sdk/WebView;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/WebView;->d(Lcom/tencent/smtt/sdk/WebView;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, "guid"

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qua2"

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lc"

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v4, v2

    move-object v5, v3

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :goto_0
    const/4 v11, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->d(Lcom/tencent/smtt/sdk/WebView;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    const-string v2, "onVisibilityChanged"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    iget v6, v0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->c(Lcom/tencent/smtt/sdk/WebView;)Z

    move-result v7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->e(Lcom/tencent/smtt/sdk/WebView;)J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    iput v11, v0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$7;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0, v11}, Lcom/tencent/smtt/sdk/WebView;->b(Lcom/tencent/smtt/sdk/WebView;Z)Z

    monitor-exit v1

    goto :goto_4

    :cond_2
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_4
    return-void
.end method
