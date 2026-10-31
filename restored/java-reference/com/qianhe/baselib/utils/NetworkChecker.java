package com.qianhe.baselib.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class NetworkChecker {
    private static ExecutorService executor = Executors.newSingleThreadExecutor();
    private static volatile OkHttpClient sProbeClient;

    public interface NetworkCheckCallback {
        void onResult(boolean z);
    }

    public static void checkNetworkAsync(final Context context, final NetworkCheckCallback networkCheckCallback) {
        ExecutorService executorService = executor;
        if (executorService == null || executorService.isShutdown()) {
            executor = Executors.newSingleThreadExecutor();
        }
        executor.submit(new Runnable() { // from class: com.qianhe.baselib.utils.NetworkChecker.1
            @Override // java.lang.Runnable
            public void run() {
                networkCheckCallback.onResult(NetworkChecker.isInternetAvailable(context));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInternetAvailable(Context context) {
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            LogToFile.e("网络探测失败: ConnectivityManager=null");
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            LogToFile.e("网络探测失败: 无已连接网络, info=" + activeNetworkInfo);
            return false;
        }
        return isBusinessServerReachable();
    }

    private static OkHttpClient probeClient() {
        if (sProbeClient == null) {
            synchronized (NetworkChecker.class) {
                try {
                    if (sProbeClient == null) {
                        OkHttpClient.Builder builder = new OkHttpClient.Builder();
                        TimeUnit timeUnit = TimeUnit.SECONDS;
                        sProbeClient = builder.connectTimeout(8L, timeUnit).readTimeout(8L, timeUnit).writeTimeout(8L, timeUnit).followRedirects(false).followSslRedirects(false).retryOnConnectionFailure(true).build();
                    }
                } finally {
                }
            }
        }
        return sProbeClient;
    }

    private static boolean isBusinessServerReachable() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        AutoCloseable autoCloseable = null;
        try {
            try {
                try {
                    Response responseExecute = probeClient().newCall(new Request.Builder().url("https://yct-ctrl.xfix-gnss.com/").head().build()).execute();
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (responseExecute == null) {
                        LogToFile.e("网络探测失败: response=null, cost=" + jCurrentTimeMillis2 + "ms");
                        if (responseExecute != null) {
                            try {
                                responseExecute.close();
                            } catch (Throwable unused) {
                            }
                        }
                        return false;
                    }
                    LogToFile.i("网络探测成功: code=" + responseExecute.code() + ", cost=" + jCurrentTimeMillis2 + "ms");
                    try {
                        responseExecute.close();
                    } catch (Throwable unused2) {
                    }
                    return true;
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            autoCloseable.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                LogToFile.e("网络探测异常: cost=" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms, " + th2);
                if (0 != 0) {
                    try {
                        autoCloseable.close();
                    } catch (Throwable unused4) {
                    }
                }
                return false;
            }
        } catch (IOException e) {
            LogToFile.e("网络探测失败: cost=" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms, " + e);
            if (0 != 0) {
                try {
                    autoCloseable.close();
                } catch (Throwable unused5) {
                }
            }
            return false;
        }
    }

    public static void release() {
        executor.shutdownNow();
        executor = null;
        OkHttpClient okHttpClient = sProbeClient;
        sProbeClient = null;
        if (okHttpClient != null) {
            try {
                okHttpClient.dispatcher().executorService().shutdown();
                okHttpClient.connectionPool().evictAll();
            } catch (Throwable unused) {
            }
        }
    }
}
