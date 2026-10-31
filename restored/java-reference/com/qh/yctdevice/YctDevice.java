package com.qh.yctdevice;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class YctDevice implements AutoCloseable {
    public int FMW_TYPE_BEIYUN = 0;
    public int FMW_TYPE_DEVICE = 1;
    public int FMW_TYPE_UNICORE = 2;
    private long mHandle;

    public interface FmwUpdateListener {
        void onUpdateFailed(int i, String str);

        void onUpdateProgress(int i, int i2);

        void onUpdateSuccessed();
    }

    public interface Listener {
        void onDeviceLineMessage(String str);

        void onDiffParamsChanged();

        void onSendToDeviceData(byte[] bArr, int i);
    }

    private static native long create();

    private static native void destory(long j);

    public static native String getVersion();

    private static native void inputStream(long j, byte[] bArr, int i);

    private static native void notifyUserLogged(long j, long j2);

    private static native void sendToDevice(long j, byte[] bArr, int i);

    private static native boolean setListener(long j, Listener listener);

    public static native boolean setLoggerFilePath(String str);

    private static native boolean startFmwUpdate(long j, int i, String str, FmwUpdateListener fmwUpdateListener);

    private static native void stopFmwUpdate(long j);

    private static native void updateCurrentProjectInfo(long j, int i, long j2);

    public YctDevice() {
        this.mHandle = -1L;
        this.mHandle = create();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        long j = this.mHandle;
        if (j >= 0) {
            destory(j);
            this.mHandle = -1L;
        }
    }

    public boolean setListener(Listener listener) {
        long j = this.mHandle;
        if (j < 0) {
            return false;
        }
        return setListener(j, listener);
    }

    public void notifyUserLogged(long j) {
        long j2 = this.mHandle;
        if (j2 < 0) {
            return;
        }
        notifyUserLogged(j2, j);
    }

    public void inputStream(byte[] bArr, int i) {
        long j = this.mHandle;
        if (j < 0) {
            return;
        }
        inputStream(j, bArr, i);
    }

    public void sendToDevice(byte[] bArr, int i) {
        long j = this.mHandle;
        if (j < 0) {
            return;
        }
        sendToDevice(j, bArr, i);
    }

    public void updateCurrentProjectInfo(int i, long j) {
        long j2 = this.mHandle;
        if (j2 < 0) {
            return;
        }
        updateCurrentProjectInfo(j2, i, j);
    }

    public boolean startFmwUpdate(int i, String str, FmwUpdateListener fmwUpdateListener) {
        long j = this.mHandle;
        if (j < 0) {
            return false;
        }
        return startFmwUpdate(j, i, str, fmwUpdateListener);
    }

    public void stopFmwUpdate() {
        long j = this.mHandle;
        if (j < 0) {
            return;
        }
        stopFmwUpdate(j);
    }

    static {
        System.loadLibrary("yctdevice");
    }
}
