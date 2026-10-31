package com.qianhe.baselib.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.concurrent.ExecutorService;
import org.greenrobot.eventbus.EventBus;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CalibrateLogToFile {
    private static JsonArray activeEvents;
    private static String activeFileFlow;
    private static JsonObject activeSession;
    private static Context applicationContext;
    private static ExecutorService executors;
    private static boolean init;
    private static String latestLogPath;
    private static volatile OnSessionWrittenListener sessionWrittenListener;
    private static final Gson GSON = new GsonBuilder().serializeNulls().setPrettyPrinting().disableHtmlEscaping().create();
    private static String xexcavatorVersion = "";
    private static final Object SESSION_LOCK = new Object();

    public interface OnSessionWrittenListener {
        void onSessionWritten(String str);
    }

    public static void setOnSessionWrittenListener(OnSessionWrittenListener onSessionWrittenListener) {
        sessionWrittenListener = onSessionWrittenListener;
    }

    public static boolean isInit() {
        return init;
    }

    public static boolean hasActiveSession() {
        boolean z;
        synchronized (SESSION_LOCK) {
            z = activeSession != null;
        }
        return z;
    }

    public static String getActiveFileFlow() {
        String str;
        synchronized (SESSION_LOCK) {
            str = activeFileFlow;
        }
        return str;
    }

    private static boolean checkPermissions(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return EasyPermissions.hasPermissions(context, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
    }

    public static void init(Context context) {
        if (init || context == null) {
            return;
        }
        applicationContext = context.getApplicationContext();
        init = true;
        executors = LogIo.newSingleWriter("calibrate-log");
    }

    public static void setXexcavatorVersion(String str) {
        if (str == null) {
            str = "";
        }
        xexcavatorVersion = str;
    }

    public static String getXexcavatorVersion() {
        String str = xexcavatorVersion;
        return str == null ? "" : str;
    }

    public static void i(String str) {
        LogToFile.i(str);
    }

    public static void w(String str) {
        LogToFile.w(str);
    }

    public static void e(String str) {
        LogToFile.e(str);
    }

    public static void beginSession(String str, String str2, long j, String str3, String str4, String str5) {
        beginSession(str, str2, null, j, str3, str4, str5);
    }

    public static void beginSession(String str, String str2, String str3, long j, String str4, String str5, String str6) {
        String str7;
        if (!init || applicationContext == null || TextUtils.isEmpty(str)) {
            LogToFile.i("CalibrateLogToFile.beginSession 未初始化或 flow 为空");
            return;
        }
        synchronized (SESSION_LOCK) {
            try {
                activeFileFlow = str;
                activeEvents = new JsonArray();
                JsonObject jsonObject = new JsonObject();
                activeSession = jsonObject;
                jsonObject.addProperty("id", Integer.valueOf(nextSessionId()));
                activeSession.addProperty("flow", TextUtils.isEmpty(str2) ? str : str2);
                if (!TextUtils.isEmpty(str3)) {
                    activeSession.addProperty("type", str3);
                }
                activeSession.addProperty("name", "");
                JsonObject jsonObject2 = activeSession;
                if (TextUtils.isEmpty(str6)) {
                    str6 = "local";
                }
                jsonObject2.addProperty("algo_provider", str6);
                activeSession.addProperty("excavator_id", Long.valueOf(j));
                JsonObject jsonObject3 = activeSession;
                if (str4 == null) {
                    str4 = "";
                }
                jsonObject3.addProperty("excavator_name", str4);
                JsonObject jsonObject4 = activeSession;
                if (str5 == null) {
                    str5 = "";
                }
                jsonObject4.addProperty("device_sn", str5);
                activeSession.addProperty("started_at", Long.valueOf(System.currentTimeMillis()));
                activeSession.add("meta", new JsonObject());
                activeSession.addProperty("uploaded", (Number) 0);
            } catch (Throwable th) {
                throw th;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("校准会话开始：flow=");
        sb.append(str);
        sb.append(" sessionFlow=");
        sb.append(str2);
        if (TextUtils.isEmpty(str3)) {
            str7 = "";
        } else {
            str7 = " type=" + str3;
        }
        sb.append(str7);
        LogToFile.i(sb.toString());
    }

    public static void beginSession(String str, long j, String str2, String str3, String str4) {
        String str5;
        String str6;
        long j2;
        String str7;
        String str8;
        String str9;
        String str10;
        if ("finetune".equals(str)) {
            str10 = "finetune_five_point";
        } else if ("bucket".equals(str)) {
            str10 = "bucket_switch";
        } else {
            str5 = str;
            str6 = str5;
            j2 = j;
            str7 = str2;
            str8 = str3;
            str9 = str4;
            beginSession(str5, str6, j2, str7, str8, str9);
        }
        str5 = str;
        j2 = j;
        str7 = str2;
        str8 = str3;
        str9 = str4;
        str6 = str10;
        beginSession(str5, str6, j2, str7, str8, str9);
    }

    public static void recordEvent(String str, String str2, JsonObject jsonObject) {
        synchronized (SESSION_LOCK) {
            try {
                if (activeEvents == null) {
                    return;
                }
                if ("MAKE_TOOL".equals(str2)) {
                    removePreviousMakeToolPairLocked();
                } else if (isReuseInput(str, str2)) {
                    removePreviousEventsWithKindAndTagLocked(str, str2);
                } else if (isReplaceableCollectTag(str2)) {
                    removePreviousEventsWithTagLocked(str2);
                }
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("ts", Long.valueOf(System.currentTimeMillis()));
                if (str == null) {
                    str = "";
                }
                jsonObject2.addProperty("kind", str);
                if (str2 == null) {
                    str2 = "";
                }
                jsonObject2.addProperty("tag", str2);
                if (jsonObject == null) {
                    jsonObject = new JsonObject();
                }
                jsonObject2.add("data", jsonObject);
                activeEvents.add(jsonObject2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void removePreviousMakeToolPairLocked() {
        int i;
        JsonArray jsonArray = activeEvents;
        if (jsonArray == null || jsonArray.size() == 0) {
            return;
        }
        int size = activeEvents.size();
        while (true) {
            size--;
            i = -1;
            if (size < 0) {
                size = -1;
                break;
            } else if ("MAKE_TOOL".equals(eventTag(activeEvents.get(size).getAsJsonObject()))) {
                break;
            }
        }
        if (size < 0) {
            return;
        }
        if (size > 0) {
            int i2 = size - 1;
            if ("INPUT".equals(eventTag(activeEvents.get(i2).getAsJsonObject()))) {
                i = i2;
            }
        }
        activeEvents.remove(size);
        if (i >= 0) {
            activeEvents.remove(i);
        }
    }

    private static boolean isReplaceableCollectTag(String str) throws NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if ("sweep1".equals(str) || "sweep2".equals(str) || "sweep3".equals(str) || "sweep4".equals(str) || "hab".equals(str) || "K".equals(str) || "input".equals(str) || "已知高程点".equals(str)) {
            return true;
        }
        if (str.length() >= 5 && str.startsWith("step")) {
            try {
                int i = Integer.parseInt(str.substring(4));
                if (i >= 1 && i <= 9) {
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    private static void removePreviousEventsWithTagLocked(String str) {
        JsonArray jsonArray = activeEvents;
        if (jsonArray == null || jsonArray.size() == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        for (int size = activeEvents.size() - 1; size >= 0; size--) {
            if (str.equals(eventTag(activeEvents.get(size).getAsJsonObject()))) {
                activeEvents.remove(size);
            }
        }
    }

    public static void removeEventsWithKindAndTag(String str, String str2) {
        synchronized (SESSION_LOCK) {
            removePreviousEventsWithKindAndTagLocked(str, str2);
        }
    }

    private static boolean isReuseInput(String str, String str2) {
        if ("INPUT".equals(str2)) {
            return "bucket".equals(str) || "arm".equals(str);
        }
        return false;
    }

    private static void removePreviousEventsWithKindAndTagLocked(String str, String str2) {
        JsonArray jsonArray = activeEvents;
        if (jsonArray == null || jsonArray.size() == 0 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        for (int size = activeEvents.size() - 1; size >= 0; size--) {
            JsonObject asJsonObject = activeEvents.get(size).getAsJsonObject();
            if (str.equals(eventKind(asJsonObject)) && str2.equals(eventTag(asJsonObject))) {
                activeEvents.remove(size);
            }
        }
    }

    private static String eventKind(JsonObject jsonObject) {
        if (jsonObject == null || !jsonObject.has("kind") || jsonObject.get("kind").isJsonNull()) {
            return "";
        }
        return jsonObject.get("kind").getAsString();
    }

    private static String eventTag(JsonObject jsonObject) {
        if (jsonObject == null || !jsonObject.has("tag") || jsonObject.get("tag").isJsonNull()) {
            return "";
        }
        return jsonObject.get("tag").getAsString();
    }

    public static void updateSessionExcavator(long j, String str) {
        synchronized (SESSION_LOCK) {
            try {
                JsonObject jsonObject = activeSession;
                if (jsonObject == null) {
                    return;
                }
                if (j > 0) {
                    jsonObject.addProperty("excavator_id", Long.valueOf(j));
                }
                if (str != null) {
                    activeSession.addProperty("excavator_name", str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void updateSessionType(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (SESSION_LOCK) {
            try {
                JsonObject jsonObject = activeSession;
                if (jsonObject == null) {
                    return;
                }
                if (jsonObject.has("type")) {
                    activeSession.addProperty("type", str);
                    return;
                }
                JsonObject jsonObject2 = new JsonObject();
                for (String str2 : activeSession.keySet()) {
                    jsonObject2.add(str2, activeSession.get(str2));
                    if ("flow".equals(str2)) {
                        jsonObject2.addProperty("type", str);
                    }
                }
                if (!jsonObject2.has("type")) {
                    jsonObject2.addProperty("type", str);
                }
                activeSession = jsonObject2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void endSession(boolean z, JsonObject jsonObject) {
        endSession(z, jsonObject, null);
    }

    public static void endSession(boolean z, JsonObject jsonObject, Runnable runnable) {
        synchronized (SESSION_LOCK) {
            try {
                if (activeSession != null && activeEvents != null && !TextUtils.isEmpty(activeFileFlow)) {
                    String str = activeFileFlow;
                    int asInt = (!activeSession.has("id") || activeSession.get("id").isJsonNull()) ? 0 : activeSession.get("id").getAsInt();
                    activeSession.addProperty("ended_at", Long.valueOf(System.currentTimeMillis()));
                    if (jsonObject == null) {
                        jsonObject = new JsonObject();
                    }
                    if (!jsonObject.has("ok")) {
                        jsonObject.addProperty("ok", Boolean.valueOf(z));
                    }
                    if (!jsonObject.has("app")) {
                        jsonObject.add("app", buildAppInfo());
                    }
                    activeSession.add("meta", jsonObject);
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.add("app", buildAppInfo());
                    jsonObject2.add("session", activeSession);
                    jsonObject2.addProperty("event_count", Integer.valueOf(activeEvents.size()));
                    jsonObject2.add("events", activeEvents);
                    activeSession = null;
                    activeEvents = null;
                    activeFileFlow = null;
                    writeJsonFile(str, asInt, jsonObject2, runnable);
                    LogToFile.i("校准会话结束：flow=" + str + " id=" + asInt + " ok=" + z + " path=" + latestLogPath);
                    return;
                }
                if (runnable != null) {
                    runnable.run();
                }
            } finally {
            }
        }
    }

    public static void discardSession() {
        synchronized (SESSION_LOCK) {
            activeSession = null;
            activeEvents = null;
            activeFileFlow = null;
        }
    }

    public static void removeLatestMakeToolPair() {
        synchronized (SESSION_LOCK) {
            removePreviousMakeToolPairLocked();
        }
    }

    public static int removeEventsFromTagOnward(String str) {
        synchronized (SESSION_LOCK) {
            try {
                JsonArray jsonArray = activeEvents;
                if (jsonArray != null && jsonArray.size() != 0 && !TextUtils.isEmpty(str)) {
                    int i = 0;
                    while (true) {
                        if (i >= activeEvents.size()) {
                            i = -1;
                            break;
                        }
                        if (!str.equals(eventTag(activeEvents.get(i).getAsJsonObject()))) {
                            i++;
                        }
                    }
                    if (i < 0) {
                        return 0;
                    }
                    int size = activeEvents.size() - i;
                    for (int size2 = activeEvents.size() - 1; size2 >= i; size2--) {
                        activeEvents.remove(size2);
                    }
                    return size;
                }
                return 0;
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037 A[PHI: r2
      0x0037: PHI (r2v1 java.lang.String) = (r2v0 java.lang.String), (r2v5 java.lang.String), (r2v5 java.lang.String), (r2v5 java.lang.String) binds: [B:3:0x000c, B:14:0x0036, B:10:0x002f, B:12:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.gson.JsonObject buildAppInfo() throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            com.google.gson.JsonObject r0 = new com.google.gson.JsonObject
            r0.<init>()
            android.content.Context r1 = com.qianhe.baselib.utils.CalibrateLogToFile.applicationContext
            java.lang.String r2 = "yct"
            java.lang.String r3 = ""
            if (r1 == 0) goto L37
            java.lang.String r1 = r1.getPackageName()
            if (r1 == 0) goto L1e
            java.lang.String r4 = "xcloud"
            boolean r1 = r1.contains(r4)
            if (r1 == 0) goto L1e
            r2 = r4
        L1e:
            android.content.Context r1 = com.qianhe.baselib.utils.CalibrateLogToFile.applicationContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L36
            android.content.pm.PackageManager r1 = r1.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L36
            android.content.Context r4 = com.qianhe.baselib.utils.CalibrateLogToFile.applicationContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L36
            java.lang.String r4 = r4.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L36
            r5 = 0
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r4, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L36
            if (r1 == 0) goto L37
            java.lang.String r1 = r1.versionName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L36
            if (r1 == 0) goto L37
            goto L38
        L36:
        L37:
            r1 = r3
        L38:
            java.lang.String r4 = "brand"
            r0.addProperty(r4, r2)
            java.lang.String r2 = "version"
            r0.addProperty(r2, r1)
            java.lang.String r1 = com.qianhe.baselib.utils.CalibrateLogToFile.xexcavatorVersion
            if (r1 != 0) goto L48
            goto L49
        L48:
            r3 = r1
        L49:
            java.lang.String r1 = "xexcavator"
            r0.addProperty(r1, r3)
            java.lang.String r1 = "platform"
            java.lang.String r2 = "android"
            r0.addProperty(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.baselib.utils.CalibrateLogToFile.buildAppInfo():com.google.gson.JsonObject");
    }

    private static int nextSessionId() {
        int i;
        Context context = applicationContext;
        if (context == null) {
            return (int) (System.currentTimeMillis() % 100000);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("calibrate_log", 0);
        synchronized (SESSION_LOCK) {
            i = sharedPreferences.getInt("session_seq", 0) + 1;
            sharedPreferences.edit().putInt("session_seq", i).commit();
        }
        return i;
    }

    public static void resetSessionSeq(Context context) {
        Context applicationContext2 = context != null ? context.getApplicationContext() : applicationContext;
        if (applicationContext2 == null) {
            return;
        }
        synchronized (SESSION_LOCK) {
            applicationContext2.getSharedPreferences("calibrate_log", 0).edit().putInt("session_seq", 0).commit();
        }
        LogToFile.i("CalibrateLogToFile：session_seq 已重置为 0");
    }

    private static String fileNameFlow(String str, int i) {
        if (i <= 0) {
            return str;
        }
        if (!"verify".equals(str) && !"finetune".equals(str)) {
            return str;
        }
        return str + i;
    }

    private static void writeJsonFile(String str, int i, final JsonObject jsonObject, final Runnable runnable) {
        Context context = applicationContext;
        if (context == null || executors == null) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            if (!checkPermissions(context)) {
                EventBus.getDefault().post("未获取权限");
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            final String strFileNameFlow = fileNameFlow(str, i);
            LogIo.execute(executors, new Runnable() { // from class: com.qianhe.baselib.utils.CalibrateLogToFile.1
                /* JADX WARN: Removed duplicated region for block: B:114:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:64:0x0124  */
                /* JADX WARN: Removed duplicated region for block: B:67:0x012d A[ADDED_TO_REGION] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 420
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.qianhe.baselib.utils.CalibrateLogToFile.AnonymousClass1.run():void");
                }
            });
        }
    }
}
