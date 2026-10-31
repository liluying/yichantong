package com.qianhe.baselib.utils;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.model.enums.CompressionLevel;
import net.lingala.zip4j.model.enums.CompressionMethod;
import net.lingala.zip4j.model.enums.EncryptionMethod;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ZipUtil {
    private static final String[] FALLBACK_PREFIXES = {"ble", "dev", "diff", "log", "calibrate"};

    public interface ZipCancelChecker {
        boolean isCancelled();
    }

    public interface ZipProgressListener {
        void onProgress(int i);
    }

    public static File zipLogUploadPackage(List<String> list, List<File> list2, String str) {
        return zipLogUploadPackage(list, list2, str, null);
    }

    public static File zipLogUploadPackage(List<String> list, List<File> list2, String str, ZipProgressListener zipProgressListener) {
        return zipLogUploadPackage(list, list2, str, zipProgressListener, null);
    }

    public static File zipLogUploadPackage(List<String> list, List<File> list2, String str, ZipProgressListener zipProgressListener, ZipCancelChecker zipCancelChecker) throws Throwable {
        File fileZipLogUploadInternal;
        List<File> existingFiles = toExistingFiles(list);
        List<File> listFilterExisting = filterExisting(list2);
        if (existingFiles.isEmpty() && listFilterExisting.isEmpty()) {
            LogToFile.e("压缩失败: 源文件列表为空");
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        File fileZipLogUploadInternal2 = zipLogUploadInternal(existingFiles, listFilterExisting, str, true, zipProgressListener, zipCancelChecker);
        if (fileZipLogUploadInternal2 != null) {
            LogToFile.i("zipLogUploadPackage DEFLATED ok: enc=" + existingFiles.size() + " plain=" + listFilterExisting.size() + " zipSize=" + fileZipLogUploadInternal2.length() + " costMs=" + (System.currentTimeMillis() - jCurrentTimeMillis));
            return fileZipLogUploadInternal2;
        }
        if (isCancelled(zipCancelChecker)) {
            LogToFile.i("zipLogUploadPackage cancelled");
            return null;
        }
        LogToFile.e("DEFLATED压缩失败，尝试STORED无压缩方式");
        File fileZipLogUploadInternal3 = zipLogUploadInternal(existingFiles, listFilterExisting, str, false, zipProgressListener, zipCancelChecker);
        if (fileZipLogUploadInternal3 != null) {
            return fileZipLogUploadInternal3;
        }
        if (isCancelled(zipCancelChecker)) {
            return null;
        }
        ArrayList arrayList = new ArrayList(existingFiles.size() + listFilterExisting.size());
        arrayList.addAll(existingFiles);
        arrayList.addAll(listFilterExisting);
        List<File> listFindLatestFilesByPrefix = findLatestFilesByPrefix(arrayList);
        if (!listFindLatestFilesByPrefix.isEmpty()) {
            LogToFile.e("批量压缩失败，尝试仅压缩各类型最近日志(共" + listFindLatestFilesByPrefix.size() + "个)");
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (File file : listFindLatestFilesByPrefix) {
                if (file.getName().startsWith(LogToFile.FILETAG)) {
                    arrayList2.add(file);
                } else {
                    arrayList3.add(file);
                }
            }
            File fileZipLogUploadInternal4 = zipLogUploadInternal(arrayList2, arrayList3, str, true, zipProgressListener, zipCancelChecker);
            if (fileZipLogUploadInternal4 != null) {
                return fileZipLogUploadInternal4;
            }
            if (!isCancelled(zipCancelChecker) && (fileZipLogUploadInternal = zipLogUploadInternal(arrayList2, arrayList3, str, false, zipProgressListener, zipCancelChecker)) != null) {
                return fileZipLogUploadInternal;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02a8 A[Catch: all -> 0x0232, TryCatch #15 {all -> 0x0232, blocks: (B:97:0x0212, B:99:0x022b, B:100:0x022d, B:119:0x0291, B:121:0x02a8, B:122:0x02ad, B:112:0x0274, B:114:0x028b, B:125:0x02b2, B:127:0x02b6, B:129:0x02ba, B:131:0x02df, B:133:0x02f3), top: B:258:0x0212 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0332 A[Catch: all -> 0x0383, TryCatch #26 {all -> 0x0383, blocks: (B:139:0x0328, B:140:0x032c, B:142:0x0332, B:144:0x033e, B:146:0x0344, B:149:0x0351, B:158:0x036f), top: B:276:0x0328 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03d9 A[Catch: all -> 0x0380, TryCatch #24 {all -> 0x0380, blocks: (B:160:0x0378, B:174:0x03c2, B:175:0x03cf, B:169:0x03ad, B:176:0x03d0, B:177:0x03d3, B:179:0x03d9, B:181:0x03de, B:197:0x042f, B:198:0x0437, B:151:0x035e, B:156:0x036a), top: B:273:0x0378, inners: #37 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x042f A[Catch: all -> 0x0380, TRY_ENTER, TryCatch #24 {all -> 0x0380, blocks: (B:160:0x0378, B:174:0x03c2, B:175:0x03cf, B:169:0x03ad, B:176:0x03d0, B:177:0x03d3, B:179:0x03d9, B:181:0x03de, B:197:0x042f, B:198:0x0437, B:151:0x035e, B:156:0x036a), top: B:273:0x0378, inners: #37 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x047a A[Catch: all -> 0x0426, TryCatch #5 {all -> 0x0426, blocks: (B:183:0x0405, B:215:0x0466, B:214:0x0463, B:220:0x0474, B:222:0x047a, B:224:0x049a, B:226:0x04a0, B:228:0x04a6, B:223:0x0481), top: B:248:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0481 A[Catch: all -> 0x0426, TryCatch #5 {all -> 0x0426, blocks: (B:183:0x0405, B:215:0x0466, B:214:0x0463, B:220:0x0474, B:222:0x047a, B:224:0x049a, B:226:0x04a0, B:228:0x04a6, B:223:0x0481), top: B:248:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010e A[Catch: all -> 0x00db, TryCatch #36 {all -> 0x00db, blocks: (B:33:0x00c5, B:53:0x0108, B:55:0x010e, B:57:0x0147), top: B:289:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0147 A[Catch: all -> 0x00db, TRY_LEAVE, TryCatch #36 {all -> 0x00db, blocks: (B:33:0x00c5, B:53:0x0108, B:55:0x010e, B:57:0x0147), top: B:289:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0148  */
    /* JADX WARN: Type inference failed for: r24v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.concurrent.ExecutorService] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File zipLogUploadInternal(java.util.List<java.io.File> r22, java.util.List<java.io.File> r23, java.lang.String r24, boolean r25, com.qianhe.baselib.utils.ZipUtil.ZipProgressListener r26, final com.qianhe.baselib.utils.ZipUtil.ZipCancelChecker r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.baselib.utils.ZipUtil.zipLogUploadInternal(java.util.List, java.util.List, java.lang.String, boolean, com.qianhe.baselib.utils.ZipUtil$ZipProgressListener, com.qianhe.baselib.utils.ZipUtil$ZipCancelChecker):java.io.File");
    }

    public static /* synthetic */ void $r8$lambda$bHHq7rXZjYq8U8w2XGDB24K9v4U(ZipCancelChecker zipCancelChecker, long j, ProgressTracker progressTracker, long j2, long j3, long j4) {
        if (isCancelled(zipCancelChecker)) {
            return;
        }
        progressTracker.setDone(j2 + Math.min(j, j4 > 0 ? (j3 * j) / j4 : j));
    }

    private static boolean isCancelled(ZipCancelChecker zipCancelChecker) {
        if (Thread.currentThread().isInterrupted()) {
            return true;
        }
        return zipCancelChecker != null && zipCancelChecker.isCancelled();
    }

    private static void throwIfCancelled(ZipCancelChecker zipCancelChecker) throws IOException {
        if (isCancelled(zipCancelChecker)) {
            throw new IOException("cancelled");
        }
    }

    private static long sumFileLengths(List<File> list, List<File> list2) {
        long jMax;
        if (list != null) {
            jMax = 0;
            for (File file : list) {
                if (file != null && file.isFile()) {
                    jMax += Math.max(0L, file.length());
                }
            }
        } else {
            jMax = 0;
        }
        if (list2 != null) {
            for (File file2 : list2) {
                if (file2 != null && file2.isFile()) {
                    jMax += Math.max(0L, file2.length());
                }
            }
        }
        return jMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ProgressTracker {
        private long doneBytes;
        private int lastPercent = -1;
        private final ZipProgressListener listener;
        private final long totalBytes;

        ProgressTracker(long j, ZipProgressListener zipProgressListener) {
            this.totalBytes = Math.max(1L, j);
            this.listener = zipProgressListener;
            publish();
        }

        synchronized long getDone() {
            return this.doneBytes;
        }

        synchronized void addDone(long j) {
            if (j <= 0) {
                return;
            }
            this.doneBytes = Math.min(this.totalBytes, this.doneBytes + j);
            publish();
        }

        synchronized void setDone(long j) {
            this.doneBytes = Math.min(this.totalBytes, Math.max(0L, j));
            publish();
        }

        synchronized void finish() {
            this.doneBytes = this.totalBytes;
            publish(true);
        }

        private void publish() {
            publish(false);
        }

        private void publish(boolean z) {
            if (this.listener == null) {
                return;
            }
            int iMin = z ? 100 : (int) Math.min(99L, (this.doneBytes * 100) / this.totalBytes);
            if (iMin != this.lastPercent) {
                this.lastPercent = iMin;
                this.listener.onProgress(iMin);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DecryptJob decryptEncToTemp(File file, File file2, List<File> list) throws IOException {
        File file3;
        try {
            if (Thread.currentThread().isInterrupted()) {
                throw new IOException("cancelled");
            }
            if (file2 == null || !file2.isDirectory()) {
                file2 = null;
            }
            File fileCreateTempFile = File.createTempFile("logdec_", ".tmp", file2);
            if (list != null) {
                try {
                    list.add(fileCreateTempFile);
                } catch (Exception e) {
                    file3 = fileCreateTempFile;
                    e = e;
                    deleteQuietly(file3);
                    if (list != null && file3 != null) {
                        list.remove(file3);
                    }
                    return new DecryptJob(file, null, e);
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            try {
                LogToFile.decryptLogToStream(file.getAbsolutePath(), fileOutputStream);
                fileOutputStream.close();
                if (Thread.currentThread().isInterrupted()) {
                    throw new IOException("cancelled");
                }
                return new DecryptJob(file, fileCreateTempFile, null);
            } finally {
            }
        } catch (Exception e2) {
            e = e2;
            file3 = null;
        }
    }

    private static void deleteTempFiles(List<File> list) {
        ArrayList arrayList;
        if (list == null) {
            return;
        }
        synchronized (list) {
            arrayList = new ArrayList(list);
            list.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            deleteQuietly((File) it.next());
        }
    }

    public static void deleteLogdecTempFiles(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.isDirectory() || (fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.qianhe.baselib.utils.ZipUtil$$ExternalSyntheticLambda2
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                return ZipUtil.m1046$r8$lambda$Ga3ZtxItakz8xAYEy2wB2BFq0(file2, str);
            }
        })) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            deleteQuietly(file2);
        }
    }

    /* renamed from: $r8$lambda$G-a3ZtxItakz8xAYEy2wB-2BFq0, reason: not valid java name */
    public static /* synthetic */ boolean m1046$r8$lambda$Ga3ZtxItakz8xAYEy2wB2BFq0(File file, String str) {
        return str != null && str.startsWith("logdec_") && str.endsWith(".tmp");
    }

    private static void deleteQuietly(File file) {
        if (file == null || !file.exists() || file.delete()) {
            return;
        }
        LogToFile.e("删除解密临时文件失败: " + file.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class DecryptJob {
        final Exception error;
        final File src;
        final File temp;

        DecryptJob(File file, File file2, Exception exc) {
            this.src = file;
            this.temp = file2;
            this.error = exc;
        }
    }

    private static List<File> toExistingFiles(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    File file = new File(str);
                    if (file.isFile() && file.canRead()) {
                        arrayList.add(file);
                    }
                }
            }
        }
        return arrayList;
    }

    private static List<File> filterExisting(List<File> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (File file : list) {
                if (file != null && file.isFile() && file.canRead()) {
                    arrayList.add(file);
                }
            }
        }
        return arrayList;
    }

    private static void addFileDeflated(ZipOutputStream zipOutputStream, File file, String str, byte[] bArr) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            zipOutputStream.putNextEntry(new ZipEntry(str));
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    zipOutputStream.write(bArr, 0, i);
                } else {
                    zipOutputStream.closeEntry();
                    fileInputStream.close();
                    return;
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
    }

    private static void addFileStored(ZipOutputStream zipOutputStream, File file, String str, byte[] bArr) throws IOException {
        CRC32 crc32 = new CRC32();
        FileInputStream fileInputStream = new FileInputStream(file);
        long j = 0;
        while (true) {
            try {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                crc32.update(bArr, 0, i);
                j += i;
            } finally {
            }
        }
        fileInputStream.close();
        ZipEntry zipEntry = new ZipEntry(str);
        zipEntry.setMethod(0);
        zipEntry.setSize(j);
        zipEntry.setCompressedSize(j);
        zipEntry.setCrc(crc32.getValue());
        zipOutputStream.putNextEntry(zipEntry);
        fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i2 = fileInputStream.read(bArr);
                if (i2 != -1) {
                    zipOutputStream.write(bArr, 0, i2);
                } else {
                    fileInputStream.close();
                    zipOutputStream.closeEntry();
                    return;
                }
            } finally {
            }
        }
    }

    private static List<File> findLatestFilesByPrefix(List<File> list) throws ParseException {
        ArrayList arrayList = new ArrayList();
        for (String str : FALLBACK_PREFIXES) {
            File file = null;
            long j = -1;
            for (File file2 : list) {
                if (file2 != null && file2.isFile() && file2.canRead()) {
                    String lowerCase = file2.getName().toLowerCase(Locale.ROOT);
                    if (matchesLogPrefix(lowerCase, str)) {
                        long logFileTime = parseLogFileTime(lowerCase);
                        if (logFileTime < 0) {
                            logFileTime = file2.lastModified();
                        }
                        if (logFileTime > j) {
                            file = file2;
                            j = logFileTime;
                        }
                    }
                }
            }
            if (file != null) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    private static boolean matchesLogPrefix(String str, String str2) {
        if ("ble".equals(str2)) {
            return str.startsWith(BleLogCache.FILETAG) || str.startsWith("ble(");
        }
        if ("log".equals(str2)) {
            return str.startsWith(LogToFile.FILETAG);
        }
        if ("calibrate".equals(str2)) {
            return str.startsWith("calibrate(") || str.startsWith("calibrate-");
        }
        return str.startsWith(str2 + "-");
    }

    private static long parseLogFileTime(String str) throws ParseException {
        int iIndexOf;
        try {
            iIndexOf = str.indexOf(45);
        } catch (Exception unused) {
        }
        if (iIndexOf < 0) {
            return -1L;
        }
        String strSubstring = str.substring(iIndexOf + 1);
        int iIndexOf2 = strSubstring.indexOf(46);
        if (iIndexOf2 > 0) {
            strSubstring = strSubstring.substring(0, iIndexOf2);
        }
        Date date = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.CHINA).parse(strSubstring);
        if (date != null) {
            return date.getTime();
        }
        return -1L;
    }

    public static File zipWithPassword(String str, Map<String, File> map, Map<String, byte[]> map2) {
        return zipWithPassword(str, "yct.xfix", map, map2);
    }

    public static File zipWithPassword(String str, String str2, Map<String, File> map, Map<String, byte[]> map2) throws IOException {
        if (TextUtils.isEmpty(str)) {
            LogToFile.e("zipWithPassword: 目标路径为空");
            return null;
        }
        boolean z = false;
        boolean z2 = (map == null || map.isEmpty()) ? false : true;
        if (map2 != null && !map2.isEmpty()) {
            z = true;
        }
        if (!z2 && !z) {
            LogToFile.e("zipWithPassword: 源内容为空");
            return null;
        }
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            LogToFile.e("zipWithPassword: 无法创建目录 " + parentFile.getAbsolutePath());
            return null;
        }
        if (file.exists() && !file.delete()) {
            LogToFile.e("zipWithPassword: 无法覆盖已有文件 " + str);
            return null;
        }
        if (str2 == null) {
            str2 = "yct.xfix";
        }
        ZipFile zipFile = new ZipFile(file, str2.toCharArray());
        try {
            ZipParameters zipParameters = new ZipParameters();
            zipParameters.setEncryptFiles(true);
            zipParameters.setEncryptionMethod(EncryptionMethod.ZIP_STANDARD);
            zipParameters.setCompressionMethod(CompressionMethod.DEFLATE);
            zipParameters.setCompressionLevel(CompressionLevel.NORMAL);
            if (map != null) {
                for (Map.Entry<String, File> entry : map.entrySet()) {
                    File value = entry.getValue();
                    if (value != null && value.exists() && value.isFile() && !TextUtils.isEmpty(entry.getKey())) {
                        zipParameters.setFileNameInZip(entry.getKey());
                        FileInputStream fileInputStream = new FileInputStream(value);
                        try {
                            zipFile.addStream(fileInputStream, zipParameters);
                            fileInputStream.close();
                        } finally {
                        }
                    }
                }
            }
            if (map2 != null) {
                for (Map.Entry<String, byte[]> entry2 : map2.entrySet()) {
                    if (!TextUtils.isEmpty(entry2.getKey()) && entry2.getValue() != null) {
                        zipParameters.setFileNameInZip(entry2.getKey());
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(entry2.getValue());
                        try {
                            zipFile.addStream(byteArrayInputStream, zipParameters);
                            byteArrayInputStream.close();
                        } finally {
                        }
                    }
                }
            }
            zipFile.close();
            if (file.exists() && file.length() > 0) {
                return file;
            }
            LogToFile.e("zipWithPassword: 生成文件无效");
            return null;
        } catch (Exception e) {
            LogToFile.e("zipWithPassword: " + e);
            if (file.exists()) {
                file.delete();
            }
            try {
                zipFile.close();
            } catch (Exception unused) {
            }
            return null;
        }
    }

    private static String uniqueEntryName(String str, Set<String> set) {
        String str2;
        if (!set.contains(str)) {
            return str;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        String strSubstring = iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
        String strSubstring2 = iLastIndexOf > 0 ? str.substring(iLastIndexOf) : "";
        int i = 1;
        do {
            str2 = strSubstring + "_" + i + strSubstring2;
            i++;
        } while (set.contains(str2));
        return str2;
    }
}
