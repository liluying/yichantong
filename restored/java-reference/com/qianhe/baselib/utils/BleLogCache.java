package com.qianhe.baselib.utils;

import android.content.Context;
import android.text.TextUtils;
import com.qianhe.baselib.utils.LogIo;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BleLogCache {
    public static final String FILETAG = "ble-";
    private static final String TAG = "BleLogCache";
    private static Context context;
    private static ExecutorService executors;
    private static String fileName;
    private static boolean init;
    private static final SimpleDateFormat dateFormatM = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA);
    private static final LogIo.Appender fileAppender = new LogIo.Appender();

    public static boolean isInit() {
        return init;
    }

    private static boolean checkPermissions(Context context2) {
        return EasyPermissions.hasPermissions(context2, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
    }

    public static void init(Context context2) {
        context = context2;
        if (init) {
            return;
        }
        init = true;
        executors = LogIo.newSingleWriter("ble-log");
        String strMkBLueLogFile = FileUtil.mkBLueLogFile(context2);
        fileName = strMkBLueLogFile;
        if (TextUtils.isEmpty(strMkBLueLogFile)) {
            LogToFile.i("blePath == null ，未初始化BleBleCache");
        }
    }

    public static long getFolderSize(File file) {
        long folderSize = 0;
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (int i = 0; i < fileArrListFiles.length; i++) {
                    folderSize += fileArrListFiles[i].isDirectory() ? getFolderSize(fileArrListFiles[i]) : fileArrListFiles[i].length();
                }
            }
            return folderSize;
        } catch (Exception e) {
            e.printStackTrace();
            return folderSize;
        }
    }

    public static boolean deleteFolderFile(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            try {
                File file = new File(str);
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        deleteFolderFile(file2.getAbsolutePath(), true);
                    }
                }
                if (!file.isDirectory()) {
                    if (file.exists()) {
                        file.delete();
                    }
                } else if (file.exists() && z) {
                    file.delete();
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static void d(String str) {
        String str2 = "[" + dateFormatM.format(new Date()) + "] [DEBUG] " + LogToFile.stackInfo(BleLogCache.class) + str;
    }

    public static void i(String str) {
        writeToFile("[" + dateFormatM.format(new Date()) + "] [INFO] " + LogToFile.stackInfo(BleLogCache.class) + str);
    }

    public static void w(String str) {
        writeToFile("[" + dateFormatM.format(new Date()) + "] [WARN] " + LogToFile.stackInfo(BleLogCache.class) + str);
    }

    public static void e(String str) {
        writeToFile("[" + dateFormatM.format(new Date()) + "] [ERROR] " + LogToFile.stackInfo(BleLogCache.class) + str);
    }

    public static void writeToFile(final String str) {
        if (executors == null || TextUtils.isEmpty(fileName) || str == null) {
            return;
        }
        LogIo.execute(executors, new Runnable() { // from class: com.qianhe.baselib.utils.BleLogCache.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                try {
                    BleLogCache.fileAppender.append(BleLogCache.fileName, str);
                    if (LogToFile.beginTime == 0) {
                        LogToFile.beginTime = System.currentTimeMillis() / 1000;
                    }
                    LogToFile.endTime = System.currentTimeMillis() / 1000;
                } catch (Exception e) {
                    BleLogCache.fileAppender.closeQuietly();
                    e.printStackTrace();
                    if (BleLogCache.context != null) {
                        BleLogCache.fileName = FileUtil.mkBLueLogFile(BleLogCache.context);
                    }
                } catch (OutOfMemoryError unused) {
                    BleLogCache.fileAppender.closeQuietly();
                }
            }
        });
    }
}
