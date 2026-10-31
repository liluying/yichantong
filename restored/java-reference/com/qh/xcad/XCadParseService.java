package com.qh.xcad;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import com.qh.xcad.IXCadParseService;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class XCadParseService extends Service {
    private static final String TAG = "XCadParseService";
    private final IXCadParseService.Stub binder = new IXCadParseService.Stub() { // from class: com.qh.xcad.XCadParseService.1
        @Override // com.qh.xcad.IXCadParseService
        public ParseReply parse(String str) {
            return XCadParseService.doParse(XCadParseService.this.getApplicationContext(), str);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static ParseReply doParse(Context context, String str) {
        ParcelFileDescriptor tempFile;
        ParseReply parseReply = new ParseReply();
        if (str == null || str.isEmpty()) {
            parseReply.status = 1;
            parseReply.error = "空路径";
            return parseReply;
        }
        try {
            byte[] dxf = str.toLowerCase(Locale.ROOT).endsWith(".dxf") ? XCad.parseDxf(str) : XCad.parseDwg(str);
            if (dxf == null) {
                parseReply.status = 1;
                String lastError = XCad.getLastError();
                if (lastError == null || lastError.isEmpty()) {
                    lastError = "解析失败";
                }
                parseReply.error = lastError;
                return parseReply;
            }
            try {
                try {
                    tempFile = Shm.toAshmem("xcad-parse-" + Process.myPid(), dxf);
                } catch (Throwable th) {
                    String str2 = "ashmem 不可用，回退临时文件: " + th;
                    tempFile = Shm.toTempFile(context.getCacheDir(), dxf);
                }
                parseReply.status = 0;
                parseReply.pfd = tempFile;
                parseReply.length = dxf.length;
                return parseReply;
            } catch (OutOfMemoryError unused) {
                parseReply.status = 2;
                parseReply.error = "内存不足(结果传输阶段)";
                return parseReply;
            } catch (Throwable th2) {
                parseReply.status = 1;
                parseReply.error = "结果传输失败: " + th2;
                return parseReply;
            }
        } catch (OutOfMemoryError unused2) {
            parseReply.status = 2;
            parseReply.error = "内存不足(native 解析阶段)";
            String str3 = "OOM during native parse: " + str;
            return parseReply;
        } catch (Throwable th3) {
            parseReply.status = 1;
            parseReply.error = "解析异常: " + th3;
            return parseReply;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            XCad.setupLogger(null);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Process.killProcess(Process.myPid());
    }
}
