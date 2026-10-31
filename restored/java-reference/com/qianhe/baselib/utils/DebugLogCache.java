package com.qianhe.baselib.utils;

import android.content.Context;
import android.text.TextUtils;
import com.qianhe.baselib.utils.LogIo;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import org.greenrobot.eventbus.EventBus;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugLogCache {
    public static final String BESTPOSA = "#BESTPOSA,";
    public static final String FILETAG = "deubg-";
    public static final String GPGST = "$GPGST,";
    public static final String GPSNR = "$GPSNR,";
    public static final String INS = "$INS.NAVI,";
    private static final String TAG = "DebugLogCache";
    private static Context context;
    private static ExecutorService executors;
    private static String fileName;
    private static final SimpleDateFormat dateFormatM = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA);
    private static final LogIo.Appender fileAppender = new LogIo.Appender();
    private static boolean startWrite = false;
    private static final List<String> filterList = new ArrayList();

    private static boolean checkPermissions(Context context2) {
        return EasyPermissions.hasPermissions(context2, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
    }

    public static void init(Context context2, List<String> list) throws IOException {
        context = context2;
        List<String> list2 = filterList;
        list2.clear();
        list2.addAll(list);
        executors = LogIo.newSingleWriter("debug-log");
        String strMkBLueDebugFile = FileUtil.mkBLueDebugFile(context2);
        fileName = strMkBLueDebugFile;
        if (TextUtils.isEmpty(strMkBLueDebugFile)) {
            LogToFile.i("fileName == null ，未初始化DebugLogCache");
        }
    }

    public static void start() {
        startWrite = true;
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
        String str2 = "[" + dateFormatM.format(new Date()) + "] [DEBUG] " + LogToFile.stackInfo(DebugLogCache.class) + str;
    }

    public static void i(String str) {
        writeToFile("[" + dateFormatM.format(new Date()) + "] [INFO] " + LogToFile.stackInfo(DebugLogCache.class) + str);
    }

    public static void w(String str) {
        writeToFile("[" + dateFormatM.format(new Date()) + "] [WARN] " + LogToFile.stackInfo(DebugLogCache.class) + str);
    }

    public static void e(String str) {
        writeToFile("[" + dateFormatM.format(new Date()) + "] [ERROR] " + LogToFile.stackInfo(DebugLogCache.class) + str);
    }

    public static void writeToFile(final String str) {
        Context context2 = context;
        if (context2 != null && !checkPermissions(context2)) {
            EventBus.getDefault().post("未获取权限");
        } else {
            if (executors == null || TextUtils.isEmpty(fileName) || str == null) {
                return;
            }
            LogIo.execute(executors, new Runnable() { // from class: com.qianhe.baselib.utils.DebugLogCache.1
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    boolean z;
                    Iterator it = DebugLogCache.filterList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        String str2 = (String) it.next();
                        if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                            z = true;
                            break;
                        }
                    }
                    if (DebugLogCache.startWrite && z) {
                        String str3 = str;
                        try {
                            DebugLogCache.fileAppender.append(DebugLogCache.fileName, str);
                            if (LogToFile.beginTime == 0) {
                                LogToFile.beginTime = System.currentTimeMillis() / 1000;
                            }
                            LogToFile.endTime = System.currentTimeMillis() / 1000;
                        } catch (Exception e) {
                            DebugLogCache.fileAppender.closeQuietly();
                            e.printStackTrace();
                        } catch (OutOfMemoryError unused) {
                            DebugLogCache.fileAppender.closeQuietly();
                        }
                    }
                }
            });
        }
    }

    public static void setFilter(List<String> list) {
        List<String> list2 = filterList;
        list2.clear();
        list2.addAll(list);
    }

    public static void stop() throws IOException {
        fileAppender.closeQuietly();
        ExecutorService executorService = executors;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        startWrite = false;
        executors = null;
        context = null;
        fileName = "";
    }
}
