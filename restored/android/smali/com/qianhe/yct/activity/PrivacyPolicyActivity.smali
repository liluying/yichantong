.class public Lcom/qianhe/yct/activity/PrivacyPolicyActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "PrivacyPolicyActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initWebSettings()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->webview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 45
    const-string v2, "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v3, -0x1

    .line 53
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowContentAccess(Z)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setBlockNetworkImage(Z)V

    .line 65
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setBlockNetworkLoads(Z)V

    .line 68
    invoke-static {v1}, Lcom/tencent/smtt/sdk/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->webview:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/qianhe/yct/activity/PrivacyPolicyActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/PrivacyPolicyActivity$1;-><init>(Lcom/qianhe/yct/activity/PrivacyPolicyActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->webview:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/qianhe/yct/activity/PrivacyPolicyActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/PrivacyPolicyActivity$2;-><init>(Lcom/qianhe/yct/activity/PrivacyPolicyActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 122
    sget v0, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->webview:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "https://yct.xfix-gnss.com/privacy_policy.html"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->webview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->webview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    return-void

    .line 182
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPrivacyPolicyBinding;

    .line 31
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;->initWebSettings()V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method
