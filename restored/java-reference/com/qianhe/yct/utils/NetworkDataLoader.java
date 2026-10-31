package com.qianhe.yct.utils;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.RTKRegisterResult;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.event.ApkDownloadUrlResponse;
import com.qianhe.yct.event.ApkListResponse;
import com.qianhe.yct.event.DealerResponse;
import com.qianhe.yct.event.FirmwareFileInfoResponse;
import com.qianhe.yct.event.FirmwareResponse;
import com.qianhe.yct.event.RequstRegisterResult;
import com.qianhe.yct.utils.AppUpgrader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.KeyManagementException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import net.lingala.zip4j.util.InternalZipConstants;
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
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NetworkDataLoader {
    private static NetworkDataLoader INSTANCE = null;
    private static String URL = "https://dinfo.wanknox.com/api/request";
    private Call apkDownloadCall;
    private int failCount;
    private Call fmwDownloadCall;
    private Call fmwListCall;
    private final OkHttpClient mClient;
    private final SharedPreferences mSp = YCTApplication.getInstance().getSharedPreferences("sp", 0);
    private boolean requestApkList;
    private boolean startDownLoad;

    public interface ProgressListener {
        void onError();

        void update(long j, long j2, boolean z);
    }

    public static synchronized NetworkDataLoader getInstance() {
        try {
            if (INSTANCE == null) {
                URL = ServerEnvHelper.resolveApiUrl("https://dinfo.wanknox.com/api/request");
                INSTANCE = new NetworkDataLoader();
                LogToFile.i("URL：" + URL);
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public void cancelRequest() {
        Call call = this.fmwDownloadCall;
        if (call != null) {
            call.cancel();
        }
        Call call2 = this.fmwListCall;
        if (call2 != null) {
            call2.cancel();
        }
        INSTANCE = null;
    }

    public void resetFmwListRequestState() {
        Call call = this.fmwListCall;
        if (call != null) {
            call.cancel();
            this.fmwListCall = null;
        }
        this.failCount = 0;
    }

    private NetworkDataLoader() {
        this.mClient = ServerEnvHelper.isTestEnv() ? getUnsafeOkHttpClient() : new OkHttpClient();
    }

    public static OkHttpClient getUnsafeOkHttpClient() throws NoSuchAlgorithmException, KeyManagementException {
        try {
            TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.qianhe.yct.utils.NetworkDataLoader.1
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
            HostnameVerifier hostnameVerifier = new HostnameVerifier() { // from class: com.qianhe.yct.utils.NetworkDataLoader.2
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            };
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(hostnameVerifier);
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.qianhe.yct.utils.NetworkDataLoader$$ExternalSyntheticLambda0
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public final void log(String str) {
                    LogToFile.logcat(3, "OkHttp", str);
                }
            });
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.connectTimeout(30L, timeUnit);
            builder.readTimeout(30L, timeUnit);
            builder.writeTimeout(30L, timeUnit);
            return builder.build();
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.i("创建忽略SSL的OkHttpClient失败" + e);
            throw new RuntimeException();
        }
    }

    public void getRegisterInfo(final DeviceType deviceType, final String str) throws JSONException {
        HashMap map = new HashMap();
        map.put("sn", str);
        String strBuildRequestBody = buildRequestBody(12202, 3, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 注册码信息 " + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.3
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getRegisterInfo(deviceType, str);
                    } else {
                        LogToFile.i("请求注册码信息失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException, IOException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("获取注册码信息响应：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                int i = jSONObject.getInt("state");
                                String string = jSONObject.getString("err_msg");
                                if (i != 0) {
                                    EventBus.getDefault().post(new RequstRegisterResult(string));
                                    return;
                                }
                                String string2 = jSONObject.getString("regist_info");
                                if (!TextUtils.isEmpty(string2) && !"null".equals(string2)) {
                                    JSONObject jSONObject2 = new JSONObject(string2);
                                    jSONObject2.getString("expire_datetime");
                                    jSONObject2.getString("apply_datetime");
                                    String string3 = jSONObject2.getString("regist_code");
                                    String string4 = NetworkDataLoader.this.mSp.getString(deviceType.getType() + "_" + str, "");
                                    if (!string4.equals(string3)) {
                                        EventBus.getDefault().post(new OrderBean(deviceType, "SET,REGISTER," + string3));
                                    } else {
                                        EventBus.getDefault().post(new RTKRegisterResult(deviceType, string4, "ok"));
                                    }
                                }
                                String string5 = jSONObject.getString("feature_info");
                                if (TextUtils.isEmpty(string5) || "null".equals(string5)) {
                                    return;
                                }
                                JSONObject jSONObject3 = new JSONObject(string5);
                                jSONObject3.getString("apply_datetime");
                                String string6 = jSONObject3.getString("feature_code");
                                EventBus.getDefault().post(new OrderBean(deviceType, "SET,FEATURE_CODE," + string6));
                                return;
                            } catch (JSONException e) {
                                LogToFile.e("getRegisterInfo() onResponse：" + e);
                                return;
                            }
                        }
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getRegisterInfo(deviceType, str);
                    } else {
                        LogToFile.i("getRegisterInfo()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("getRegisterInfo()异常：" + e);
        }
    }

    public void getDealerList() throws JSONException {
        String string = this.mSp.getString("deviceSn", "");
        HashMap map = new HashMap();
        map.put("sn", string);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(buildRequestBody(12202, 1, map), MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 getDealerList()");
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.4
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getDealerList();
                    } else {
                        LogToFile.i("getDealerList()失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException, IOException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("经销商列表：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                int i = jSONObject.getInt("state");
                                jSONObject.getString("err_msg");
                                if (i != 0) {
                                    EventBus.getDefault().post(new DealerResponse());
                                } else {
                                    DealerResponse dealerResponse = (DealerResponse) new Gson().fromJson(strString, new TypeToken<DealerResponse>() { // from class: com.qianhe.yct.utils.NetworkDataLoader.4.1
                                    }.getType());
                                    if (dealerResponse != null) {
                                        EventBus.getDefault().post(dealerResponse);
                                    }
                                }
                                return;
                            } catch (JSONException e) {
                                LogToFile.e("getDealerList() onResponse：" + e);
                                return;
                            }
                        }
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getDealerList();
                    } else {
                        LogToFile.i("getDealerList()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("getDealerList()异常：" + e);
        }
    }

    public void getFirmwareList(final DeviceType deviceType, final String str, final String str2, final boolean z) {
        String string;
        if (deviceType == DeviceType.BASE) {
            string = this.mSp.getString("base_deviceSn", "");
        } else {
            string = this.mSp.getString("deviceSn", "");
        }
        if (TextUtils.isEmpty(string)) {
            FirmwareResponse firmwareResponse = new FirmwareResponse();
            firmwareResponse.err_msg = LanguagePrefs.getString(YCTApplication.getInstance(), R$string.deviceSn_empty);
            EventBus.getDefault().post(firmwareResponse);
            return;
        }
        deviceType.getType();
        this.failCount = 0;
        Call call = this.fmwListCall;
        if (call != null) {
            call.cancel();
            this.fmwListCall = null;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("sn", string);
        map.put("pn_list", str);
        map.put("version_list", str2);
        map.put("unpacked_fmw", Integer.valueOf(z ? 1 : 0));
        final String strBuildRequestBody = buildRequestBody(12202, 5, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 getFirmwareList()" + strBuildRequestBody);
            Call callNewCall = this.mClient.newCall(requestBuild);
            this.fmwListCall = callNewCall;
            callNewCall.enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.5
                @Override // okhttp3.Callback
                public void onFailure(Call call2, IOException iOException) {
                    if (call2.isCanceled()) {
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getFirmwareList(deviceType, str, str2, z);
                        return;
                    }
                    LogToFile.i("getFirmwareList()失败 - 连续3次：" + iOException);
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call2, Response response) throws JSONException, IOException {
                    if (call2.isCanceled()) {
                        return;
                    }
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("getFirmwareList()：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                int i = jSONObject.getInt("state");
                                String string2 = jSONObject.getString("err_msg");
                                if (i != 0) {
                                    FirmwareResponse firmwareResponse2 = new FirmwareResponse();
                                    firmwareResponse2.deviceType = deviceType;
                                    firmwareResponse2.state = i;
                                    firmwareResponse2.err_msg = string2;
                                    EventBus.getDefault().post(firmwareResponse2);
                                    LogToFile.i("请求体：" + strBuildRequestBody);
                                } else {
                                    FirmwareResponse firmwareResponse3 = (FirmwareResponse) new Gson().fromJson(strString, new TypeToken<FirmwareResponse>() { // from class: com.qianhe.yct.utils.NetworkDataLoader.5.1
                                    }.getType());
                                    if (firmwareResponse3 != null) {
                                        firmwareResponse3.deviceType = deviceType;
                                        firmwareResponse3.pns = str;
                                        firmwareResponse3.isModuleUpgrade = z;
                                        EventBus.getDefault().post(firmwareResponse3);
                                    }
                                }
                                return;
                            } catch (JSONException e) {
                                LogToFile.e("getFirmwareList() onResponse：" + e);
                                return;
                            }
                        }
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getFirmwareList(deviceType, str, str2, z);
                    } else {
                        LogToFile.i("getFirmwareList()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("getFirmwareList()异常：" + e);
        }
    }

    public void getFirmwareDownloadUrl(final int i, final DeviceType deviceType) throws JSONException {
        String string;
        if (deviceType == DeviceType.BASE) {
            string = this.mSp.getString("base_deviceSn", "");
        } else {
            string = this.mSp.getString("deviceSn", "");
        }
        HashMap map = new HashMap();
        map.put("sn", string);
        map.put("fmw_id", Integer.valueOf(i));
        String strBuildRequestBody = buildRequestBody(12202, 7, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 getFirmwareDownloadUrl()" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.6
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getFirmwareDownloadUrl(i, deviceType);
                    } else {
                        LogToFile.i("getFirmwareDownloadUrl()失败 - 连续3次");
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException, IOException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("升级文件信息：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                int i2 = jSONObject.getInt("state");
                                String string2 = jSONObject.getString("err_msg");
                                if (i2 != 0) {
                                    FirmwareFileInfoResponse firmwareFileInfoResponse = new FirmwareFileInfoResponse();
                                    firmwareFileInfoResponse.err_msg = string2;
                                    firmwareFileInfoResponse.deviceType = deviceType;
                                    EventBus.getDefault().post(firmwareFileInfoResponse);
                                } else {
                                    FirmwareFileInfoResponse firmwareFileInfoResponse2 = (FirmwareFileInfoResponse) new Gson().fromJson(strString, new TypeToken<FirmwareFileInfoResponse>() { // from class: com.qianhe.yct.utils.NetworkDataLoader.6.1
                                    }.getType());
                                    if (firmwareFileInfoResponse2 != null) {
                                        firmwareFileInfoResponse2.deviceType = deviceType;
                                        EventBus.getDefault().post(firmwareFileInfoResponse2);
                                    }
                                }
                                return;
                            } catch (JSONException e) {
                                LogToFile.e("getFirmwareDownloadUrl() onResponse：" + e);
                                return;
                            }
                        }
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getFirmwareDownloadUrl(i, deviceType);
                    } else {
                        LogToFile.i("getFirmwareDownloadUrl()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("getFirmwareDownloadUrl()异常：" + e);
        }
    }

    public void downloadFirmwareWithProgress(String str, final String str2, final ProgressListener progressListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.startDownLoad = true;
            Call callNewCall = new OkHttpClient().newCall(new Request.Builder().url(str).build());
            this.fmwDownloadCall = callNewCall;
            callNewCall.enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.7
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    LogToFile.e("下载固件失败：" + iOException);
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    int i;
                    if (!response.isSuccessful()) {
                        throw new IOException("Unexpected code " + response);
                    }
                    ResponseBody responseBodyBody = response.body();
                    if (responseBodyBody != null) {
                        ProgressResponseBody progressResponseBody = new ProgressResponseBody(responseBodyBody, progressListener);
                        File file = new File(str2);
                        if (!file.exists()) {
                            file.createNewFile();
                        }
                        InputStream inputStreamByteStream = progressResponseBody.byteStream();
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(str2);
                            try {
                                byte[] bArr = new byte[InternalZipConstants.BUFF_SIZE];
                                while (NetworkDataLoader.this.startDownLoad && (i = inputStreamByteStream.read(bArr)) != -1) {
                                    fileOutputStream.write(bArr, 0, i);
                                }
                                fileOutputStream.close();
                                if (inputStreamByteStream != null) {
                                    inputStreamByteStream.close();
                                }
                            } finally {
                            }
                        } catch (Throwable th) {
                            if (inputStreamByteStream != null) {
                                try {
                                    inputStreamByteStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("下载固件失败：" + e);
            if (progressListener == null || !this.startDownLoad) {
                return;
            }
            progressListener.onError();
        }
    }

    public void getApkList(final String str, final String str2, AppUpgrader.OnCheckResponseListioner onCheckResponseListioner) throws JSONException {
        NetworkDataLoader networkDataLoader;
        final AppUpgrader.OnCheckResponseListioner onCheckResponseListioner2;
        final RequestBody requestBodyCreate;
        Request requestBuild;
        if (this.requestApkList) {
            return;
        }
        cancelRequest();
        this.requestApkList = true;
        String string = this.mSp.getString("deviceSn", "");
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(string)) {
            map.put("sn", string);
        }
        map.put("pkg_name", str);
        map.put("version", str2);
        String[] strArr = Build.SUPPORTED_ABIS;
        String str3 = "arm64-v8a";
        if (!Arrays.asList(strArr).contains("arm64-v8a")) {
            str3 = "armeabi-v7";
            if (!Arrays.asList(strArr).contains("armeabi-v7")) {
                str3 = "armeabi";
            }
        }
        map.put("abi", str3);
        final String strBuildRequestBody = buildRequestBody(12202, 11, map);
        try {
            requestBodyCreate = RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"));
            requestBuild = new Request.Builder().url(URL).post(requestBodyCreate).build();
            LogToFile.i("开始请求 apk更新列表：" + strBuildRequestBody);
            networkDataLoader = this;
            onCheckResponseListioner2 = onCheckResponseListioner;
        } catch (Exception e) {
            e = e;
            networkDataLoader = this;
            onCheckResponseListioner2 = onCheckResponseListioner;
        }
        try {
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.8
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkDataLoader.this.requestApkList = false;
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getApkList(str, str2, onCheckResponseListioner2);
                        return;
                    }
                    LogToFile.i("getApkList()失败 - 连续3次");
                    ApkListResponse apkListResponse = new ApkListResponse();
                    apkListResponse.state = -1;
                    apkListResponse.err_msg = iOException.getMessage();
                    AppUpgrader.OnCheckResponseListioner onCheckResponseListioner3 = onCheckResponseListioner2;
                    if (onCheckResponseListioner3 != null) {
                        onCheckResponseListioner3.onError(apkListResponse);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException, IOException {
                    NetworkDataLoader.this.requestApkList = false;
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("getApkList() -> 软件当前版本:2.0.2609.109 apk列表:" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                int i = jSONObject.getInt("state");
                                String string2 = jSONObject.getString("err_msg");
                                if (i != 0) {
                                    ApkListResponse apkListResponse = new ApkListResponse();
                                    apkListResponse.state = i;
                                    apkListResponse.err_msg = string2;
                                    AppUpgrader.OnCheckResponseListioner onCheckResponseListioner3 = onCheckResponseListioner2;
                                    if (onCheckResponseListioner3 != null) {
                                        onCheckResponseListioner3.onError(apkListResponse);
                                    }
                                    LogToFile.i("请求体：" + strBuildRequestBody);
                                    return;
                                }
                                ApkListResponse apkListResponse2 = (ApkListResponse) new Gson().fromJson(strString, new TypeToken<ApkListResponse>() { // from class: com.qianhe.yct.utils.NetworkDataLoader.8.1
                                }.getType());
                                if (apkListResponse2 != null) {
                                    AppUpgrader.OnCheckResponseListioner onCheckResponseListioner4 = onCheckResponseListioner2;
                                    if (onCheckResponseListioner4 != null) {
                                        onCheckResponseListioner4.onCheckResult(apkListResponse2);
                                        return;
                                    }
                                    return;
                                }
                                LogToFile.i("请求体：" + strBuildRequestBody + "，响应体：" + strString);
                                return;
                            } catch (JSONException e2) {
                                LogToFile.e("getApkList() JSONException：" + e2 + "，请求体：" + strBuildRequestBody + "，响应体：" + ((String) null));
                                return;
                            }
                        }
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getApkList(str, str2, onCheckResponseListioner2);
                        return;
                    }
                    LogToFile.i("getApkList() - 连续3次失败：，请求体：" + strBuildRequestBody + "，响应体：" + requestBodyCreate);
                }
            });
        } catch (Exception e2) {
            e = e2;
            Exception exc = e;
            exc.printStackTrace();
            networkDataLoader.requestApkList = false;
            ApkListResponse apkListResponse = new ApkListResponse();
            apkListResponse.state = -1;
            apkListResponse.err_msg = exc.getMessage();
            if (onCheckResponseListioner2 != null) {
                onCheckResponseListioner2.onError(apkListResponse);
            }
            LogToFile.i("getApkList()异常：" + exc);
        }
    }

    public void getApkDownloadUrl(final int i, final AppUpgrader.OnDownloadInfoResponseListioner onDownloadInfoResponseListioner) throws JSONException {
        String string = this.mSp.getString("deviceSn", "");
        HashMap map = new HashMap();
        map.put("sn", string);
        map.put("apk_id", Integer.valueOf(i));
        String strBuildRequestBody = buildRequestBody(12202, 13, map);
        try {
            Request requestBuild = new Request.Builder().url(URL).post(RequestBody.create(strBuildRequestBody, MediaType.get("application/json; charset=utf-8"))).build();
            LogToFile.i("开始请求 apk下载地址：" + strBuildRequestBody);
            this.mClient.newCall(requestBuild).enqueue(new Callback() { // from class: com.qianhe.yct.utils.NetworkDataLoader.9
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) throws JSONException {
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getApkDownloadUrl(i, onDownloadInfoResponseListioner);
                        return;
                    }
                    LogToFile.i("getApkDownloadUrl()失败 - 连续3次");
                    ApkDownloadUrlResponse apkDownloadUrlResponse = new ApkDownloadUrlResponse();
                    apkDownloadUrlResponse.err_msg = iOException.getMessage();
                    AppUpgrader.OnDownloadInfoResponseListioner onDownloadInfoResponseListioner2 = onDownloadInfoResponseListioner;
                    if (onDownloadInfoResponseListioner2 != null) {
                        onDownloadInfoResponseListioner2.onDownloadInfo(apkDownloadUrlResponse);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws JSONException, IOException {
                    if (response.isSuccessful()) {
                        if (response.body() != null) {
                            try {
                                String strString = response.body().string();
                                LogToFile.i("apk下载信息：" + strString);
                                JSONObject jSONObject = new JSONObject(strString);
                                int i2 = jSONObject.getInt("state");
                                String string2 = jSONObject.getString("err_msg");
                                if (i2 != 0) {
                                    ApkDownloadUrlResponse apkDownloadUrlResponse = new ApkDownloadUrlResponse();
                                    apkDownloadUrlResponse.err_msg = string2;
                                    AppUpgrader.OnDownloadInfoResponseListioner onDownloadInfoResponseListioner2 = onDownloadInfoResponseListioner;
                                    if (onDownloadInfoResponseListioner2 != null) {
                                        onDownloadInfoResponseListioner2.onDownloadInfo(apkDownloadUrlResponse);
                                    }
                                } else {
                                    ApkDownloadUrlResponse apkDownloadUrlResponse2 = (ApkDownloadUrlResponse) new Gson().fromJson(strString, new TypeToken<ApkDownloadUrlResponse>() { // from class: com.qianhe.yct.utils.NetworkDataLoader.9.1
                                    }.getType());
                                    AppUpgrader.OnDownloadInfoResponseListioner onDownloadInfoResponseListioner3 = onDownloadInfoResponseListioner;
                                    if (onDownloadInfoResponseListioner3 != null) {
                                        onDownloadInfoResponseListioner3.onDownloadInfo(apkDownloadUrlResponse2);
                                    }
                                }
                                return;
                            } catch (JSONException e) {
                                LogToFile.e("getApkDownloadUrl() onResponse：" + e);
                                return;
                            }
                        }
                        return;
                    }
                    NetworkDataLoader.this.failCount++;
                    if (NetworkDataLoader.this.failCount < 3) {
                        NetworkDataLoader.this.getApkDownloadUrl(i, onDownloadInfoResponseListioner);
                    } else {
                        LogToFile.i("getApkDownloadUrl()失败 - 连续3次");
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("getApkDownloadUrl()异常：" + e);
            ApkDownloadUrlResponse apkDownloadUrlResponse = new ApkDownloadUrlResponse();
            apkDownloadUrlResponse.err_msg = e.getMessage();
            if (onDownloadInfoResponseListioner != null) {
                onDownloadInfoResponseListioner.onDownloadInfo(apkDownloadUrlResponse);
            }
        }
    }

    public void downloadApkWithProgress(final String str, final String str2, final ProgressListener progressListener) {
        new Thread(new Runnable() { // from class: com.qianhe.yct.utils.NetworkDataLoader.10
            @Override // java.lang.Runnable
            public void run() {
                int i;
                try {
                    if (!TextUtils.isEmpty(str)) {
                        NetworkDataLoader.this.startDownLoad = true;
                        NetworkDataLoader.this.apkDownloadCall = new OkHttpClient().newCall(new Request.Builder().url(str).build());
                        Response responseExecute = NetworkDataLoader.this.apkDownloadCall.execute();
                        try {
                            if (!responseExecute.isSuccessful()) {
                                throw new IOException("Unexpected code " + responseExecute);
                            }
                            ResponseBody responseBodyBody = responseExecute.body();
                            if (responseBodyBody != null) {
                                ProgressResponseBody progressResponseBody = new ProgressResponseBody(responseBodyBody, progressListener);
                                File file = new File(str2);
                                if (!file.exists()) {
                                    file.createNewFile();
                                }
                                InputStream inputStreamByteStream = progressResponseBody.byteStream();
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                                    try {
                                        byte[] bArr = new byte[InternalZipConstants.BUFF_SIZE];
                                        while (NetworkDataLoader.this.startDownLoad && (i = inputStreamByteStream.read(bArr)) != -1) {
                                            fileOutputStream.write(bArr, 0, i);
                                        }
                                        fileOutputStream.close();
                                        if (inputStreamByteStream != null) {
                                            inputStreamByteStream.close();
                                        }
                                    } finally {
                                    }
                                } finally {
                                }
                            }
                            responseExecute.close();
                            return;
                        } finally {
                        }
                    }
                    LogToFile.e("下载apk失败：url为空");
                    ProgressListener progressListener2 = progressListener;
                    if (progressListener2 != null) {
                        progressListener2.onError();
                    }
                } catch (IOException e) {
                    if (e.getMessage() == null || !e.getMessage().contains("Socket closed")) {
                        LogToFile.e("下载apk失败：" + e);
                        if (progressListener == null || !NetworkDataLoader.this.startDownLoad) {
                            return;
                        }
                        progressListener.onError();
                    }
                }
            }
        }).start();
    }

    public void cancelDownload() {
        this.startDownLoad = false;
        Call call = this.apkDownloadCall;
        if (call != null) {
            call.cancel();
        }
        Call call2 = this.fmwDownloadCall;
        if (call2 != null) {
            call2.cancel();
        }
    }

    private String buildRequestBody(int i, int i2, Map<String, Object> map) throws JSONException {
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        TreeMap treeMap = new TreeMap();
        treeMap.put("task", Integer.valueOf(i));
        treeMap.put("task_num", Integer.valueOf(i2));
        treeMap.put("timestamp", Long.valueOf(jCurrentTimeMillis));
        treeMap.putAll(map);
        String sha256 = getSha256(treeMap);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("task", treeMap.get("task"));
            jSONObject.put("task_num", treeMap.get("task_num"));
            jSONObject.put("timestamp", treeMap.get("timestamp"));
            jSONObject.put("sign", sha256);
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue());
            }
            jSONObject.put("req_param", jSONObject2);
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private String getSha256(Map<String, Object> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            sb.append("&");
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(sb.toString().substring(1).getBytes(StandardCharsets.UTF_8));
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
            return "";
        }
    }

    private static class ProgressResponseBody extends ResponseBody {
        private BufferedSource bufferedSource;
        private final ProgressListener progressListener;
        private final ResponseBody responseBody;

        ProgressResponseBody(ResponseBody responseBody, ProgressListener progressListener) {
            this.responseBody = responseBody;
            this.progressListener = progressListener;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.responseBody.contentType();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.responseBody.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            if (this.bufferedSource == null) {
                this.bufferedSource = Okio.buffer(source(this.responseBody.source()));
            }
            return this.bufferedSource;
        }

        private Source source(Source source) {
            return new ForwardingSource(source) { // from class: com.qianhe.yct.utils.NetworkDataLoader.ProgressResponseBody.1
                long totalBytesRead = 0;

                @Override // okio.ForwardingSource, okio.Source
                public long read(Buffer buffer, long j) {
                    long j2 = super.read(buffer, j);
                    this.totalBytesRead += j2 != -1 ? j2 : 0L;
                    ProgressResponseBody.this.progressListener.update(this.totalBytesRead, ProgressResponseBody.this.responseBody.contentLength(), j2 == -1);
                    return j2;
                }
            };
        }
    }
}
