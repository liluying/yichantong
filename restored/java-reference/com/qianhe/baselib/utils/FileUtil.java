package com.qianhe.baselib.utils;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.lingala.zip4j.util.InternalZipConstants;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class FileUtil {
    private static boolean externalStoragePermissionRequested;
    private static boolean yctDbMigrationChecked;

    public static /* synthetic */ boolean $r8$lambda$ZmDrFwPIgeJatUOYLLuP6Dy_IlE(File file, String str) {
        return true;
    }

    private static boolean shouldUsePrivateStorage(Context context) {
        return false;
    }

    public static String getRoot(Context context) {
        return context.getPackageName().equals("com.qianhe.xfix") ? "XFIX" : "YCT";
    }

    public static void migrateYctDbToXfixIfNeeded(Context context) {
        File externalStorageDirectory;
        if (yctDbMigrationChecked) {
            return;
        }
        if (!"XFIX".equals(getRoot(context))) {
            yctDbMigrationChecked = true;
            return;
        }
        if (canUseExternalStorage(context) && "mounted".equals(Environment.getExternalStorageState()) && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null && externalStorageDirectory.exists()) {
            File file = new File(externalStorageDirectory, "YCT");
            if (!file.exists() || !file.isDirectory()) {
                yctDbMigrationChecked = true;
                return;
            }
            File file2 = new File(file, "db");
            if (!file2.exists() || !file2.isDirectory()) {
                yctDbMigrationChecked = true;
                return;
            }
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                yctDbMigrationChecked = true;
                return;
            }
            File file3 = new File(file2, "yct.db");
            if (!file3.exists() || !file3.isFile() || file3.length() <= 0) {
                yctDbMigrationChecked = true;
                return;
            }
            File file4 = new File(externalStorageDirectory, getRoot(context) + File.separator + "db");
            if (!file4.exists()) {
                if (!file4.mkdirs()) {
                    String str = "创建 XFIX/db 目录失败：" + file4.getAbsolutePath();
                    return;
                }
            } else if (!file4.isDirectory()) {
                String str2 = "XFIX/db 路径已存在但不是文件夹：" + file4.getAbsolutePath();
                yctDbMigrationChecked = true;
                return;
            }
            File file5 = new File(file4, "xfix.db");
            if (file5.exists() && file5.isFile() && file5.length() > 0) {
                yctDbMigrationChecked = true;
                return;
            }
            boolean zCopyFile = FileCopyHelper.copyFile(file3, file5);
            StringBuilder sb = new StringBuilder();
            sb.append(zCopyFile ? "YCT数据库复制到XFIX成功" : "YCT数据库复制到XFIX失败");
            sb.append("：");
            sb.append(file3.getAbsolutePath());
            sb.append(" -> ");
            sb.append(file5.getAbsolutePath());
            LogToFile.i(sb.toString());
            if (zCopyFile) {
                yctDbMigrationChecked = true;
            }
        }
    }

    public static String getFileMD5(String str) {
        return getFileMD5HexAndBase64(str)[0];
    }

    public static String getFileMD5Base64(String str) {
        return getFileMD5HexAndBase64(str)[1];
    }

    public static String[] getFileMD5HexAndBase64(String str) throws NoSuchAlgorithmException, IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i > 0) {
                        if (Thread.currentThread().isInterrupted()) {
                            String[] strArr = {"", ""};
                            fileInputStream.close();
                            return strArr;
                        }
                        messageDigest.update(bArr, 0, i);
                    } else {
                        fileInputStream.close();
                        byte[] bArrDigest = messageDigest.digest();
                        StringBuilder sb = new StringBuilder(32);
                        for (byte b : bArrDigest) {
                            sb.append(String.format("%02x", Byte.valueOf(b)));
                        }
                        return new String[]{sb.toString(), Base64.encodeToString(bArrDigest, 2)};
                    }
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | NoSuchAlgorithmException e) {
            e.printStackTrace();
            return new String[]{"", ""};
        }
    }

    public static List<File> findUnEncryFilesInTimeRange(Context context, long j, long j2) throws ParseException {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory() + File.separator + getRoot(context) + "/log").listFiles(new FilenameFilter() { // from class: com.qianhe.baselib.utils.FileUtil$$ExternalSyntheticLambda3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return FileUtil.$r8$lambda$s4MYlu0Z2gxNp0yFHX7NvrDy4m4(file, str);
            }
        });
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                try {
                    String[] strArrSplit = file.getName().split("-");
                    if (strArrSplit.length > 1) {
                        String str = strArrSplit[1];
                        Date date = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).parse(str.substring(0, str.lastIndexOf(46)));
                        if (date != null) {
                            long time = date.getTime() / 1000;
                            if (time >= j && time <= j2) {
                                arrayList.add(file);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return arrayList;
    }

    public static /* synthetic */ boolean $r8$lambda$s4MYlu0Z2gxNp0yFHX7NvrDy4m4(File file, String str) {
        if (str.startsWith(LogToFile.FILETAG) || !str.endsWith(".log")) {
            return str.startsWith("calibrate(") && str.endsWith(".json");
        }
        return true;
    }

    public static List<String> findEncryFilesInTimeRange(Context context, long j, long j2) throws ParseException {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory() + File.separator + getRoot(context) + "/log").listFiles(new FilenameFilter() { // from class: com.qianhe.baselib.utils.FileUtil$$ExternalSyntheticLambda2
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return FileUtil.$r8$lambda$iiXjDwCmQosWpSGZbBOGCC3u0oY(file, str);
            }
        });
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                try {
                    String[] strArrSplit = file.getName().split("-");
                    if (strArrSplit.length > 1) {
                        String str = strArrSplit[1];
                        Date date = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).parse(str.substring(0, str.lastIndexOf(46)));
                        if (date != null) {
                            long time = date.getTime() / 1000;
                            if (time >= j && time <= j2) {
                                arrayList.add(file.getAbsolutePath());
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return arrayList;
    }

    public static /* synthetic */ boolean $r8$lambda$iiXjDwCmQosWpSGZbBOGCC3u0oY(File file, String str) {
        return str.startsWith(LogToFile.FILETAG) && str.endsWith(".log");
    }

    public static ArrayList<String> listFileName(String str) throws ParseException {
        ArrayList<String> arrayList = new ArrayList<>();
        File[] fileArrListFiles = new File(str).listFiles(new FilenameFilter() { // from class: com.qianhe.baselib.utils.FileUtil$$ExternalSyntheticLambda0
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return FileUtil.$r8$lambda$ZmDrFwPIgeJatUOYLLuP6Dy_IlE(file, str2);
            }
        });
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new Comparator() { // from class: com.qianhe.baselib.utils.FileUtil$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                }
            });
            for (File file : fileArrListFiles) {
                try {
                    String[] strArrSplit = file.getName().split("-");
                    if (strArrSplit.length > 1) {
                        String str2 = strArrSplit[1];
                        Date date = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).parse(str2.substring(0, str2.lastIndexOf(46)));
                        if (date != null) {
                            date.getTime();
                            arrayList.add(file.getName());
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return arrayList;
    }

    private static String mkDir(Context context, String str) {
        if (shouldUsePrivateStorage(context)) {
            return mkPrivateDir(context, str);
        }
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            String str2 = "外部储存未挂载-使用私有目录：" + str;
            return mkPrivateDir(context, str);
        }
        if (!canUseExternalStorage(context)) {
            requestExternalStoragePermissionIfNeeded(context);
        }
        File file = new File(Environment.getExternalStorageDirectory() + File.separator + str);
        if (!file.exists() && !file.mkdirs()) {
            String str3 = "外部储存目录创建失败：" + file.getAbsolutePath();
        }
        return file.getAbsolutePath();
    }

    private static boolean canUseExternalStorage(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return Environment.isExternalStorageManager();
        }
        if (i >= 23) {
            return EasyPermissions.hasPermissions(context, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
        }
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean hasExternalStorageAccess(Context context) {
        return canUseExternalStorage(context);
    }

    public static void openAllFilesAccessSettings(Context context) {
        if (Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager()) {
            return;
        }
        try {
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } catch (Exception e) {
            String str = "申请所有文件访问权限失败：" + e.getMessage();
            try {
                Intent intent2 = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                if (!(context instanceof Activity)) {
                    intent2.addFlags(268435456);
                }
                context.startActivity(intent2);
            } catch (Exception e2) {
                String str2 = "申请所有文件访问权限备用跳转失败：" + e2.getMessage();
            }
        }
    }

    private static void requestExternalStoragePermissionIfNeeded(Context context) {
        if (shouldUsePrivateStorage(context) || externalStoragePermissionRequested) {
            return;
        }
        externalStoragePermissionRequested = true;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            openAllFilesAccessSettings(context);
            return;
        }
        if (i >= 23) {
            String[] strArr = {"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};
            if (!EasyPermissions.hasPermissions(context, strArr) && (context instanceof Activity)) {
                EasyPermissions.requestPermissions((Activity) context, "需要存储权限以保存应用数据", 61441, strArr);
            }
        }
    }

    private static String mkPrivateDir(Context context, String str) {
        String str2 = context.getFilesDir() + File.separator + str;
        File file = new File(str2);
        if (!file.exists()) {
            boolean zMkdirs = file.mkdirs();
            LogToFile.i("创建私有目录：" + str2);
            if (zMkdirs) {
                copyUserData(context, str, str2);
            }
        } else {
            copyUserData(context, str, str2);
        }
        return file.getAbsolutePath();
    }

    private static void copyUserData(Context context, String str, String str2) {
        if (shouldUsePrivateStorage(context)) {
            File file = new File(Environment.getExternalStorageDirectory() + File.separator + str);
            if (file.exists()) {
                boolean zCopyDirectory = FileCopyHelper.copyDirectory(file, new File(str2));
                StringBuilder sb = new StringBuilder();
                sb.append(zCopyDirectory ? "文件夹复制成功" : "文件夹复制失败");
                sb.append(" - ");
                sb.append(file.getName());
                LogToFile.i(sb.toString());
                if (zCopyDirectory) {
                    FileDeleteHelper.deleteDirectory(file);
                }
            }
        }
    }

    public static String mkApkDir(Context context) {
        return mkDir(context, getRoot(context) + "/apk");
    }

    public static String mkLogDir(Context context) {
        return mkDir(context, getRoot(context) + "/log");
    }

    public static String mkFmwDir(Context context) {
        return mkDir(context, getRoot(context) + "/firmware");
    }

    public static String mkDbDir(Context context) {
        migrateYctDbToXfixIfNeeded(context);
        return mkDir(context, getRoot(context) + "/db");
    }

    public static String mkConfigDir(Context context) {
        return mkDir(context, getRoot(context) + "/config");
    }

    public static String mkBLueLogFile(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(mkLogDir(context));
        String str = File.separator;
        sb.append(str);
        sb.append(BleLogCache.FILETAG);
        sb.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).format(new Date()));
        sb.append(".log");
        String string = sb.toString();
        File file = new File(string);
        try {
            if (!file.exists() && !file.createNewFile()) {
                String str2 = context.getFilesDir() + str + string;
                File file2 = new File(str2);
                if (file2.exists()) {
                    return str2;
                }
                file2.createNewFile();
                String str3 = "新建文件：" + str2;
                return str2;
            }
            return file.getAbsolutePath();
        } catch (IOException e) {
            LogToFile.e("mkBLueLogFile：" + e);
            return string;
        }
    }

    public static String mkBaseBLueLogFile(Context context) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(mkLogDir(context));
        String str = File.separator;
        sb.append(str);
        sb.append("ble(base)-");
        sb.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).format(new Date()));
        sb.append(".log");
        String string = sb.toString();
        File file = new File(string);
        try {
            if (!file.exists() && !file.createNewFile()) {
                String str2 = context.getFilesDir() + str + string;
                File file2 = new File(str2);
                if (file2.exists()) {
                    return str2;
                }
                file2.createNewFile();
                String str3 = "新建文件：" + str2;
                return str2;
            }
            return file.getAbsolutePath();
        } catch (IOException e) {
            LogToFile.e("mkBaseBLueLogFile：" + e);
            return string;
        }
    }

    public static String mkBLueDebugFile(Context context) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(mkLogDir(context));
        String str = File.separator;
        sb.append(str);
        sb.append("debug-");
        sb.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).format(new Date()));
        sb.append(".log");
        String string = sb.toString();
        File file = new File(string);
        try {
            if (!file.exists() && !file.createNewFile()) {
                String str2 = context.getFilesDir() + str + string;
                File file2 = new File(str2);
                if (file2.exists()) {
                    return str2;
                }
                file2.createNewFile();
                String str3 = "新建文件：" + str2;
                return str2;
            }
            return file.getAbsolutePath();
        } catch (IOException e) {
            LogToFile.e("mkBLueDebugFile：" + e);
            return string;
        }
    }

    public static String mkDiffLogFile(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(mkLogDir(context));
        String str = File.separator;
        sb.append(str);
        sb.append("diff-");
        sb.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).format(new Date()));
        sb.append(".log");
        String string = sb.toString();
        File file = new File(string);
        try {
            if (!file.exists() && !file.createNewFile()) {
                String str2 = context.getFilesDir() + str + string;
                File file2 = new File(str2);
                if (file2.exists()) {
                    return str2;
                }
                file2.createNewFile();
                String str3 = "新建文件：" + str2;
                return str2;
            }
            return file.getAbsolutePath();
        } catch (IOException e) {
            LogToFile.e("mkDiffLogFile：" + e);
            return string;
        }
    }

    public static String mkDevLogFile(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(mkLogDir(context));
        String str = File.separator;
        sb.append(str);
        sb.append("dev-");
        sb.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).format(new Date()));
        sb.append(".log");
        String string = sb.toString();
        File file = new File(string);
        try {
            if (!file.exists() && !file.createNewFile()) {
                String str2 = context.getFilesDir() + str + string;
                File file2 = new File(str2);
                if (!file2.exists()) {
                    file2.createNewFile();
                    String str3 = "新建文件：" + str2;
                }
                return str2;
            }
            return file.getAbsolutePath();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String mkCalibrateLogFile(Context context, String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            str = "unknown";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(mkLogDir(context));
        String str2 = File.separator;
        sb.append(str2);
        sb.append("calibrate(");
        sb.append(str);
        sb.append(")-");
        sb.append(new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).format(new Date()));
        sb.append(".json");
        String string = sb.toString();
        File file = new File(string);
        try {
            if (!file.exists() && !file.createNewFile()) {
                String str3 = context.getFilesDir() + str2 + string;
                File file2 = new File(str3);
                if (file2.exists()) {
                    return str3;
                }
                file2.createNewFile();
                String str4 = "新建文件：" + str3;
                return str3;
            }
            return file.getAbsolutePath();
        } catch (IOException e) {
            LogToFile.e("mkCalibrateLogFile：" + e);
            return string;
        }
    }

    public static void mkOrderDir(Context context) throws IOException {
        String str = context.getFilesDir() + File.separator + getRoot(context) + "/orderlist";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str + "/order");
        if (file2.exists()) {
            return;
        }
        try {
            file2.createNewFile();
        } catch (IOException unused) {
        }
    }

    public static void saveOrder(Context context, String str) throws IOException {
        try {
            FileWriter fileWriter = new FileWriter(new File(context.getFilesDir() + File.separator + getRoot(context) + "/orderlist/order"), true);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("\n");
            fileWriter.write(sb.toString());
            fileWriter.flush();
        } catch (Exception e) {
            e.toString();
        }
    }

    public static void saveOrderList(Context context, ArrayList<String> arrayList) throws IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(context.getFilesDir() + File.separator + getRoot(context) + "/orderlist/order")));
            try {
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    bufferedWriter.write(it.next());
                    bufferedWriter.newLine();
                    bufferedWriter.flush();
                }
                bufferedWriter.close();
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<String> readOrders(Context context) throws IOException {
        String str = context.getFilesDir() + File.separator + (getRoot(context) + "/orderlist/order");
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        if (!TextUtils.isEmpty(line) && !arrayList.contains(line)) {
                            arrayList.add(line);
                        }
                    } else {
                        bufferedReader.close();
                        return arrayList;
                    }
                } finally {
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    public static String getLogDir(Context context) {
        return Environment.getExternalStorageDirectory() + File.separator + getRoot(context) + "/log/";
    }

    public static String getFilePathByUri(Context context, Uri uri) {
        Uri uri2 = null;
        if (uri == null) {
            return null;
        }
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        "content".equals(uri.getScheme());
        if ("content".equals(uri.getScheme())) {
            if (DocumentsContract.isDocumentUri(context, uri)) {
                if (isExternalStorageDocument(uri)) {
                    String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                    if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                        return Environment.getExternalStorageDirectory() + InternalZipConstants.ZIP_FILE_SEPARATOR + strArrSplit[1];
                    }
                } else {
                    if (isDownloadsDocument(uri)) {
                        return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                    }
                    if (isMediaDocument(uri)) {
                        String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                        String str = strArrSplit2[0];
                        if ("image".equals(str)) {
                            uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                        } else if ("video".equals(str)) {
                            uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                        } else if ("audio".equals(str)) {
                            uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                        }
                        return getDataColumn(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                    }
                }
            } else {
                String[] strArrSplit3 = uri.getPath().split(":");
                if (strArrSplit3 != null && strArrSplit3.length > 0) {
                    return strArrSplit3[strArrSplit3.length - 1];
                }
            }
        }
        return null;
    }

    private static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                        throw th;
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
