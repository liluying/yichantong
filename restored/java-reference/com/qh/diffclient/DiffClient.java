package com.qh.diffclient;

import com.cmcc.sy.hap.sdk.BuildConfig;
import com.cmcc.sy.hap.sdk.ICallback;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.base.DiffClientImpl;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DiffClient implements DiffClientImpl {
    public static final int DIFF_COORD_SYS_CGCS2000 = 2;
    public static final int DIFF_COORD_SYS_ITRF2008 = 3;
    public static final int DIFF_COORD_SYS_WGS84 = 1;
    public static final int DIFF_STATE_AuthFailed = 202;
    public static final int DIFF_STATE_AuthSuccessed = 203;
    public static final int DIFF_STATE_Authing = 200;
    public static final int DIFF_STATE_Connected = 101;
    public static final int DIFF_STATE_Connecting = 100;
    public static final int DIFF_STATE_Disconnected = 102;
    public static final int DIFF_STATE_NoCoverage = 201;
    public static final int DIFF_STATE_RssAccAssignFailed = 12;
    public static final int DIFF_STATE_RssAccReqFailed = 11;
    public static final int DIFF_STATE_RssAccReqing = 10;
    public static final int DIFF_STATE_Streaming = 301;
    public static final int DIFF_STATE_Unknown = -1;
    public static final int RSS_SUPPORT_ACC = 2;
    public static final int RSS_SUPPORT_SDK = 1;

    public static final class BLH {
        public double altitude;
        public double latitude;
        public double longitude;
    }

    public interface Listener {
        void onDiffDataReceived(byte[] bArr);

        void onStateChanged(int i);
    }

    public static final class NtripClientDiffParams {
        public String ggaLine;
        public int ggaUploadInterval = 10;
        public String host;
        public String mountPoint;
        public String password;
        public int port;
        public String sn;
        public String user;
    }

    public static final class RssAccDiffParams {
        public int coordSys;
        public String ggaLine;
        public boolean shouldEncryptDiffData = true;
        public String sn;
    }

    public static final class RssSdkDiffParams {
        public int coordSys;
        public String ggaLine;
        public String salt;
        public String sn;
    }

    public static native long getAccountExpireEpoch();

    public static native BLH getBaseStationBLH();

    public static native int getRssConnectSupports(String str);

    public static native String getVersion();

    public static native boolean initialize(NtripClientDiffParams ntripClientDiffParams);

    public static native boolean initialize(RssAccDiffParams rssAccDiffParams);

    public static native boolean initialize(RssSdkDiffParams rssSdkDiffParams);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void inputCmccRtcmData(byte[] bArr, int i);

    public static native boolean setListener(Listener listener);

    public static native boolean setLoggerFilePath(String str);

    public static native void stop();

    public static native boolean updateGGA(String str);

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void connect() {
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void updateGgaData(String str) {
        updateGGA(str);
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void disconnect() {
        LogToFile.i("断开差分数据");
        stop();
    }

    private static class CmccCallback implements ICallback {
        private CmccCallback() {
        }

        @Override // com.cmcc.sy.hap.sdk.ICallback
        public void rtcmConsumer(byte[] bArr, Integer num, Integer num2) {
            DiffClient.inputCmccRtcmData(bArr, num.intValue());
        }
    }

    static {
        System.loadLibrary(BuildConfig.SdkLibName);
        System.loadLibrary("diffclient");
    }
}
