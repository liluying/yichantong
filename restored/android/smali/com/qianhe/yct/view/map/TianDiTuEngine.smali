.class Lcom/qianhe/yct/view/map/TianDiTuEngine;
.super Lcom/qianhe/yct/view/map/IMapEngineImpl;
.source "TianDiTuEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;,
        Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;
    }
.end annotation


# instance fields
.field private androidJsInterface:Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

.field private isAttached:Z

.field private isDestroy:Z

.field private webView:Lcom/tencent/smtt/sdk/WebView;

.field private final yMapHandler:Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetisDestroy(Lcom/qianhe/yct/view/map/TianDiTuEngine;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isDestroy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lcom/qianhe/yct/view/map/TianDiTuEngine;)Lcom/tencent/smtt/sdk/WebView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMapHandler(Lcom/qianhe/yct/view/map/TianDiTuEngine;)Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->yMapHandler:Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/IMapEngineImpl;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isAttached:Z

    .line 34
    new-instance v1, Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    invoke-direct {v1}, Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->yMapHandler:Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    .line 36
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isDestroy:Z

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/map/IMapEngineImpl;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isAttached:Z

    .line 34
    new-instance v0, Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->yMapHandler:Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    .line 36
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isDestroy:Z

    return-void
.end method

.method private initWebSettings()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 209
    const-string v2, "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v3, -0x1

    .line 217
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 219
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowContentAccess(Z)V

    .line 224
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 225
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 228
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setBlockNetworkImage(Z)V

    .line 229
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setBlockNetworkLoads(Z)V

    .line 232
    invoke-static {v1}, Lcom/tencent/smtt/sdk/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/qianhe/yct/view/map/TianDiTuEngine$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/map/TianDiTuEngine$1;-><init>(Lcom/qianhe/yct/view/map/TianDiTuEngine;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/qianhe/yct/view/map/TianDiTuEngine$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/map/TianDiTuEngine$2;-><init>(Lcom/qianhe/yct/view/map/TianDiTuEngine;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 286
    new-instance v0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;-><init>(Lcom/qianhe/yct/view/map/TianDiTuEngine;Lcom/qianhe/yct/view/map/TianDiTuEngine-IA;)V

    iput-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->androidJsInterface:Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

    .line 287
    iget-object v1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "AndroidInterface"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "file:///android_asset/tianditu_map.html"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v1, "javascript:window.TiandituMap.addMarkerOrRoute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    .line 137
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    .line 140
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    .line 142
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public addPolyline(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/view/map/TianDiTuEngine;->addPolyline(Ljava/util/List;ZLjava/util/List;)V

    return-void
.end method

.method public addPolyline(Ljava/util/List;ZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/view/map/GeoPoint;

    .line 165
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 167
    :try_start_0
    iget-wide v3, v1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 168
    iget-wide v3, v1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    if-eqz p3, :cond_2

    .line 176
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 177
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 178
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 183
    :cond_2
    const-string p1, "null"

    :goto_2
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "javascript:window.TiandituMap.addMultiPointsAndRoute(%b, %s, %s)"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public attach(Landroid/view/ViewGroup;)V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isAttached:Z

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    .line 52
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    iget-object v1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isAttached:Z

    .line 62
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/TianDiTuEngine;->initWebSettings()V

    return-void
.end method

.method public centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 4

    .line 196
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "javascript:window.TiandituMap.centerLocation(%f, %f)"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v0, "AndroidInterface"

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    :cond_0
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isAttached:Z

    return-void
.end method

.method public moveCamera(Lcom/qianhe/yct/view/map/GeoPoint;F)V
    .locals 3

    .line 152
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v0, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "javascript:window.TiandituMap.centerLocation(%f, %f)"

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->isDestroy:Z

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->yMapHandler:Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 111
    const-string v2, "AndroidInterface"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 113
    iput-object v1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 0
    return-void
.end method

.method public updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V
    .locals 4

    .line 190
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "javascript:window.TiandituMap.updatePosition(%f, %f, %b)"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
