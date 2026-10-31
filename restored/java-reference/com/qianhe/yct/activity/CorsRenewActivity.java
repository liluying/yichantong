package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentResultListener;
import androidx.recyclerview.widget.GridLayoutManager;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.CorsPriceListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.RenewPriceBean;
import com.qianhe.yct.databinding.ActivityCorsRenewBinding;
import com.qianhe.yct.dialog.QRPayDialogFragment;
import com.qianhe.yct.event.CorsExpireEpochEvent;
import com.qianhe.yct.event.PriceListResponse;
import com.qianhe.yct.event.RenewCorsResponse;
import com.qianhe.yct.event.WxAppIdResponse;
import com.qianhe.yct.event.WxAuthCodeResponse;
import com.qianhe.yct.event.WxOpenIdResponse;
import com.qianhe.yct.event.WxPayResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.TimeShiftUtil;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.modelpay.PayReq;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CorsRenewActivity extends BaseActivity {
    private ActivityCorsRenewBinding binding;
    private String mMchid;
    private String mOrderNo;
    private RenewPriceBean mPriceBean;
    private String mWxCode;
    private QRPayDialogFragment qrPayDialogFragment;
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
        this.binding = ActivityCorsRenewBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.binding.tvPayment.setEnabled(false);
        this.binding.tvHostNum.setText(this.mSp.getString("deviceSn", ""));
        this.binding.tvPayment.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CorsRenewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws JSONException {
                if (CorsRenewActivity.this.mPriceBean != null) {
                    if (CorsRenewActivity.this.isWeChatInstalled()) {
                        CorsRenewActivity corsRenewActivity = CorsRenewActivity.this;
                        corsRenewActivity.showLoadingDialog(corsRenewActivity.getString(R$string.please_wait));
                        NetworkUserLoader.getInstance().getWxGZHAppId();
                        return;
                    } else {
                        CorsRenewActivity corsRenewActivity2 = CorsRenewActivity.this;
                        corsRenewActivity2.showTipDialog(corsRenewActivity2.getString(R$string.wechat_not_installed), CorsRenewActivity.this.getString(R$string.scan_pay), null, "wechat_not_installed");
                        return;
                    }
                }
                CorsRenewActivity.this.cancelLoadingDialog();
                CorsRenewActivity corsRenewActivity3 = CorsRenewActivity.this;
                corsRenewActivity3.showToastDialog(corsRenewActivity3.getString(R$string.data_anomaly));
                LogToFile.e("续费信息为空：mPriceBean = null");
            }
        });
        this.binding.lltScanPay.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CorsRenewActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CorsRenewActivity.this.qrPayDialogFragment == null) {
                    CorsRenewActivity.this.qrPayDialogFragment = new QRPayDialogFragment();
                }
                if (CorsRenewActivity.this.qrPayDialogFragment.getFragmentManager() != null && CorsRenewActivity.this.qrPayDialogFragment.getDialog() != null && CorsRenewActivity.this.qrPayDialogFragment.getDialog().isShowing()) {
                    CorsRenewActivity.this.qrPayDialogFragment.dismiss();
                }
                CorsRenewActivity.this.qrPayDialogFragment.show(CorsRenewActivity.this.getSupportFragmentManager(), "QRPayDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString("deviceNo", CorsRenewActivity.this.binding.tvHostNum.getText().toString().trim());
                bundle2.putLong("priceId", CorsRenewActivity.this.mPriceBean.id);
                CorsRenewActivity.this.qrPayDialogFragment.setArguments(bundle2);
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws JSONException, IOException {
        super.onResume();
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        NetworkUserLoader.getInstance().getCorsExpirationTime(getClass().getName(), this.binding.tvHostNum.getText().toString());
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() throws JSONException {
        showLoadingDialog(getString(R$string.loading));
        NetworkUserLoader.getInstance().getPriceList();
        this.binding.rcv.setLayoutManager(new GridLayoutManager(this, 3));
        this.binding.tvAccountExpire.setText(getExpireDate(System.currentTimeMillis(), this.mSp.getLong("corsAccountExpireEpoch", 0L)));
        getSupportFragmentManager().setFragmentResultListener("payment_complete", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.CorsRenewActivity.3
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("payment_complete") && bundle.getBoolean("confirm")) {
                    if (EventBus.getDefault().isRegistered(CorsRenewActivity.this)) {
                        EventBus.getDefault().unregister(CorsRenewActivity.this);
                    }
                    CorsRenewActivity.this.startActivity(new Intent(CorsRenewActivity.this, (Class<?>) OrderRecordListActivity.class));
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("wechat_not_installed", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.CorsRenewActivity.4
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("wechat_not_installed") && bundle.getBoolean("confirm")) {
                    CorsRenewActivity.this.binding.lltScanPay.performClick();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CorsExpireEpochEvent corsExpireEpochEvent) {
        if (corsExpireEpochEvent.state == 0) {
            this.mSp.edit().putLong("corsAccountExpireEpoch", corsExpireEpochEvent.expireEpoch * 1000).commit();
            this.binding.tvAccountExpire.setText(getExpireDate(System.currentTimeMillis(), corsExpireEpochEvent.expireEpoch * 1000));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PriceListResponse priceListResponse) {
        cancelLoadingDialog();
        if (priceListResponse.state == 0) {
            ArrayList arrayList = new ArrayList();
            if (priceListResponse.hasExclusivePrice) {
                Iterator<RenewPriceBean> it = priceListResponse.list.iterator();
                do {
                    RenewPriceBean next = it.next();
                    if (next.price_group_id == 1) {
                        arrayList.add(next);
                    }
                } while (it.hasNext());
            } else {
                arrayList.addAll(priceListResponse.list);
            }
            CorsPriceListAdapter corsPriceListAdapter = new CorsPriceListAdapter(this, arrayList);
            this.binding.rcv.setAdapter(corsPriceListAdapter);
            corsPriceListAdapter.setOnActionListener(new CorsPriceListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.CorsRenewActivity.5
                @Override // com.qianhe.yct.adapter.CorsPriceListAdapter.OnActionListener
                public void onAction(RenewPriceBean renewPriceBean) {
                    long jAfterYears;
                    CorsRenewActivity.this.mMchid = "";
                    CorsRenewActivity.this.mWxCode = "";
                    CorsRenewActivity.this.mOrderNo = "";
                    CorsRenewActivity.this.mPriceBean = renewPriceBean;
                    if (CorsRenewActivity.this.isPad() && !CorsRenewActivity.this.isWeChatInstalled()) {
                        CorsRenewActivity.this.binding.tvPayment.setVisibility(8);
                        CorsRenewActivity.this.binding.lltScanPay.setVisibility(0);
                        if (CorsRenewActivity.this.binding.lltScanPay.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) CorsRenewActivity.this.binding.lltScanPay.getLayoutParams();
                            marginLayoutParams.leftMargin = 0;
                            CorsRenewActivity.this.binding.lltScanPay.setLayoutParams(marginLayoutParams);
                        }
                    } else {
                        CorsRenewActivity.this.binding.tvPayment.setEnabled(true);
                        CorsRenewActivity.this.binding.tvPayment.setText(R$string.pay_now);
                        CorsRenewActivity.this.binding.lltScanPay.setVisibility(0);
                        CorsRenewActivity.this.binding.lltAfterRenewal.setVisibility(0);
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j = ((BaseActivity) CorsRenewActivity.this).mSp.getLong("corsAccountExpireEpoch", 0L);
                    if (j <= 0 || j < jCurrentTimeMillis) {
                        j = jCurrentTimeMillis;
                    }
                    int i = renewPriceBean.unit;
                    if (i == 0) {
                        jAfterYears = TimeShiftUtil.afterDays(j, renewPriceBean.count);
                    } else if (i == 1) {
                        jAfterYears = TimeShiftUtil.afterMonths(j, renewPriceBean.count);
                    } else {
                        jAfterYears = TimeShiftUtil.afterYears(j, renewPriceBean.count);
                    }
                    CorsRenewActivity.this.binding.tvExpireAfterRenewal.setText(CorsRenewActivity.this.getExpireDate(jCurrentTimeMillis, jAfterYears));
                    float f = renewPriceBean.price / 100.0f;
                    int i2 = (int) f;
                    CorsRenewActivity.this.binding.tvPayment.setText(String.format("%s\t%s%s", CorsRenewActivity.this.getString(R$string.pay_now), f == ((float) i2) ? String.format("%s", Integer.valueOf(i2)) : String.format("%s", Float.valueOf(f)), CorsRenewActivity.this.getString(R$string.currency_unit)));
                }
            });
            return;
        }
        showTipDialog(priceListResponse.errorMsg + ":" + priceListResponse.state, getString(R$string.ok), null);
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
                    LogToFile.i("未安装微信 -> 弹出二维码");
                    this.binding.lltScanPay.performClick();
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
        if (!TextUtils.isEmpty(wxAuthCodeResponse.wxCode)) {
            this.mWxCode = wxAuthCodeResponse.wxCode;
            LogToFile.i("微信code：" + wxAuthCodeResponse.wxCode);
            NetworkUserLoader.getInstance().getWxOpenId(wxAuthCodeResponse.wxCode);
            return;
        }
        if (wxAuthCodeResponse.errCode == -2) {
            cancelLoadingDialog();
            showTipDialog(getString(R$string.cancel_payment), getString(R$string.ok), null);
            NetworkUserLoader.getInstance().closeOrder(this.mOrderNo, this.mWxCode, "用户取消支付");
        } else {
            cancelLoadingDialog();
            showTipDialog(getString(R$string.data_anomaly) + ":" + wxAuthCodeResponse.errCode, getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WxOpenIdResponse wxOpenIdResponse) throws JSONException {
        if (wxOpenIdResponse.state == 0) {
            NetworkUserLoader networkUserLoader = NetworkUserLoader.getInstance();
            String str = wxOpenIdResponse.wxOpenId;
            long j = this.mPriceBean.id;
            CharSequence text = this.binding.tvHostNum.getText();
            Objects.requireNonNull(text);
            networkUserLoader.renewCorsAccount(str, j, text.toString().trim(), this.mSp.getString(Constant.WX_PLAY_APPID, ""));
            return;
        }
        cancelLoadingDialog();
        showTipDialog(wxOpenIdResponse.errorMsg, getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RenewCorsResponse renewCorsResponse) throws JSONException {
        cancelLoadingDialog();
        if (renewCorsResponse.state == 0) {
            this.mOrderNo = renewCorsResponse.tradeNo;
            startWechatPay(renewCorsResponse);
        } else {
            showTipDialog(renewCorsResponse.errorMsg, getString(R$string.ok), null);
        }
    }

    private void startWechatPay(RenewCorsResponse renewCorsResponse) throws JSONException {
        PayReq payReq = new PayReq();
        payReq.appId = renewCorsResponse.appId;
        payReq.partnerId = this.mMchid;
        payReq.prepayId = renewCorsResponse.prepayId;
        payReq.packageValue = "Sign=WXPay";
        payReq.nonceStr = renewCorsResponse.nonceStr;
        payReq.timeStamp = renewCorsResponse.timeStamp;
        payReq.sign = renewCorsResponse.paySign;
        IWXAPI iwxapi = this.wxApi;
        if (iwxapi == null || iwxapi.sendReq(payReq)) {
            return;
        }
        showTipDialog(getString(R$string.payment_exception), getString(R$string.ok), null);
        NetworkUserLoader.getInstance().closeOrder(this.mOrderNo, this.mWxCode, "调起支付失败");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WxPayResponse wxPayResponse) throws JSONException {
        cancelLoadingDialog();
        int i = wxPayResponse.code;
        if (i == 0) {
            showTipDialog(getString(R$string.payment_complete), getString(R$string.order_record), null, "payment_complete");
            this.binding.tvPayment.setText(R$string.payment_successful);
            this.binding.lltScanPay.setVisibility(8);
            this.binding.tvPayment.setEnabled(false);
            this.binding.tvPayment.setBackgroundResource(R$drawable.bg_ripple_round_theme);
            return;
        }
        if (i == -1) {
            showTipDialog(getString(R$string.payment_error), getString(R$string.ok), null);
            NetworkUserLoader.getInstance().closeOrder(this.mOrderNo, this.mWxCode, "支付错误");
        } else if (i == -2) {
            showTipDialog(getString(R$string.cancel_payment), getString(R$string.ok), null);
            NetworkUserLoader.getInstance().closeOrder(this.mOrderNo, this.mWxCode, "用户取消支付");
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.cors_renew));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
