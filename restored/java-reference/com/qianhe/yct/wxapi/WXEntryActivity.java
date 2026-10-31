package com.qianhe.yct.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.event.WxAuthCodeResponse;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.lang.ref.WeakReference;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WXEntryActivity extends Activity implements IWXAPIEventHandler {
    private static String TAG = "WXEntryActivity";
    private IWXAPI api;
    private MyHandler handler;

    private static class MyHandler extends Handler {
        private final WeakReference<WXEntryActivity> wxEntryActivityWeakReference;

        public MyHandler(WXEntryActivity wXEntryActivity) {
            this.wxEntryActivityWeakReference = new WeakReference<>(wXEntryActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            message.getData();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.api = WXAPIFactory.createWXAPI(this, getSharedPreferences("sp", 0).getString(Constant.WX_PLAY_APPID, ""), false);
        this.handler = new MyHandler(this);
        try {
            this.api.handleIntent(getIntent(), this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.api.handleIntent(intent, this);
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
        baseReq.getType();
        finish();
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        LogToFile.i("微信授权结果：" + baseResp.errCode + ", type=" + baseResp.getType());
        if (baseResp.getType() == 1 && (baseResp instanceof SendAuth.Resp)) {
            SendAuth.Resp resp = (SendAuth.Resp) baseResp;
            EventBus.getDefault().post(new WxAuthCodeResponse(baseResp.errCode, resp.code, resp.state));
        }
        finish();
    }
}
