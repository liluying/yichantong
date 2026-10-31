package com.qianhe.yct.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.OrderRecordListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityOrderRecordListBinding;
import com.qianhe.yct.event.CloseOrderResponse;
import com.qianhe.yct.event.OrderRecordResponse;
import com.qianhe.yct.event.WxAppIdResponse;
import com.qianhe.yct.event.WxAuthCodeResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OrderRecordListActivity extends BaseActivity {
    private ActivityOrderRecordListBinding binding;
    private String mMchid;
    private IWXAPI wxApi;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityOrderRecordListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(this));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() throws JSONException {
        NetworkUserLoader.getInstance().getWxGZHAppId();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WxAppIdResponse wxAppIdResponse) {
        if (wxAppIdResponse.state == 0) {
            if (wxAppIdResponse.wechatpayEnable == 1) {
                this.mMchid = wxAppIdResponse.mchid;
                this.wxApi = WXAPIFactory.createWXAPI(this, wxAppIdResponse.appid, true);
                this.mSp.edit().putString(Constant.WX_PLAY_APPID, wxAppIdResponse.appid).commit();
                boolean zRegisterApp = this.wxApi.registerApp(wxAppIdResponse.appid);
                StringBuilder sb = new StringBuilder();
                sb.append("微信API注册app");
                sb.append(zRegisterApp ? "成功" : "失败。");
                LogToFile.i(sb.toString());
                if (zRegisterApp) {
                    SendAuth.Req req = new SendAuth.Req();
                    req.scope = "snsapi_userinfo";
                    this.wxApi.sendReq(req);
                    return;
                } else {
                    cancelLoadingDialog();
                    showTipDialog(getString(R$string.wechat_not_installed), getString(R$string.ok), null);
                    return;
                }
            }
            cancelLoadingDialog();
            showTipDialog(getString(R$string.not_support_wechatpay), getString(R$string.ok), null);
            return;
        }
        cancelLoadingDialog();
        showTipDialog(wxAppIdResponse.errorMsg, getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WxAuthCodeResponse wxAuthCodeResponse) throws JSONException {
        showLoadingDialog(getString(R$string.loading));
        if (!TextUtils.isEmpty(wxAuthCodeResponse.wxCode)) {
            LogToFile.i("微信code：" + wxAuthCodeResponse.wxCode);
            if (!TextUtils.isEmpty(wxAuthCodeResponse.closeOrderNo)) {
                NetworkUserLoader.getInstance().closeOrder(wxAuthCodeResponse.closeOrderNo, wxAuthCodeResponse.wxCode, "取消订单");
                return;
            } else {
                NetworkUserLoader.getInstance().getOrderRecord(wxAuthCodeResponse.wxCode);
                return;
            }
        }
        if (wxAuthCodeResponse.errCode == -2) {
            cancelLoadingDialog();
            return;
        }
        cancelLoadingDialog();
        showTipDialog(getString(R$string.data_anomaly) + ":" + wxAuthCodeResponse.errCode, getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CloseOrderResponse closeOrderResponse) {
        cancelLoadingDialog();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(OrderRecordResponse orderRecordResponse) {
        cancelLoadingDialog();
        if (orderRecordResponse.state == 0) {
            if (orderRecordResponse.list.isEmpty()) {
                showTipDialog(getString(R$string.data_empty), getString(R$string.ok), null);
                return;
            } else {
                this.binding.rcv.setAdapter(new OrderRecordListAdapter(this, orderRecordResponse.list));
                return;
            }
        }
        cancelLoadingDialog();
        showTipDialog(orderRecordResponse.err_msg, getString(R$string.ok), null);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.order_record));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
