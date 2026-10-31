package com.qianhe.yct.utils;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.ZipUtil;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import okhttp3.Call;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class CalibrateUploadHelper {
    private static volatile CalibrateUploadHelper instance;
    private final ExecutorService executor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.qianhe.yct.utils.CalibrateUploadHelper$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return CalibrateUploadHelper.$r8$lambda$uVDIUpMS94NPGGIxWwfpO5XuzfE(runnable);
        }
    });

    public static /* synthetic */ Thread $r8$lambda$uVDIUpMS94NPGGIxWwfpO5XuzfE(Runnable runnable) {
        Thread thread = new Thread(runnable, "calib-upload");
        thread.setPriority(4);
        return thread;
    }

    public static CalibrateUploadHelper getInstance() {
        if (instance == null) {
            synchronized (CalibrateUploadHelper.class) {
                try {
                    if (instance == null) {
                        instance = new CalibrateUploadHelper();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static void install() {
        CalibrateLogToFile.setOnSessionWrittenListener(new CalibrateLogToFile.OnSessionWrittenListener() { // from class: com.qianhe.yct.utils.CalibrateUploadHelper$$ExternalSyntheticLambda0
            @Override // com.qianhe.baselib.utils.CalibrateLogToFile.OnSessionWrittenListener
            public final void onSessionWritten(String str) {
                CalibrateUploadHelper.getInstance().enqueue(str);
            }
        });
    }

    private CalibrateUploadHelper() {
    }

    public void enqueue(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.executor.execute(new Runnable() { // from class: com.qianhe.yct.utils.CalibrateUploadHelper$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                this.f$0.uploadLocked(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadLocked(String str) throws JSONException {
        String str2;
        String str3;
        File fileZipWithPassword;
        YCTApplication yCTApplication;
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            LogToFile.e("校准上传跳过：文件不存在 " + str);
            return;
        }
        try {
            JsonObject jsonObjectObj = obj(JsonParser.parseString(readUtf8(file)).getAsJsonObject(), "session");
            JsonObject jsonObjectObj2 = jsonObjectObj != null ? obj(jsonObjectObj, "meta") : new JsonObject();
            if (jsonObjectObj == null) {
                jsonObjectObj = new JsonObject();
            }
            if (jsonObjectObj2 == null) {
                jsonObjectObj2 = new JsonObject();
            }
            String str4 = "";
            String apiFlow = toApiFlow(str(jsonObjectObj, "flow", ""), jsonObjectObj2);
            String method = toMethod(apiFlow, str(jsonObjectObj, "type", ""), jsonObjectObj2);
            String str5 = str(jsonObjectObj, "algo_provider", "local");
            String str6 = str(jsonObjectObj, "device_sn", "");
            if (TextUtils.isEmpty(str6) && (yCTApplication = YCTApplication.getInstance()) != null) {
                str6 = yCTApplication.getSharedPreferences("sp", 0).getString("deviceSn", "");
            }
            String str7 = str6;
            String str8 = str(jsonObjectObj, "excavator_name", "");
            if (TextUtils.isEmpty(str8)) {
                str8 = str(jsonObjectObj2, "excavator_name", str(jsonObjectObj2, "name", ""));
            }
            String str9 = str8;
            if (bool(jsonObjectObj2, "ok", true)) {
                String str10 = str(jsonObjectObj, "calib_params_id", "");
                if (TextUtils.isEmpty(str10)) {
                    str4 = str(jsonObjectObj2, "calib_params_id", str(jsonObjectObj2, "new_calib_params_id", ""));
                    str2 = str4;
                } else {
                    str2 = str10;
                }
            } else {
                str2 = str4;
            }
            long jLng = lng(jsonObjectObj, "started_at", 0L);
            long jLng2 = lng(jsonObjectObj, "ended_at", 0L);
            if (jLng <= 0) {
                jLng = file.lastModified();
            }
            long j = jLng;
            AccuracyFields accuracyFieldsResolveAccuracy = resolveAccuracy(apiFlow, jsonObjectObj2);
            String str11 = str(jsonObjectObj, "id", "0");
            String utc = formatUtc(jLng2 > 0 ? jLng2 : System.currentTimeMillis(), "yyyyMMdd_HHmmss");
            String str12 = "calib/calib_" + str11 + "_" + apiFlow + "_" + utc;
            YCTApplication yCTApplication2 = YCTApplication.getInstance();
            String str13 = "yctcalib_" + utc + ".zip";
            if (yCTApplication2 != null) {
                StringBuilder sb = new StringBuilder();
                str3 = method;
                sb.append(FileUtil.mkLogDir(yCTApplication2));
                String str14 = File.separator;
                sb.append(str14);
                sb.append(str13);
                String string = sb.toString();
                if (new File(string).exists()) {
                    string = FileUtil.mkLogDir(yCTApplication2) + str14 + ("yctcalib_" + utc + "_" + str11 + ".zip");
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(str12 + ".json", file);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put(str12 + "_stream.json", "[]".getBytes(StandardCharsets.UTF_8));
                fileZipWithPassword = ZipUtil.zipWithPassword(string, linkedHashMap, linkedHashMap2);
                if (fileZipWithPassword == null) {
                    LogToFile.e("校准数据包压缩失败");
                }
            } else {
                str3 = method;
                fileZipWithPassword = null;
            }
            uploadPacket(NetworkUserLoader.getInstance(), UserSession.get().getToken(), apiFlow, str3, str5, str7, str9, str2, j, jLng2, accuracyFieldsResolveAccuracy, fileZipWithPassword);
        } catch (Exception e) {
            LogToFile.e("校准上传解析失败：" + e);
        }
    }

    private void uploadPacket(final NetworkUserLoader networkUserLoader, final String str, String str2, String str3, String str4, String str5, String str6, String str7, long j, long j2, AccuracyFields accuracyFields, final File file) throws JSONException {
        if (file == null || !file.exists()) {
            LogToFile.i("校准数据包 17020 跳过：无 zip");
            return;
        }
        YCTApplication yCTApplication = YCTApplication.getInstance();
        String deviceId = UserSession.get().getDeviceId();
        if (TextUtils.isEmpty(deviceId) && yCTApplication != null) {
            deviceId = Settings.Secure.getString(yCTApplication.getContentResolver(), "android_id");
        }
        String str8 = "app=2.0.2609.109 brand=" + resolveBrand(yCTApplication) + " platform=android";
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("token", str);
        }
        map.put("app_type", 0);
        map.put("device_id", nullToEmpty(deviceId));
        map.put("device_sn", nullToEmpty(str5));
        map.put("flow", str2);
        map.put("method", nullToEmpty(str3));
        map.put("algo_provider", str4);
        map.put("excavator_name", nullToEmpty(str6));
        map.put("calib_params_id", nullToEmpty(str7));
        map.put("started_at", Long.valueOf(j));
        map.put("ended_at", Long.valueOf(j2));
        map.put("accuracy", Double.valueOf(accuracyFields.accuracy));
        map.put("accuracy_type", accuracyFields.accuracyType);
        map.put("accuracy_2", Double.valueOf(accuracyFields.accuracy2));
        map.put("passed", Integer.valueOf(accuracyFields.passed));
        map.put("accuracy_json", accuracyFields.accuracyJson);
        map.put("file_name", file.getName());
        map.put("file_size", Long.valueOf(file.length()));
        map.put("file_md5", FileUtil.getFileMD5(file.getAbsolutePath()));
        map.put("remark", str8);
        networkUserLoader.applyCalibPacketUpload(map, new NetworkUserLoader.OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.CalibrateUploadHelper.1
            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onFailure(Call call, String str9) {
                LogToFile.e("校准数据包 1001 失败：" + str9);
                CalibrateUploadHelper.deleteQuietly(file);
            }

            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onResponse(String str9) {
                try {
                    JSONObject jSONObject = new JSONObject(str9);
                    if (jSONObject.optInt("state", -1) != 0) {
                        LogToFile.e("校准数据包 1001：" + jSONObject.optString("err_msg"));
                        CalibrateUploadHelper.deleteQuietly(file);
                        return;
                    }
                    if (jSONObject.optInt("is_duplicate", 0) != 1) {
                        String strOptString = jSONObject.optString("upload_url", "");
                        String strOptString2 = jSONObject.optString("mime_type", "application/zip");
                        String strOptString3 = jSONObject.optString("uuid", "");
                        if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString3)) {
                            NetworkUserLoader networkUserLoader2 = networkUserLoader;
                            File file2 = file;
                            networkUserLoader2.putFileToOss(strOptString, strOptString2, file2, true, CalibrateUploadHelper.this.ossCallback(networkUserLoader2, str, strOptString3, file2));
                            return;
                        }
                        LogToFile.e("校准数据包 1001 无 upload_url/uuid");
                        CalibrateUploadHelper.deleteQuietly(file);
                        return;
                    }
                    LogToFile.i("校准数据包已存在，跳过 PUT");
                    CalibrateUploadHelper.deleteQuietly(file);
                } catch (Exception e) {
                    LogToFile.e("校准数据包 1001 解析失败：" + e);
                    CalibrateUploadHelper.deleteQuietly(file);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkUserLoader.OnRequestCallBackListener ossCallback(final NetworkUserLoader networkUserLoader, final String str, final String str2, final File file) {
        return new NetworkUserLoader.OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.CalibrateUploadHelper.2
            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onFailure(Call call, String str3) throws JSONException {
                LogToFile.e("校准数据包 OSS 失败：" + str3);
                networkUserLoader.notifyCalibPacketState(str, str2, 3, CalibrateUploadHelper.this.ignoreNotify(file));
            }

            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onResponse(String str3) throws JSONException {
                LogToFile.i("校准数据包 OSS PUT 成功");
                networkUserLoader.notifyCalibPacketState(str, str2, 2, CalibrateUploadHelper.this.ignoreNotify(file));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkUserLoader.OnRequestCallBackListener ignoreNotify(final File file) {
        return new NetworkUserLoader.OnRequestCallBackListener() { // from class: com.qianhe.yct.utils.CalibrateUploadHelper.3
            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onFailure(Call call, String str) {
                LogToFile.e("校准上传结果通知失败：" + str);
                CalibrateUploadHelper.deleteQuietly(file);
            }

            @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
            public void onResponse(String str) {
                CalibrateUploadHelper.deleteQuietly(file);
            }
        };
    }

    static String toApiFlow(String str, JsonObject jsonObject) {
        if (TextUtils.isEmpty(str)) {
            return "mode1_0";
        }
        str.getClass();
        switch (str) {
            case "proSensor":
            case "mode2_0":
                return "mode2_0";
            case "reuse_create":
                return "reuse_create";
            case "simple":
            case "mode1":
                return "mode1_0";
            case "finetune":
                return "finetune_five_point";
            case "rod_cali":
            case "mode1_1":
                return "mode1_1";
            case "finetune_nine_point":
            case "finetune_four_point":
                String strFinetuneApiFlowFromAdjustHeight = finetuneApiFlowFromAdjustHeight(jsonObject);
                return !TextUtils.isEmpty(strFinetuneApiFlowFromAdjustHeight) ? strFinetuneApiFlowFromAdjustHeight : "finetune_four_point".equals(str) ? "finetune_arm" : "finetune_bucket";
            case "pro":
            case "mode3":
                return "mode3_0";
            case "mode2_1":
                return "mode2_1";
            case "bucket_switch":
                return "bucket_switch";
            case "finetune_five_point":
                return "finetune_five_point";
            default:
                return str;
        }
    }

    static String toMethod(String str, String str2, JsonObject jsonObject) {
        if ("verify".equals(str)) {
            return "standard".equals(str2) ? "verify_5p" : (!"simple".equals(str2) && ((int) lng(jsonObject, "steps", 0L)) >= 5) ? "verify_5p" : "verify_3p";
        }
        if (str != null && str.startsWith("finetune")) {
            String strFinetuneMethodFromAdjustHeight = finetuneMethodFromAdjustHeight(jsonObject);
            if (!TextUtils.isEmpty(strFinetuneMethodFromAdjustHeight)) {
                return strFinetuneMethodFromAdjustHeight;
            }
        }
        if ("finetune_five_point".equals(str)) {
            return "five_point";
        }
        if ("finetune_bucket".equals(str)) {
            return "bucket";
        }
        if ("finetune_arm".equals(str)) {
            return "arm";
        }
        if ("mode1_1".equals(str)) {
            return "rod_cali";
        }
        return "bucket_switch".equals(str) ? str : (str == null || !str.startsWith("mode")) ? "" : str;
    }

    static String finetuneMethodFromAdjustHeight(JsonObject jsonObject) {
        int iLng = (int) lng(jsonObject, "adjust_height", 0L);
        if (iLng == 0) {
            return "";
        }
        boolean z = (iLng & 6) != 0;
        boolean z2 = (iLng & 8) != 0;
        if (z && z2) {
            return "five_point";
        }
        if (z) {
            return "arm";
        }
        if (!z2) {
            return "";
        }
        return "bucket";
    }

    static String finetuneApiFlowFromAdjustHeight(JsonObject jsonObject) {
        String strFinetuneMethodFromAdjustHeight = finetuneMethodFromAdjustHeight(jsonObject);
        if ("arm".equals(strFinetuneMethodFromAdjustHeight)) {
            return "finetune_arm";
        }
        if ("bucket".equals(strFinetuneMethodFromAdjustHeight)) {
            return "finetune_bucket";
        }
        if ("five_point".equals(strFinetuneMethodFromAdjustHeight)) {
            return "finetune_five_point";
        }
        return "";
    }

    private static AccuracyFields resolveAccuracy(String str, JsonObject jsonObject) {
        AccuracyFields accuracyFields = new AccuracyFields();
        JsonObject jsonObject2 = new JsonObject();
        if ("verify".equals(str)) {
            double dDbl = dbl(jsonObject, "elev_max", -1.0d);
            accuracyFields.accuracy = dDbl;
            accuracyFields.accuracyType = dDbl >= 0.0d ? "elev_max" : "";
            accuracyFields.accuracy2 = dbl(jsonObject, "plane_max", -1.0d);
            copyNum(jsonObject, jsonObject2, "elev_123");
            copyNum(jsonObject, jsonObject2, "elev_345");
            copyNum(jsonObject, jsonObject2, "elev_max");
            copyNum(jsonObject, jsonObject2, "plane_max");
            double d = accuracyFields.accuracy;
            accuracyFields.passed = passedByThreshold(d >= 0.0d ? d / 2.0d : -1.0d);
        } else if (str.startsWith("finetune")) {
            double dDbl2 = dbl(jsonObject, "stdev_after", -1.0d);
            accuracyFields.accuracy = dDbl2;
            accuracyFields.accuracyType = dDbl2 >= 0.0d ? "stdev_after" : "";
            accuracyFields.accuracy2 = dbl(jsonObject, "stdev_before", -1.0d);
            copyNum(jsonObject, jsonObject2, "stdev_before");
            copyNum(jsonObject, jsonObject2, "stdev_after");
            copyNum(jsonObject, jsonObject2, "stdev_after_ha");
            copyNum(jsonObject, jsonObject2, "stdev_after_forearm");
            copyNum(jsonObject, jsonObject2, "stdev_after_bucket");
            copyNum(jsonObject, jsonObject2, "stdev_after_forearm_then_bucket");
            accuracyFields.passed = passedByThreshold(accuracyFields.accuracy);
        } else if ("mode1_1".equals(str)) {
            double dDbl3 = dbl(jsonObject, "stdev", -1.0d);
            accuracyFields.accuracy = dDbl3;
            accuracyFields.accuracyType = dDbl3 >= 0.0d ? "stdev" : "";
            copyNum(jsonObject, jsonObject2, "stdev");
        }
        String string = jsonObject2.size() != 0 ? jsonObject2.toString() : "";
        if (string.length() > 1024) {
            string = string.substring(0, 1024);
        }
        accuracyFields.accuracyJson = string;
        return accuracyFields;
    }

    private static int passedByThreshold(double d) {
        if (d < 0.0d || Double.isNaN(d)) {
            return -1;
        }
        return d <= 0.03d ? 1 : 0;
    }

    private static void copyNum(JsonObject jsonObject, JsonObject jsonObject2, String str) {
        if (jsonObject != null && jsonObject.has(str) && jsonObject.get(str).isJsonPrimitive()) {
            jsonObject2.add(str, jsonObject.get(str));
        }
    }

    private static String resolveBrand(Context context) {
        String packageName;
        if (context == null || (packageName = context.getPackageName()) == null || !packageName.contains("\\.")) {
            return "yct";
        }
        return packageName.split("\\.")[2];
    }

    private static String formatUtc(long j, String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        if (j <= 0) {
            j = System.currentTimeMillis();
        }
        return simpleDateFormat.format(new Date(j));
    }

    private static String readUtf8(File file) throws IOException {
        long length = file.length();
        if (length < 0 || length > 2147483647L) {
            throw new IOException("file too large");
        }
        int i = (int) length;
        byte[] bArr = new byte[i];
        FileInputStream fileInputStream = new FileInputStream(file);
        int i2 = 0;
        while (i2 < i) {
            try {
                int i3 = fileInputStream.read(bArr, i2, i - i2);
                if (i3 < 0) {
                    break;
                }
                i2 += i3;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        fileInputStream.close();
        return new String(bArr, 0, i2, StandardCharsets.UTF_8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteQuietly(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        file.delete();
    }

    private static String nullToEmpty(String str) {
        return str == null ? "" : str;
    }

    private static JsonObject obj(JsonObject jsonObject, String str) {
        if (jsonObject == null || !jsonObject.has(str) || !jsonObject.get(str).isJsonObject()) {
            return new JsonObject();
        }
        return jsonObject.getAsJsonObject(str);
    }

    private static String str(JsonObject jsonObject, String str, String str2) {
        if (jsonObject != null && jsonObject.has(str) && !jsonObject.get(str).isJsonNull()) {
            try {
                return jsonObject.get(str).getAsString();
            } catch (Exception unused) {
            }
        }
        return str2;
    }

    private static long lng(JsonObject jsonObject, String str, long j) {
        if (jsonObject != null && jsonObject.has(str) && !jsonObject.get(str).isJsonNull()) {
            try {
                return jsonObject.get(str).getAsLong();
            } catch (Exception unused) {
            }
        }
        return j;
    }

    private static double dbl(JsonObject jsonObject, String str, double d) {
        if (jsonObject != null && jsonObject.has(str) && !jsonObject.get(str).isJsonNull()) {
            try {
                return jsonObject.get(str).getAsDouble();
            } catch (Exception unused) {
            }
        }
        return d;
    }

    private static boolean bool(JsonObject jsonObject, String str, boolean z) {
        if (jsonObject != null && jsonObject.has(str) && !jsonObject.get(str).isJsonNull()) {
            try {
                return jsonObject.get(str).getAsBoolean();
            } catch (Exception unused) {
            }
        }
        return z;
    }

    private static final class AccuracyFields {
        double accuracy;
        double accuracy2;
        String accuracyJson;
        String accuracyType;
        int passed;

        private AccuracyFields() {
            this.accuracy = -1.0d;
            this.accuracyType = "";
            this.accuracy2 = -1.0d;
            this.passed = -1;
            this.accuracyJson = "";
        }
    }
}
