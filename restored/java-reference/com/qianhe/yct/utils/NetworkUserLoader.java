package com.qianhe.yct.utils;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.YctDeviceManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.OrderRecordEntity;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.bean.PolyLineEntity;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.bean.ShovelMeasureParams;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.ZipUtil;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.bean.LoginedDevice;
import com.qianhe.yct.bean.RenewPriceBean;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.event.CheckTokenResponse;
import com.qianhe.yct.event.CloseOrderResponse;
import com.qianhe.yct.event.CorsExpireEpochEvent;
import com.qianhe.yct.event.CreateAccountResponse;
import com.qianhe.yct.event.CreateBucketResponse;
import com.qianhe.yct.event.CreateEngineeringResponse;
import com.qianhe.yct.event.CreateExcavatorResponse;
import com.qianhe.yct.event.CreateProjectResponse;
import com.qianhe.yct.event.CreateShareResponse;
import com.qianhe.yct.event.DelBucketResponse;
import com.qianhe.yct.event.DelShareResponse;
import com.qianhe.yct.event.DeleteGnssTransParamResponse;
import com.qianhe.yct.event.DeviceUniqueIdEvent;
import com.qianhe.yct.event.GnssTransParamResponse;
import com.qianhe.yct.event.LoginResponse;
import com.qianhe.yct.event.LogoutResponse;
import com.qianhe.yct.event.ModifyBucketResponse;
import com.qianhe.yct.event.ModifyExcavatorResponse;
import com.qianhe.yct.event.ModifyProjectResponse;
import com.qianhe.yct.event.ModifyResponse;
import com.qianhe.yct.event.ModifyShareResponse;
import com.qianhe.yct.event.OrderRecordResponse;
import com.qianhe.yct.event.PointGroupResponse;
import com.qianhe.yct.event.PointSyncResponse;
import com.qianhe.yct.event.PriceListResponse;
import com.qianhe.yct.event.QueryBucketResponse;
import com.qianhe.yct.event.QueryEngineeringResponse;
import com.qianhe.yct.event.QueryExcacatorResponse;
import com.qianhe.yct.event.QueryGnssEngineeringResponse;
import com.qianhe.yct.event.QueryGnssTransParamResponse;
import com.qianhe.yct.event.QueryPointGroupResponse;
import com.qianhe.yct.event.QueryPointResponse;
import com.qianhe.yct.event.QueryProjectByUUidResponse;
import com.qianhe.yct.event.QueryProjectResponse;
import com.qianhe.yct.event.QueryShareResponse;
import com.qianhe.yct.event.RenewCorsResponse;
import com.qianhe.yct.event.SendCaptchaResponse;
import com.qianhe.yct.event.UnknownHostEvent;
import com.qianhe.yct.event.UnregisterAccountResponse;
import com.qianhe.yct.event.WxAppIdResponse;
import com.qianhe.yct.event.WxOpenIdResponse;
import com.qianhe.yct.manage.AppConfigManager;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.security.KeyManagementException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import okio.Buffer;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NetworkUserLoader {
    private static NetworkUserLoader INSTANCE = null;
    private static String URL = "https://yct-ctrl.xfix-gnss.com/api/request";
    private static long sLastUnknownHostEventTime;
    private long activeQueryProjectBelongEngineeringId;
    private boolean activeQueryProjectFilterByEngineering;
    private final List<Call> callList;
    private List<File> currentLogUploadTempFiles;
    private File currentLogUploadZip;
    private Call currentOssUploadCall;
    private int failCount;
    private int failUpLogCount;
    private boolean isUploadFileToServer;
    private long lastModifyEngineeringElapsedMs;
    private long lastModifyEngineeringId;
    private volatile Thread logCompressThread;
    private volatile boolean logUploadCancelled;
    private final OkHttpClient mClient;
    private int timeoutBucket;
    private int timeoutExcavator;
    private int timeoutOrderRecord;
    private int timeoutQueryProject;
    private int timeoutQueryShare;
    private final SharedPreferences mSp = YCTApplication.getInstance().getSharedPreferences("sp", 0);
    private int sharePage = 1;
    private int proPage = 1;
    private int proByuuidPage = 1;
    private int excavatorPage = 1;
    private int bucketPage = 1;
    private int orderRecordPage = 1;
    private final List<ShareEntity> shareList = new ArrayList();
    private final List<BaseProEntity> entityList = new ArrayList();
    private final List<BaseProEntity> entityByUuidList = new ArrayList();
    private final List<ExcavatorEntity> excavatorList = new ArrayList();
    private final List<ShovelEntity> bucketList = new ArrayList();
    private final List<OrderRecordEntity> orderRecordList = new ArrayList();
    private final int MAX_RELINK = 1;
    private final Set<Long> uploadingPointLocalIds = Collections.synchronizedSet(new HashSet());
    private String activeQueryProjectEngineeringUuid = "";
    private int lastModifyEngineeringCurrentUsage = RecyclerView.UNDEFINED_DURATION;
    private final AtomicInteger logUploadGeneration = new AtomicInteger();
    private final List<Call> logUploadApiCalls = new ArrayList();

    public interface OnRequestCallBackListener {
        void onFailure(Call call, String str);

        void onResponse(String str);
    }

    public interface UploadProgressListener {
        void onProgress(int i);
    }

    public boolean isPointUploading(long j) {
        return j > 0 && this.uploadingPointLocalIds.contains(Long.valueOf(j));
    }

    public static synchronized NetworkUserLoader getInstance() {
        try {
            if (INSTANCE == null) {
                URL = ServerEnvHelper.resolveApiUrl("https://yct-ctrl.xfix-gnss.com/api/request");
                INSTANCE = new NetworkUserLoader();
                LogToFile.i("URL：" + URL);
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public static OkHttpClient getUnsafeOkHttpClient() throws NoSuchAlgorithmException, KeyManagementException {
        try {
            TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.qianhe.yct.utils.NetworkUserLoader.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            HostnameVerifier hostnameVerifier = new HostnameVerifier() { // from class: com.qianhe.yct.utils.NetworkUserLoader.2
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            };
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(hostnameVerifier);
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.qianhe.yct.utils.NetworkUserLoader$$ExternalSyntheticLambda0
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public final void log(String str) {
                    LogToFile.logcat(3, "OkHttp", str);
                }
            });
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.connectTimeout(8L, timeUnit);
            builder.readTimeout(8L, timeUnit);
            builder.writeTimeout(8L, timeUnit);
            return builder.build();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("创建忽略SSL的OkHttpClient失败", e);
        }
    }

    private NetworkUserLoader() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.connectTimeout(5L, timeUnit);
        builder.readTimeout(5L, timeUnit);
        builder.writeTimeout(5L, timeUnit);
        this.mClient = ServerEnvHelper.isTestEnv() ? getUnsafeOkHttpClient() : new OkHttpClient();
        this.callList = new ArrayList();
    }

    public void release() {
        INSTANCE = null;
        this.callList.clear();
    }

    public void cancel() {
        this.sharePage = 1;
        this.proPage = 1;
        this.proByuuidPage = 1;
        this.excavatorPage = 1;
        this.bucketPage = 1;
        this.orderRecordPage = 1;
        for (Call call : this.callList) {
            if (call != null) {
                call.cancel();
            }
        }
        this.callList.clear();
    }

    public void cancelLogUpload() {
        this.logUploadCancelled = true;
        this.logUploadGeneration.incrementAndGet();
        Thread thread = this.logCompressThread;
        if (thread != null && thread.isAlive()) {
            thread.interrupt();
        }
        cancelLogUploadNetwork();
        this.isUploadFileToServer = false;
        this.failUpLogCount = 0;
        cleanupLogUploadFilesAsync();
        LogToFile.i("用户取消日志上传");
    }

    private void cancelLogUploadNetwork() {
        Iterator it = new ArrayList(this.logUploadApiCalls).iterator();
        while (it.hasNext()) {
            Call call = (Call) it.next();
            if (call != null && !call.isCanceled()) {
                call.cancel();
            }
        }
        this.logUploadApiCalls.clear();
        Call call2 = this.currentOssUploadCall;
        if (call2 != null && !call2.isCanceled()) {
            this.currentOssUploadCall.cancel();
        }
        this.currentOssUploadCall = null;
    }

    private int beginNewLogUploadSession() throws InterruptedException {
        this.logUploadCancelled = true;
        Thread thread = this.logCompressThread;
        if (thread != null && thread != Thread.currentThread() && thread.isAlive()) {
            thread.interrupt();
            try {
                thread.join(8000L);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            if (thread.isAlive()) {
                LogToFile.e("上一轮日志压缩仍未结束");
            }
        }
        cancelLogUploadNetwork();
        cleanupLogUploadFiles();
        int iIncrementAndGet = this.logUploadGeneration.incrementAndGet();
        this.logUploadCancelled = false;
        this.failCount = 0;
        this.failUpLogCount = 0;
        this.logCompressThread = Thread.currentThread();
        return iIncrementAndGet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogUploadSessionActive(int i) {
        return !this.logUploadCancelled && this.logUploadGeneration.get() == i;
    }

    private void beginLogUpload(File file, List<File> list) {
        this.logUploadApiCalls.clear();
        this.currentLogUploadZip = file;
        this.currentLogUploadTempFiles = list != null ? new ArrayList(list) : new ArrayList();
    }

    private void cleanupLogUploadFiles() {
        File file = this.currentLogUploadZip;
        List<File> list = this.currentLogUploadTempFiles;
        File parentFile = file != null ? file.getParentFile() : null;
        endLogUploadSession();
        deleteLogUploadArtifacts(file, list, parentFile);
    }

    private void cleanupLogUploadFilesAsync() {
        final int i = this.logUploadGeneration.get();
        final File file = this.currentLogUploadZip;
        final ArrayList arrayList = this.currentLogUploadTempFiles != null ? new ArrayList(this.currentLogUploadTempFiles) : null;
        final File parentFile = file != null ? file.getParentFile() : null;
        endLogUploadSession();
        new Thread(new Runnable() { // from class: com.qianhe.yct.utils.NetworkUserLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                NetworkUserLoader.m2843$r8$lambda$CGpW4wyB45iCyBqyGCZtMGnWqY(this.f$0, file, i, arrayList, parentFile);
            }
        }, "log-upload-cleanup").start();
    }

    /* renamed from: $r8$lambda$CGpW4wyB45-iCyBqyGCZtMGnWqY, reason: not valid java name */
    public static /* synthetic */ void m2843$r8$lambda$CGpW4wyB45iCyBqyGCZtMGnWqY(NetworkUserLoader networkUserLoader, File file, int i, List list, File file2) {
        if (file != null) {
            networkUserLoader.getClass();
            if (file.exists() && networkUserLoader.logUploadGeneration.get() == i) {
                file.delete();
            }
        }
        networkUserLoader.deleteLogUploadDecryptTempFiles(list);
        if (networkUserLoader.logUploadGeneration.get() == i) {
            ZipUtil.deleteLogdecTempFiles(file2);
        }
    }

    private void deleteLogUploadArtifacts(File file, List<File> list, File file2) {
        if (file != null && file.exists()) {
            file.delete();
        }
        deleteLogUploadDecryptTempFiles(list);
        ZipUtil.deleteLogdecTempFiles(file2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endLogUploadSession() {
        this.currentLogUploadZip = null;
        this.currentLogUploadTempFiles = null;
        this.currentOssUploadCall = null;
        this.logUploadApiCalls.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteLogUploadDecryptTempFiles(List<File> list) {
        if (list == null) {
            return;
        }
        for (File file : list) {
            if (file != null && file.exists() && isLogUploadTempFile(file)) {
                file.delete();
            }
        }
    }

    private static boolean isLogUploadTempFile(File file) {
        String name = file.getName();
        if (name.contains(".decrypt")) {
            return true;
        }
        return name.startsWith("logdec_") && name.endsWith(".tmp");
    }

    public void getWxGZHAppId() throws JSONException {
        String strBuildRequestBody = buildRequestBody(17007, 1, new HashMap());
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 获取appId：" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.3
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getWxGZHAppId();
                    } else {
                        EventBus.getDefault().post(new WxAppIdResponse(-1, iOException.getMessage()));
                        LogToFile.i("getWxGZHAppId()失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("获取appId：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                String string = jSONObject.getString("err_msg");
                                int i = jSONObject.getInt("state");
                                if (i != 0) {
                                    EventBus.getDefault().post(new WxAppIdResponse(i, string));
                                } else {
                                    WxAppIdResponse wxAppIdResponse = (WxAppIdResponse) new Gson().fromJson(jSONObject.getJSONObject("params").toString(), new TypeToken<WxAppIdResponse>() { // from class: com.qianhe.yct.utils.NetworkUserLoader.3.1
                                    }.getType());
                                    wxAppIdResponse.state = i;
                                    EventBus.getDefault().post(wxAppIdResponse);
                                }
                                return;
                            } catch (Exception e) {
                                EventBus.getDefault().post(new WxAppIdResponse(-1, e.getMessage()));
                                LogToFile.e("getWxGZHAppId() onResponse：" + e);
                                return;
                            }
                        }
                        EventBus.getDefault().post(new WxAppIdResponse(-1, response.message()));
                        return;
                    }
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getWxGZHAppId();
                    } else {
                        EventBus.getDefault().post(new WxAppIdResponse(-1, response.message()));
                        LogToFile.i("getWxGZHAppId()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            EventBus.getDefault().post(new WxAppIdResponse(-1, e.getMessage()));
            LogToFile.e("getWxGZHAppId()异常：" + e);
        }
    }

    public void getPriceList() throws JSONException {
        HashMap map = new HashMap();
        map.put("sn", this.mSp.getString("deviceSn", ""));
        String strBuildRequestBody = buildRequestBody(17008, 9, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 价格列表：" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.4
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getPriceList();
                    } else {
                        EventBus.getDefault().post(new PriceListResponse(-1, iOException.getMessage()));
                        LogToFile.i("getPriceList()失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("查询价格列表：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                String string = jSONObject.getString("err_msg");
                                int i = jSONObject.getInt("state");
                                if (i != 0) {
                                    EventBus.getDefault().post(new PriceListResponse(i, string));
                                    return;
                                }
                                JSONArray jSONArray = jSONObject.getJSONArray("results");
                                ArrayList arrayList = new ArrayList();
                                boolean z = false;
                                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                    RenewPriceBean renewPriceBean = (RenewPriceBean) new Gson().fromJson(jSONArray.getJSONObject(i2).toString(), new TypeToken<RenewPriceBean>() { // from class: com.qianhe.yct.utils.NetworkUserLoader.4.1
                                    }.getType());
                                    if (renewPriceBean.price_group_id == 1) {
                                        z = true;
                                    }
                                    arrayList.add(renewPriceBean);
                                }
                                EventBus.getDefault().post(new PriceListResponse(i, arrayList, z));
                                return;
                            } catch (Exception e) {
                                EventBus.getDefault().post(new PriceListResponse(-1, e.getMessage()));
                                LogToFile.e("getPriceList() onResponse：" + e);
                                return;
                            }
                        }
                        EventBus.getDefault().post(new PriceListResponse(-1, response.message()));
                        return;
                    }
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getPriceList();
                    } else {
                        EventBus.getDefault().post(new PriceListResponse(-1, response.message()));
                        LogToFile.i("getPriceList()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            EventBus.getDefault().post(new PriceListResponse(-1, e.getMessage()));
            LogToFile.e("getPriceList()异常：" + e);
        }
    }

    public void getCorsExpirationTime(final String str, final String str2) throws JSONException {
        HashMap map = new HashMap();
        map.put("sn", str2);
        String strBuildRequestBody = buildRequestBody(17008, 19, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 获取cors过期时间：" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.5
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getCorsExpirationTime(getClass().getName(), str2);
                    } else {
                        EventBus.getDefault().post(new CorsExpireEpochEvent(str, -1, -1L));
                        LogToFile.i("获取cors过期时间失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("获取cors过期时间：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                jSONObject.getString("err_msg");
                                int i = jSONObject.getInt("state");
                                if (i != 0) {
                                    EventBus.getDefault().post(new CorsExpireEpochEvent(str, i, -1L));
                                } else {
                                    EventBus.getDefault().post(new CorsExpireEpochEvent(str, i, jSONObject.getLong("expire_epoch")));
                                }
                                return;
                            } catch (Exception e) {
                                EventBus.getDefault().post(new CorsExpireEpochEvent(str, -1, -1L));
                                LogToFile.e("获取cors过期时间 onResponse：" + e);
                                return;
                            }
                        }
                        EventBus.getDefault().post(new CorsExpireEpochEvent(str, -1, -1L));
                        return;
                    }
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getCorsExpirationTime(getClass().getName(), str2);
                    } else {
                        EventBus.getDefault().post(new CorsExpireEpochEvent(str, -1, -1L));
                        LogToFile.i("获取cors过期时间失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            EventBus.getDefault().post(new CorsExpireEpochEvent(str, -1, -1L));
            LogToFile.e("获取cors过期时间异常：" + e);
        }
    }

    public void getWxOpenId(final String str) throws JSONException {
        HashMap map = new HashMap();
        map.put("wx_code_type", 2);
        map.put("wx_code", str);
        String strBuildRequestBody = buildRequestBody(17007, 3, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 获取微信用户openId:" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.6
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getWxOpenId(str);
                    } else {
                        EventBus.getDefault().post(new WxOpenIdResponse(-1, iOException.getMessage()));
                        LogToFile.i("getWxOpenId()失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("获取微信用户openId：" + strString);
                                EventBus.getDefault().post((WxOpenIdResponse) new Gson().fromJson(new JSONObject(strString).toString(), new TypeToken<WxOpenIdResponse>() { // from class: com.qianhe.yct.utils.NetworkUserLoader.6.1
                                }.getType()));
                                return;
                            } catch (Exception e) {
                                EventBus.getDefault().post(new WxOpenIdResponse(-1, e.getMessage()));
                                LogToFile.e("getWxOpenId() onResponse：" + e);
                                return;
                            }
                        }
                        EventBus.getDefault().post(new WxOpenIdResponse(-1, response.message()));
                        return;
                    }
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.getWxOpenId(str);
                    } else {
                        EventBus.getDefault().post(new WxOpenIdResponse(-1, response.message()));
                        LogToFile.i("getWxOpenId()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            EventBus.getDefault().post(new WxOpenIdResponse(-1, e.getMessage()));
            LogToFile.e("getWxOpenId()异常：" + e);
        }
    }

    public void renewCorsAccount(final String str, final long j, final String str2, final String str3) throws JSONException {
        HashMap map = new HashMap();
        map.put("pay_type", "app");
        map.put("payer_openid", str);
        map.put("account_name", str2);
        map.put("price_id", Long.valueOf(j));
        map.put("appid", str3);
        String strBuildRequestBody = buildRequestBody(17007, 23, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 账号续费：" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.7
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.renewCorsAccount(str, j, str2, str3);
                    } else {
                        EventBus.getDefault().post(new RenewCorsResponse(-1, iOException.getMessage()));
                        LogToFile.i("renewCorsAccount()失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("续费Cors账号订单响应：" + strString);
                                EventBus.getDefault().post((RenewCorsResponse) new Gson().fromJson(new JSONObject(strString).toString(), new TypeToken<RenewCorsResponse>() { // from class: com.qianhe.yct.utils.NetworkUserLoader.7.1
                                }.getType()));
                                return;
                            } catch (Exception e) {
                                EventBus.getDefault().post(new RenewCorsResponse(-1, e.getMessage()));
                                LogToFile.e("renewCorsAccount() onResponse：" + e);
                                return;
                            }
                        }
                        EventBus.getDefault().post(new RenewCorsResponse(-1, response.message()));
                        return;
                    }
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.renewCorsAccount(str, j, str2, str3);
                    } else {
                        EventBus.getDefault().post(new RenewCorsResponse(-1, response.message()));
                        LogToFile.i("renewCorsAccount()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            EventBus.getDefault().post(new RenewCorsResponse(-1, e.getMessage()));
            LogToFile.e("renewCorsAccount()异常：" + e);
        }
    }

    public void getOrderRecord(final String str) {
        NetworkUserLoader networkUserLoader;
        HashMap map = new HashMap();
        map.put("wx_code_type", 2);
        map.put("wx_code", str);
        map.put("page", Integer.valueOf(this.orderRecordPage));
        map.put("per_page_count", 20);
        if (this.orderRecordPage == 1) {
            this.orderRecordList.clear();
        }
        try {
            networkUserLoader = this;
        } catch (Exception e) {
            e = e;
            networkUserLoader = this;
        }
        try {
            networkUserLoader.startPostRequst("订单记录", 17007, 27, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.8
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    LogToFile.e("onFailure() ：" + str2);
                    NetworkUserLoader.this.orderRecordPage = 1;
                    if (str2.contains("timeout")) {
                        if (NetworkUserLoader.this.timeoutOrderRecord < 1) {
                            NetworkUserLoader.this.timeoutOrderRecord++;
                            LogToFile.i("超时" + NetworkUserLoader.this.timeoutOrderRecord + "次");
                            NetworkUserLoader.this.getOrderRecord(str);
                            return;
                        }
                        EventBus.getDefault().post(new OrderRecordResponse(-1, str2));
                        return;
                    }
                    EventBus.getDefault().post(new OrderRecordResponse(-1, str2));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    LogToFile.i("查询订单记录响应：" + str2);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        int iOptInt = jSONObject.optInt("total_count");
                        if (i != 0) {
                            EventBus.getDefault().post(new OrderRecordResponse(i, jSONObject.getString("err_msg")));
                            NetworkUserLoader.this.orderRecordPage = 1;
                            return;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        NetworkUserLoader.this.orderRecordList.addAll((Collection) new Gson().fromJson(jSONArray.toString(), new TypeToken<List<OrderRecordEntity>>() { // from class: com.qianhe.yct.utils.NetworkUserLoader.8.1
                        }.getType()));
                        if (jSONArray.length() > 0 && NetworkUserLoader.this.orderRecordList.size() < iOptInt) {
                            NetworkUserLoader.this.orderRecordPage++;
                            NetworkUserLoader.this.getOrderRecord(str);
                        } else {
                            NetworkUserLoader.this.orderRecordPage = 1;
                            OrderRecordResponse orderRecordResponse = new OrderRecordResponse(i, "ok");
                            orderRecordResponse.list = NetworkUserLoader.this.orderRecordList;
                            EventBus.getDefault().post(orderRecordResponse);
                        }
                    } catch (Exception e2) {
                        NetworkUserLoader.this.orderRecordPage = 1;
                        LogToFile.e("数据解析异常：" + e2);
                        EventBus.getDefault().post(new OrderRecordResponse(-1, e2.toString()));
                    }
                }
            });
        } catch (Exception e2) {
            e = e2;
            Exception exc = e;
            EventBus.getDefault().post(new OrderRecordResponse(-1, ""));
            networkUserLoader.orderRecordPage = 1;
            LogToFile.e("查询订单记录失败：" + exc);
        }
    }

    public void closeOrder(final String str, final String str2, final String str3) throws JSONException {
        HashMap map = new HashMap();
        map.put("order_no", str);
        map.put("reason", str3);
        map.put("wx_code_type", 2);
        map.put("wx_code", str2);
        String strBuildRequestBody = buildRequestBody(17007, 31, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 关闭订单：" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.9
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.closeOrder(str, str2, str3);
                    } else {
                        EventBus.getDefault().post(new CloseOrderResponse(-1, iOException.getMessage()));
                        LogToFile.i("关闭订单失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("关闭订单响应：" + strString);
                                EventBus.getDefault().post(new CloseOrderResponse(new JSONObject(strString).getInt("state"), response.message()));
                                return;
                            } catch (Exception e) {
                                EventBus.getDefault().post(new CloseOrderResponse(-1, e.getMessage()));
                                LogToFile.e("关闭订单 onResponse：" + e);
                                return;
                            }
                        }
                        EventBus.getDefault().post(new CloseOrderResponse(-1, response.message()));
                        return;
                    }
                    NetworkUserLoader.this.failCount++;
                    if (NetworkUserLoader.this.failCount < 3) {
                        NetworkUserLoader.this.closeOrder(str, str2, str3);
                    } else {
                        EventBus.getDefault().post(new CloseOrderResponse(-1, response.message()));
                        LogToFile.i("关闭订单失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            EventBus.getDefault().post(new CloseOrderResponse(-1, e.getMessage()));
            LogToFile.e("关闭订单异常：" + e);
        }
    }

    public void setConfig(JSONObject jSONObject) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        try {
            map.put("configs", jSONObject);
            startPostRequst("设置配置", 17003, 1003, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.10
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("设置配置响应：" + str);
                        JSONObject jSONObject2 = new JSONObject(str);
                        if (jSONObject2.getInt("state") != 0) {
                            LogToFile.e("设置配置失败：" + jSONObject2.getString("err_msg"));
                            return;
                        }
                        AppConfigManager.getInstance().synVersion(jSONObject2.getInt("version"));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("设置配置失败：" + e);
        }
    }

    public void getConfig(String... strArr) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        JSONArray jSONArray = new JSONArray();
        for (String str : strArr) {
            jSONArray.put(str);
        }
        map.put("keys", jSONArray);
        try {
            startPostRequst("获取配置", 17003, 1001, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.11
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("获取配置响应：" + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.getInt("state") != 0) {
                            LogToFile.e("获取配置失败：" + jSONObject.getString("err_msg"));
                            return;
                        }
                        JSONArray jSONArray2 = jSONObject.getJSONArray("configs");
                        if (jSONArray2.length() > 0) {
                            int i = jSONObject.getInt("version");
                            AppConfig appConfig = new AppConfig();
                            long j = i;
                            appConfig.version = j;
                            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                                String string = jSONObject2.getString("key");
                                String string2 = jSONObject2.getString("value");
                                if (string.contains("bestpos_interval")) {
                                    appConfig.details.bestpos_interval = Float.parseFloat(string2);
                                } else if (string.contains("dop_interval")) {
                                    appConfig.details.dop_interval = Float.parseFloat(string2);
                                } else if (string.contains("gga_interval")) {
                                    appConfig.details.gga_interval = Float.parseFloat(string2);
                                } else if (string.contains("gst_interval")) {
                                    appConfig.details.gst_interval = Float.parseFloat(string2);
                                } else if (string.contains("ins_interval")) {
                                    appConfig.details.ins_interval = Float.parseFloat(string2);
                                } else if (string.contains("extsensor_1")) {
                                    appConfig.details.extsensor_1 = Float.parseFloat(string2);
                                } else if (string.contains("ntrip_host")) {
                                    appConfig.details.ntrip_host = string2;
                                } else if (string.contains("ntrip_mount_point")) {
                                    appConfig.details.ntrip_mount_point = string2;
                                } else if (string.contains("ntrip_password")) {
                                    appConfig.details.ntrip_password = string2;
                                } else if (string.contains("ntrip_port")) {
                                    appConfig.details.ntrip_port = Integer.parseInt(string2);
                                } else if (string.contains("ntrip_type")) {
                                    appConfig.details.ntrip_type = Integer.parseInt(string2);
                                } else if (string.contains("ntrip_username")) {
                                    appConfig.details.ntrip_username = string2;
                                } else if (string.contains("refstation_interval")) {
                                    appConfig.details.refstation_interval = Float.parseFloat(string2);
                                } else if (string.contains("sau_interval")) {
                                    appConfig.details.sau_interval = Float.parseFloat(string2);
                                } else if (string.contains("sav_interval")) {
                                    appConfig.details.sav_interval = Float.parseFloat(string2);
                                } else if (string.contains("snr_interval")) {
                                    appConfig.details.sav_interval = Float.parseFloat(string2);
                                } else if (string.contains("work_tolerance")) {
                                    appConfig.details.work_tolerance = Float.parseFloat(string2);
                                } else if (string.contains("hrms_limit")) {
                                    appConfig.details.hrms_limit = Float.parseFloat(string2);
                                } else if (string.contains("vrms_limit")) {
                                    appConfig.details.vrms_limit = Float.parseFloat(string2);
                                } else if (string.contains("base_mobility_threshold")) {
                                    appConfig.details.base_mobility_threshold = Float.parseFloat(string2);
                                } else if (string.contains("base_height_cutoff_angle")) {
                                    appConfig.details.base_height_cutoff_angle = Float.parseFloat(string2);
                                } else if (string.contains("base_pdop_limit")) {
                                    appConfig.details.base_pdop_limit = Float.parseFloat(string2);
                                } else if (string.contains("base_host")) {
                                    appConfig.details.base_host = string2;
                                } else if (string.contains("base_port")) {
                                    appConfig.details.base_port = Integer.parseInt(string2);
                                } else if (string.contains("ins_unavailable_count")) {
                                    appConfig.details.ins_unavailable_count = Integer.parseInt(string2);
                                } else if (string.contains("data_smoot")) {
                                    appConfig.details.data_smoot = Integer.parseInt(string2);
                                } else if (string.contains("display_distance_starting_point")) {
                                    appConfig.details.display_distance_starting_point = Integer.parseInt(string2);
                                } else if (string.contains("display_verify_horizontal_error")) {
                                    appConfig.details.display_verify_horizontal_error = Integer.parseInt(string2);
                                } else if (string.contains("tilt_display")) {
                                    appConfig.details.tilt_display = Integer.parseInt(string2);
                                } else if (string.contains("unit_preference")) {
                                    appConfig.details.unit_preference = Integer.parseInt(string2);
                                } else if (string.contains("pole_height")) {
                                    appConfig.details.pole_height = Float.parseFloat(string2);
                                }
                            }
                            AppConfig appConfig2 = AppConfigManager.getInstance().getAppConfig();
                            LogToFile.i("平台配置版本:" + i + "，本地配置版本:" + appConfig2.version);
                            if (appConfig2.version > j) {
                                NetworkUserLoader.this.setConfig(AppConfigJsonUtil.detailsToJsonStringValues(appConfig2));
                                return;
                            } else {
                                AppConfigUtil.saveAppConfig(appConfig);
                                return;
                            }
                        }
                        AppConfig appConfig3 = new AppConfig();
                        AppConfigUtil.saveAppConfig(appConfig3);
                        NetworkUserLoader.this.setConfig(AppConfigJsonUtil.detailsToJsonStringValues(appConfig3));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("获取配置失败：" + e);
        }
    }

    public void createShare(String str, List<String> list, long j) {
        Map<String, Object> map = new HashMap<>();
        map.put("token", UserSession.get().getToken());
        map.put("name", str);
        map.put("expire_epoch", Long.valueOf(j));
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(Long.parseLong(it.next()));
        }
        map.put("project_ids", jSONArray);
        try {
            startPostRequst("创建分享", 17002, 1101, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.12
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new CreateShareResponse(-1, str2));
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    LogToFile.i("创建分享响应：" + str2);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new CreateShareResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            CreateShareResponse createShareResponse = new CreateShareResponse(i, "ok");
                            createShareResponse.shareId = jSONObject.getLong("share_id");
                            createShareResponse.shareCode = jSONObject.getString("share_code");
                            EventBus.getDefault().post(createShareResponse);
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new CreateShareResponse(-1, ""));
            LogToFile.e("项目分享失败：" + e);
        }
    }

    public void queryShare(final List<Long> list, final List<Long> list2, final String[] strArr, final String str) {
        Map<String, Object> map = new HashMap<>();
        map.put("token", UserSession.get().getToken());
        map.put("share_ids", list);
        map.put("share_uuids", list2);
        if (strArr != null) {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : strArr) {
                jSONArray.put(str2);
            }
            map.put("codes", jSONArray);
        }
        map.put("name", str);
        map.put("page", Integer.valueOf(this.sharePage));
        map.put("per_page_count", 20);
        if (this.sharePage == 1) {
            this.shareList.clear();
        }
        try {
            startPostRequst("查询分享", 17002, 1107, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.13
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str3) {
                    LogToFile.e("onFailure() ：" + str3);
                    NetworkUserLoader.this.sharePage = 1;
                    if (str3.contains("timeout")) {
                        if (NetworkUserLoader.this.timeoutQueryShare < 1) {
                            NetworkUserLoader.this.timeoutQueryShare++;
                            LogToFile.i("超时" + NetworkUserLoader.this.timeoutQueryShare + "次");
                            NetworkUserLoader.this.queryShare(list, list2, strArr, str);
                            return;
                        }
                        EventBus.getDefault().post(new QueryShareResponse(-1, strArr, str3));
                        return;
                    }
                    EventBus.getDefault().post(new QueryShareResponse(-1, strArr, str3));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str3) throws JSONException {
                    LogToFile.i("查询分享响应：" + str3);
                    try {
                        JSONObject jSONObject = new JSONObject(str3);
                        int i = jSONObject.getInt("state");
                        int iOptInt = jSONObject.optInt("total_count");
                        if (i != 0) {
                            EventBus.getDefault().post(new QueryShareResponse(i, strArr, jSONObject.getString("err_msg")));
                            NetworkUserLoader.this.sharePage = 1;
                            return;
                        }
                        JSONArray jSONArray2 = jSONObject.getJSONArray("results");
                        NetworkUserLoader.this.shareList.addAll((Collection) new Gson().fromJson(jSONArray2.toString(), new TypeToken<List<ShareEntity>>() { // from class: com.qianhe.yct.utils.NetworkUserLoader.13.1
                        }.getType()));
                        if (jSONArray2.length() > 0 && NetworkUserLoader.this.shareList.size() < iOptInt) {
                            NetworkUserLoader.this.sharePage++;
                            NetworkUserLoader.this.queryShare(list, list2, strArr, str);
                        } else {
                            NetworkUserLoader.this.sharePage = 1;
                            QueryShareResponse queryShareResponse = new QueryShareResponse(i, strArr, "ok");
                            queryShareResponse.list = NetworkUserLoader.this.shareList;
                            EventBus.getDefault().post(queryShareResponse);
                        }
                    } catch (Exception e) {
                        NetworkUserLoader.this.sharePage = 1;
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new QueryShareResponse(-1, strArr, ""));
            this.sharePage = 1;
            LogToFile.e("查询分享失败：" + e);
        }
    }

    public void delShare(final ShareEntity shareEntity) {
        HashMap map = new HashMap();
        map.put("token", UserSession.get().getToken());
        map.put("share_id", Long.valueOf(shareEntity.shareId));
        try {
            startPostRequst("删除分享", 17002, 1103, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.14
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new DelShareResponse(-1, str, shareEntity));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("删除分享响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new DelShareResponse(i, jSONObject.getString("err_msg"), shareEntity));
                        } else {
                            EventBus.getDefault().post(new DelShareResponse(i, "ok", shareEntity));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new DelShareResponse(-1, "", shareEntity));
            LogToFile.e("删除分享失败：" + e);
        }
    }

    public void modifyShare(final ShareEntity shareEntity, String str, List<String> list, long j) {
        Map<String, Object> map = new HashMap<>();
        map.put("token", UserSession.get().getToken());
        map.put("share_id", Long.valueOf(shareEntity.shareId));
        map.put("name", str);
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(Long.parseLong(it.next()));
        }
        map.put("project_ids", jSONArray);
        map.put("expire_epoch", Long.valueOf(j));
        try {
            startPostRequst("修改分享", 17002, 1105, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.15
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new ModifyShareResponse(-1, str2, shareEntity));
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    LogToFile.i("修改分享响应：" + str2);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyShareResponse(i, jSONObject.getString("err_msg"), shareEntity));
                        } else {
                            EventBus.getDefault().post(new ModifyShareResponse(i, "ok", shareEntity));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyShareResponse(-1, "", shareEntity));
            LogToFile.e("修改分享失败：" + e);
        }
    }

    public void getDeviceUniqueId() {
        String deviceId = UserSession.get().getDeviceId();
        if (TextUtils.isEmpty(deviceId)) {
            HashMap map = new HashMap();
            map.put("android_id", Settings.Secure.getString(YCTApplication.getInstance().getApplicationContext().getContentResolver(), "android_id"));
            map.put("cpu_abi", Build.SUPPORTED_ABIS[0]);
            map.put("product_brand", Build.MANUFACTURER);
            map.put("product_model", Build.MODEL);
            try {
                startPostRequst("获取当前设备ID", 17001, 1017, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.16
                    @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                    public void onFailure(Call call, String str) {
                        LogToFile.e("获取当前设备ID失败 onFailure() ：" + str);
                    }

                    @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                    public void onResponse(String str) throws JSONException {
                        try {
                            LogToFile.i("获取当前设备ID响应：" + str);
                            JSONObject jSONObject = new JSONObject(str);
                            if (jSONObject.getInt("state") != 0) {
                                LogToFile.e("获取当前设备ID失败：" + jSONObject.getString("err_msg"));
                                return;
                            }
                            String string = jSONObject.getString("device_id");
                            UserSession.get().saveDeviceId(string);
                            EventBus.getDefault().post(new DeviceUniqueIdEvent(true, string));
                        } catch (Exception e) {
                            LogToFile.e("数据解析异常：" + e);
                        }
                    }
                });
                return;
            } catch (Exception e) {
                LogToFile.e("获取当前设备ID失败：" + e);
                return;
            }
        }
        LogToFile.i("当前设备ID：" + deviceId);
    }

    public void notifyUsedDevice(String str) {
        Object string = this.mSp.getString("deviceSn", "");
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            return;
        }
        Object deviceId = UserSession.get().getDeviceId();
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("sn", string);
        map.put("app_version", "2.0.2609.109");
        map.put("fmw_version", str);
        map.put("device_id", deviceId);
        try {
            startPostRequst("上传设备信息", 17001, 1015, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.17
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("上传设备信息响应：" + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.getInt("state") != 0) {
                            LogToFile.e("上传设备信息失败：" + jSONObject.getString("err_msg"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("上传设备信息失败：" + e);
        }
    }

    public void createProject(InsNavi insNavi, BaseProEntity baseProEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new CreateProjectResponse(8000, "token error", baseProEntity));
            return;
        }
        final BaseProEntity baseProEntityRefreshProjectForUpload = DatabaseManager.getInstance(YCTApplication.getInstance()).refreshProjectForUpload(baseProEntity);
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("name", baseProEntityRefreshProjectForUpload.name);
        map.put("type", Integer.valueOf(baseProEntityRefreshProjectForUpload.type));
        map.put("longitude", Double.valueOf(insNavi != null ? Math.round(insNavi.longitude * 1.0E8d) / 1.0E8d : 0.0d));
        map.put("latitude", Double.valueOf(insNavi != null ? Math.round(insNavi.latitude * 1.0E8d) / 1.0E8d : 0.0d));
        map.put("altitude", Double.valueOf(insNavi != null ? Math.round(insNavi.elevation * 10000.0d) / 10000.0d : 0.0d));
        putProjectBelongEngineeringId(map, baseProEntityRefreshProjectForUpload);
        try {
            map.put("details", new JSONObject(new Gson().toJson(baseProEntityRefreshProjectForUpload)));
            startPostRequst("创建项目", 17002, 1001, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.18
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new CreateProjectResponse(-1, str, baseProEntityRefreshProjectForUpload));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("创建项目响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new CreateProjectResponse(i, jSONObject.getString("err_msg"), baseProEntityRefreshProjectForUpload));
                            return;
                        }
                        baseProEntityRefreshProjectForUpload.projectUUid = jSONObject.getString("project_uuid");
                        baseProEntityRefreshProjectForUpload.projectId = jSONObject.getInt("project_id");
                        EventBus.getDefault().post(new CreateProjectResponse(i, "ok", baseProEntityRefreshProjectForUpload));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new CreateProjectResponse(-1, "", baseProEntityRefreshProjectForUpload));
            LogToFile.e("项目创建失败：" + e);
        }
    }

    public void modifyProject(InsNavi insNavi, BaseProEntity baseProEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new ModifyProjectResponse(8000, "token error", baseProEntity));
            baseProEntity.version++;
            baseProEntity.updateTime = System.currentTimeMillis() / 1000;
            DatabaseManager.getInstance(YCTApplication.getInstance()).updateEntityById(baseProEntity);
            return;
        }
        final BaseProEntity baseProEntityRefreshProjectForUpload = DatabaseManager.getInstance(YCTApplication.getInstance()).refreshProjectForUpload(baseProEntity);
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("name", baseProEntityRefreshProjectForUpload.name);
        map.put("type", Integer.valueOf(baseProEntityRefreshProjectForUpload.type));
        map.put("project_id", Long.valueOf(baseProEntityRefreshProjectForUpload.projectId));
        map.put("longitude", Double.valueOf(insNavi != null ? Math.round(insNavi.longitude * 1.0E8d) / 1.0E8d : 0.0d));
        map.put("latitude", Double.valueOf(insNavi != null ? Math.round(insNavi.latitude * 1.0E8d) / 1.0E8d : 0.0d));
        map.put("altitude", Double.valueOf(insNavi != null ? Math.round(insNavi.elevation * 10000.0d) / 10000.0d : 0.0d));
        putProjectBelongEngineeringId(map, baseProEntityRefreshProjectForUpload);
        try {
            map.put("details", new JSONObject(new Gson().toJson(baseProEntityRefreshProjectForUpload)));
            startPostRequst("修改项目", 17002, 1005, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.19
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new ModifyProjectResponse(-1, str, baseProEntityRefreshProjectForUpload));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("修改项目响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyProjectResponse(i, jSONObject.getString("err_msg"), baseProEntityRefreshProjectForUpload));
                        } else {
                            EventBus.getDefault().post(new ModifyProjectResponse(i, "ok", baseProEntityRefreshProjectForUpload));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyProjectResponse(-1, "", baseProEntityRefreshProjectForUpload));
            LogToFile.e("修改项目失败：" + e);
        }
    }

    public void delProject(BaseProEntity baseProEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("project_id", Long.valueOf(baseProEntity.projectId));
        try {
            startPostRequst("删除项目", 17002, 1003, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.20
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) {
                    LogToFile.i("删除项目响应：" + str);
                    try {
                        new JSONObject(str);
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("删除项目失败：" + e);
        }
    }

    public void queryProjectByType(Integer num) {
        queryProjectByType(num, false);
    }

    public void queryProjectByType(final Integer num, boolean z) {
        boolean z2;
        long j;
        String str;
        EngineeringEntity engineeringEntityQueryCurrentEngineering;
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryProjectResponse(8000, "token error"));
            return;
        }
        if (this.proPage == 1) {
            this.activeQueryProjectFilterByEngineering = z;
            this.activeQueryProjectBelongEngineeringId = 0L;
            this.activeQueryProjectEngineeringUuid = "";
            if (z && (engineeringEntityQueryCurrentEngineering = DatabaseManager.getInstance(YCTApplication.getInstance()).queryCurrentEngineering()) != null) {
                this.activeQueryProjectBelongEngineeringId = engineeringEntityQueryCurrentEngineering.engineeringId;
                String str2 = engineeringEntityQueryCurrentEngineering.engineeringUuid;
                this.activeQueryProjectEngineeringUuid = str2 != null ? str2 : "";
            }
            this.entityList.clear();
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        if (num != null) {
            map.put("type", num);
        }
        long j2 = this.activeQueryProjectBelongEngineeringId;
        if (j2 > 0) {
            map.put("belong_engineering_id", Long.valueOf(j2));
        }
        if (!TextUtils.isEmpty(this.activeQueryProjectEngineeringUuid)) {
            map.put("engineering_uuid", this.activeQueryProjectEngineeringUuid);
        }
        map.put("page", Integer.valueOf(this.proPage));
        map.put("per_page_count", 20);
        final boolean z3 = this.activeQueryProjectFilterByEngineering;
        final long j3 = this.activeQueryProjectBelongEngineeringId;
        final String str3 = this.activeQueryProjectEngineeringUuid;
        try {
            z2 = z3;
            str = str3;
            j = j3;
        } catch (Exception e) {
            e = e;
            z2 = z3;
            j = j3;
            str = str3;
        }
        try {
            startPostRequst("查询项目", 17002, 1007, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.21
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str4) {
                    LogToFile.e("onFailure() queryProjectByType ：" + str4);
                    NetworkUserLoader.this.proPage = 1;
                    if (str4.contains("timeout")) {
                        if (NetworkUserLoader.this.timeoutQueryProject < 1) {
                            NetworkUserLoader.this.timeoutQueryProject++;
                            LogToFile.i("超时" + NetworkUserLoader.this.timeoutQueryProject + "次");
                            NetworkUserLoader.this.queryProjectByType(num, z3);
                            return;
                        }
                        NetworkUserLoader.this.postQueryProjectResponse(-1, str4, null, num, z3, j3, str3);
                        NetworkUserLoader.this.timeoutQueryProject = 0;
                        return;
                    }
                    NetworkUserLoader.this.postQueryProjectResponse(-1, str4, null, num, z3, j3, str3);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str4) throws JSONException {
                    try {
                        NetworkUserLoader.this.timeoutQueryProject = 0;
                        LogToFile.i("查询项目响应(type=" + num + ", filterEng=" + z3 + ", belong=" + j3 + ")：" + str4);
                        JSONObject jSONObject = new JSONObject(str4);
                        int i = jSONObject.getInt("state");
                        int iOptInt = jSONObject.optInt("total_count");
                        if (i != 0) {
                            NetworkUserLoader.this.postQueryProjectResponse(i, jSONObject.getString("err_msg"), null, num, z3, j3, str3);
                            NetworkUserLoader.this.proPage = 1;
                            return;
                        }
                        JSONArray jSONArray = new JSONArray(jSONObject.getString("results"));
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            BaseProEntity baseProEntityCreateEntry = NetworkUserLoader.this.createEntry(jSONObject2.getInt("type"), jSONObject2.getString("details"));
                            if (baseProEntityCreateEntry != null) {
                                baseProEntityCreateEntry.projectUUid = jSONObject2.getString("uuid");
                                baseProEntityCreateEntry.projectId = jSONObject2.getLong("id");
                                baseProEntityCreateEntry.version = jSONObject2.getLong("version");
                                baseProEntityCreateEntry.name = jSONObject2.getString("name");
                                baseProEntityCreateEntry.type = jSONObject2.getInt("type");
                                baseProEntityCreateEntry.createTime = jSONObject2.getLong("create_epoch");
                                baseProEntityCreateEntry.updateTime = jSONObject2.getLong("update_epoch");
                                NetworkUserLoader.this.applyProjectBelongEngineeringFromServer(jSONObject2, baseProEntityCreateEntry);
                                NetworkUserLoader.this.entityList.add(baseProEntityCreateEntry);
                            }
                        }
                        if (jSONArray.length() > 0 && NetworkUserLoader.this.entityList.size() < iOptInt) {
                            NetworkUserLoader.this.proPage++;
                            NetworkUserLoader.this.queryProjectByType(num, z3);
                        } else {
                            NetworkUserLoader.this.postQueryProjectResponse(i, "", new ArrayList(NetworkUserLoader.this.entityList), num, z3, j3, str3);
                            NetworkUserLoader.this.proPage = 1;
                        }
                    } catch (Exception e2) {
                        NetworkUserLoader.this.proPage = 1;
                        LogToFile.e("数据解析异常：" + e2);
                    }
                }
            });
        } catch (Exception e2) {
            e = e2;
            postQueryProjectResponse(-1, "", null, num, z2, j, str);
            this.proPage = 1;
            LogToFile.e("查询项目失败：" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postQueryProjectResponse(int i, String str, List<BaseProEntity> list, Integer num, boolean z, long j, String str2) {
        QueryProjectResponse queryProjectResponse = list != null ? new QueryProjectResponse(i, str, list) : new QueryProjectResponse(i, str);
        queryProjectResponse.queryType = num;
        queryProjectResponse.filterByCurrentEngineering = z;
        queryProjectResponse.queryBelongEngineeringId = j;
        queryProjectResponse.queryEngineeringUuid = str2;
        EventBus.getDefault().post(queryProjectResponse);
    }

    public void queryProjectByUUid(final String... strArr) {
        NetworkUserLoader networkUserLoader;
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryProjectByUUidResponse(8000, "token error"));
            return;
        }
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (String str : strArr) {
            jSONArray.put(str);
        }
        map.put("token", token);
        map.put("project_uuids", jSONArray);
        map.put("page", Integer.valueOf(this.proByuuidPage));
        map.put("per_page_count", 20);
        if (this.proByuuidPage == 1) {
            this.entityByUuidList.clear();
        }
        try {
            networkUserLoader = this;
        } catch (Exception e) {
            e = e;
            networkUserLoader = this;
        }
        try {
            networkUserLoader.startPostRequst("查询项目", 17002, 1007, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.22
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    LogToFile.e("onFailure() ：" + str2);
                    NetworkUserLoader.this.proByuuidPage = 1;
                    if (str2.contains("timeout")) {
                        if (NetworkUserLoader.this.timeoutQueryProject < 1) {
                            NetworkUserLoader.this.timeoutQueryProject++;
                            LogToFile.i("超时" + NetworkUserLoader.this.timeoutQueryProject + "次");
                            NetworkUserLoader.this.queryProjectByUUid(strArr);
                            return;
                        }
                        EventBus.getDefault().post(new QueryProjectByUUidResponse(-1, str2));
                        return;
                    }
                    EventBus.getDefault().post(new QueryProjectByUUidResponse(-1, str2));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("查询项目响应(uuid)：" + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        int iOptInt = jSONObject.optInt("total_count");
                        if (i != 0) {
                            EventBus.getDefault().post(new QueryProjectByUUidResponse(i, jSONObject.getString("err_msg")));
                            NetworkUserLoader.this.proByuuidPage = 1;
                            return;
                        }
                        JSONArray jSONArray2 = new JSONArray(jSONObject.getString("results"));
                        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                            BaseProEntity baseProEntityCreateEntry = NetworkUserLoader.this.createEntry(jSONObject2.getInt("type"), jSONObject2.getString("details"));
                            if (baseProEntityCreateEntry != null) {
                                baseProEntityCreateEntry.projectUUid = jSONObject2.getString("uuid");
                                baseProEntityCreateEntry.projectId = jSONObject2.getLong("id");
                                baseProEntityCreateEntry.version = jSONObject2.getLong("version");
                                baseProEntityCreateEntry.name = jSONObject2.getString("name");
                                baseProEntityCreateEntry.type = jSONObject2.getInt("type");
                                NetworkUserLoader.this.applyProjectBelongEngineeringFromServer(jSONObject2, baseProEntityCreateEntry);
                                NetworkUserLoader.this.entityByUuidList.add(baseProEntityCreateEntry);
                            }
                        }
                        if (jSONArray2.length() > 0 && NetworkUserLoader.this.entityByUuidList.size() < iOptInt) {
                            NetworkUserLoader.this.proByuuidPage++;
                            NetworkUserLoader.this.queryProjectByUUid(strArr);
                        } else {
                            EventBus.getDefault().post(new QueryProjectByUUidResponse(i, "", new ArrayList(NetworkUserLoader.this.entityByUuidList)));
                            NetworkUserLoader.this.proByuuidPage = 1;
                        }
                    } catch (Exception e2) {
                        LogToFile.e("数据解析异常：" + e2);
                        NetworkUserLoader.this.proByuuidPage = 1;
                    }
                }
            });
        } catch (Exception e2) {
            e = e2;
            Exception exc = e;
            EventBus.getDefault().post(new QueryProjectByUUidResponse(-1, ""));
            networkUserLoader.proByuuidPage = 1;
            LogToFile.e("查询项目失败：" + exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseProEntity createEntry(int i, String str) {
        if (i == ProjectEnum.ZHAOPING.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, ZhaoPingEntity.class);
        }
        if (i == ProjectEnum.SHUAPO.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, ShuaPoEntity.class);
        }
        if (i == ProjectEnum.WAGOU.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, WaGouEntity.class);
        }
        if (i == ProjectEnum.DIKE.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, DikeEntity.class);
        }
        if (i == ProjectEnum.LINE.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, LineEntity.class);
        }
        if (i == ProjectEnum.POLY_LINE.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, PolyLineEntity.class);
        }
        if (i == ProjectEnum.ONEPOINTAREA.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, OnePointAreaEntity.class);
        }
        if (i == ProjectEnum.THREEPOINTAREA.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, ThreePointAreaEntity.class);
        }
        if (i == ProjectEnum.SITELEVELING.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, SiteLevelingEntity.class);
        }
        if (i == ProjectEnum.ARBITRARYLINE.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, ArbitraryLineEntity.class);
        }
        if (i == ProjectEnum.CURVEDSLOPE.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, CurvedSlopeEntity.class);
        }
        if (i == ProjectEnum.MULTI_POINT_AREA.getType()) {
            return (BaseProEntity) new Gson().fromJson(str, MultiPointAreaEntity.class);
        }
        return null;
    }

    private void putProjectBelongEngineeringId(Map<String, Object> map, BaseProEntity baseProEntity) {
        if (map == null || baseProEntity == null) {
            return;
        }
        long j = baseProEntity.belongEngineeringId;
        if (j > 0) {
            map.put("belong_engineering_id", Long.valueOf(j));
        }
        if (TextUtils.isEmpty(baseProEntity.engineeringUuid)) {
            return;
        }
        map.put("engineering_uuid", baseProEntity.engineeringUuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyProjectBelongEngineeringFromServer(JSONObject jSONObject, BaseProEntity baseProEntity) throws JSONException {
        if (jSONObject == null || baseProEntity == null) {
            return;
        }
        long jOptLong = jSONObject.optLong("belong_engineering_id", 0L);
        if (jOptLong <= 0 && jSONObject.has("details")) {
            try {
                Object obj = jSONObject.get("details");
                JSONObject jSONObject2 = obj instanceof JSONObject ? (JSONObject) obj : new JSONObject(String.valueOf(obj));
                jOptLong = jSONObject2.optLong("belong_engineering_id", 0L);
                if (jOptLong <= 0) {
                    jOptLong = jSONObject2.optLong("belongEngineeringId", 0L);
                }
            } catch (Exception unused) {
            }
        }
        if (jOptLong > 0) {
            baseProEntity.belongEngineeringId = jOptLong;
        }
        String strOptString = jSONObject.optString("engineering_uuid", "");
        if (TextUtils.isEmpty(strOptString) && jSONObject.has("details")) {
            try {
                Object obj2 = jSONObject.get("details");
                JSONObject jSONObject3 = obj2 instanceof JSONObject ? (JSONObject) obj2 : new JSONObject(String.valueOf(obj2));
                strOptString = jSONObject3.optString("engineering_uuid", "");
                if (TextUtils.isEmpty(strOptString)) {
                    strOptString = jSONObject3.optString("engineeringUuid", "");
                }
            } catch (Exception unused2) {
            }
        }
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        baseProEntity.engineeringUuid = strOptString;
    }

    public void syncProjectsBelongEngineering(InsNavi insNavi, List<BaseProEntity> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (BaseProEntity baseProEntity : list) {
            if (baseProEntity != null && baseProEntity.projectId > 0 && !TextUtils.isEmpty(baseProEntity.projectUUid) && (baseProEntity.belongEngineeringId > 0 || !TextUtils.isEmpty(baseProEntity.engineeringUuid))) {
                modifyProject(insNavi, baseProEntity);
            }
        }
    }

    public void sendCaptcha(String str) {
        boolean zMatches = str.matches("\\d+");
        HashMap map = new HashMap();
        if (zMatches) {
            map.put("telephone", str);
        } else {
            map.put("email", str);
        }
        try {
            startPostRequst("获取验证码", 17001, 1001, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.23
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new SendCaptchaResponse(-1, str2));
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("获取验证码响应：" + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new SendCaptchaResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new SendCaptchaResponse(i, "ok"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new SendCaptchaResponse(-1, ""));
            LogToFile.e("验证码发送失败：" + e);
        }
    }

    public void modifyName(String str) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new ModifyResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("name", str);
        try {
            startPostRequst("修改姓名", 17001, 1009, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.24
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new ModifyResponse(-1, str2));
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("修改姓名响应：" + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new ModifyResponse(i, "ok"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyResponse(-1, ""));
            LogToFile.e("修改姓名失败：" + e);
        }
    }

    public void modifyPhone(String str, String str2, String str3) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new ModifyResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("new_telephone", str);
        map.put("password", str2);
        map.put("captcha", str3);
        try {
            startPostRequst("修改手机号", 17001, 1013, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.25
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str4) {
                    EventBus.getDefault().post(new ModifyResponse(-1, str4));
                    LogToFile.e("onFailure() ：" + str4);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str4) throws JSONException {
                    try {
                        LogToFile.i("修改手机号响应：" + str4);
                        JSONObject jSONObject = new JSONObject(str4);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new ModifyResponse(i, "ok"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyResponse(-1, ""));
            LogToFile.e("修改手机号失败：" + e);
        }
    }

    public void modifyPassword(String str, String str2, String str3) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new ModifyResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("new_password", str);
        map.put("old_password", str2);
        map.put("captcha", str3);
        try {
            startPostRequst("修改密码", 17001, 1011, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.26
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str4) {
                    EventBus.getDefault().post(new ModifyResponse(-1, str4));
                    LogToFile.e("onFailure() ：" + str4);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str4) throws JSONException {
                    try {
                        LogToFile.i("修改密码响应：" + str4);
                        JSONObject jSONObject = new JSONObject(str4);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new ModifyResponse(i, "ok"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyResponse(-1, ""));
            LogToFile.e("修改密码失败：" + e);
        }
    }

    public void createAccount(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        map.put(str.matches("\\d+") ? "telephone" : "email", str);
        map.put("captcha", str2);
        map.put("name", str3);
        map.put("password", str4);
        try {
            startPostRequst("创建账号", 17001, 1003, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.27
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str5) {
                    EventBus.getDefault().post(new CreateAccountResponse(-1, str5));
                    LogToFile.e("onFailure() ：" + str5);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str5) throws JSONException {
                    try {
                        LogToFile.i("创建账号响应：" + str5);
                        JSONObject jSONObject = new JSONObject(str5);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new CreateAccountResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new CreateAccountResponse(i, "ok"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new CreateAccountResponse(-1, ""));
            LogToFile.e("创建账号失败：" + e);
        }
    }

    public void unRegisterAccount(String str, String str2) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new UnregisterAccountResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        String sha256 = getSha256(getSha256(str, str2), getUtcDateString());
        map.put("token", token);
        map.put("login_key", sha256);
        try {
            startPostRequst("注销账号", 17001, 1021, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.28
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str3) {
                    EventBus.getDefault().post(new UnregisterAccountResponse(-1, str3));
                    LogToFile.e("onFailure() ：" + str3);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str3) throws JSONException {
                    try {
                        LogToFile.i("注销账号响应：" + str3);
                        JSONObject jSONObject = new JSONObject(str3);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new UnregisterAccountResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new UnregisterAccountResponse(i, "ok"));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new UnregisterAccountResponse(-1, ""));
            LogToFile.e("注销账号失败：" + e);
        }
    }

    public void createExcavator(final Context context, final ExcavatorEntity excavatorEntity) {
        Map<String, Object> map = new HashMap<>();
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new CreateExcavatorResponse(8000, "token error"));
            return;
        }
        map.put("token", token);
        map.put("name", excavatorEntity.name);
        map.put("calib_params_id", excavatorEntity.calibParamsId);
        map.put("calib_params", excavatorEntity.calibParams);
        try {
            map.put("calib_params_detail", getCalibParamsDetailJson(excavatorEntity));
            logExcavatorUploadRequest("创建挖机", map);
            startPostRequst("创建挖机", 17002, 1201, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.29
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new CreateExcavatorResponse(-1, str));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("创建挖机响应：" + str);
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new CreateExcavatorResponse(i, jSONObject.getString("err_msg")));
                            return;
                        }
                        long j = jSONObject.getLong("calibrate_id");
                        String string = jSONObject.getString("calibrate_uuid");
                        DatabaseManager databaseManager = DatabaseManager.getInstance(context);
                        ExcavatorEntity excavatorEntity2 = excavatorEntity;
                        excavatorEntity2.calibrateId = j;
                        excavatorEntity2.calibrateUUid = string;
                        excavatorEntity2.userId = UserSession.get().getUserId();
                        ExcavatorEntity excavatorEntity3 = excavatorEntity;
                        if (excavatorEntity3.localId != 0) {
                            databaseManager.updateExcavatorById(excavatorEntity3);
                        }
                        EventBus.getDefault().post(new CreateExcavatorResponse(i, "ok"));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                        EventBus.getDefault().post(new CreateExcavatorResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new CreateExcavatorResponse(-1, e.getMessage()));
            LogToFile.e("创建挖机失败：" + e);
        }
    }

    private JSONObject getCalibParamsDetailJson(ExcavatorEntity excavatorEntity) throws JSONException {
        excavatorEntity.syncParamsToJson();
        excavatorEntity.syncExcavatorParamsToJson();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_type", excavatorEntity.mode);
        jSONObject.put("left_dist", round3(excavatorEntity.leftDist));
        jSONObject.put("right_dist", round3(excavatorEntity.rigthDist));
        jSONObject.put("span_dist", round3(excavatorEntity.spanDist));
        jSONObject.put("device_height", round3(excavatorEntity.deviceHeight));
        putExcavatorBucketParamsToDetail(jSONObject, excavatorEntity);
        jSONObject.put("excavator_params", buildExcavatorParamsJson(excavatorEntity));
        putCalibSoInputsToDetail(jSONObject, excavatorEntity);
        stripRedundantExcavatorDetailFields(jSONObject);
        return jSONObject;
    }

    private void stripRedundantExcavatorDetailFields(JSONObject jSONObject) {
        jSONObject.remove("name");
        jSONObject.remove("calib_params");
        jSONObject.remove("calib_params_id");
    }

    private ExcavatorEntity parseExcavatorFromDetailJson(String str) {
        return parseExcavatorFromDetailObject(new JSONObject(str));
    }

    private ExcavatorEntity parseExcavatorFromDetailObject(JSONObject jSONObject) {
        stripRedundantExcavatorDetailFields(jSONObject);
        ExcavatorEntity excavatorEntity = new ExcavatorEntity();
        excavatorEntity.calibParamsDetail = jSONObject.toString();
        excavatorEntity.mode = jSONObject.optInt("params_type");
        excavatorEntity.leftDist = safeOptDouble(jSONObject, "left_dist");
        excavatorEntity.rigthDist = safeOptDouble(jSONObject, "right_dist");
        excavatorEntity.spanDist = safeOptDouble(jSONObject, "span_dist");
        excavatorEntity.deviceHeight = safeOptDouble(jSONObject, "device_height");
        parseExcavatorParams(excavatorEntity, jSONObject);
        parseExcavatorBucketParams(excavatorEntity, jSONObject);
        parseCalibSoInputs(excavatorEntity, jSONObject);
        return excavatorEntity;
    }

    private void logExcavatorUploadRequest(String str, Map<String, Object> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            LogToFile.i(str + "上传数据：\n" + jSONObject.toString(2));
        } catch (Exception e) {
            LogToFile.e(str + "上传数据打印失败：" + e);
        }
    }

    public void modifyExcavator(final ExcavatorEntity excavatorEntity) {
        String token = UserSession.get().getToken();
        long userId = UserSession.get().getUserId();
        if (userId == 0 || TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new ModifyExcavatorResponse(8000, "token error", excavatorEntity));
            excavatorEntity.version++;
            excavatorEntity.updateTime = System.currentTimeMillis() / 1000;
            DatabaseManager.getInstance(YCTApplication.getInstance()).updateExcavatorById(excavatorEntity);
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("belong_uid", Long.valueOf(userId));
        map.put("calib_params_id", excavatorEntity.calibParamsId);
        map.put("calib_params", excavatorEntity.calibParams);
        map.put("calibrate_id", Long.valueOf(excavatorEntity.calibrateId));
        map.put("name", excavatorEntity.name);
        try {
            map.put("calib_params_detail", getCalibParamsDetailJson(excavatorEntity));
            logExcavatorUploadRequest("修改挖机", map);
            startPostRequst("修改挖机", 17002, 1205, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.30
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new ModifyExcavatorResponse(-1, str, excavatorEntity));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("修改挖机响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyExcavatorResponse(i, jSONObject.getString("err_msg"), excavatorEntity));
                        } else {
                            EventBus.getDefault().post(new ModifyExcavatorResponse(i, "ok", excavatorEntity));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                        EventBus.getDefault().post(new ModifyExcavatorResponse(-1, e.getMessage(), excavatorEntity));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyExcavatorResponse(-1, e.getMessage(), excavatorEntity));
            LogToFile.e("修改挖机失败：" + e);
        }
    }

    public void queryExcavator() {
        NetworkUserLoader networkUserLoader;
        HashMap map = new HashMap();
        String token = UserSession.get().getToken();
        long userId = UserSession.get().getUserId();
        if (userId == 0 || TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryExcacatorResponse(8000, "token error"));
            return;
        }
        map.put("token", token);
        map.put("belong_uid", Long.valueOf(userId));
        map.put("page", Integer.valueOf(this.excavatorPage));
        map.put("per_page_count", 20);
        if (this.excavatorPage == 1) {
            this.excavatorList.clear();
        }
        try {
            networkUserLoader = this;
        } catch (Exception e) {
            e = e;
            networkUserLoader = this;
        }
        try {
            networkUserLoader.startPostRequst("查询挖机", 17002, 1207, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.31
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("onFailure() ：" + str);
                    NetworkUserLoader.this.excavatorPage = 1;
                    if (str.contains("timeout")) {
                        if (NetworkUserLoader.this.timeoutExcavator < 1) {
                            NetworkUserLoader.this.timeoutExcavator++;
                            LogToFile.i("超时" + NetworkUserLoader.this.timeoutExcavator + "次");
                            NetworkUserLoader.this.queryExcavator();
                            return;
                        }
                        EventBus.getDefault().post(new QueryExcacatorResponse(-1, str));
                        return;
                    }
                    EventBus.getDefault().post(new QueryExcacatorResponse(-1, str));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("查询挖机响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        int iOptInt = jSONObject.optInt("total_count");
                        if (i != 0) {
                            EventBus.getDefault().post(new QueryExcacatorResponse(i, jSONObject.getString("err_msg")));
                            NetworkUserLoader.this.excavatorPage = 1;
                            return;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            ExcavatorEntity excavatorFromQueryResult = NetworkUserLoader.this.parseExcavatorFromQueryResult(jSONObject2);
                            excavatorFromQueryResult.name = jSONObject2.getString("name");
                            excavatorFromQueryResult.userId = jSONObject2.getLong("belong_uid");
                            excavatorFromQueryResult.createTime = jSONObject2.getLong("create_epoch");
                            excavatorFromQueryResult.updateTime = jSONObject2.getLong("update_epoch");
                            excavatorFromQueryResult.calibrateId = jSONObject2.getLong("id");
                            excavatorFromQueryResult.calibrateUUid = jSONObject2.getString("uuid");
                            excavatorFromQueryResult.calibParamsId = jSONObject2.getString("calib_params_id");
                            excavatorFromQueryResult.calibParams = jSONObject2.getString("calib_params");
                            excavatorFromQueryResult.version = jSONObject2.getLong("version");
                            NetworkUserLoader.this.excavatorList.add(excavatorFromQueryResult);
                        }
                        QueryExcacatorResponse queryExcacatorResponse = new QueryExcacatorResponse(i, "ok");
                        if (jSONArray.length() > 0 && NetworkUserLoader.this.excavatorList.size() < iOptInt) {
                            NetworkUserLoader.this.excavatorPage++;
                            NetworkUserLoader.this.queryExcavator();
                        } else {
                            NetworkUserLoader.this.excavatorPage = 1;
                            queryExcacatorResponse.list = NetworkUserLoader.this.excavatorList;
                            EventBus.getDefault().post(queryExcacatorResponse);
                        }
                    } catch (Exception e2) {
                        NetworkUserLoader.this.excavatorPage = 1;
                        LogToFile.e("数据解析异常：" + e2);
                        EventBus.getDefault().post(new QueryExcacatorResponse(-1, e2.getMessage()));
                    }
                }
            });
        } catch (Exception e2) {
            e = e2;
            EventBus.getDefault().post(new QueryExcacatorResponse(-1, e.getMessage()));
            networkUserLoader.excavatorPage = 1;
            LogToFile.e("查询挖机失败：" + e);
        }
    }

    public void delExcavator(ExcavatorEntity excavatorEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("calibrate_id", Long.valueOf(excavatorEntity.calibrateId));
        try {
            startPostRequst("删除挖机", 17002, 1203, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.32
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) {
                    LogToFile.i("删除挖机响应：" + str);
                    try {
                        new JSONObject(str);
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("删除挖机失败：" + e);
        }
    }

    public void createBucket(final ShovelEntity shovelEntity) {
        Map<String, Object> map = new HashMap<>();
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            CreateBucketResponse createBucketResponse = new CreateBucketResponse(8000, "token error");
            createBucketResponse.shovelEntity = shovelEntity;
            EventBus.getDefault().post(createBucketResponse);
            return;
        }
        map.put("token", token);
        Object obj = shovelEntity.name;
        if (obj == null) {
            obj = "";
        }
        map.put("name", obj);
        try {
            map.put("params_detail", buildBucketParamsDetail(shovelEntity));
            logBucketUploadRequest("创建铲斗", map);
            startPostRequst("创建铲斗", 17002, 1301, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.33
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    CreateBucketResponse createBucketResponse2 = new CreateBucketResponse(-1, str);
                    createBucketResponse2.shovelEntity = shovelEntity;
                    EventBus.getDefault().post(createBucketResponse2);
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("创建铲斗响应：" + str);
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            CreateBucketResponse createBucketResponse2 = new CreateBucketResponse(i, jSONObject.getString("err_msg"));
                            createBucketResponse2.shovelEntity = shovelEntity;
                            EventBus.getDefault().post(createBucketResponse2);
                            return;
                        }
                        CreateBucketResponse createBucketResponse3 = new CreateBucketResponse(i, "ok");
                        shovelEntity.bucket_id = jSONObject.getLong("bucket_id");
                        shovelEntity.bucket_uuid = jSONObject.getString("bucket_uuid");
                        shovelEntity.belong_uid = UserSession.get().getUserId();
                        if (shovelEntity.localId > 0) {
                            DatabaseManager.getInstance(YCTApplication.getInstance()).updateShovelById(shovelEntity);
                        }
                        createBucketResponse3.shovelEntity = shovelEntity;
                        EventBus.getDefault().post(createBucketResponse3);
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                        CreateBucketResponse createBucketResponse4 = new CreateBucketResponse(-1, e.getMessage());
                        createBucketResponse4.shovelEntity = shovelEntity;
                        EventBus.getDefault().post(createBucketResponse4);
                    }
                }
            });
        } catch (Exception e) {
            CreateBucketResponse createBucketResponse2 = new CreateBucketResponse(-1, e.getMessage());
            createBucketResponse2.shovelEntity = shovelEntity;
            EventBus.getDefault().post(createBucketResponse2);
            LogToFile.e("创建铲斗失败：" + e);
        }
    }

    public void modifyBucket(final ShovelEntity shovelEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new ModifyBucketResponse(8000, "token error", shovelEntity));
            return;
        }
        long userId = UserSession.get().getUserId();
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("bucket_id", Long.valueOf(shovelEntity.bucket_id));
        map.put("belong_uid", Long.valueOf(userId));
        Object obj = shovelEntity.name;
        if (obj == null) {
            obj = "";
        }
        map.put("name", obj);
        try {
            map.put("params_detail", buildBucketParamsDetail(shovelEntity));
            logBucketUploadRequest("修改铲斗", map);
            startPostRequst("修改铲斗", 17002, 1305, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.34
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new ModifyBucketResponse(-1, str, shovelEntity));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("修改铲斗响应：" + str + " ->" + shovelEntity.toString());
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new ModifyBucketResponse(i, jSONObject.getString("err_msg"), shovelEntity));
                        } else {
                            EventBus.getDefault().post(new ModifyBucketResponse(i, "ok", shovelEntity));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                        EventBus.getDefault().post(new ModifyBucketResponse(-1, e.getMessage(), shovelEntity));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new ModifyBucketResponse(-1, e.getMessage(), shovelEntity));
            LogToFile.e("修改铲斗失败：" + e);
        }
    }

    public void queryBucket() {
        NetworkUserLoader networkUserLoader;
        HashMap map = new HashMap();
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryBucketResponse(8000, "token error"));
            return;
        }
        map.put("token", token);
        map.put("page", Integer.valueOf(this.bucketPage));
        map.put("per_page_count", 20);
        if (this.bucketPage == 1) {
            this.bucketList.clear();
        }
        try {
            networkUserLoader = this;
        } catch (Exception e) {
            e = e;
            networkUserLoader = this;
        }
        try {
            networkUserLoader.startPostRequst("查询铲斗", 17002, 1307, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.35
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("onFailure() ：" + str);
                    NetworkUserLoader.this.bucketPage = 1;
                    if (str.contains("timeout")) {
                        if (NetworkUserLoader.this.timeoutBucket < 1) {
                            NetworkUserLoader.this.timeoutBucket++;
                            NetworkUserLoader.this.queryBucket();
                            return;
                        }
                        EventBus.getDefault().post(new QueryBucketResponse(-1, str));
                        return;
                    }
                    EventBus.getDefault().post(new QueryBucketResponse(-1, str));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("查询铲斗响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        int iOptInt = jSONObject.optInt("total_count");
                        if (i != 0) {
                            EventBus.getDefault().post(new QueryBucketResponse(i, jSONObject.getString("err_msg")));
                            NetworkUserLoader.this.bucketPage = 1;
                            return;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            ShovelEntity shovelEntity = new ShovelEntity();
                            shovelEntity.name = jSONObject2.getString("name");
                            shovelEntity.version = jSONObject2.getLong("version");
                            shovelEntity.createTime = jSONObject2.getLong("create_epoch");
                            shovelEntity.updateTime = jSONObject2.getLong("update_epoch");
                            shovelEntity.belong_uid = jSONObject2.getLong("belong_uid");
                            shovelEntity.bucket_id = jSONObject2.getLong("id");
                            shovelEntity.bucket_uuid = jSONObject2.getString("uuid");
                            String paramsDetailJson = NetworkUserLoader.this.readParamsDetailJson(jSONObject2);
                            if (!TextUtils.isEmpty(paramsDetailJson)) {
                                NetworkUserLoader.this.parseBucketParamsDetail(shovelEntity, new JSONObject(paramsDetailJson));
                            }
                            NetworkUserLoader.this.bucketList.add(shovelEntity);
                        }
                        if (jSONArray.length() > 0 && NetworkUserLoader.this.bucketList.size() < iOptInt) {
                            NetworkUserLoader.this.bucketPage++;
                            NetworkUserLoader.this.queryBucket();
                        } else {
                            NetworkUserLoader.this.bucketPage = 1;
                            QueryBucketResponse queryBucketResponse = new QueryBucketResponse(i, "ok");
                            queryBucketResponse.list = new ArrayList(NetworkUserLoader.this.bucketList);
                            EventBus.getDefault().post(queryBucketResponse);
                        }
                    } catch (Exception e2) {
                        NetworkUserLoader.this.bucketPage = 1;
                        LogToFile.e("数据解析异常：" + e2);
                        EventBus.getDefault().post(new QueryBucketResponse(-1, e2.getMessage()));
                    }
                }
            });
        } catch (Exception e2) {
            e = e2;
            EventBus.getDefault().post(new QueryBucketResponse(-1, e.getMessage()));
            networkUserLoader.bucketPage = 1;
            LogToFile.e("查询铲斗失败：" + e);
        }
    }

    public void delBucket(final ShovelEntity shovelEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("bucket_id", Long.valueOf(shovelEntity.bucket_id));
        try {
            startPostRequst("删除铲斗", 17002, 1303, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.36
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new DelBucketResponse(-1, str, shovelEntity));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        EventBus.getDefault().post(new DelBucketResponse(jSONObject.getInt("state"), jSONObject.optString("err_msg"), shovelEntity));
                    } catch (Exception e) {
                        EventBus.getDefault().post(new DelBucketResponse(-1, e.getMessage(), shovelEntity));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new DelBucketResponse(-1, e.getMessage(), shovelEntity));
        }
    }

    private void putExcavatorBucketParamsToDetail(JSONObject jSONObject, ExcavatorEntity excavatorEntity) throws JSONException {
        if (excavatorEntity.usesAutoGenerateParams()) {
            jSONObject.put("measure_params", JSONObject.NULL);
            jSONObject.put("auto_generate_params", toSnakeCaseAutoGenerateParamsJson(excavatorEntity.autoGenerateParams));
        } else {
            jSONObject.put("measure_params", toSnakeCaseMeasureParamsJson(excavatorEntity.measureParams));
            jSONObject.put("auto_generate_params", JSONObject.NULL);
        }
    }

    private void putCalibSoInputsToDetail(JSONObject jSONObject, ExcavatorEntity excavatorEntity) throws JSONException {
        excavatorEntity.syncCalibSoInputsToJson();
        String str = excavatorEntity.calibSoInputs;
        if (str == null || str.isEmpty()) {
            jSONObject.put("so_inputs", JSONObject.NULL);
            return;
        }
        try {
            jSONObject.put("so_inputs", new JSONObject(excavatorEntity.calibSoInputs));
        } catch (JSONException unused) {
            jSONObject.put("so_inputs", excavatorEntity.calibSoInputs);
        }
    }

    private void parseCalibSoInputs(ExcavatorEntity excavatorEntity, JSONObject jSONObject) {
        String jsonFieldAsString = readJsonFieldAsString(jSONObject, "so_inputs");
        if (TextUtils.isEmpty(jsonFieldAsString)) {
            jsonFieldAsString = readJsonFieldAsString(jSONObject, "calibSoInputs");
        }
        if (TextUtils.isEmpty(jsonFieldAsString)) {
            return;
        }
        excavatorEntity.calibSoInputs = jsonFieldAsString;
        excavatorEntity.loadCalibSoInputsFromJson();
        excavatorEntity.discardInvalidCalibSoInputs();
    }

    private JSONObject buildExcavatorParamsJson(ExcavatorEntity excavatorEntity) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("HA", round3(excavatorEntity.HA));
        jSONObject.put("pq", round3(excavatorEntity.pq));
        jSONObject.put("Ay", round3(excavatorEntity.Ay));
        jSONObject.put("Ax", round3(excavatorEntity.Ax));
        jSONObject.put("Dx", round3(excavatorEntity.Dx));
        jSONObject.put("AD", round3(excavatorEntity.AD));
        jSONObject.put("BD", round3(excavatorEntity.BD));
        jSONObject.put("CD", round3(excavatorEntity.CD));
        jSONObject.put("BC", round3(excavatorEntity.BC));
        return jSONObject;
    }

    private void parseExcavatorParams(ExcavatorEntity excavatorEntity, JSONObject jSONObject) {
        excavatorEntity.HA = 0.0d;
        excavatorEntity.pq = 0.0d;
        excavatorEntity.Ay = 0.0d;
        excavatorEntity.Ax = 0.0d;
        excavatorEntity.Dx = 0.0d;
        excavatorEntity.AD = 0.0d;
        excavatorEntity.BD = 0.0d;
        excavatorEntity.CD = 0.0d;
        excavatorEntity.BC = 0.0d;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("excavator_params");
        if (jSONObjectOptJSONObject == null) {
            excavatorEntity.syncExcavatorParamsToJson();
            return;
        }
        excavatorEntity.HA = safeOptDouble(jSONObjectOptJSONObject, "HA");
        excavatorEntity.pq = safeOptDouble(jSONObjectOptJSONObject, "pq");
        excavatorEntity.Ay = safeOptDouble(jSONObjectOptJSONObject, "Ay");
        excavatorEntity.Ax = safeOptDouble(jSONObjectOptJSONObject, "Ax");
        excavatorEntity.Dx = safeOptDouble(jSONObjectOptJSONObject, "Dx");
        excavatorEntity.AD = safeOptDouble(jSONObjectOptJSONObject, "AD");
        excavatorEntity.BD = safeOptDouble(jSONObjectOptJSONObject, "BD");
        excavatorEntity.CD = safeOptDouble(jSONObjectOptJSONObject, "CD");
        excavatorEntity.BC = safeOptDouble(jSONObjectOptJSONObject, "BC");
        excavatorEntity.syncExcavatorParamsToJson();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ExcavatorEntity parseExcavatorFromQueryResult(JSONObject jSONObject) {
        if (jSONObject.has("calib_params_detail") && !jSONObject.isNull("calib_params_detail")) {
            Object objOpt = jSONObject.opt("calib_params_detail");
            if (objOpt instanceof JSONObject) {
                return parseExcavatorFromDetailObject((JSONObject) objOpt);
            }
            String strTrim = objOpt instanceof String ? ((String) objOpt).trim() : objOpt.toString();
            if (!TextUtils.isEmpty(strTrim)) {
                return parseExcavatorFromDetailJson(strTrim);
            }
        }
        ExcavatorEntity excavatorEntity = new ExcavatorEntity();
        excavatorEntity.leftDist = safeOptDouble(jSONObject, "perp_to_left_dist");
        excavatorEntity.rigthDist = safeOptDouble(jSONObject, "perp_to_right_dist");
        excavatorEntity.spanDist = safeOptDouble(jSONObject, "tip_span_dist");
        excavatorEntity.deviceHeight = safeOptDouble(jSONObject, "device_height");
        return excavatorEntity;
    }

    private double safeOptDouble(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str) || jSONObject.isNull(str)) {
            return 0.0d;
        }
        return sanitizeDouble(jSONObject.optDouble(str));
    }

    private double sanitizeDouble(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return 0.0d;
        }
        return d;
    }

    private double round3(double d) {
        return Math.round(sanitizeDouble(d) * 1000.0d) / 1000.0d;
    }

    private JSONObject toSnakeCaseMeasureParamsJson(String str) throws JSONException {
        if (str == null || str.isEmpty()) {
            return new JSONObject();
        }
        ShovelMeasureParams shovelMeasureParams = (ShovelMeasureParams) new Gson().fromJson(str, ShovelMeasureParams.class);
        if (shovelMeasureParams == null) {
            return new JSONObject();
        }
        shovelMeasureParams.syncLRWithHalfWidths();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("g1", round3(shovelMeasureParams.G1));
        jSONObject.put("g2", round3(shovelMeasureParams.G2));
        jSONObject.put("g3", round3(shovelMeasureParams.G3));
        jSONObject.put("ly", round3(shovelMeasureParams.Ly));
        jSONObject.put("ry", round3(shovelMeasureParams.Ry));
        jSONObject.put("ab", round3(shovelMeasureParams.AB));
        jSONObject.put("nt", round3(shovelMeasureParams.NT));
        jSONObject.put("at", round3(shovelMeasureParams.AT));
        jSONObject.put("na", round3(shovelMeasureParams.NA));
        jSONObject.put("lr", round3(shovelMeasureParams.resolveLR()));
        return jSONObject;
    }

    private JSONObject toSnakeCaseAutoGenerateParamsJson(String str) throws JSONException {
        if (str == null || str.isEmpty()) {
            return new JSONObject();
        }
        ShovelAutoGenerateParams shovelAutoGenerateParams = (ShovelAutoGenerateParams) new Gson().fromJson(str, ShovelAutoGenerateParams.class);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ab", round3(shovelAutoGenerateParams.AB));
        jSONObject.put("t0x", round3(shovelAutoGenerateParams.T0x));
        jSONObject.put("t0y", round3(shovelAutoGenerateParams.T0y));
        jSONObject.put("t0z", round3(shovelAutoGenerateParams.T0z));
        jSONObject.put("t1x", round3(shovelAutoGenerateParams.T1x));
        jSONObject.put("t1y", round3(shovelAutoGenerateParams.T1y));
        jSONObject.put("t1z", round3(shovelAutoGenerateParams.T1z));
        jSONObject.put("t2x", round3(shovelAutoGenerateParams.T2x));
        jSONObject.put("t2y", round3(shovelAutoGenerateParams.T2y));
        jSONObject.put("t2z", round3(shovelAutoGenerateParams.T2z));
        jSONObject.put("t3x", round3(shovelAutoGenerateParams.T3x));
        jSONObject.put("t3y", round3(shovelAutoGenerateParams.T3y));
        jSONObject.put("t3z", round3(shovelAutoGenerateParams.T3z));
        Boolean bool = shovelAutoGenerateParams.useDistanceMeasure;
        if (bool != null) {
            jSONObject.put("use_distance_measure", bool);
        }
        return jSONObject;
    }

    private double optDoubleCompat(JSONObject jSONObject, String str, String str2) {
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            return sanitizeDouble(jSONObject.optDouble(str));
        }
        return sanitizeDouble(jSONObject.optDouble(str2));
    }

    private ShovelMeasureParams parseMeasureParamsFromJsonObject(JSONObject jSONObject) {
        ShovelMeasureParams shovelMeasureParams = new ShovelMeasureParams();
        shovelMeasureParams.G1 = optDoubleCompat(jSONObject, "g1", "G1");
        shovelMeasureParams.G2 = optDoubleCompat(jSONObject, "g2", "G2");
        shovelMeasureParams.G3 = optDoubleCompat(jSONObject, "g3", "G3");
        shovelMeasureParams.Ly = optDoubleCompat(jSONObject, "ly", "Ly");
        shovelMeasureParams.Ry = optDoubleCompat(jSONObject, "ry", "Ry");
        shovelMeasureParams.AB = optDoubleCompat(jSONObject, "ab", "AB");
        shovelMeasureParams.NT = optDoubleCompat(jSONObject, "nt", "NT");
        shovelMeasureParams.AT = optDoubleCompat(jSONObject, "at", "AT");
        shovelMeasureParams.NA = optDoubleCompat(jSONObject, "na", "NA");
        shovelMeasureParams.LR = optDoubleCompat(jSONObject, "lr", "LR");
        shovelMeasureParams.syncLRWithHalfWidths();
        return shovelMeasureParams;
    }

    private ShovelAutoGenerateParams parseAutoGenerateParamsFromJsonObject(JSONObject jSONObject) {
        ShovelAutoGenerateParams shovelAutoGenerateParams = new ShovelAutoGenerateParams();
        shovelAutoGenerateParams.AB = optDoubleCompat(jSONObject, "ab", "AB");
        shovelAutoGenerateParams.T0x = optDoubleCompat(jSONObject, "t0x", "T0x");
        shovelAutoGenerateParams.T0y = optDoubleCompat(jSONObject, "t0y", "T0y");
        shovelAutoGenerateParams.T0z = optDoubleCompat(jSONObject, "t0z", "T0z");
        shovelAutoGenerateParams.T1x = optDoubleCompat(jSONObject, "t1x", "T1x");
        shovelAutoGenerateParams.T1y = optDoubleCompat(jSONObject, "t1y", "T1y");
        shovelAutoGenerateParams.T1z = optDoubleCompat(jSONObject, "t1z", "T1z");
        shovelAutoGenerateParams.T2x = optDoubleCompat(jSONObject, "t2x", "T2x");
        shovelAutoGenerateParams.T2y = optDoubleCompat(jSONObject, "t2y", "T2y");
        shovelAutoGenerateParams.T2z = optDoubleCompat(jSONObject, "t2z", "T2z");
        shovelAutoGenerateParams.T3x = optDoubleCompat(jSONObject, "t3x", "T3x");
        shovelAutoGenerateParams.T3y = optDoubleCompat(jSONObject, "t3y", "T3y");
        shovelAutoGenerateParams.T3z = optDoubleCompat(jSONObject, "t3z", "T3z");
        shovelAutoGenerateParams.useDistanceMeasure = optBooleanCompat(jSONObject, "use_distance_measure", "useDistanceMeasure");
        return shovelAutoGenerateParams;
    }

    private Boolean optBooleanCompat(JSONObject jSONObject, String str, String str2) {
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            return Boolean.valueOf(jSONObject.optBoolean(str));
        }
        if (!jSONObject.has(str2) || jSONObject.isNull(str2)) {
            return null;
        }
        return Boolean.valueOf(jSONObject.optBoolean(str2));
    }

    private String readJsonFieldAsString(JSONObject jSONObject, String str) {
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt instanceof JSONObject) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                if (jSONObject2.length() == 0) {
                    return null;
                }
                return jSONObject2.toString();
            }
            if (objOpt instanceof String) {
                String strTrim = ((String) objOpt).trim();
                if (strTrim.isEmpty()) {
                    return null;
                }
                return strTrim;
            }
        }
        return null;
    }

    private void parseExcavatorBucketParams(ExcavatorEntity excavatorEntity, JSONObject jSONObject) {
        String jsonFieldAsString;
        try {
            jsonFieldAsString = readJsonFieldAsString(jSONObject, "auto_generate_params");
            if (TextUtils.isEmpty(jsonFieldAsString)) {
                jsonFieldAsString = readJsonFieldAsString(jSONObject, "autoGenerateParams");
            }
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(jsonFieldAsString)) {
            excavatorEntity.setAutoGenerateParamsObj(parseAutoGenerateParamsFromJsonObject(new JSONObject(jsonFieldAsString)));
            return;
        }
        excavatorEntity.clearAutoGenerateParams();
        String jsonFieldAsString2 = readJsonFieldAsString(jSONObject, "measure_params");
        if (TextUtils.isEmpty(jsonFieldAsString2)) {
            jsonFieldAsString2 = readJsonFieldAsString(jSONObject, "measureParams");
        }
        if (!TextUtils.isEmpty(jsonFieldAsString2)) {
            excavatorEntity.setMeasureParamsObj(parseMeasureParamsFromJsonObject(new JSONObject(jsonFieldAsString2)));
            return;
        }
        ShovelMeasureParams shovelMeasureParams = new ShovelMeasureParams();
        shovelMeasureParams.AB = optDoubleCompat(jSONObject, "ab", "AB");
        shovelMeasureParams.G1 = optDoubleCompat(jSONObject, "g1", "G1");
        shovelMeasureParams.G2 = optDoubleCompat(jSONObject, "g2", "G2");
        shovelMeasureParams.G3 = optDoubleCompat(jSONObject, "g3", "G3");
        shovelMeasureParams.Ly = optDoubleCompat(jSONObject, "ly", "Ly");
        shovelMeasureParams.Ry = optDoubleCompat(jSONObject, "ry", "Ry");
        shovelMeasureParams.NT = optDoubleCompat(jSONObject, "nt", "NT");
        shovelMeasureParams.AT = optDoubleCompat(jSONObject, "at", "AT");
        shovelMeasureParams.NA = optDoubleCompat(jSONObject, "na", "NA");
        shovelMeasureParams.LR = optDoubleCompat(jSONObject, "lr", "LR");
        shovelMeasureParams.syncLRWithHalfWidths();
        excavatorEntity.setMeasureParamsObj(shovelMeasureParams);
    }

    private void logBucketUploadRequest(String str, Map<String, Object> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            LogToFile.i(str + "上传数据：\n" + jSONObject.toString(2));
        } catch (Exception e) {
            LogToFile.e(str + "上传数据打印失败：" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String readParamsDetailJson(JSONObject jSONObject) {
        String[] strArr = {"params_detail", "paramsDetail"};
        for (int i = 0; i < 2; i++) {
            String str = strArr[i];
            if (jSONObject.has(str) && !jSONObject.isNull(str)) {
                Object objOpt = jSONObject.opt(str);
                if (objOpt instanceof String) {
                    String strTrim = ((String) objOpt).trim();
                    if (!strTrim.isEmpty()) {
                        return strTrim;
                    }
                } else if (objOpt instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) objOpt;
                    if (jSONObject2.length() > 0) {
                        return jSONObject2.toString();
                    }
                } else {
                    continue;
                }
            }
        }
        return "";
    }

    private JSONObject buildBucketParamsDetail(ShovelEntity shovelEntity) throws JSONException {
        shovelEntity.ensureParamsSerialized();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mode", shovelEntity.mode);
        String str = shovelEntity.param;
        if (str == null) {
            str = "";
        }
        jSONObject.put("param", str);
        if (shovelEntity.usesAutoGenerateParams()) {
            jSONObject.put("measure_params", JSONObject.NULL);
            jSONObject.put("auto_generate_params", toSnakeCaseAutoGenerateParamsJson(shovelEntity.autoGenerateParams));
            return jSONObject;
        }
        jSONObject.put("measure_params", toSnakeCaseMeasureParamsJson(shovelEntity.measureParams));
        jSONObject.put("auto_generate_params", JSONObject.NULL);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseBucketParamsDetail(ShovelEntity shovelEntity, JSONObject jSONObject) {
        shovelEntity.mode = jSONObject.optInt("mode");
        shovelEntity.param = jSONObject.optString("param");
        String jsonFieldAsString = readJsonFieldAsString(jSONObject, "auto_generate_params");
        if (TextUtils.isEmpty(jsonFieldAsString)) {
            jsonFieldAsString = readJsonFieldAsString(jSONObject, "autoGenerateParams");
        }
        if (!TextUtils.isEmpty(jsonFieldAsString)) {
            try {
                shovelEntity.setAutoGenerateParamsObj(parseAutoGenerateParamsFromJsonObject(new JSONObject(jsonFieldAsString)));
            } catch (Exception unused) {
                shovelEntity.autoGenerateParams = jsonFieldAsString;
            }
            shovelEntity.clearMeasureParams();
            return;
        }
        shovelEntity.clearAutoGenerateParams();
        String jsonFieldAsString2 = readJsonFieldAsString(jSONObject, "measure_params");
        if (TextUtils.isEmpty(jsonFieldAsString2)) {
            jsonFieldAsString2 = readJsonFieldAsString(jSONObject, "measureParams");
        }
        if (!TextUtils.isEmpty(jsonFieldAsString2)) {
            try {
                shovelEntity.setMeasureParamsObj(parseMeasureParamsFromJsonObject(new JSONObject(jsonFieldAsString2)));
                return;
            } catch (Exception unused2) {
                shovelEntity.measureParams = jsonFieldAsString2;
                return;
            }
        }
        ShovelMeasureParams shovelMeasureParams = new ShovelMeasureParams();
        shovelMeasureParams.AB = optDoubleCompat(jSONObject, "ab", "AB");
        shovelMeasureParams.G1 = optDoubleCompat(jSONObject, "g1", "G1");
        shovelMeasureParams.G2 = optDoubleCompat(jSONObject, "g2", "G2");
        shovelMeasureParams.G3 = optDoubleCompat(jSONObject, "g3", "G3");
        shovelMeasureParams.Ly = optDoubleCompat(jSONObject, "ly", "Ly");
        shovelMeasureParams.Ry = optDoubleCompat(jSONObject, "ry", "Ry");
        shovelMeasureParams.NT = optDoubleCompat(jSONObject, "nt", "NT");
        shovelMeasureParams.AT = optDoubleCompat(jSONObject, "at", "AT");
        shovelMeasureParams.NA = optDoubleCompat(jSONObject, "na", "NA");
        shovelMeasureParams.LR = optDoubleCompat(jSONObject, "lr", "LR");
        shovelMeasureParams.syncLRWithHalfWidths();
        shovelEntity.setMeasureParamsObj(shovelMeasureParams);
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public void login(String str, String str2, String str3, InsNavi insNavi) {
        HashMap map = new HashMap();
        boolean zMatches = str.matches("\\d+");
        if (!TextUtils.isEmpty(str2)) {
            String sha256 = getSha256(getSha256(str, str2), getUtcDateString());
            map.put(zMatches ? "account" : "email", str);
            map.put("login_key", sha256);
        } else if (!TextUtils.isEmpty(str3)) {
            map.put(zMatches ? "telephone" : "email", str);
            map.put("captcha", str3);
        }
        map.put("android_id", Settings.Secure.getString(YCTApplication.getInstance().getApplicationContext().getContentResolver(), "android_id"));
        map.put("device_name", BluetoothAdapter.getDefaultAdapter().getName());
        map.put("android_version", "Android " + Build.VERSION.RELEASE);
        map.put("cpu_abi", Build.SUPPORTED_ABIS[0]);
        map.put("product_brand", Build.MANUFACTURER);
        map.put("product_model", Build.MODEL);
        map.put("longitude", Double.valueOf(insNavi != null ? Math.round(insNavi.longitude * 1.0E8d) / 1.0E8d : 0.0d));
        map.put("latitude", Double.valueOf(insNavi != null ? Math.round(insNavi.latitude * 1.0E8d) / 1.0E8d : 0.0d));
        map.put("altitude", Double.valueOf(insNavi != null ? Math.round(insNavi.elevation * 10000.0d) / 10000.0d : 0.0d));
        try {
            startPostRequst("登录", 17001, 1005, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.37
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str4) {
                    EventBus.getDefault().post(new LoginResponse(-2, str4, "", "", ""));
                    LogToFile.e("onFailure() ：" + str4);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str4) throws JSONException {
                    try {
                        LogToFile.i("登录响应：" + str4);
                        JSONObject jSONObject = new JSONObject(str4);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new LoginResponse(i, jSONObject.getString("err_msg"), "", "", ""));
                            return;
                        }
                        String string = jSONObject.getString("token");
                        JSONArray jSONArray = new JSONArray(jSONObject.getString("logged_devices"));
                        JSONObject jSONObject2 = new JSONObject(jSONObject.getString("userinfo"));
                        String string2 = jSONObject2.getString("telephone");
                        if (TextUtils.isEmpty(string2)) {
                            string2 = jSONObject2.getString("account");
                        }
                        String str5 = string2;
                        String string3 = jSONObject2.getString("name");
                        long j = jSONObject2.getLong("id");
                        UserSession.get().saveLogin(jSONObject.getString("device_id"), string, str5, string3, j);
                        int i2 = 0;
                        NetworkUserLoader.this.getConfig(new String[0]);
                        EventBus.getDefault().post(new LoginResponse(i, "ok", string, str5, string3));
                        YctDeviceManager.getInstanceH5().notifyUserLogged(j);
                        ArrayList arrayList = new ArrayList();
                        while (i2 < jSONArray.length()) {
                            JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                            int i3 = jSONObject3.getInt("id");
                            String string4 = jSONObject3.getString("device_name");
                            String string5 = jSONObject3.getString("android_id");
                            long j2 = jSONObject3.getLong("login_epoch");
                            long j3 = jSONObject3.getLong("last_activity_epoch");
                            StringBuilder sb = new StringBuilder();
                            sb.append("登录设备");
                            i2++;
                            sb.append(i2);
                            sb.append(" -> id:");
                            sb.append(i3);
                            sb.append("，deviceName:");
                            sb.append(string4);
                            LogToFile.i(sb.toString());
                            LoginedDevice loginedDevice = new LoginedDevice();
                            loginedDevice.id = i3;
                            loginedDevice.name = string4;
                            loginedDevice.android_id = string5;
                            loginedDevice.login_epoch = j2;
                            loginedDevice.last_activity_epoch = j3;
                            arrayList.add(loginedDevice);
                        }
                        NetworkUserLoader.this.mSp.edit().putString("logined_devices", new JSONArray(new Gson().toJson(arrayList)).toString()).apply();
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new LoginResponse(-2, "", "", "", ""));
            LogToFile.e("登录失败：" + e);
        }
    }

    public void clearLocalLoginInfo() {
        UserSession.get().clearLoginInfo();
    }

    public void logout(int i) {
        logout(i, null);
    }

    public void logout(final int i, String str) {
        if (TextUtils.isEmpty(str)) {
            str = UserSession.get().getToken();
        }
        if (TextUtils.isEmpty(str)) {
            EventBus.getDefault().post(new LogoutResponse(8000, "token error", i));
            return;
        }
        HashMap map = new HashMap();
        map.put("token", str);
        map.put("logged_device_id", Integer.valueOf(i));
        try {
            startPostRequst("退出登录", 17001, 1007, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.38
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new LogoutResponse(-1, str2, i));
                    LogToFile.e("onFailure() ：" + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("退出登录响应：" + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i2 = jSONObject.getInt("state");
                        if (i2 != 0) {
                            EventBus.getDefault().post(new LogoutResponse(i2, jSONObject.getString("err_msg"), i));
                        } else {
                            if (i == -1) {
                                YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
                            }
                            EventBus.getDefault().post(new LogoutResponse(i2, "ok", i));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new LogoutResponse(-1, "", i));
            LogToFile.e("退出登录失败：" + e);
        }
    }

    public void queryNeedUploadLog(final Context context) {
        if (this.isUploadFileToServer) {
            LogToFile.i("正在上传日志文件，不查询任务");
            return;
        }
        String token = UserSession.get().getToken();
        Map<String, Object> map = new HashMap<>();
        if (!TextUtils.isEmpty(token)) {
            map.put("token", token);
        }
        String deviceId = UserSession.get().getDeviceId();
        String string = this.mSp.getString("deviceSn", "");
        String string2 = this.mSp.getString("base_deviceSn", "");
        if (TextUtils.isEmpty(deviceId)) {
            LogToFile.i("日志上传失败：device_id为空");
            return;
        }
        if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
            LogToFile.i("日志上传失败：没有连接设备记录-device_sn为空");
            return;
        }
        map.put("device_id", deviceId);
        if (TextUtils.isEmpty(string)) {
            string = string2;
        }
        map.put("device_sn", string);
        try {
            startPostRequst("查询日志上传任务", 17004, 1001, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.39
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("查询日志上传任务响应：" + str);
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.getInt("state") != 0) {
                            jSONObject.getString("err_msg");
                            return;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        if (jSONArray.length() > 0) {
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                String string3 = jSONObject2.getString("uuid");
                                String string4 = jSONObject2.getString("mime_type");
                                String string5 = jSONObject2.getString("upload_url");
                                long j = jSONObject2.getLong("log_beg_epoch");
                                long j2 = jSONObject2.getLong("log_end_epoch");
                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA);
                                StringBuilder sb = new StringBuilder();
                                sb.append("上传日志时间范围：");
                                long j3 = j * 1000;
                                sb.append(simpleDateFormat.format(Long.valueOf(j3)));
                                sb.append("---------");
                                long j4 = 1000 * j2;
                                sb.append(simpleDateFormat.format(Long.valueOf(j4)));
                                LogToFile.i(sb.toString());
                                List<String> listFindEncryFilesInTimeRange = FileUtil.findEncryFilesInTimeRange(context, j, j2);
                                LogToFile.i("符合条件的加密文件数量：" + listFindEncryFilesInTimeRange.size() + "个");
                                if (!listFindEncryFilesInTimeRange.isEmpty()) {
                                    for (int i2 = 0; i2 < listFindEncryFilesInTimeRange.size(); i2++) {
                                        listFindEncryFilesInTimeRange.get(i2);
                                    }
                                    List<File> listFindUnEncryFilesInTimeRange = FileUtil.findUnEncryFilesInTimeRange(context, j, j2);
                                    LogToFile.i("文件筛选完成数量：enc=" + listFindEncryFilesInTimeRange.size() + " plain=" + listFindUnEncryFilesInTimeRange.size());
                                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddHHmm", Locale.CHINA);
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(Environment.getExternalStorageDirectory());
                                    String str2 = File.separator;
                                    sb2.append(str2);
                                    sb2.append("YCT/log");
                                    sb2.append(str2);
                                    sb2.append(simpleDateFormat2.format(Long.valueOf(j3)));
                                    sb2.append("-");
                                    sb2.append(simpleDateFormat2.format(Long.valueOf(j4)));
                                    sb2.append(".zip");
                                    final File fileZipLogUploadPackage = ZipUtil.zipLogUploadPackage(listFindEncryFilesInTimeRange, listFindUnEncryFilesInTimeRange, sb2.toString());
                                    if (fileZipLogUploadPackage == null) {
                                        LogToFile.e("日志压缩补救后仍失败，跳过上传");
                                    } else {
                                        try {
                                            LogToFile.i("日志上传uuid：" + string3);
                                            LogToFile.i("日志上传地址：" + string5);
                                            LogToFile.i("日志上传mime_type：" + string4);
                                            LogToFile.i("压缩日志路径：" + fileZipLogUploadPackage.getAbsolutePath());
                                            LogToFile.i("压缩日志大小：" + fileZipLogUploadPackage.length());
                                            NetworkUserLoader.this.uploadLogFileToServer(false, string5, string4, fileZipLogUploadPackage.getAbsolutePath(), string3, listFindUnEncryFilesInTimeRange, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.39.1
                                                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                                                public void onFailure(Call call, String str3) {
                                                    LogToFile.e("日志上传失败：" + str3);
                                                }

                                                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                                                public void onResponse(String str3) {
                                                    LogToFile.i("日志上传成功：" + fileZipLogUploadPackage.getAbsolutePath());
                                                }
                                            });
                                        } catch (Exception e) {
                                            LogToFile.e("日志上传异常：" + e);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e2) {
                        LogToFile.e("数据解析异常：" + e2);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("日志上传任务查询失败：" + e);
        }
    }

    public void uploadTodayLog(Context context, String str, OnRequestCallBackListener onRequestCallBackListener, UploadProgressListener uploadProgressListener, UploadProgressListener uploadProgressListener2) {
        int iBeginNewLogUploadSession = beginNewLogUploadSession();
        if (!isLogUploadSessionActive(iBeginNewLogUploadSession)) {
            return;
        }
        try {
            uploadTodayLogInternal(context, str, onRequestCallBackListener, uploadProgressListener, uploadProgressListener2, iBeginNewLogUploadSession);
            if (this.logCompressThread == Thread.currentThread()) {
                this.logCompressThread = null;
            }
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void uploadTodayLogInternal(final android.content.Context r24, final java.lang.String r25, com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener r26, final com.qianhe.yct.utils.NetworkUserLoader.UploadProgressListener r27, final com.qianhe.yct.utils.NetworkUserLoader.UploadProgressListener r28, final int r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 937
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.NetworkUserLoader.uploadTodayLogInternal(android.content.Context, java.lang.String, com.qianhe.yct.utils.NetworkUserLoader$OnRequestCallBackListener, com.qianhe.yct.utils.NetworkUserLoader$UploadProgressListener, com.qianhe.yct.utils.NetworkUserLoader$UploadProgressListener, int):void");
    }

    public static /* synthetic */ void $r8$lambda$UDZIqMuBrcC8HcGMFhervU_Fcjk(NetworkUserLoader networkUserLoader, int i, UploadProgressListener uploadProgressListener, int i2) {
        if (networkUserLoader.isLogUploadSessionActive(i) && uploadProgressListener != null) {
            uploadProgressListener.onProgress(i2);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$QzvP_TBpwjevMZww64zY0dimp5M(NetworkUserLoader networkUserLoader, int i) {
        return !networkUserLoader.isLogUploadSessionActive(i);
    }

    public static /* synthetic */ boolean $r8$lambda$pupXdWeJ_YvpOw_6BK2rWvDwkeM(File file, String str) {
        return str.startsWith(LogToFile.FILETAG) && str.endsWith(".log");
    }

    private OkHttpClient newOssUploadClient() {
        OkHttpClient.Builder builderNewBuilder = this.mClient.newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builderNewBuilder.connectTimeout(600L, timeUnit).writeTimeout(600L, timeUnit).readTimeout(600L, timeUnit).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadLogFileToServer(boolean z, String str, String str2, String str3, String str4, List<File> list, OnRequestCallBackListener onRequestCallBackListener) {
        uploadLogFileToServer(z, str, str2, str3, str4, list, onRequestCallBackListener, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadLogFileToServer(final boolean z, final String str, final String str2, final String str3, String str4, final List<File> list, OnRequestCallBackListener onRequestCallBackListener, final UploadProgressListener uploadProgressListener, final String str5) {
        final String str6;
        final OnRequestCallBackListener onRequestCallBackListener2;
        Call callNewCall;
        if (this.logUploadCancelled) {
            return;
        }
        final File file = new File(str3);
        if (!file.exists() || !file.isFile()) {
            LogToFile.i("上传失败, 压缩后的文件不存在");
            notifyUploadLogFileState(null, str4, 5, onRequestCallBackListener);
            return;
        }
        this.isUploadFileToServer = true;
        OkHttpClient okHttpClientNewOssUploadClient = newOssUploadClient();
        final long length = file.length();
        final int[] iArr = {-1};
        if (uploadProgressListener != null) {
            try {
                iArr[0] = 0;
                uploadProgressListener.onProgress(0);
            } catch (Exception e) {
                e = e;
                str6 = str4;
                onRequestCallBackListener2 = onRequestCallBackListener;
                e.printStackTrace();
                this.failUpLogCount = 0;
                this.isUploadFileToServer = false;
                this.currentOssUploadCall = null;
                notifyUploadLogFileState(file, str6, 3, onRequestCallBackListener2);
                deleteLogUploadDecryptTempFiles(list);
            }
        }
        try {
            RequestBody requestBody = new RequestBody() { // from class: com.qianhe.yct.utils.NetworkUserLoader.42
                @Override // okhttp3.RequestBody
                public boolean isOneShot() {
                    return true;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return MediaType.parse(str2);
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return length;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink bufferedSink) {
                    Source source = Okio.source(file);
                    try {
                        Buffer buffer = new Buffer();
                        long j = 0;
                        long j2 = 0;
                        while (true) {
                            long j3 = source.read(buffer, 8192L);
                            if (j3 != -1) {
                                bufferedSink.write(buffer, j3);
                                j += j3;
                                j2 += j3;
                                if (j2 >= 65536) {
                                    bufferedSink.flush();
                                    j2 = 0;
                                }
                                UploadProgressListener uploadProgressListener2 = uploadProgressListener;
                                if (uploadProgressListener2 != null) {
                                    long j4 = length;
                                    if (j4 > 0) {
                                        int i = (int) ((99 * j) / j4);
                                        if (i > 99) {
                                            i = 99;
                                        }
                                        int[] iArr2 = iArr;
                                        if (i != iArr2[0]) {
                                            iArr2[0] = i;
                                            uploadProgressListener2.onProgress(i);
                                        }
                                    }
                                }
                            } else {
                                source.close();
                                bufferedSink.flush();
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        if (source != null) {
                            try {
                                source.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
            };
            file = file;
            Request.Builder builderPut = new Request.Builder().url(str).put(requestBody);
            builderPut.addHeader("Content-Type", str2);
            if (z) {
                String fileMD5Base64 = TextUtils.isEmpty(str5) ? FileUtil.getFileMD5Base64(str3) : str5;
                if (!TextUtils.isEmpty(fileMD5Base64)) {
                    builderPut.addHeader("Content-MD5", fileMD5Base64);
                }
            }
            Request requestBuild = builderPut.build();
            LogToFile.i("开始OSS上传 size=" + length);
            callNewCall = okHttpClientNewOssUploadClient.newCall(requestBuild);
            this.currentOssUploadCall = callNewCall;
            str6 = str4;
            onRequestCallBackListener2 = onRequestCallBackListener;
        } catch (Exception e2) {
            e = e2;
            str6 = str4;
            onRequestCallBackListener2 = onRequestCallBackListener;
            file = file;
        }
        try {
            callNewCall.enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.43
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    if (call.isCanceled() || NetworkUserLoader.this.logUploadCancelled) {
                        NetworkUserLoader.this.isUploadFileToServer = false;
                        NetworkUserLoader.this.currentOssUploadCall = null;
                        return;
                    }
                    LogToFile.e("OSS上传失败：" + iOException);
                    NetworkUserLoader networkUserLoader = NetworkUserLoader.this;
                    networkUserLoader.failUpLogCount = networkUserLoader.failUpLogCount + 1;
                    if (!NetworkUserLoader.this.logUploadCancelled && NetworkUserLoader.this.failUpLogCount < 3) {
                        NetworkUserLoader.this.uploadLogFileToServer(z, str, str2, str3, str6, list, onRequestCallBackListener2, uploadProgressListener, str5);
                        return;
                    }
                    NetworkUserLoader.this.failUpLogCount = 0;
                    NetworkUserLoader.this.isUploadFileToServer = false;
                    NetworkUserLoader.this.currentOssUploadCall = null;
                    NetworkUserLoader.this.notifyUploadLogFileState(file, str6, 3, onRequestCallBackListener2);
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        ResponseBody responseBodyBody = response.body();
                        try {
                            if (call.isCanceled() || NetworkUserLoader.this.logUploadCancelled) {
                                NetworkUserLoader.this.isUploadFileToServer = false;
                                NetworkUserLoader.this.currentOssUploadCall = null;
                                if (responseBodyBody == null) {
                                    return;
                                }
                            } else {
                                int iCode = response.code();
                                LogToFile.i("OSS upload response.code()：" + iCode);
                                if (response.isSuccessful() && (iCode == 200 || iCode == 201 || iCode == 204)) {
                                    NetworkUserLoader.this.failUpLogCount = 0;
                                    NetworkUserLoader.this.isUploadFileToServer = false;
                                    NetworkUserLoader.this.currentOssUploadCall = null;
                                    UploadProgressListener uploadProgressListener2 = uploadProgressListener;
                                    if (uploadProgressListener2 != null) {
                                        uploadProgressListener2.onProgress(100);
                                    }
                                    NetworkUserLoader.this.notifyUploadLogFileState(file, str6, 2, onRequestCallBackListener2);
                                    NetworkUserLoader.this.deleteLogUploadDecryptTempFiles(list);
                                } else {
                                    NetworkUserLoader.this.failUpLogCount++;
                                    LogToFile.e("OSS上传失败 code:" + iCode + "，msg:" + response.message());
                                    if (!NetworkUserLoader.this.logUploadCancelled && NetworkUserLoader.this.failUpLogCount < 3) {
                                        NetworkUserLoader.this.uploadLogFileToServer(z, str, str2, str3, str6, list, onRequestCallBackListener2, uploadProgressListener, str5);
                                    } else {
                                        NetworkUserLoader.this.failUpLogCount = 0;
                                        NetworkUserLoader.this.isUploadFileToServer = false;
                                        NetworkUserLoader.this.currentOssUploadCall = null;
                                        NetworkUserLoader.this.notifyUploadLogFileState(file, str6, 3, onRequestCallBackListener2);
                                        NetworkUserLoader.this.deleteLogUploadDecryptTempFiles(list);
                                    }
                                }
                                if (responseBodyBody == null) {
                                    return;
                                }
                            }
                            responseBodyBody.close();
                        } finally {
                        }
                    } catch (Exception e3) {
                        LogToFile.e("OSS上传响应处理异常：" + e3);
                        NetworkUserLoader networkUserLoader = NetworkUserLoader.this;
                        networkUserLoader.failUpLogCount = networkUserLoader.failUpLogCount + 1;
                        if (!NetworkUserLoader.this.logUploadCancelled && NetworkUserLoader.this.failUpLogCount < 3) {
                            NetworkUserLoader.this.uploadLogFileToServer(z, str, str2, str3, str6, list, onRequestCallBackListener2, uploadProgressListener, str5);
                            return;
                        }
                        NetworkUserLoader.this.failUpLogCount = 0;
                        NetworkUserLoader.this.isUploadFileToServer = false;
                        NetworkUserLoader.this.currentOssUploadCall = null;
                        NetworkUserLoader.this.notifyUploadLogFileState(file, str6, 3, onRequestCallBackListener2);
                        NetworkUserLoader.this.deleteLogUploadDecryptTempFiles(list);
                    }
                }
            });
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            this.failUpLogCount = 0;
            this.isUploadFileToServer = false;
            this.currentOssUploadCall = null;
            notifyUploadLogFileState(file, str6, 3, onRequestCallBackListener2);
            deleteLogUploadDecryptTempFiles(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUploadLogFileState(final File file, String str, final int i, final OnRequestCallBackListener onRequestCallBackListener) {
        if (this.logUploadCancelled) {
            return;
        }
        HashMap map = new HashMap();
        map.put("token", UserSession.get().getToken());
        map.put("uuid", str);
        map.put("upload_state", Integer.valueOf(i));
        try {
            startPostRequst("通知日志上传结果", 17004, 1005, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.44
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    if (NetworkUserLoader.this.logUploadCancelled) {
                        return;
                    }
                    LogToFile.e("onFailure() ：" + str2);
                    File file2 = file;
                    if (file2 != null && file2.exists()) {
                        file.delete();
                    }
                    NetworkUserLoader.this.endLogUploadSession();
                    OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                    if (onRequestCallBackListener2 != null) {
                        onRequestCallBackListener2.onFailure(call, str2);
                    }
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    if (NetworkUserLoader.this.logUploadCancelled) {
                        return;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int i2 = jSONObject.getInt("state");
                        File file2 = file;
                        if (file2 != null && file2.exists()) {
                            file.delete();
                        }
                        NetworkUserLoader.this.endLogUploadSession();
                        if (i2 == 0) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("日志上传");
                            int i3 = i;
                            sb.append(i3 == 2 ? "成功" : i3 == 3 ? "失败" : "不存在");
                            sb.append("通知：");
                            sb.append(str2);
                            LogToFile.i(sb.toString());
                            OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                            if (onRequestCallBackListener2 != null) {
                                int i4 = i;
                                if (i4 == 2) {
                                    onRequestCallBackListener2.onResponse(str2);
                                    return;
                                } else {
                                    onRequestCallBackListener2.onFailure(null, i4 == 3 ? "上传失败" : "日志不存在");
                                    return;
                                }
                            }
                            return;
                        }
                        String string = jSONObject.getString("err_msg");
                        LogToFile.e("上传失败：" + string);
                        OnRequestCallBackListener onRequestCallBackListener3 = onRequestCallBackListener;
                        if (onRequestCallBackListener3 != null) {
                            onRequestCallBackListener3.onFailure(null, string);
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                        File file3 = file;
                        if (file3 != null && file3.exists()) {
                            file.delete();
                        }
                        NetworkUserLoader.this.endLogUploadSession();
                        OnRequestCallBackListener onRequestCallBackListener4 = onRequestCallBackListener;
                        if (onRequestCallBackListener4 != null) {
                            onRequestCallBackListener4.onFailure(null, e.toString());
                        }
                    }
                }
            }, true);
        } catch (Exception e) {
            LogToFile.e("上传结果通知失败：" + e);
            if (file != null && file.exists()) {
                file.delete();
            }
            endLogUploadSession();
            if (onRequestCallBackListener != null) {
                onRequestCallBackListener.onFailure(null, e.toString());
            }
        }
    }

    public void applyCalibPacketUpload(Map<String, Object> map, OnRequestCallBackListener onRequestCallBackListener) throws JSONException {
        startPostRequst("申请校准数据包上传", 17020, 1001, map, wrapCalibResponseLog("17020,1001", onRequestCallBackListener), false, true);
    }

    public void notifyCalibPacketState(String str, String str2, int i, OnRequestCallBackListener onRequestCallBackListener) throws JSONException {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("token", str);
        }
        if (str2 == null) {
            str2 = "";
        }
        map.put("uuid", str2);
        map.put("upload_state", Integer.valueOf(i));
        startPostRequst("通知校准数据包上传结果", 17020, 1003, map, wrapCalibResponseLog("17020,1003", onRequestCallBackListener), false, true);
    }

    private OnRequestCallBackListener wrapCalibResponseLog(final String str, final OnRequestCallBackListener onRequestCallBackListener) {
        return new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.45
            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onFailure(Call call, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("校准数据包 ");
                sb.append(str.contains("1001") ? "申请上传" : str.contains("1003") ? "通知结果" : "");
                sb.append(" 失败：");
                sb.append(str2);
                LogToFile.e(sb.toString());
                OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                if (onRequestCallBackListener2 != null) {
                    onRequestCallBackListener2.onFailure(call, str2);
                }
            }

            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onResponse(String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("校准数据包 ");
                sb.append(str.contains("1001") ? "申请上传" : str.contains("1003") ? "通知结果" : "");
                sb.append(" 响应：");
                sb.append(str2);
                LogToFile.i(sb.toString());
                OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                if (onRequestCallBackListener2 != null) {
                    onRequestCallBackListener2.onResponse(str2);
                }
            }
        };
    }

    public void putFileToOss(String str, String str2, File file, boolean z, OnRequestCallBackListener onRequestCallBackListener) {
        putFileToOss(str, str2, file, z, onRequestCallBackListener, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putFileToOss(final String str, final String str2, final File file, final boolean z, final OnRequestCallBackListener onRequestCallBackListener, final int i) {
        if (file == null || !file.exists() || !file.isFile()) {
            LogToFile.i("OSS PUT 失败: 文件不存在");
            if (onRequestCallBackListener != null) {
                onRequestCallBackListener.onFailure(null, "file not found");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (onRequestCallBackListener != null) {
                onRequestCallBackListener.onFailure(null, "empty upload_url");
                return;
            }
            return;
        }
        final String str3 = TextUtils.isEmpty(str2) ? "application/zip" : str2;
        OkHttpClient.Builder builderNewBuilder = this.mClient.newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient okHttpClientBuild = builderNewBuilder.connectTimeout(600L, timeUnit).writeTimeout(600L, timeUnit).readTimeout(600L, timeUnit).build();
        final long length = file.length();
        try {
            Request.Builder builderPut = new Request.Builder().url(str).put(new RequestBody() { // from class: com.qianhe.yct.utils.NetworkUserLoader.46
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return MediaType.parse(str3);
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return length;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink bufferedSink) {
                    Source source = Okio.source(file);
                    try {
                        Buffer buffer = new Buffer();
                        while (true) {
                            long j = source.read(buffer, 8192L);
                            if (j != -1) {
                                bufferedSink.write(buffer, j);
                            } else {
                                source.close();
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        if (source != null) {
                            try {
                                source.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
            });
            builderPut.addHeader("Content-Type", str3);
            if (z) {
                String fileMD5Base64 = FileUtil.getFileMD5Base64(file.getAbsolutePath());
                if (!TextUtils.isEmpty(fileMD5Base64)) {
                    builderPut.addHeader("Content-MD5", fileMD5Base64);
                }
            }
            okHttpClientBuild.newCall(builderPut.build()).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.47
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    LogToFile.e("OSS PUT 失败：" + iOException);
                    int i2 = i;
                    if (i2 < 2) {
                        NetworkUserLoader.this.putFileToOss(str, str2, file, z, onRequestCallBackListener, i2 + 1);
                        return;
                    }
                    OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                    if (onRequestCallBackListener2 != null) {
                        onRequestCallBackListener2.onFailure(call, iOException.toString());
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        ResponseBody responseBodyBody = response.body();
                        try {
                            int iCode = response.code();
                            LogToFile.i("OSS PUT response.code()：" + iCode);
                            if (response.isSuccessful() && (iCode == 200 || iCode == 201 || iCode == 204)) {
                                OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                                if (onRequestCallBackListener2 != null) {
                                    onRequestCallBackListener2.onResponse("");
                                }
                            } else {
                                int i2 = i;
                                if (i2 < 2) {
                                    NetworkUserLoader.this.putFileToOss(str, str2, file, z, onRequestCallBackListener, i2 + 1);
                                } else {
                                    OnRequestCallBackListener onRequestCallBackListener3 = onRequestCallBackListener;
                                    if (onRequestCallBackListener3 != null) {
                                        onRequestCallBackListener3.onFailure(call, "OSS PUT code=" + iCode);
                                    }
                                }
                            }
                            if (responseBodyBody != null) {
                                responseBodyBody.close();
                            }
                        } finally {
                        }
                    } catch (Exception e) {
                        LogToFile.e("OSS PUT 响应处理异常：" + e);
                        int i3 = i;
                        if (i3 < 2) {
                            NetworkUserLoader.this.putFileToOss(str, str2, file, z, onRequestCallBackListener, i3 + 1);
                            return;
                        }
                        OnRequestCallBackListener onRequestCallBackListener4 = onRequestCallBackListener;
                        if (onRequestCallBackListener4 != null) {
                            onRequestCallBackListener4.onFailure(call, e.toString());
                        }
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("OSS PUT 异常：" + e);
            if (onRequestCallBackListener != null) {
                onRequestCallBackListener.onFailure(null, e.toString());
            }
        }
    }

    public void checkTokenValid() {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new CheckTokenResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        try {
            startPostRequst("检查token", 17001, 1019, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.48
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new CheckTokenResponse(-1, str));
                    LogToFile.e("onFailure() ：" + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("检查token响应：" + str);
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new CheckTokenResponse(i, jSONObject.getString("err_msg")));
                        } else {
                            EventBus.getDefault().post(new CheckTokenResponse(i, "ok"));
                            NetworkUserLoader.this.getConfig(new String[0]);
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常：" + e);
                        EventBus.getDefault().post(new CheckTokenResponse(-1, e.toString()));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new CheckTokenResponse(-1, ""));
            LogToFile.e("检查token失败：" + e);
        }
    }

    private void startPostRequst(String str, int i, int i2, Map<String, Object> map, OnRequestCallBackListener onRequestCallBackListener) throws JSONException {
        startPostRequst(str, i, i2, map, onRequestCallBackListener, false, false);
    }

    private void startPostRequst(String str, int i, int i2, Map<String, Object> map, OnRequestCallBackListener onRequestCallBackListener, boolean z) throws JSONException {
        startPostRequst(str, i, i2, map, onRequestCallBackListener, z, false);
    }

    private void startPostRequst(final String str, int i, int i2, Map<String, Object> map, final OnRequestCallBackListener onRequestCallBackListener, boolean z, boolean z2) throws JSONException {
        if (z2 && map != null) {
            HashMap map2 = new HashMap(map);
            applyReqSign(i, i2, map2);
            map = map2;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        String strBuildRequestBody = buildRequestBody(i, i2, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            if (strBuildRequestBody != null && strBuildRequestBody.length() > 4000) {
                strBuildRequestBody = strBuildRequestBody.substring(0, 4000) + "...(truncated,len=" + strBuildRequestBody.length() + ")";
            }
            LogToFile.i(str + ": " + i + ", " + i2 + " -> " + strBuildRequestBody);
            Call callNewCall = this.mClient.newCall(requestBuild);
            this.callList.add(callNewCall);
            if (z) {
                this.logUploadApiCalls.add(callNewCall);
            }
            callNewCall.enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkUserLoader.49
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    if (!iOException.toString().contains("Canceled")) {
                        NetworkUserLoader.notifyUnknownHostIfNeeded(iOException);
                        OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                        if (onRequestCallBackListener2 != null) {
                            onRequestCallBackListener2.onFailure(call, iOException.toString());
                            return;
                        }
                        return;
                    }
                    LogToFile.i("取消请求：" + iOException.toString());
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException {
                    if (response.isSuccessful()) {
                        NetworkUserLoader.this.failCount = 0;
                        ResponseBody responseBodyBody = response.body();
                        if (responseBodyBody != null) {
                            String str2 = new String(responseBodyBody.bytes(), StandardCharsets.UTF_8);
                            try {
                                JSONObject jSONObject = new JSONObject(str2);
                                int i3 = jSONObject.getInt("state");
                                if (i3 == 8000) {
                                    String string = jSONObject.getString("err_msg");
                                    if ("token error".equals(string)) {
                                        LogToFile.i(str2);
                                        LogToFile.i(TextUtils.isEmpty(UserSession.get().getToken()) ? "未登录" : "登录失效");
                                        EventBus.getDefault().post(new LogoutResponse(i3, string, -1));
                                    }
                                    OnRequestCallBackListener onRequestCallBackListener2 = onRequestCallBackListener;
                                    if (onRequestCallBackListener2 != null) {
                                        onRequestCallBackListener2.onFailure(call, string);
                                        return;
                                    }
                                    return;
                                }
                                OnRequestCallBackListener onRequestCallBackListener3 = onRequestCallBackListener;
                                if (onRequestCallBackListener3 != null) {
                                    onRequestCallBackListener3.onResponse(str2);
                                    return;
                                }
                                return;
                            } catch (JSONException e) {
                                LogToFile.e(str + " JSON解析异常：" + e + "，body=" + str2);
                                OnRequestCallBackListener onRequestCallBackListener4 = onRequestCallBackListener;
                                if (onRequestCallBackListener4 != null) {
                                    onRequestCallBackListener4.onFailure(call, e.toString());
                                    return;
                                }
                                return;
                            }
                        }
                        OnRequestCallBackListener onRequestCallBackListener5 = onRequestCallBackListener;
                        if (onRequestCallBackListener5 != null) {
                            onRequestCallBackListener5.onFailure(call, "empty response");
                            return;
                        }
                        return;
                    }
                    OnRequestCallBackListener onRequestCallBackListener6 = onRequestCallBackListener;
                    if (onRequestCallBackListener6 != null) {
                        onRequestCallBackListener6.onFailure(call, response.message());
                    }
                }
            });
        } catch (Exception e) {
            this.failCount = 0;
            notifyUnknownHostIfNeeded(e);
            if (onRequestCallBackListener != null) {
                onRequestCallBackListener.onFailure(null, e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyUnknownHostIfNeeded(Throwable th) {
        if (isUnknownHostError(th)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - sLastUnknownHostEventTime < 1500) {
                return;
            }
            sLastUnknownHostEventTime = jCurrentTimeMillis;
            LogToFile.e("接口请求域名解析失败：" + th);
            EventBus.getDefault().post(new UnknownHostEvent());
        }
    }

    public static boolean isUnknownHostError(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            String message = th.getMessage();
            if ((message != null && (message.contains("Unable to resolve host") || message.contains("No address associated with hostname"))) || th.toString().contains("UnknownHostException")) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static boolean isUnknownHostError(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("UnknownHostException") || str.contains("Unable to resolve host") || str.contains("No address associated with hostname");
    }

    private String getUtcDateString() {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }

    private void applyReqSign(int i, int i2, Map<String, Object> map) {
        map.put("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
        map.put("sign", ReqSigner.sign(i, i2, map));
    }

    private String buildRequestBody(int i, int i2, Map<String, Object> map) throws JSONException {
        TreeMap treeMap = new TreeMap();
        treeMap.put("task", Integer.valueOf(i));
        treeMap.put("task_num", Integer.valueOf(i2));
        treeMap.putAll(map);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("task", treeMap.get("task"));
            jSONObject.put("task_num", treeMap.get("task_num"));
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                putReqParamValue(jSONObject2, entry.getKey(), entry.getValue());
            }
            jSONObject.put("req_param", jSONObject2);
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private void putReqParamValue(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj == null) {
            jSONObject.put(str, JSONObject.NULL);
            return;
        }
        if ((obj instanceof JSONObject) || (obj instanceof JSONArray)) {
            jSONObject.put(str, obj);
            return;
        }
        if (obj instanceof Collection) {
            jSONObject.put(str, toJsonArray((Collection) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, new JSONObject((Map) obj));
        } else if (obj.getClass().isArray()) {
            jSONObject.put(str, new JSONArray(obj));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private JSONArray toJsonArray(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : collection) {
            if (obj == null) {
                jSONArray.put(JSONObject.NULL);
            } else if ((obj instanceof JSONObject) || (obj instanceof JSONArray)) {
                jSONArray.put(obj);
            } else if (obj instanceof Map) {
                jSONArray.put(new JSONObject((Map) obj));
            } else if (obj instanceof Collection) {
                jSONArray.put(toJsonArray((Collection) obj));
            } else {
                jSONArray.put(obj);
            }
        }
        return jSONArray;
    }

    private JSONArray buildPointItemsJsonArray(List<PointlibEntity> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (PointlibEntity pointlibEntity : list) {
            JSONObject jSONObject = new JSONObject();
            String str = pointlibEntity.name;
            if (str == null) {
                str = "";
            }
            jSONObject.put("name", str);
            long jCurrentTimeMillis = pointlibEntity.createTime;
            if (jCurrentTimeMillis <= 0) {
                jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            }
            jSONObject.put("collected_at", jCurrentTimeMillis);
            double d = pointlibEntity.geodeticLat;
            if (d == 0.0d) {
                d = pointlibEntity.lat;
            }
            jSONObject.put("latitude", PointLibCoordUtils.roundLonLat(d));
            double d2 = pointlibEntity.geodeticLon;
            if (d2 == 0.0d) {
                d2 = pointlibEntity.lon;
            }
            jSONObject.put("longitude", PointLibCoordUtils.roundLonLat(d2));
            double d3 = pointlibEntity.geodeticElev;
            if (d3 == 0.0d) {
                d3 = pointlibEntity.elev;
            }
            jSONObject.put("altitude", PointLibCoordUtils.roundElev(d3));
            jSONObject.put("x", pointlibEntity.east);
            jSONObject.put("y", pointlibEntity.north);
            jSONObject.put("z", PointLibCoordUtils.roundElev(pointlibEntity.elev));
            jSONObject.put("solution", pointlibEntity.quality);
            jSONObject.put("hdop", pointlibEntity.hdop);
            jSONObject.put("vdop", pointlibEntity.vdop);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private String getSha256(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
                sb.append(",");
            }
            try {
                byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(sb.substring(0, sb.toString().length() - 1).getBytes(StandardCharsets.UTF_8));
                StringBuilder sb2 = new StringBuilder();
                for (byte b : bArrDigest) {
                    String hexString = Integer.toHexString(b & 255);
                    if (hexString.length() == 1) {
                        sb2.append('0');
                    }
                    sb2.append(hexString);
                }
                return sb2.toString();
            } catch (NoSuchAlgorithmException e) {
                LogToFile.e("getSha256：" + e);
            }
        }
        return "";
    }

    public void createGnssTransParam(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity == null) {
            EventBus.getDefault().post(new GnssTransParamResponse(-1, "参数为空"));
        } else {
            createGnssTransParam(gnssTransParamEntity, gnssTransParamEntity.name, gnssTransParamEntity.paramType, gnssTransParamEntity.buildParamsDetailJsonObject(), gnssTransParamEntity.getControlPointList().isEmpty() ? null : gnssTransParamEntity.buildControlPointsJsonArray());
        }
    }

    private void createGnssTransParam(final GnssTransParamEntity gnssTransParamEntity, String str, int i, JSONObject jSONObject, JSONArray jSONArray) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            GnssTransParamResponse gnssTransParamResponse = new GnssTransParamResponse(8000, "token error");
            gnssTransParamResponse.entity = gnssTransParamEntity;
            gnssTransParamResponse.localDbId = gnssTransParamEntity != null ? gnssTransParamEntity.localId : 0L;
            EventBus.getDefault().post(gnssTransParamResponse);
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("name", str);
        map.put("param_type", Integer.valueOf(i));
        if (jSONObject != null) {
            map.put("params_detail", jSONObject);
        }
        if (jSONArray != null) {
            map.put("control_points", jSONArray);
        }
        try {
            startPostRequst("创建GNSS转换参数", 17002, 1401, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.50
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    GnssTransParamResponse gnssTransParamResponse2 = new GnssTransParamResponse(-1, str2);
                    GnssTransParamEntity gnssTransParamEntity2 = gnssTransParamEntity;
                    gnssTransParamResponse2.entity = gnssTransParamEntity2;
                    gnssTransParamResponse2.localDbId = gnssTransParamEntity2 != null ? gnssTransParamEntity2.localId : 0L;
                    EventBus.getDefault().post(gnssTransParamResponse2);
                    LogToFile.e("createGnssTransParam onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("创建GNSS转换参数响应: " + str2);
                        JSONObject jSONObject2 = new JSONObject(str2);
                        int i2 = jSONObject2.getInt("state");
                        if (i2 != 0) {
                            GnssTransParamResponse gnssTransParamResponse2 = new GnssTransParamResponse(i2, jSONObject2.getString("err_msg"));
                            GnssTransParamEntity gnssTransParamEntity2 = gnssTransParamEntity;
                            gnssTransParamResponse2.entity = gnssTransParamEntity2;
                            gnssTransParamResponse2.localDbId = gnssTransParamEntity2 != null ? gnssTransParamEntity2.localId : 0L;
                            EventBus.getDefault().post(gnssTransParamResponse2);
                            return;
                        }
                        long j = jSONObject2.getLong("id");
                        String string = jSONObject2.getString("uuid");
                        GnssTransParamEntity gnssTransParamEntity3 = gnssTransParamEntity;
                        if (gnssTransParamEntity3 != null) {
                            gnssTransParamEntity3.transParamId = j;
                            gnssTransParamEntity3.transParamUuid = string;
                        }
                        GnssTransParamResponse gnssTransParamResponse3 = new GnssTransParamResponse(i2, "ok", j, string);
                        GnssTransParamEntity gnssTransParamEntity4 = gnssTransParamEntity;
                        gnssTransParamResponse3.entity = gnssTransParamEntity4;
                        gnssTransParamResponse3.localDbId = gnssTransParamEntity4 != null ? gnssTransParamEntity4.localId : 0L;
                        EventBus.getDefault().post(gnssTransParamResponse3);
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        GnssTransParamResponse gnssTransParamResponse4 = new GnssTransParamResponse(-1, e.getMessage());
                        GnssTransParamEntity gnssTransParamEntity5 = gnssTransParamEntity;
                        gnssTransParamResponse4.entity = gnssTransParamEntity5;
                        gnssTransParamResponse4.localDbId = gnssTransParamEntity5 != null ? gnssTransParamEntity5.localId : 0L;
                        EventBus.getDefault().post(gnssTransParamResponse4);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("创建GNSS转换参数失败: " + e);
            GnssTransParamResponse gnssTransParamResponse2 = new GnssTransParamResponse(-1, e.getMessage());
            gnssTransParamResponse2.entity = gnssTransParamEntity;
            gnssTransParamResponse2.localDbId = gnssTransParamEntity != null ? gnssTransParamEntity.localId : 0L;
            EventBus.getDefault().post(gnssTransParamResponse2);
        }
    }

    public void modifyGnssTransParam(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity == null || gnssTransParamEntity.transParamId <= 0) {
            EventBus.getDefault().post(new GnssTransParamResponse(-1, "参数为空"));
        } else {
            modifyGnssTransParam(gnssTransParamEntity.transParamId, gnssTransParamEntity.name, Integer.valueOf(gnssTransParamEntity.paramType), gnssTransParamEntity.buildParamsDetailJsonObject(), gnssTransParamEntity.getControlPointList().isEmpty() ? new JSONArray() : gnssTransParamEntity.buildControlPointsJsonArray());
        }
    }

    public void deleteGnssTransParam(final boolean z, long j) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            if (z) {
                EventBus.getDefault().post(new DeleteGnssTransParamResponse(8000, "token error"));
                return;
            }
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("id", Long.valueOf(j));
        try {
            startPostRequst("删除GNSS转换参数", 17002, 1403, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.51
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    if (z) {
                        EventBus.getDefault().post(new DeleteGnssTransParamResponse(-1, str));
                    }
                    LogToFile.e("deleteGnssTransParam onFailure: " + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("删除GNSS转换参数响应: " + str);
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        String string = jSONObject.getString("err_msg");
                        if (z) {
                            EventBus.getDefault().post(new DeleteGnssTransParamResponse(i, string));
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        if (z) {
                            EventBus.getDefault().post(new DeleteGnssTransParamResponse(-1, e.getMessage()));
                        }
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("删除GNSS转换参数失败: " + e);
            if (z) {
                EventBus.getDefault().post(new DeleteGnssTransParamResponse(-1, e.getMessage()));
            }
        }
    }

    public void modifyGnssTransParam(long j, String str, Integer num, JSONObject jSONObject, JSONArray jSONArray) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new GnssTransParamResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("id", Long.valueOf(j));
        if (str != null && !str.isEmpty()) {
            map.put("name", str);
        }
        if (num != null && num.intValue() >= 0) {
            map.put("param_type", num);
        }
        if (jSONObject != null) {
            map.put("params_detail", jSONObject);
        }
        if (jSONArray != null) {
            map.put("control_points", jSONArray);
        }
        try {
            startPostRequst("修改GNSS转换参数", 17002, 1405, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.52
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new GnssTransParamResponse(-1, str2));
                    LogToFile.e("modifyGnssTransParam onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("修改GNSS转换参数响应: " + str2);
                        JSONObject jSONObject2 = new JSONObject(str2);
                        EventBus.getDefault().post(new GnssTransParamResponse(jSONObject2.getInt("state"), jSONObject2.getString("err_msg")));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        EventBus.getDefault().post(new GnssTransParamResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("修改GNSS转换参数失败: " + e);
            EventBus.getDefault().post(new GnssTransParamResponse(-1, e.getMessage()));
        }
    }

    public void queryGnssTransParam(List<Long> list, List<String> list2, String str, Integer num, long j, long j2, int i, int i2) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryGnssTransParamResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        if (list != null && !list.isEmpty()) {
            map.put("ids", list);
        }
        if (list2 != null && !list2.isEmpty()) {
            map.put("uuids", list2);
        }
        if (str != null) {
            map.put("name", str);
        }
        if (num != null) {
            map.put("param_type", num);
        }
        if (j > 0) {
            map.put("beg_epoch", Long.valueOf(j));
        }
        if (j2 > 0) {
            map.put("end_epoch", Long.valueOf(j2));
        }
        map.put("page", Integer.valueOf(i));
        map.put("per_page_count", Integer.valueOf(i2));
        try {
            startPostRequst("查询GNSS转换参数", 17002, 1407, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.53
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new QueryGnssTransParamResponse(-1, str2));
                    LogToFile.e("queryGnssTransParam onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("查询GNSS转换参数响应: " + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i3 = jSONObject.getInt("state");
                        if (i3 != 0) {
                            EventBus.getDefault().post(new QueryGnssTransParamResponse(i3, jSONObject.getString("err_msg")));
                            return;
                        }
                        long j3 = jSONObject.getLong("total_count");
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        ArrayList arrayList = new ArrayList();
                        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i4);
                            QueryGnssTransParamResponse.GnssTransParamItem gnssTransParamItem = new QueryGnssTransParamResponse.GnssTransParamItem();
                            gnssTransParamItem.id = jSONObject2.getLong("id");
                            gnssTransParamItem.version = jSONObject2.getLong("version");
                            gnssTransParamItem.uuid = jSONObject2.getString("uuid");
                            gnssTransParamItem.createEpoch = jSONObject2.getLong("create_epoch");
                            gnssTransParamItem.updateEpoch = jSONObject2.getLong("update_epoch");
                            gnssTransParamItem.belongUid = jSONObject2.getLong("belong_uid");
                            gnssTransParamItem.state = jSONObject2.getInt("state");
                            gnssTransParamItem.name = jSONObject2.getString("name");
                            gnssTransParamItem.paramType = jSONObject2.getInt("param_type");
                            gnssTransParamItem.paramsDetail = NetworkUserLoader.jsonFieldToString(jSONObject2, "params_detail");
                            gnssTransParamItem.controlPoints = NetworkUserLoader.jsonFieldToString(jSONObject2, "control_points");
                            arrayList.add(gnssTransParamItem);
                        }
                        EventBus.getDefault().post(new QueryGnssTransParamResponse(i3, "ok", j3, arrayList));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        EventBus.getDefault().post(new QueryGnssTransParamResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("查询GNSS转换参数失败: " + e);
            EventBus.getDefault().post(new QueryGnssTransParamResponse(-1, e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String jsonFieldToString(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str) || jSONObject.isNull(str)) {
            return "";
        }
        Object objOpt = jSONObject.opt(str);
        if ((objOpt instanceof JSONObject) || (objOpt instanceof JSONArray)) {
            return objOpt.toString();
        }
        return jSONObject.optString(str, "");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createGnssEngineering(com.qianhe.baselib.bean.EngineeringEntity r9) {
        /*
            r8 = this;
            if (r9 != 0) goto L13
            org.greenrobot.eventbus.EventBus r9 = org.greenrobot.eventbus.EventBus.getDefault()
            com.qianhe.yct.event.CreateEngineeringResponse r0 = new com.qianhe.yct.event.CreateEngineeringResponse
            r1 = -1
            java.lang.String r2 = "参数为空"
            r0.<init>(r1, r2)
            r9.post(r0)
            return
        L13:
            int r0 = r9.conversionParamsType
            if (r0 <= 0) goto L25
            long r0 = r9.transParamId
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L25
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
        L23:
            r3 = r0
            goto L27
        L25:
            r0 = 0
            goto L23
        L27:
            org.json.JSONObject r4 = r8.buildProjectionJson(r9)
            java.lang.String r2 = r9.name
            long r5 = r9.id
            int r7 = r9.currentUsage
            r1 = r8
            r1.createGnssEngineering(r2, r3, r4, r5, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.NetworkUserLoader.createGnssEngineering(com.qianhe.baselib.bean.EngineeringEntity):void");
    }

    private void createGnssEngineering(String str, Long l, JSONObject jSONObject, final long j, int i) {
        String token = UserSession.get().getToken();
        long userId = UserSession.get().getUserId();
        if (TextUtils.isEmpty(token) || userId == 0) {
            EventBus.getDefault().post(new CreateEngineeringResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("belong_uid", Long.valueOf(userId));
        map.put("name", str);
        map.put("is_current", Integer.valueOf(i));
        if (l != null) {
            map.put("trans_param_id", l);
        }
        if (jSONObject != null) {
            map.put("projection", jSONObject);
        }
        try {
            startPostRequst("创建工程", 17002, 1411, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.54
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    CreateEngineeringResponse createEngineeringResponse = new CreateEngineeringResponse(-1, str2);
                    createEngineeringResponse.localDbId = j;
                    EventBus.getDefault().post(createEngineeringResponse);
                    LogToFile.e("createGnssEngineering onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("创建工程响应: " + str2);
                        JSONObject jSONObject2 = new JSONObject(str2);
                        int i2 = jSONObject2.getInt("state");
                        if (i2 != 0) {
                            CreateEngineeringResponse createEngineeringResponse = new CreateEngineeringResponse(i2, jSONObject2.getString("err_msg"));
                            createEngineeringResponse.localDbId = j;
                            EventBus.getDefault().post(createEngineeringResponse);
                        } else {
                            CreateEngineeringResponse createEngineeringResponse2 = new CreateEngineeringResponse(i2, "ok", jSONObject2.getLong("id"), jSONObject2.getString("uuid"), jSONObject2.getLong("gnss_proj_param_id"), jSONObject2.getString("gnss_proj_param_uuid"));
                            createEngineeringResponse2.localDbId = j;
                            EventBus.getDefault().post(createEngineeringResponse2);
                        }
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        CreateEngineeringResponse createEngineeringResponse3 = new CreateEngineeringResponse(-1, e.getMessage());
                        createEngineeringResponse3.localDbId = j;
                        EventBus.getDefault().post(createEngineeringResponse3);
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("创建工程失败: " + e);
            CreateEngineeringResponse createEngineeringResponse = new CreateEngineeringResponse(-1, e.getMessage());
            createEngineeringResponse.localDbId = j;
            EventBus.getDefault().post(createEngineeringResponse);
        }
    }

    public void deleteGnssEngineering(long j) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new CreateEngineeringResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("id", Long.valueOf(j));
        try {
            startPostRequst("删除工程", 17002, 1413, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.55
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    EventBus.getDefault().post(new CreateEngineeringResponse(-1, str));
                    LogToFile.e("deleteGnssEngineering onFailure: " + str);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    try {
                        LogToFile.i("删除工程响应: " + str);
                        JSONObject jSONObject = new JSONObject(str);
                        EventBus.getDefault().post(new CreateEngineeringResponse(jSONObject.getInt("state"), jSONObject.getString("err_msg")));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        EventBus.getDefault().post(new CreateEngineeringResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("删除工程失败: " + e);
            EventBus.getDefault().post(new CreateEngineeringResponse(-1, e.getMessage()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void modifyGnssEngineering(com.qianhe.baselib.bean.EngineeringEntity r14) {
        /*
            r13 = this;
            if (r14 == 0) goto L6f
            long r0 = r14.engineeringId
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 > 0) goto Lb
            goto L6f
        Lb:
            com.qianhe.yct.db.UserSession r0 = com.qianhe.yct.db.UserSession.get()
            java.lang.String r0 = r0.getToken()
            com.qianhe.yct.db.UserSession r1 = com.qianhe.yct.db.UserSession.get()
            long r4 = r1.getUserId()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L42
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 != 0) goto L26
            goto L42
        L26:
            int r0 = r14.conversionParamsType
            if (r0 <= 0) goto L32
            long r0 = r14.transParamId
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L32
            r9 = r0
            goto L33
        L32:
            r9 = r2
        L33:
            org.json.JSONObject r11 = r13.buildProjectionJson(r14)
            long r6 = r14.engineeringId
            java.lang.String r8 = r14.name
            int r12 = r14.currentUsage
            r5 = r13
            r5.modifyGnssEngineering(r6, r8, r9, r11, r12)
            return
        L42:
            long r0 = r14.version
            r2 = 1
            long r0 = r0 + r2
            r14.version = r0
            long r0 = java.lang.System.currentTimeMillis()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r2
            r14.updateTime = r0
            com.qianhe.yct.application.YCTApplication r0 = com.qianhe.yct.application.YCTApplication.getInstance()
            com.qianhe.yct.db.DatabaseManager r0 = com.qianhe.yct.db.DatabaseManager.getInstance(r0)
            r0.updateEngineering(r14)
            org.greenrobot.eventbus.EventBus r14 = org.greenrobot.eventbus.EventBus.getDefault()
            com.qianhe.yct.event.CreateEngineeringResponse r0 = new com.qianhe.yct.event.CreateEngineeringResponse
            r1 = 8000(0x1f40, float:1.121E-41)
            java.lang.String r2 = "token error"
            r0.<init>(r1, r2)
            r14.post(r0)
            return
        L6f:
            org.greenrobot.eventbus.EventBus r14 = org.greenrobot.eventbus.EventBus.getDefault()
            com.qianhe.yct.event.CreateEngineeringResponse r0 = new com.qianhe.yct.event.CreateEngineeringResponse
            r1 = -1
            java.lang.String r2 = "参数为空"
            r0.<init>(r1, r2)
            r14.post(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.NetworkUserLoader.modifyGnssEngineering(com.qianhe.baselib.bean.EngineeringEntity):void");
    }

    public void modifyGnssEngineering(long j, String str, long j2, JSONObject jSONObject, int i) {
        String token = UserSession.get().getToken();
        long userId = UserSession.get().getUserId();
        if (TextUtils.isEmpty(token) || userId == 0) {
            EventBus.getDefault().post(new CreateEngineeringResponse(8000, "token error"));
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (j == this.lastModifyEngineeringId && i == this.lastModifyEngineeringCurrentUsage && jElapsedRealtime - this.lastModifyEngineeringElapsedMs < 2000) {
            LogToFile.i("修改工程去重跳过: id=" + j + ", is_current=" + i);
            return;
        }
        this.lastModifyEngineeringId = j;
        this.lastModifyEngineeringCurrentUsage = i;
        this.lastModifyEngineeringElapsedMs = jElapsedRealtime;
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("belong_uid", Long.valueOf(userId));
        map.put("id", Long.valueOf(j));
        if (str != null && !str.isEmpty()) {
            map.put("name", str);
        }
        map.put("is_current", Integer.valueOf(i));
        map.put("trans_param_id", Long.valueOf(j2));
        if (jSONObject != null) {
            map.put("projection", jSONObject);
        }
        try {
            startPostRequst("修改工程", 17002, 1415, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.56
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new CreateEngineeringResponse(-1, str2));
                    LogToFile.e("modifyGnssEngineering onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("修改工程响应: " + str2);
                        JSONObject jSONObject2 = new JSONObject(str2);
                        EventBus.getDefault().post(new CreateEngineeringResponse(jSONObject2.getInt("state"), jSONObject2.getString("err_msg")));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        EventBus.getDefault().post(new CreateEngineeringResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("修改工程失败: " + e);
            EventBus.getDefault().post(new CreateEngineeringResponse(-1, e.getMessage()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject buildProjectionJson(com.qianhe.baselib.bean.EngineeringEntity r9) throws org.json.JSONException {
        /*
            r8 = this;
            r0 = 0
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3b
            r1.<init>()     // Catch: org.json.JSONException -> L3b
            java.lang.String r2 = "ellipsoid_type"
            int r3 = r9.ellipsoidType     // Catch: org.json.JSONException -> L3b
            r1.put(r2, r3)     // Catch: org.json.JSONException -> L3b
            java.lang.String r2 = "projection_type"
            int r3 = r9.projectionType     // Catch: org.json.JSONException -> L3b
            r1.put(r2, r3)     // Catch: org.json.JSONException -> L3b
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3b
            r2.<init>()     // Catch: org.json.JSONException -> L3b
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3b
            r3.<init>()     // Catch: org.json.JSONException -> L3b
            java.lang.String r4 = "type"
            int r5 = r9.ellipsoidType     // Catch: org.json.JSONException -> L3b
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L3b
            com.qianhe.baselib.bean.EngineeringEntity$CustomEllipsoidParams r4 = r9.customEllipsoidParams     // Catch: org.json.JSONException -> L3b
            if (r4 == 0) goto L3d
            java.lang.String r5 = "a"
            double r6 = r4.a     // Catch: org.json.JSONException -> L3b
            r3.put(r5, r6)     // Catch: org.json.JSONException -> L3b
            java.lang.String r4 = "f"
            com.qianhe.baselib.bean.EngineeringEntity$CustomEllipsoidParams r5 = r9.customEllipsoidParams     // Catch: org.json.JSONException -> L3b
            double r5 = r5.f     // Catch: org.json.JSONException -> L3b
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L3b
            goto L3d
        L3b:
            r9 = move-exception
            goto L8b
        L3d:
            java.lang.String r4 = "ellipsoid"
            r2.put(r4, r3)     // Catch: org.json.JSONException -> L3b
            com.google.gson.Gson r3 = new com.google.gson.Gson     // Catch: org.json.JSONException -> L3b
            r3.<init>()     // Catch: org.json.JSONException -> L3b
            int r4 = r9.projectionType     // Catch: org.json.JSONException -> L3b
            r5 = 1
            if (r4 == r5) goto L6f
            r5 = 2
            if (r4 == r5) goto L61
            r5 = 3
            if (r4 == r5) goto L53
            goto L7d
        L53:
            com.qianhe.baselib.bean.EngineeringEntity$TransverseMercatorParams r9 = r9.transverseMercatorParams     // Catch: org.json.JSONException -> L3b
            if (r9 == 0) goto L7d
            java.lang.String r9 = r3.toJson(r9)     // Catch: org.json.JSONException -> L3b
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3b
            r3.<init>(r9)     // Catch: org.json.JSONException -> L3b
            goto L7e
        L61:
            com.qianhe.baselib.bean.EngineeringEntity$UTMParams r9 = r9.utmParams     // Catch: org.json.JSONException -> L3b
            if (r9 == 0) goto L7d
            java.lang.String r9 = r3.toJson(r9)     // Catch: org.json.JSONException -> L3b
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3b
            r3.<init>(r9)     // Catch: org.json.JSONException -> L3b
            goto L7e
        L6f:
            com.qianhe.baselib.bean.EngineeringEntity$GaussKrugerParams r9 = r9.gaussKrugerParams     // Catch: org.json.JSONException -> L3b
            if (r9 == 0) goto L7d
            java.lang.String r9 = r3.toJson(r9)     // Catch: org.json.JSONException -> L3b
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3b
            r3.<init>(r9)     // Catch: org.json.JSONException -> L3b
            goto L7e
        L7d:
            r3 = r0
        L7e:
            if (r3 == 0) goto L8a
            java.lang.String r9 = "projection"
            r2.put(r9, r3)     // Catch: org.json.JSONException -> L3b
            java.lang.String r9 = "params_detail"
            r1.put(r9, r2)     // Catch: org.json.JSONException -> L3b
        L8a:
            return r1
        L8b:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "构建投影参数JSON失败: "
            r1.append(r2)
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            com.qianhe.baselib.utils.LogToFile.e(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.NetworkUserLoader.buildProjectionJson(com.qianhe.baselib.bean.EngineeringEntity):org.json.JSONObject");
    }

    public void queryEngineeringByUuid(final String str) {
        if (TextUtils.isEmpty(str)) {
            EventBus.getDefault().post(new QueryEngineeringResponse(-1, "engineering_uuid empty", str));
            return;
        }
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryEngineeringResponse(8000, "token error", str));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        map.put("uuids", arrayList);
        map.put("ids", new ArrayList());
        map.put("ellipsoid_type", -1);
        map.put("projection_type", -1);
        map.put("beg_epoch", 0);
        map.put("end_epoch", 0);
        map.put("page", 1);
        map.put("per_page_count", 10);
        try {
            startPostRequst("查询工程", 17002, 1417, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.57
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new QueryEngineeringResponse(-1, str2, str));
                    LogToFile.e("queryEngineeringByUuid onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("按uuid查询工程响应: " + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            EventBus.getDefault().post(new QueryEngineeringResponse(i, jSONObject.getString("err_msg"), str));
                            return;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        if (jSONArray.length() == 0) {
                            EventBus.getDefault().post(new QueryEngineeringResponse(-1, "engineering not found", str));
                            return;
                        }
                        EventBus.getDefault().post(new QueryEngineeringResponse(0, NetworkUserLoader.this.convertGnssEngineeringItemToEntity(NetworkUserLoader.this.parseGnssEngineeringItem(jSONArray.getJSONObject(0))), str));
                    } catch (Exception e) {
                        LogToFile.e("queryEngineeringByUuid 数据解析异常: " + e);
                        EventBus.getDefault().post(new QueryEngineeringResponse(-1, e.getMessage(), str));
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("queryEngineeringByUuid 失败: " + e);
            EventBus.getDefault().post(new QueryEngineeringResponse(-1, e.getMessage(), str));
        }
    }

    public void queryGnssEngineering(List<Long> list, List<String> list2, String str, Integer num, Integer num2, long j, long j2, int i, int i2) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryGnssEngineeringResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        if (list != null && !list.isEmpty()) {
            map.put("ids", list);
        }
        if (list2 != null && !list2.isEmpty()) {
            map.put("uuids", list2);
        }
        if (str != null) {
            map.put("name", str);
        }
        if (num != null) {
            map.put("ellipsoid_type", num);
        }
        if (num2 != null) {
            map.put("projection_type", num2);
        }
        if (j > 0) {
            map.put("beg_epoch", Long.valueOf(j));
        }
        if (j2 > 0) {
            map.put("end_epoch", Long.valueOf(j2));
        }
        map.put("page", Integer.valueOf(i));
        map.put("per_page_count", Integer.valueOf(i2));
        try {
            startPostRequst("查询工程", 17002, 1417, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.58
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    EventBus.getDefault().post(new QueryGnssEngineeringResponse(-1, str2));
                    LogToFile.e("queryGnssEngineering onFailure: " + str2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    try {
                        LogToFile.i("查询工程响应: " + str2);
                        JSONObject jSONObject = new JSONObject(str2);
                        int i3 = jSONObject.getInt("state");
                        if (i3 != 0) {
                            EventBus.getDefault().post(new QueryGnssEngineeringResponse(i3, jSONObject.getString("err_msg")));
                            return;
                        }
                        long j3 = jSONObject.getLong("total_count");
                        JSONArray jSONArray = jSONObject.getJSONArray("results");
                        ArrayList arrayList = new ArrayList();
                        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                            arrayList.add(NetworkUserLoader.this.parseGnssEngineeringItem(jSONArray.getJSONObject(i4)));
                        }
                        EventBus.getDefault().post(new QueryGnssEngineeringResponse(i3, "ok", j3, arrayList));
                    } catch (Exception e) {
                        LogToFile.e("数据解析异常: " + e);
                        EventBus.getDefault().post(new QueryGnssEngineeringResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            LogToFile.e("查询工程失败: " + e);
            EventBus.getDefault().post(new QueryGnssEngineeringResponse(-1, e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QueryGnssEngineeringResponse.GnssEngineeringItem parseGnssEngineeringItem(JSONObject jSONObject) throws JSONException {
        QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem = new QueryGnssEngineeringResponse.GnssEngineeringItem();
        gnssEngineeringItem.id = jSONObject.getLong("id");
        gnssEngineeringItem.version = jSONObject.getLong("version");
        gnssEngineeringItem.uuid = jSONObject.getString("uuid");
        gnssEngineeringItem.createEpoch = jSONObject.getLong("create_epoch");
        gnssEngineeringItem.updateEpoch = jSONObject.getLong("update_epoch");
        gnssEngineeringItem.belongUid = jSONObject.getLong("belong_uid");
        gnssEngineeringItem.state = jSONObject.getInt("state");
        gnssEngineeringItem.name = jSONObject.getString("name");
        gnssEngineeringItem.currentUsage = jSONObject.getInt("is_current");
        gnssEngineeringItem.projectionParamId = jSONObject.getLong("projection_param_id");
        gnssEngineeringItem.transParamId = jSONObject.getLong("trans_param_id");
        if (jSONObject.has("projection")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("projection");
            QueryGnssEngineeringResponse.Projection projection = new QueryGnssEngineeringResponse.Projection();
            projection.id = jSONObject2.getLong("id");
            projection.uuid = jSONObject2.getString("uuid");
            projection.ellipsoidType = jSONObject2.getInt("ellipsoid_type");
            projection.projectionType = jSONObject2.getInt("projection_type");
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("params_detail");
            if (jSONObjectOptJSONObject != null) {
                projection.paramsDetail = jSONObjectOptJSONObject.toString();
            } else {
                projection.paramsDetail = jSONObject2.optString("params_detail");
            }
            gnssEngineeringItem.projection = projection;
        }
        if (jSONObject.has("trans_param") && gnssEngineeringItem.transParamId > 0) {
            JSONObject jSONObject3 = jSONObject.getJSONObject("trans_param");
            QueryGnssEngineeringResponse.TransParam transParam = new QueryGnssEngineeringResponse.TransParam();
            transParam.id = jSONObject3.getLong("id");
            transParam.uuid = jSONObject3.getString("uuid");
            transParam.name = jSONObject3.getString("name");
            transParam.paramType = jSONObject3.getInt("param_type");
            transParam.paramsDetail = jSONObject3.optString("params_detail");
            transParam.controlPoints = jSONObject3.optString("control_points");
            gnssEngineeringItem.transParam = transParam;
        }
        return gnssEngineeringItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EngineeringEntity convertGnssEngineeringItemToEntity(QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem) {
        EngineeringEntity engineeringEntity = new EngineeringEntity();
        if (gnssEngineeringItem == null) {
            return engineeringEntity;
        }
        engineeringEntity.engineeringId = gnssEngineeringItem.id;
        engineeringEntity.engineeringUuid = gnssEngineeringItem.uuid;
        engineeringEntity.createTime = gnssEngineeringItem.createEpoch;
        engineeringEntity.updateTime = gnssEngineeringItem.updateEpoch;
        engineeringEntity.version = gnssEngineeringItem.version;
        engineeringEntity.name = gnssEngineeringItem.name;
        engineeringEntity.currentUsage = gnssEngineeringItem.currentUsage;
        QueryGnssEngineeringResponse.Projection projection = gnssEngineeringItem.projection;
        if (projection != null) {
            engineeringEntity.ellipsoidType = projection.ellipsoidType;
            engineeringEntity.projectionType = projection.projectionType;
            String str = projection.paramsDetail;
            if (!TextUtils.isEmpty(str)) {
                EngineeringProjectionParser.applyParamsDetail(engineeringEntity, str);
            }
        }
        QueryGnssEngineeringResponse.TransParam transParam = gnssEngineeringItem.transParam;
        if (transParam != null) {
            long j = gnssEngineeringItem.transParamId;
            if (j > 0) {
                engineeringEntity.transParamId = j;
                engineeringEntity.conversionParamsType = transParam.paramType;
                engineeringEntity.transParamLocalId = 0L;
                GnssTransParamEntity gnssTransParamEntity = new GnssTransParamEntity();
                QueryGnssEngineeringResponse.TransParam transParam2 = gnssEngineeringItem.transParam;
                gnssTransParamEntity.transParamId = transParam2.id;
                gnssTransParamEntity.transParamUuid = transParam2.uuid;
                gnssTransParamEntity.name = transParam2.name;
                gnssTransParamEntity.paramType = transParam2.paramType;
                gnssTransParamEntity.paramsDetail = transParam2.paramsDetail;
                gnssTransParamEntity.controlPointsJson = transParam2.controlPoints;
                gnssTransParamEntity.getControlPointList();
                gnssTransParamEntity.normalizeParamsDetailScaleToK();
                engineeringEntity.transParam = gnssTransParamEntity;
                return engineeringEntity;
            }
        }
        engineeringEntity.conversionParamsType = 0;
        engineeringEntity.transParamId = 0L;
        engineeringEntity.transParamLocalId = 0L;
        engineeringEntity.transParam = null;
        return engineeringEntity;
    }

    private void putPointGroupBelongEngineering(Map<String, Object> map, PointGroupEntity pointGroupEntity) {
        if (map == null || pointGroupEntity == null) {
            return;
        }
        long j = pointGroupEntity.belongEngineeringId;
        if (j > 0) {
            map.put("belong_engineering_id", Long.valueOf(j));
        }
        if (TextUtils.isEmpty(pointGroupEntity.engineeringUuid)) {
            return;
        }
        map.put("engineering_uuid", pointGroupEntity.engineeringUuid);
    }

    public void createPointGroup(final PointGroupEntity pointGroupEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token) || pointGroupEntity == null) {
            PointGroupResponse pointGroupResponse = new PointGroupResponse(8000, "token error");
            pointGroupResponse.entity = pointGroupEntity;
            pointGroupResponse.groupLocalId = pointGroupEntity != null ? pointGroupEntity.groupLocalId : 0L;
            EventBus.getDefault().post(pointGroupResponse);
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        Object obj = pointGroupEntity.name;
        if (obj == null) {
            obj = "";
        }
        map.put("name", obj);
        if (!TextUtils.isEmpty(pointGroupEntity.remark)) {
            map.put("remark", pointGroupEntity.remark);
        }
        putPointGroupBelongEngineering(map, pointGroupEntity);
        try {
            startPostRequst("创建点库组", 17002, 1421, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.59
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("创建点库组失败：" + str);
                    PointGroupResponse pointGroupResponse2 = new PointGroupResponse(-1, str);
                    PointGroupEntity pointGroupEntity2 = pointGroupEntity;
                    pointGroupResponse2.entity = pointGroupEntity2;
                    pointGroupResponse2.groupLocalId = pointGroupEntity2.groupLocalId;
                    EventBus.getDefault().post(pointGroupResponse2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) throws JSONException {
                    LogToFile.i("创建点库组响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int i = jSONObject.getInt("state");
                        if (i != 0) {
                            PointGroupResponse pointGroupResponse2 = new PointGroupResponse(i, jSONObject.optString("err_msg", ""));
                            PointGroupEntity pointGroupEntity2 = pointGroupEntity;
                            pointGroupResponse2.entity = pointGroupEntity2;
                            pointGroupResponse2.groupLocalId = pointGroupEntity2.groupLocalId;
                            EventBus.getDefault().post(pointGroupResponse2);
                            return;
                        }
                        long j = jSONObject.getLong("id");
                        String strOptString = jSONObject.optString("uuid", "");
                        PointGroupEntity pointGroupEntity3 = pointGroupEntity;
                        pointGroupEntity3.groupId = j;
                        pointGroupEntity3.groupUuid = strOptString;
                        pointGroupEntity3.belongUid = UserSession.get().getUserId();
                        PointGroupResponse pointGroupResponse3 = new PointGroupResponse(i, "ok", j, strOptString);
                        PointGroupEntity pointGroupEntity4 = pointGroupEntity;
                        pointGroupResponse3.entity = pointGroupEntity4;
                        pointGroupResponse3.groupLocalId = pointGroupEntity4.groupLocalId;
                        EventBus.getDefault().post(pointGroupResponse3);
                    } catch (Exception e) {
                        PointGroupResponse pointGroupResponse4 = new PointGroupResponse(-1, e.getMessage());
                        PointGroupEntity pointGroupEntity5 = pointGroupEntity;
                        pointGroupResponse4.entity = pointGroupEntity5;
                        pointGroupResponse4.groupLocalId = pointGroupEntity5.groupLocalId;
                        EventBus.getDefault().post(pointGroupResponse4);
                    }
                }
            });
        } catch (Exception e) {
            PointGroupResponse pointGroupResponse2 = new PointGroupResponse(-1, e.getMessage());
            pointGroupResponse2.entity = pointGroupEntity;
            pointGroupResponse2.groupLocalId = pointGroupEntity.groupLocalId;
            EventBus.getDefault().post(pointGroupResponse2);
        }
    }

    public void deletePointGroup(long j) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token) || j <= 0) {
            EventBus.getDefault().post(new PointGroupResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("id", Long.valueOf(j));
        try {
            startPostRequst("删除点库组", 17002, 1423, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.60
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("删除点库组失败：" + str);
                    EventBus.getDefault().post(new PointGroupResponse(-1, str));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) {
                    LogToFile.i("删除点库组响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        EventBus.getDefault().post(new PointGroupResponse(jSONObject.getInt("state"), jSONObject.optString("err_msg", "")));
                    } catch (Exception e) {
                        EventBus.getDefault().post(new PointGroupResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new PointGroupResponse(-1, e.getMessage()));
        }
    }

    public void modifyPointGroup(final PointGroupEntity pointGroupEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token) || pointGroupEntity == null || pointGroupEntity.groupId <= 0) {
            PointGroupResponse pointGroupResponse = new PointGroupResponse(8000, "token error");
            pointGroupResponse.entity = pointGroupEntity;
            pointGroupResponse.groupLocalId = pointGroupEntity != null ? pointGroupEntity.groupLocalId : 0L;
            EventBus.getDefault().post(pointGroupResponse);
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("id", Long.valueOf(pointGroupEntity.groupId));
        if (!TextUtils.isEmpty(pointGroupEntity.name)) {
            map.put("name", pointGroupEntity.name);
        }
        Object obj = pointGroupEntity.remark;
        if (obj != null) {
            map.put("remark", obj);
        }
        putPointGroupBelongEngineering(map, pointGroupEntity);
        try {
            startPostRequst("修改点库组", 17002, 1425, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.61
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("修改点库组失败：" + str);
                    PointGroupResponse pointGroupResponse2 = new PointGroupResponse(-1, str);
                    PointGroupEntity pointGroupEntity2 = pointGroupEntity;
                    pointGroupResponse2.entity = pointGroupEntity2;
                    pointGroupResponse2.groupLocalId = pointGroupEntity2.groupLocalId;
                    EventBus.getDefault().post(pointGroupResponse2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) {
                    LogToFile.i("修改点库组响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        PointGroupResponse pointGroupResponse2 = new PointGroupResponse(jSONObject.getInt("state"), jSONObject.optString("err_msg", ""));
                        PointGroupEntity pointGroupEntity2 = pointGroupEntity;
                        pointGroupResponse2.entity = pointGroupEntity2;
                        pointGroupResponse2.groupLocalId = pointGroupEntity2.groupLocalId;
                        EventBus.getDefault().post(pointGroupResponse2);
                    } catch (Exception e) {
                        PointGroupResponse pointGroupResponse3 = new PointGroupResponse(-1, e.getMessage());
                        PointGroupEntity pointGroupEntity3 = pointGroupEntity;
                        pointGroupResponse3.entity = pointGroupEntity3;
                        pointGroupResponse3.groupLocalId = pointGroupEntity3.groupLocalId;
                        EventBus.getDefault().post(pointGroupResponse3);
                    }
                }
            });
        } catch (Exception e) {
            PointGroupResponse pointGroupResponse2 = new PointGroupResponse(-1, e.getMessage());
            pointGroupResponse2.entity = pointGroupEntity;
            pointGroupResponse2.groupLocalId = pointGroupEntity.groupLocalId;
            EventBus.getDefault().post(pointGroupResponse2);
        }
    }

    public void queryPointGroup(List<Long> list, List<String> list2, String str, long j, long j2, int i, int i2) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryPointGroupResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("ids", list != null ? list : new ArrayList());
        map.put("uuids", list2 != null ? list2 : new ArrayList());
        if (!TextUtils.isEmpty(str)) {
            map.put("name", str);
        }
        map.put("beg_epoch", Long.valueOf(j));
        map.put("end_epoch", Long.valueOf(j2));
        map.put("page", Integer.valueOf(i));
        map.put("per_page_count", Integer.valueOf(i2));
        try {
            startPostRequst("查询点库组", 17002, 1427, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.62
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    LogToFile.e("查询点库组失败：" + str2);
                    EventBus.getDefault().post(new QueryPointGroupResponse(-1, str2));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    LogToFile.i("查询点库组响应：" + str2);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int i3 = jSONObject.getInt("state");
                        if (i3 != 0) {
                            EventBus.getDefault().post(new QueryPointGroupResponse(i3, jSONObject.optString("err_msg", "")));
                            return;
                        }
                        long jOptLong = jSONObject.optLong("total_count", 0L);
                        ArrayList arrayList = new ArrayList();
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("results");
                        if (jSONArrayOptJSONArray != null) {
                            for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i4);
                                QueryPointGroupResponse.PointGroupItem pointGroupItem = new QueryPointGroupResponse.PointGroupItem();
                                pointGroupItem.id = jSONObject2.optLong("id", 0L);
                                pointGroupItem.version = jSONObject2.optLong("version", 0L);
                                pointGroupItem.uuid = jSONObject2.optString("uuid", "");
                                pointGroupItem.createEpoch = jSONObject2.optLong("create_epoch", 0L);
                                pointGroupItem.updateEpoch = jSONObject2.optLong("update_epoch", 0L);
                                pointGroupItem.state = jSONObject2.optInt("state", 0);
                                pointGroupItem.name = jSONObject2.optString("name", "");
                                pointGroupItem.remark = jSONObject2.optString("remark", "");
                                pointGroupItem.belongEngineeringId = jSONObject2.optLong("belong_engineering_id", 0L);
                                pointGroupItem.engineeringUuid = jSONObject2.optString("engineering_uuid", "");
                                arrayList.add(pointGroupItem);
                            }
                        }
                        EventBus.getDefault().post(new QueryPointGroupResponse(i3, "ok", jOptLong, arrayList));
                    } catch (Exception e) {
                        EventBus.getDefault().post(new QueryPointGroupResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new QueryPointGroupResponse(-1, e.getMessage()));
        }
    }

    public void addPoints(PointGroupEntity pointGroupEntity, List<PointlibEntity> list) {
        if (pointGroupEntity != null && pointGroupEntity.groupId > 0 && list != null && !list.isEmpty()) {
            final List<PointlibEntity> arrayList = new ArrayList<>();
            for (PointlibEntity pointlibEntity : list) {
                if (pointlibEntity != null) {
                    long j = pointlibEntity.id;
                    if (j > 0 && pointlibEntity.pointId <= 0 && !this.uploadingPointLocalIds.contains(Long.valueOf(j))) {
                        arrayList.add(pointlibEntity);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                String token = UserSession.get().getToken();
                if (TextUtils.isEmpty(token)) {
                    EventBus.getDefault().post(new PointSyncResponse(8000, "token error"));
                    return;
                }
                Iterator<PointlibEntity> it = arrayList.iterator();
                while (it.hasNext()) {
                    this.uploadingPointLocalIds.add(Long.valueOf(it.next().id));
                }
                Map<String, Object> map = new HashMap<>();
                map.put("token", token);
                map.put("group_id", Long.valueOf(pointGroupEntity.groupId));
                try {
                    map.put("points", buildPointItemsJsonArray(arrayList));
                } catch (Exception e) {
                    e = e;
                }
                try {
                    startPostRequst("添加点", 17002, 1431, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.63
                        @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                        public void onFailure(Call call, String str) {
                            NetworkUserLoader.this.clearUploadingPointLocalIds(arrayList);
                            LogToFile.e("添加点失败：" + str);
                            PointSyncResponse pointSyncResponse = new PointSyncResponse(-1, str);
                            pointSyncResponse.entities = arrayList;
                            EventBus.getDefault().post(pointSyncResponse);
                        }

                        @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                        public void onResponse(String str) throws JSONException {
                            JSONArray jSONArrayOptJSONArray;
                            PointlibEntity pointlibEntity2;
                            LogToFile.i("添加点响应：" + str);
                            try {
                                JSONObject jSONObject = new JSONObject(str);
                                int i = jSONObject.getInt("state");
                                PointSyncResponse pointSyncResponse = new PointSyncResponse(i, jSONObject.optString("err_msg", ""));
                                pointSyncResponse.entities = arrayList;
                                if (i == 0 && (jSONArrayOptJSONArray = jSONObject.optJSONArray("ids")) != null) {
                                    pointSyncResponse.ids = new ArrayList();
                                    DatabaseManager databaseManager = DatabaseManager.getInstance(YCTApplication.getInstance());
                                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                        long j2 = jSONArrayOptJSONArray.getLong(i2);
                                        pointSyncResponse.ids.add(Long.valueOf(j2));
                                        if (i2 < arrayList.size() && (pointlibEntity2 = (PointlibEntity) arrayList.get(i2)) != null) {
                                            long j3 = pointlibEntity2.id;
                                            if (j3 > 0) {
                                                databaseManager.updatePointServerId(j3, j2);
                                                pointlibEntity2.pointId = j2;
                                            }
                                        }
                                    }
                                }
                                NetworkUserLoader.this.clearUploadingPointLocalIds(arrayList);
                                EventBus.getDefault().post(pointSyncResponse);
                            } catch (Exception e2) {
                                NetworkUserLoader.this.clearUploadingPointLocalIds(arrayList);
                                PointSyncResponse pointSyncResponse2 = new PointSyncResponse(-1, e2.getMessage());
                                pointSyncResponse2.entities = arrayList;
                                EventBus.getDefault().post(pointSyncResponse2);
                            }
                        }
                    });
                } catch (Exception e2) {
                    e = e2;
                    Exception exc = e;
                    clearUploadingPointLocalIds(arrayList);
                    PointSyncResponse pointSyncResponse = new PointSyncResponse(-1, exc.getMessage());
                    pointSyncResponse.entities = arrayList;
                    EventBus.getDefault().post(pointSyncResponse);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUploadingPointLocalIds(List<PointlibEntity> list) {
        if (list == null) {
            return;
        }
        for (PointlibEntity pointlibEntity : list) {
            if (pointlibEntity != null) {
                long j = pointlibEntity.id;
                if (j > 0) {
                    this.uploadingPointLocalIds.remove(Long.valueOf(j));
                }
            }
        }
    }

    public void addPoint(PointGroupEntity pointGroupEntity, PointlibEntity pointlibEntity) {
        if (pointlibEntity == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(pointlibEntity);
        addPoints(pointGroupEntity, arrayList);
    }

    public void deletePoints(List<Long> list) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token) || list == null || list.isEmpty()) {
            EventBus.getDefault().post(new PointSyncResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("ids", list);
        try {
            startPostRequst("删除点", 17002, 1433, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.64
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("删除点失败：" + str);
                    EventBus.getDefault().post(new PointSyncResponse(-1, str));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) {
                    LogToFile.i("删除点响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        EventBus.getDefault().post(new PointSyncResponse(jSONObject.getInt("state"), jSONObject.optString("err_msg", "")));
                    } catch (Exception e) {
                        EventBus.getDefault().post(new PointSyncResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new PointSyncResponse(-1, e.getMessage()));
        }
    }

    public void modifyPoint(final PointlibEntity pointlibEntity) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token) || pointlibEntity == null || pointlibEntity.pointId <= 0) {
            PointSyncResponse pointSyncResponse = new PointSyncResponse(8000, "token error");
            pointSyncResponse.entity = pointlibEntity;
            EventBus.getDefault().post(pointSyncResponse);
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        map.put("id", Long.valueOf(pointlibEntity.pointId));
        map.put("name", pointlibEntity.name);
        long jCurrentTimeMillis = pointlibEntity.createTime;
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        map.put("collected_at", Long.valueOf(jCurrentTimeMillis));
        double d = pointlibEntity.geodeticLat;
        if (d == 0.0d) {
            d = pointlibEntity.lat;
        }
        map.put("latitude", Double.valueOf(PointLibCoordUtils.roundLonLat(d)));
        double d2 = pointlibEntity.geodeticLon;
        if (d2 == 0.0d) {
            d2 = pointlibEntity.lon;
        }
        map.put("longitude", Double.valueOf(PointLibCoordUtils.roundLonLat(d2)));
        double d3 = pointlibEntity.geodeticElev;
        if (d3 == 0.0d) {
            d3 = pointlibEntity.elev;
        }
        map.put("altitude", Double.valueOf(PointLibCoordUtils.roundElev(d3)));
        map.put("x", Double.valueOf(pointlibEntity.east));
        map.put("y", Double.valueOf(pointlibEntity.north));
        map.put("z", Double.valueOf(PointLibCoordUtils.roundElev(pointlibEntity.elev)));
        map.put("solution", Integer.valueOf(pointlibEntity.quality));
        map.put("hdop", Double.valueOf(pointlibEntity.hdop));
        map.put("vdop", Double.valueOf(pointlibEntity.vdop));
        try {
            startPostRequst("修改点", 17002, 1435, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.65
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str) {
                    LogToFile.e("修改点失败：" + str);
                    PointSyncResponse pointSyncResponse2 = new PointSyncResponse(-1, str);
                    pointSyncResponse2.entity = pointlibEntity;
                    EventBus.getDefault().post(pointSyncResponse2);
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str) {
                    LogToFile.i("修改点响应：" + str);
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        PointSyncResponse pointSyncResponse2 = new PointSyncResponse(jSONObject.getInt("state"), jSONObject.optString("err_msg", ""));
                        pointSyncResponse2.entity = pointlibEntity;
                        EventBus.getDefault().post(pointSyncResponse2);
                    } catch (Exception e) {
                        PointSyncResponse pointSyncResponse3 = new PointSyncResponse(-1, e.getMessage());
                        pointSyncResponse3.entity = pointlibEntity;
                        EventBus.getDefault().post(pointSyncResponse3);
                    }
                }
            });
        } catch (Exception e) {
            PointSyncResponse pointSyncResponse2 = new PointSyncResponse(-1, e.getMessage());
            pointSyncResponse2.entity = pointlibEntity;
            EventBus.getDefault().post(pointSyncResponse2);
        }
    }

    public void queryPoints(final long j, List<Long> list, String str, long j2, long j3, int i, int i2) {
        String token = UserSession.get().getToken();
        if (TextUtils.isEmpty(token)) {
            EventBus.getDefault().post(new QueryPointResponse(8000, "token error"));
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        if (j > 0) {
            map.put("group_id", Long.valueOf(j));
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        map.put("ids", list);
        if (!TextUtils.isEmpty(str)) {
            map.put("name", str);
        }
        map.put("beg_collected_at", Long.valueOf(j2));
        map.put("end_collected_at", Long.valueOf(j3));
        map.put("page", Integer.valueOf(i));
        map.put("per_page_count", Integer.valueOf(i2));
        try {
            startPostRequst("查询点", 17002, 1437, map, new OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.NetworkUserLoader.66
                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onFailure(Call call, String str2) {
                    LogToFile.e("查询点失败：" + str2);
                    EventBus.getDefault().post(new QueryPointResponse(-1, str2));
                }

                @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
                public void onResponse(String str2) throws JSONException {
                    LogToFile.i("查询点响应：" + str2);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int i3 = jSONObject.getInt("state");
                        if (i3 != 0) {
                            EventBus.getDefault().post(new QueryPointResponse(i3, jSONObject.optString("err_msg", "")));
                            return;
                        }
                        long j4 = 0;
                        long jOptLong = jSONObject.optLong("total_count", 0L);
                        ArrayList arrayList = new ArrayList();
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("results");
                        if (jSONArrayOptJSONArray != null) {
                            int i4 = 0;
                            while (i4 < jSONArrayOptJSONArray.length()) {
                                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i4);
                                QueryPointResponse.PointItem pointItem = new QueryPointResponse.PointItem();
                                pointItem.id = jSONObject2.optLong("id", j4);
                                pointItem.groupId = jSONObject2.optLong("group_id", j4);
                                pointItem.name = jSONObject2.optString("name", "");
                                pointItem.collectedAt = jSONObject2.optLong("collected_at", j4);
                                pointItem.latitude = jSONObject2.optDouble("latitude", 0.0d);
                                pointItem.longitude = jSONObject2.optDouble("longitude", 0.0d);
                                pointItem.altitude = jSONObject2.optDouble("altitude", 0.0d);
                                pointItem.x = jSONObject2.optDouble("x", 0.0d);
                                pointItem.y = jSONObject2.optDouble("y", 0.0d);
                                pointItem.z = jSONObject2.optDouble("z", 0.0d);
                                pointItem.solution = jSONObject2.optInt("solution", 0);
                                pointItem.hdop = jSONObject2.optDouble("hdop", 0.0d);
                                pointItem.vdop = jSONObject2.optDouble("vdop", 0.0d);
                                arrayList.add(pointItem);
                                i4++;
                                j4 = 0;
                            }
                        }
                        QueryPointResponse queryPointResponse = new QueryPointResponse(i3, "ok", jOptLong, arrayList);
                        queryPointResponse.groupId = j;
                        EventBus.getDefault().post(queryPointResponse);
                    } catch (Exception e) {
                        EventBus.getDefault().post(new QueryPointResponse(-1, e.getMessage()));
                    }
                }
            });
        } catch (Exception e) {
            EventBus.getDefault().post(new QueryPointResponse(-1, e.getMessage()));
        }
    }
}
