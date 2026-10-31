package com.qianhe.yct.view.map;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.widget.Toast;
import com.tencent.smtt.export.external.interfaces.ConsoleMessage;
import com.tencent.smtt.export.external.interfaces.JsResult;
import com.tencent.smtt.export.external.interfaces.SslError;
import com.tencent.smtt.export.external.interfaces.SslErrorHandler;
import com.tencent.smtt.sdk.WebChromeClient;
import com.tencent.smtt.sdk.WebSettings;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
class TianDiTuEngine extends IMapEngineImpl {
    private AndroidJsInterface androidJsInterface;
    private boolean isAttached;
    private boolean isDestroy;
    private WebView webView;
    private final YMapHandler yMapHandler;

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onCreate(Bundle bundle) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onLowMemory() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onStart() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onStop() {
    }

    public TianDiTuEngine() {
        this.isAttached = false;
        this.yMapHandler = new YMapHandler();
        this.isDestroy = false;
    }

    public TianDiTuEngine(OnLoadMapListener onLoadMapListener) {
        super(onLoadMapListener);
        this.isAttached = false;
        this.yMapHandler = new YMapHandler();
        this.isDestroy = false;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void attach(ViewGroup viewGroup) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.isAttached) {
            return;
        }
        this.webView = new WebView(viewGroup.getContext());
        viewGroup.addView(this.webView, new ViewGroup.LayoutParams(-1, -1));
        this.isAttached = true;
        initWebSettings();
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void detach(ViewGroup viewGroup) {
        WebView webView = this.webView;
        if (webView != null && webView.getParent() == viewGroup) {
            viewGroup.removeView(this.webView);
            this.webView.removeJavascriptInterface("AndroidInterface");
            this.webView.destroy();
            this.webView = null;
        }
        this.isAttached = false;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onResume() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.onResume();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onPause() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onDestroy() {
        this.isDestroy = true;
        this.yMapHandler.removeCallbacksAndMessages(null);
        WebView webView = this.webView;
        if (webView != null) {
            webView.removeJavascriptInterface("AndroidInterface");
            this.webView.destroy();
            this.webView = null;
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public boolean onBackPressed() {
        if (!this.webView.canGoBack()) {
            return false;
        }
        this.webView.goBack();
        return true;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void addMarkerOrRoute(GeoPoint geoPoint, GeoPoint geoPoint2) {
        StringBuilder sb = new StringBuilder("");
        sb.append("javascript:window.TiandituMap.addMarkerOrRoute(");
        sb.append(geoPoint.lng);
        sb.append(", ");
        sb.append(geoPoint.lat);
        if (geoPoint2 != null) {
            sb.append(", ");
            sb.append(geoPoint2.lng);
            sb.append(", ");
            sb.append(geoPoint2.lat);
        }
        sb.append(")");
        this.webView.loadUrl(sb.toString());
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void moveCamera(GeoPoint geoPoint, float f) {
        this.webView.loadUrl(String.format(Locale.ROOT, "javascript:window.TiandituMap.centerLocation(%f, %f)", Double.valueOf(geoPoint.lng), Double.valueOf(geoPoint.lat)));
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void addPolyline(List<GeoPoint> list, boolean z) throws JSONException {
        addPolyline(list, z, null);
    }

    @Override // com.qianhe.yct.view.map.IMapEngineImpl, com.qianhe.yct.view.map.IMapEngine
    public void addPolyline(List<GeoPoint> list, boolean z, List<String> list2) throws JSONException {
        String string;
        JSONArray jSONArray = new JSONArray();
        for (GeoPoint geoPoint : list) {
            JSONArray jSONArray2 = new JSONArray();
            try {
                jSONArray2.put(geoPoint.lng);
                jSONArray2.put(geoPoint.lat);
                jSONArray.put(jSONArray2);
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            JSONArray jSONArray3 = new JSONArray();
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                jSONArray3.put(it.next());
            }
            string = jSONArray3.toString();
        } else {
            string = "null";
        }
        this.webView.loadUrl(String.format(Locale.ROOT, "javascript:window.TiandituMap.addMultiPointsAndRoute(%b, %s, %s)", Boolean.valueOf(z), jSONArray.toString(), string));
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void updateLocation(GeoPoint geoPoint, boolean z) {
        this.webView.loadUrl(String.format(Locale.ROOT, "javascript:window.TiandituMap.updatePosition(%f, %f, %b)", Double.valueOf(geoPoint.lng), Double.valueOf(geoPoint.lat), Boolean.valueOf(z)));
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void centerLocation(GeoPoint geoPoint) {
        this.webView.loadUrl(String.format(Locale.ROOT, "javascript:window.TiandituMap.centerLocation(%f, %f)", Double.valueOf(geoPoint.lng), Double.valueOf(geoPoint.lat)));
    }

    private void initWebSettings() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        WebSettings settings = this.webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setUserAgentString("Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setCacheMode(-1);
        settings.setAppCacheEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setBlockNetworkImage(false);
        settings.setBlockNetworkLoads(false);
        WebView.setWebContentsDebuggingEnabled(true);
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.qianhe.yct.view.map.TianDiTuEngine.1
            @Override // com.tencent.smtt.sdk.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
            }

            @Override // com.tencent.smtt.sdk.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.proceed();
            }

            @Override // com.tencent.smtt.sdk.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!str.startsWith("file:///") && !str.contains("tianditu")) {
                    return false;
                }
                webView.loadUrl(str);
                return true;
            }
        });
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.qianhe.yct.view.map.TianDiTuEngine.2
            @Override // com.tencent.smtt.sdk.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
            }

            @Override // com.tencent.smtt.sdk.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                super.onReceivedTitle(webView, str);
            }

            @Override // com.tencent.smtt.sdk.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                Toast.makeText(TianDiTuEngine.this.webView.getContext(), str2, 0).show();
                jsResult.confirm();
                return true;
            }

            @Override // com.tencent.smtt.sdk.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                String str = consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId();
                return super.onConsoleMessage(consoleMessage);
            }
        });
        AndroidJsInterface androidJsInterface = new AndroidJsInterface();
        this.androidJsInterface = androidJsInterface;
        this.webView.addJavascriptInterface(androidJsInterface, "AndroidInterface");
        this.webView.loadUrl("file:///android_asset/tianditu_map.html");
    }

    private class AndroidJsInterface {
        private AndroidJsInterface() {
        }

        @JavascriptInterface
        public void onInitResult(final boolean z) {
            TianDiTuEngine.this.yMapHandler.post(new Runnable() { // from class: com.qianhe.yct.view.map.TianDiTuEngine.AndroidJsInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    OnLoadMapListener onLoadMapListener;
                    if (TianDiTuEngine.this.isDestroy || (onLoadMapListener = TianDiTuEngine.this.onLoadMapListener) == null) {
                        return;
                    }
                    onLoadMapListener.onLoadMapResult(z);
                }
            });
        }
    }

    private static class YMapHandler extends Handler {
        protected YMapHandler() {
            super(Looper.getMainLooper());
        }
    }
}
