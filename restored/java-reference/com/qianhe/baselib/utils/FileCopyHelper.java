package com.qianhe.baselib.utils;

import java.io.File;
import java.io.FileFilter;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class FileCopyHelper {
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c8 A[Catch: IOException -> 0x00c3, TRY_LEAVE, TryCatch #0 {IOException -> 0x00c3, blocks: (B:58:0x00bf, B:62:0x00c8), top: B:68:0x00bf }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean copyFile(java.io.File r10, java.io.File r11) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.baselib.utils.FileCopyHelper.copyFile(java.io.File, java.io.File):boolean");
    }

    public static boolean copyDirectory(File file, File file2) {
        return copyDirectory(file, file2, null);
    }

    public static boolean copyDirectory(File file, File file2, FileFilter fileFilter) {
        if (!file.exists() || !file.isDirectory()) {
            LogToFile.e("copyDirectory: 源文件夹不存在或不是文件夹");
            return false;
        }
        if (!file2.exists() && !file2.mkdirs()) {
            LogToFile.e("copyDirectory: 创建目标文件夹失败");
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            LogToFile.e("copyDirectory: 无法读取源文件夹内容");
            return false;
        }
        boolean z = true;
        for (File file3 : fileArrListFiles) {
            File file4 = new File(file2, file3.getName());
            if (file3.isFile()) {
                if ((fileFilter == null || fileFilter.accept(file3)) && !copyFile(file3, file4)) {
                    LogToFile.e("copyDirectory: 复制文件失败 - " + file3.getName());
                    z = false;
                }
            } else if (file3.isDirectory() && !copyDirectory(file3, file4, fileFilter)) {
                LogToFile.e("copyDirectory: 复制子文件夹失败 - " + file3.getName());
                z = false;
            }
        }
        return z;
    }
}
