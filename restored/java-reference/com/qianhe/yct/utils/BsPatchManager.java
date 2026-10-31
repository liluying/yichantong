package com.qianhe.yct.utils;

import com.qh.bspatch.BsPatch;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.event.ApkListResponse;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BsPatchManager {
    private static BsPatchManager INSTANCE;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final ScheduledExecutorService timeoutExecutor = Executors.newSingleThreadScheduledExecutor();

    public interface OnMergeListener {
        void onError(BsPatch.Result result);

        void onProcessing();

        void onSuccess(String str);
    }

    public static synchronized BsPatchManager getInstance() {
        try {
            if (INSTANCE == null) {
                INSTANCE = new BsPatchManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public void release() {
        INSTANCE = null;
    }

    private BsPatchManager() {
    }

    public void merge(final ApkListResponse.ApkInfo apkInfo, final String str, final String str2, final String str3, final OnMergeListener onMergeListener) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final Future<?> futureSubmit = this.executor.submit(new Runnable() { // from class: com.qianhe.yct.utils.BsPatchManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BsPatchManager.m2807$r8$lambda$aBtBhiagUQYybBm294tSos7tU0(this.f$0, str2, apkInfo, onMergeListener, atomicBoolean, str, str3);
            }
        });
        this.timeoutExecutor.schedule(new Runnable() { // from class: com.qianhe.yct.utils.BsPatchManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BsPatchManager.m2806$r8$lambda$N1V5s6rYlaOtnoGjWD0kldZLWs(this.f$0, atomicBoolean, futureSubmit, onMergeListener);
            }
        }, 600000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: $r8$lambda$aBtBhi-agUQYybBm294tSos7tU0, reason: not valid java name */
    public static /* synthetic */ void m2807$r8$lambda$aBtBhiagUQYybBm294tSos7tU0(BsPatchManager bsPatchManager, String str, ApkListResponse.ApkInfo apkInfo, OnMergeListener onMergeListener, AtomicBoolean atomicBoolean, String str2, String str3) {
        String str4;
        bsPatchManager.getClass();
        try {
            String fileMD5 = FileUtil.getFileMD5(str);
            StringBuilder sb = new StringBuilder();
            sb.append("差分包md5比对：");
            sb.append(fileMD5);
            sb.append("  ————  ");
            sb.append(apkInfo != null ? apkInfo.diff_file_md5 : "null");
            LogToFile.i(sb.toString());
            if (onMergeListener != null) {
                onMergeListener.onProcessing();
            }
            if (apkInfo != null && (str4 = apkInfo.diff_file_md5) != null && str4.equals(fileMD5)) {
                LogToFile.i("开始BsPatch.patch old=" + str2 + " patch=" + str + " out=" + str3);
                BsPatch.Result resultPatch = BsPatch.patch(str2, str, str3);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("差分包合并结果：");
                sb2.append(resultPatch != null ? resultPatch.toString() : "result = null");
                LogToFile.i(sb2.toString());
                if (resultPatch != null && resultPatch.success) {
                    String fileMD52 = FileUtil.getFileMD5(str3);
                    LogToFile.i("合并后 完整包md5比对：" + fileMD52 + "  ————  " + apkInfo.full_file_md5);
                    String str5 = apkInfo.full_file_md5;
                    if (str5 != null && str5.equals(fileMD52)) {
                        if (!atomicBoolean.compareAndSet(false, true) || onMergeListener == null) {
                            return;
                        }
                        onMergeListener.onSuccess(str3);
                        return;
                    }
                    bsPatchManager.notifyError(atomicBoolean, onMergeListener, resultPatch);
                    return;
                }
                bsPatchManager.notifyError(atomicBoolean, onMergeListener, resultPatch);
                return;
            }
            bsPatchManager.notifyError(atomicBoolean, onMergeListener, null);
        } catch (Throwable th) {
            LogToFile.e("差分包合并异常(Throwable)：" + th);
            bsPatchManager.notifyError(atomicBoolean, onMergeListener, new BsPatch.Result(false, String.valueOf(th), null));
        }
    }

    /* renamed from: $r8$lambda$N1V5-s6rYlaOtnoGjWD0kldZLWs, reason: not valid java name */
    public static /* synthetic */ void m2806$r8$lambda$N1V5s6rYlaOtnoGjWD0kldZLWs(BsPatchManager bsPatchManager, AtomicBoolean atomicBoolean, Future future, OnMergeListener onMergeListener) {
        bsPatchManager.getClass();
        if (atomicBoolean.get()) {
            return;
        }
        LogToFile.e("差分包合并超时(600000ms)，回落完整包");
        future.cancel(true);
        bsPatchManager.notifyError(atomicBoolean, onMergeListener, new BsPatch.Result(false, "merge timeout", null));
    }

    private void notifyError(AtomicBoolean atomicBoolean, OnMergeListener onMergeListener, BsPatch.Result result) {
        if (!atomicBoolean.compareAndSet(false, true) || onMergeListener == null) {
            return;
        }
        onMergeListener.onError(result);
    }
}
