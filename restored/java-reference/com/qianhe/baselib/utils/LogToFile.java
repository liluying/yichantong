package com.qianhe.baselib.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import com.qianhe.baselib.utils.LogIo;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LogToFile {
    private static final int DECRYPT_IO_BUFFER = 262144;
    private static final long EXPIRY_DATE = 604800000;
    public static final String FILETAG = "log-";
    private static final Set<String> LOG_HELPER_CLASSES;
    private static final int MAX_FILE_MSG_LEN = 32768;
    private static final int MAX_LOGCAT_LEN = 3500;
    private static final int MAX_SIZE = 209715200;
    private static final String TAG = "LogToFile";
    private static Context applicationContext = null;
    public static long beginTime = 0;
    private static final SimpleDateFormat dateFormatM;
    public static final SimpleDateFormat dateFormatT;
    private static boolean debug = false;
    public static long endTime = 0;
    private static ExecutorService executors = null;
    private static final LogIo.Appender fileAppender;
    private static String fileName = null;
    private static boolean isInit = false;
    private static String logPath = null;
    private static SharedPreferences mSp = null;
    private static final boolean showLog = true;

    public interface DecryptProgressListener {
        void onProgress(long j, long j2);
    }

    static {
        Locale locale = Locale.CHINA;
        dateFormatT = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", locale);
        dateFormatM = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", locale);
        fileAppender = new LogIo.Appender();
        LOG_HELPER_CLASSES = new HashSet(Arrays.asList("com.qianhe.baselib.utils.LogToFile", "com.qianhe.baselib.utils.BleLogCache", "com.qianhe.baselib.utils.BaseBleLogCache", "com.qianhe.baselib.utils.DebugLogCache", "com.qianhe.baselib.utils.CalibrateLogToFile"));
        beginTime = 0L;
        endTime = 0L;
    }

    public static boolean isIsInit() {
        return isInit;
    }

    public static String getLatestLogPath() {
        return fileName;
    }

    private static boolean checkPermissions(Context context) {
        String str = logPath;
        if (str != null && str.startsWith(context.getFilesDir().getAbsolutePath())) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return EasyPermissions.hasPermissions(context, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
    }

    public static void init(Context context, boolean z) throws IOException {
        if (isInit || context == null) {
            return;
        }
        applicationContext = context.getApplicationContext();
        isInit = true;
        debug = z;
        mSp = context.getSharedPreferences("sp", 0);
        executors = LogIo.newSingleWriter("log-to-file");
        String strMkLogDir = FileUtil.mkLogDir(context);
        logPath = strMkLogDir;
        if (TextUtils.isEmpty(strMkLogDir)) {
            i("logPath == null ，未初始化LogToFile");
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(logPath);
            sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR);
            sb.append(FILETAG);
            SimpleDateFormat simpleDateFormat = dateFormatT;
            sb.append(simpleDateFormat.format(new Date()));
            sb.append(".log");
            fileName = sb.toString();
            File file = new File(fileName);
            if (!file.exists()) {
                file.createNewFile();
            }
            long j = mSp.getLong("createLogTime", 0L);
            if (j == 0) {
                mSp.edit().putLong("createLogTime", System.currentTimeMillis()).apply();
                i("创建log文件夹时间：" + simpleDateFormat.format(new Date(System.currentTimeMillis())));
                return;
            }
            float fRound = Math.round(getFolderSize(new File(logPath)));
            String str = "log文件夹大小:" + (Math.round((fRound / 1024.0d) * 10.0d) / 10.0d) + "KB， log文件夹剩余有效时长:" + (Math.floor((((EXPIRY_DATE - (System.currentTimeMillis() - j)) / 1000.0d) / 3600.0d) * 100.0d) / 100.0d) + "小时";
            if (System.currentTimeMillis() - j < EXPIRY_DATE && fRound <= 2.097152E8f) {
                i("创建log文件夹时间：" + simpleDateFormat.format(new Date(j)));
                i(str);
                return;
            }
            boolean zDeleteFolderFile = deleteFolderFile(logPath, false);
            i(str);
            i("<====== 清空log文件夹 ======>" + zDeleteFolderFile);
            if (zDeleteFolderFile) {
                CalibrateLogToFile.resetSessionSeq(context);
                String strMkLogDir2 = FileUtil.mkLogDir(context);
                logPath = strMkLogDir2;
                if (!TextUtils.isEmpty(strMkLogDir2)) {
                    fileName = logPath + InternalZipConstants.ZIP_FILE_SEPARATOR + FILETAG + simpleDateFormat.format(new Date()) + ".log";
                    File file2 = new File(fileName);
                    if (!file2.exists()) {
                        file2.createNewFile();
                    }
                }
                mSp.edit().putLong("createLogTime", System.currentTimeMillis()).apply();
                i("创建log文件夹时间：" + simpleDateFormat.format(new Date(System.currentTimeMillis())));
            }
        } catch (IOException e) {
            e("日志创建失败：" + e);
        }
    }

    private static boolean isToday(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
        return simpleDateFormat.format(new Date(j)).equals(simpleDateFormat.format(new Date(System.currentTimeMillis())));
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
        File[] fileArrListFiles;
        if (!TextUtils.isEmpty(str)) {
            try {
                File file = new File(str);
                if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                    for (File file2 : fileArrListFiles) {
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
        logcat(3, "XWQ", "[" + dateFormatM.format(new Date()) + "] [DEBUG] " + stackInfo(LogToFile.class) + str);
    }

    public static void i(String str) {
        String str2 = "[" + dateFormatM.format(new Date()) + "] [INFO] " + stackInfo(LogToFile.class) + str;
        logcat(4, "XWQ", str2);
        writeToFile(str2);
    }

    public static void w(String str) {
        String str2 = "[" + dateFormatM.format(new Date()) + "] [WARN] " + stackInfo(LogToFile.class) + str;
        logcat(5, "XWQ", str2);
        writeToFile(str2);
    }

    public static void e(String str) {
        String str2 = "[" + dateFormatM.format(new Date()) + "] [ERROR] " + stackInfo(LogToFile.class) + str;
        logcat(6, "XWQ", str2);
        writeToFile(str2);
    }

    static String stackInfo(Class<?> cls) {
        return formatStackInfo(findCaller(cls));
    }

    static StackTraceElement findCaller(Class<?> cls) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = null;
        boolean z = false;
        for (StackTraceElement stackTraceElement2 : stackTrace) {
            String className = stackTraceElement2.getClassName();
            String methodName = stackTraceElement2.getMethodName();
            if (!isIgnoredFrameworkFrame(className)) {
                if (isLogEntryMethod(className, methodName, cls)) {
                    z = true;
                } else if (z && !isCompilerBridgeMethod(methodName)) {
                    if (stackTraceElement == null) {
                        stackTraceElement = stackTraceElement2;
                    }
                    if (isAppFrame(className)) {
                        return stackTraceElement2;
                    }
                }
            }
        }
        return stackTraceElement != null ? stackTraceElement : stackTrace.length > 3 ? stackTrace[3] : stackTrace[stackTrace.length - 1];
    }

    private static boolean isLogEntryMethod(String str, String str2, Class<?> cls) {
        if (!LOG_HELPER_CLASSES.contains(str) && !str.equals(cls.getName())) {
            return false;
        }
        str2.getClass();
        switch (str2) {
        }
        return false;
    }

    private static boolean isIgnoredFrameworkFrame(String str) {
        return str.startsWith("dalvik.") || str.startsWith("java.") || str.startsWith("javax.") || str.startsWith("sun.") || str.startsWith("com.android.") || str.startsWith("android.") || str.startsWith("androidx.") || str.startsWith("kotlin.") || str.startsWith("kotlinx.") || str.startsWith("okhttp3.") || str.startsWith("okio.") || str.startsWith("retrofit2.") || str.startsWith("org.greenrobot.eventbus.") || str.startsWith("com.google.");
    }

    private static boolean isAppFrame(String str) {
        return str.startsWith("com.qianhe.");
    }

    private static boolean isCompilerBridgeMethod(String str) {
        return str.startsWith("access$") || str.contains("$default") || "invoke".equals(str) || "invokeSuspend".equals(str);
    }

    public static void logcat(int i, String str, String str2) {
        int length;
        if (str2 != null && (length = str2.length()) > MAX_LOGCAT_LEN) {
            int i2 = (length + 3499) / MAX_LOGCAT_LEN;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = i3 * MAX_LOGCAT_LEN;
                int iMin = Math.min(i4 + MAX_LOGCAT_LEN, length);
                StringBuilder sb = new StringBuilder();
                sb.append("[");
                i3++;
                sb.append(i3);
                sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR);
                sb.append(i2);
                sb.append("] ");
                sb.append(str2.substring(i4, iMin));
                sb.toString();
            }
        }
    }

    static String formatStackInfo(StackTraceElement stackTraceElement) {
        return "[" + Process.myTid() + "] " + formatClickableLocation(stackTraceElement) + " ";
    }

    static String formatClickableLocation(StackTraceElement stackTraceElement) {
        String fileName2 = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        if (fileName2 == null || fileName2.isEmpty() || "SourceFile".equals(fileName2)) {
            fileName2 = resolveCallerName(stackTraceElement) + ".java";
        }
        return "(" + fileName2 + ":" + lineNumber + ")";
    }

    static String resolveCallerName(StackTraceElement stackTraceElement) {
        String fileName2 = stackTraceElement.getFileName();
        if (fileName2 != null && !fileName2.isEmpty() && !"SourceFile".equals(fileName2)) {
            if (fileName2.endsWith(".java")) {
                return fileName2.substring(0, fileName2.length() - 5);
            }
            return fileName2.endsWith(".kt") ? fileName2.substring(0, fileName2.length() - 3) : fileName2;
        }
        String className = stackTraceElement.getClassName();
        int iLastIndexOf = className.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            className = className.substring(iLastIndexOf + 1);
        }
        int iIndexOf = className.indexOf(36);
        return iIndexOf > 0 ? className.substring(0, iIndexOf) : className;
    }

    private static void writeToFile(final String str) {
        Context context = applicationContext;
        if (context != null && !checkPermissions(context)) {
            EventBus.getDefault().post("未获取权限");
            return;
        }
        if (executors == null || TextUtils.isEmpty(fileName) || str == null) {
            return;
        }
        if (str.length() > 32768) {
            str = str.substring(0, 32768) + "...[truncated]\n";
        }
        LogIo.execute(executors, new Runnable() { // from class: com.qianhe.baselib.utils.LogToFile.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                String str2 = "\n";
                try {
                    if (!LogToFile.debug) {
                        String strEncrypt = AESCrypto.encrypt(str);
                        if (TextUtils.isEmpty(strEncrypt)) {
                            str2 = str + "\n";
                        } else {
                            str2 = strEncrypt + "\n";
                        }
                    } else {
                        str2 = str + "\n";
                    }
                } catch (OutOfMemoryError unused) {
                    LogToFile.fileAppender.closeQuietly();
                    return;
                } catch (Throwable th) {
                    str2 = str + str2;
                }
                try {
                    LogToFile.fileAppender.append(LogToFile.fileName, str2);
                    if (LogToFile.beginTime == 0) {
                        LogToFile.beginTime = System.currentTimeMillis() / 1000;
                    }
                    LogToFile.endTime = System.currentTimeMillis() / 1000;
                } catch (FileNotFoundException e) {
                    LogToFile.fileAppender.closeQuietly();
                    String str3 = "日志写入失败：" + e;
                    LogToFile.mkLogDirs();
                } catch (IOException e2) {
                    LogToFile.fileAppender.closeQuietly();
                    String str4 = "日志写入失败：" + e2;
                    LogToFile.mkLogDirs();
                } catch (OutOfMemoryError unused2) {
                    LogToFile.fileAppender.closeQuietly();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mkLogDirs() throws IOException {
        Context context;
        if (applicationContext == null) {
            return;
        }
        fileAppender.closeQuietly();
        String strMkLogDir = FileUtil.mkLogDir(applicationContext);
        logPath = strMkLogDir;
        if (TextUtils.isEmpty(strMkLogDir)) {
            return;
        }
        SharedPreferences sharedPreferences = mSp;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putLong("createLogTime", System.currentTimeMillis()).apply();
        }
        fileName = logPath + InternalZipConstants.ZIP_FILE_SEPARATOR + FILETAG + dateFormatT.format(new Date()) + ".log";
        File file = new File(fileName);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || (context = applicationContext) == null) {
                return;
            }
            BleLogCache.init(context);
            CalibrateLogToFile.init(applicationContext);
            FileUtil.mkDiffLogFile(applicationContext);
            FileUtil.mkDevLogFile(applicationContext);
        } catch (IOException e) {
            String str = "重建日志文件失败：" + e;
        }
    }

    public static long decryptLogToStream(String str, OutputStream outputStream) {
        return decryptLogToStream(str, outputStream, null);
    }

    public static long decryptLogToStream(String str, OutputStream outputStream, final DecryptProgressListener decryptProgressListener) throws IOException {
        InputStream inputStream;
        if (outputStream == null) {
            throw new IOException("output stream is null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IOException("日志文件路径为空");
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            throw new IOException("日志文件不存在: " + str);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = 1;
        final long jMax = Math.max(1L, file.length());
        InputStream fileInputStream = new FileInputStream(file);
        if (decryptProgressListener == null) {
            inputStream = fileInputStream;
        } else {
            try {
                inputStream = new FilterInputStream(fileInputStream) { // from class: com.qianhe.baselib.utils.LogToFile.2
                    private int lastPct = -1;
                    private long readBytes;

                    private void bump(int i) {
                        if (i <= 0) {
                            return;
                        }
                        long j2 = this.readBytes + i;
                        this.readBytes = j2;
                        int iMin = (int) Math.min(100L, (j2 * 100) / jMax);
                        if (iMin != this.lastPct) {
                            this.lastPct = iMin;
                            decryptProgressListener.onProgress(Math.min(this.readBytes, jMax), jMax);
                        }
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public int read() throws IOException {
                        int i = super.read();
                        if (i >= 0) {
                            bump(1);
                        }
                        return i;
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public int read(byte[] bArr, int i, int i2) throws IOException {
                        int i3 = super.read(bArr, i, i2);
                        bump(i3);
                        return i3;
                    }
                };
            } finally {
            }
        }
        try {
            Charset charset = StandardCharsets.UTF_8;
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charset), DECRYPT_IO_BUFFER);
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, charset), DECRYPT_IO_BUFFER);
                long j2 = 0;
                long j3 = 0;
                while (true) {
                    String line = bufferedReader.readLine();
                    long j4 = j;
                    if (line != null) {
                        if (Thread.currentThread().isInterrupted()) {
                            throw new IOException("cancelled");
                        }
                        if (line.isEmpty()) {
                            j = j4;
                        } else {
                            long j5 = j2 + j4;
                            if (AESCrypto.isEncrypted(line)) {
                                j3 += j4;
                                try {
                                    String strDecrypt = AESCrypto.decrypt(line);
                                    if (!TextUtils.isEmpty(strDecrypt)) {
                                        line = strDecrypt;
                                    }
                                } catch (Exception e) {
                                    String str2 = "日志解密失败: " + e.getMessage();
                                }
                            }
                            bufferedWriter.write(line);
                            bufferedWriter.newLine();
                            j = j4;
                            j2 = j5;
                        }
                    } else {
                        bufferedWriter.flush();
                        bufferedReader.close();
                        inputStream.close();
                        fileInputStream.close();
                        if (decryptProgressListener != null) {
                            decryptProgressListener.onProgress(jMax, jMax);
                        }
                        String str3 = "decryptLogToStream done: lines=" + j2 + " encrypted=" + j3 + " size=" + file.length() + " costMs=" + (System.currentTimeMillis() - jCurrentTimeMillis);
                        return j2;
                    }
                }
            } finally {
            }
        } finally {
        }
    }

    public static String decryptLogToTempFile(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            e("日志文件路径为空");
            return null;
        }
        if (!new File(str).exists()) {
            e("日志文件不存在");
            return null;
        }
        File file = new File(str + ".decrypt");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                decryptLogToStream(str, fileOutputStream);
                String absolutePath = file.getAbsolutePath();
                fileOutputStream.close();
                return absolutePath;
            } finally {
            }
        } catch (IOException e) {
            e("日志转存临时文件失败：" + e);
            if (file.exists() && !file.delete()) {
                String str2 = "删除不完整解密临时文件失败: " + file.getAbsolutePath();
            }
            return null;
        }
    }

    public static boolean renameFile(String str, String str2) {
        String parent;
        File file = new File(str);
        if (file.exists() && file.isFile() && (parent = file.getParent()) != null) {
            return file.renameTo(new File(parent, str2));
        }
        return false;
    }
}
