package com.qianhe.baselib.utils;

import java.io.File;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class FileDeleteHelper {
    public static boolean deleteDirectory(File file) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            LogToFile.e("deleteDirectory: 无效的文件夹");
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    if (!file2.delete()) {
                        LogToFile.e("deleteDirectory: 删除文件失败 - " + file2.getAbsolutePath());
                        return false;
                    }
                } else if (file2.isDirectory() && !deleteDirectory(file2)) {
                    return false;
                }
            }
        }
        boolean zDelete = file.delete();
        if (!zDelete) {
            LogToFile.e("deleteDirectory: 删除文件夹失败 - " + file.getAbsolutePath());
        }
        return zDelete;
    }
}
