package com.qianhe.baselib.utils;

import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
abstract class LogIo {
    static ExecutorService newSingleWriter(final String str) {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(1024), new ThreadFactory() { // from class: com.qianhe.baselib.utils.LogIo$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return LogIo.$r8$lambda$PwC6a_b93spXCryHvD8iZEHuxxM(str, runnable);
            }
        }, new ThreadPoolExecutor.DiscardOldestPolicy());
    }

    public static /* synthetic */ Thread $r8$lambda$PwC6a_b93spXCryHvD8iZEHuxxM(String str, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setPriority(1);
        return thread;
    }

    static void execute(ExecutorService executorService, Runnable runnable) {
        if (executorService == null || executorService.isShutdown() || runnable == null || !hasEnoughHeap()) {
            return;
        }
        try {
            executorService.execute(runnable);
        } catch (OutOfMemoryError | RejectedExecutionException unused) {
        }
    }

    static boolean hasEnoughHeap() {
        Runtime runtime = Runtime.getRuntime();
        return runtime.freeMemory() + (runtime.maxMemory() - runtime.totalMemory()) >= 2097152;
    }

    static final class Appender {
        private String path;
        private BufferedWriter writer;

        Appender() {
        }

        void append(String str, String str2) throws IOException {
            if (TextUtils.isEmpty(str) || str2 == null) {
                return;
            }
            ensureWriter(str);
            this.writer.write(str2);
            this.writer.flush();
        }

        void rotateIfTooLarge(String str, long j) throws IOException {
            if (TextUtils.isEmpty(str) || j <= 0) {
                return;
            }
            File file = new File(str);
            if (!file.exists() || file.length() <= j) {
                return;
            }
            closeQuietly();
            file.delete();
        }

        void closeQuietly() throws IOException {
            BufferedWriter bufferedWriter = this.writer;
            if (bufferedWriter == null) {
                return;
            }
            try {
                bufferedWriter.close();
            } catch (IOException unused) {
            }
            this.writer = null;
            this.path = null;
        }

        private void ensureWriter(String str) throws IOException {
            if (this.writer == null || !str.equals(this.path)) {
                closeQuietly();
                File file = new File(str);
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                if (!file.exists()) {
                    file.createNewFile();
                }
                this.writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str, true), StandardCharsets.UTF_8), 8192);
                this.path = str;
            }
        }
    }
}
