package com.qianhe.yct.activity;

import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityCreateAccountBinding;
import com.qianhe.yct.event.CreateAccountResponse;
import com.qianhe.yct.event.LoginResponse;
import com.qianhe.yct.event.SendCaptchaResponse;
import com.qianhe.yct.utils.ChineseEnglishLengthFilter;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.LocationUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateAccountActivity extends BaseActivity {
    private ActivityCreateAccountBinding binding;
    private ScheduledExecutorService executor;
    private boolean isChinaLanguage;
    private InsNavi mINS;
    private ScheduledFuture<?> scheduledFuture;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityCreateAccountBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.isChinaLanguage = LanguagePrefs.isZH(this);
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        setChineseEnglishOnly(this.binding.edtName);
        updateAccountHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEmailAccount(String str) {
        return (TextUtils.isEmpty(str) || str.matches("\\d+")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInChinaMainland() throws NumberFormatException {
        InsNavi insNavi = this.mINS;
        if (insNavi != null) {
            double d = insNavi.latitude;
            if (d != 0.0d) {
                double d2 = insNavi.longitude;
                if (d2 != 0.0d) {
                    return LocationUtils.isChinaMainland(d, d2);
                }
            }
        }
        String string = this.mSp.getString("current_coords", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                return LocationUtils.isChinaMainland(Double.parseDouble(string.split(",")[1]), Double.parseDouble(string.split(",")[0]));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAccountEmptyTip() {
        return getString((isInChinaMainland() && this.isChinaLanguage) ? R$string.please_enter_phone_or_email : R$string.please_enter_email);
    }

    private void updateAccountHint() {
        this.binding.edtAccount.setHint((isInChinaMainland() && this.isChinaLanguage) ? R$string.please_enter_phone_or_email : R$string.please_enter_email);
    }

    private void setChineseEnglishOnly(EditText editText) {
        editText.setFilters(new InputFilter[]{new ChineseEnglishLengthFilter(20)});
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        this.binding.tvCaptcha.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CreateAccountActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strTrim = CreateAccountActivity.this.binding.edtAccount.getText().toString().trim();
                if (TextUtils.isEmpty(strTrim)) {
                    CreateAccountActivity createAccountActivity = CreateAccountActivity.this;
                    createAccountActivity.showToastDialog(createAccountActivity.getAccountEmptyTip());
                    return;
                }
                if ((!CreateAccountActivity.this.isInChinaMainland() || !CreateAccountActivity.this.isChinaLanguage) && !CreateAccountActivity.this.isEmailAccount(strTrim)) {
                    CreateAccountActivity createAccountActivity2 = CreateAccountActivity.this;
                    createAccountActivity2.showToastDialog(createAccountActivity2.getString(R$string.please_enter_email));
                } else if (CreateAccountActivity.this.scheduledFuture == null || CreateAccountActivity.this.scheduledFuture.isCancelled()) {
                    CreateAccountActivity createAccountActivity3 = CreateAccountActivity.this;
                    createAccountActivity3.showLoadingDialog(createAccountActivity3.getString(R$string.sending));
                    NetworkUserLoader.getInstance().sendCaptcha(strTrim);
                }
            }
        });
        this.binding.tvCreate.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CreateAccountActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = ((BaseActivity) CreateAccountActivity.this).mSp.getString("current_coords", "");
                if (CreateAccountActivity.this.mINS == null && TextUtils.isEmpty(string)) {
                    CreateAccountActivity createAccountActivity = CreateAccountActivity.this;
                    createAccountActivity.showToastDialog(createAccountActivity.getString(R$string.getting_location));
                    return;
                }
                String strTrim = CreateAccountActivity.this.binding.edtAccount.getText().toString().trim();
                String strTrim2 = CreateAccountActivity.this.binding.edtCaptcha.getText().toString().trim();
                String strTrim3 = CreateAccountActivity.this.binding.edtName.getText().toString().trim();
                String strTrim4 = CreateAccountActivity.this.binding.edtPassword.getText().toString().trim();
                String strTrim5 = CreateAccountActivity.this.binding.edtConfirmPassword.getText().toString().trim();
                if (TextUtils.isEmpty(strTrim)) {
                    CreateAccountActivity createAccountActivity2 = CreateAccountActivity.this;
                    createAccountActivity2.showToastDialog(createAccountActivity2.getAccountEmptyTip());
                    return;
                }
                if (TextUtils.isEmpty(strTrim2)) {
                    CreateAccountActivity createAccountActivity3 = CreateAccountActivity.this;
                    createAccountActivity3.showToastDialog(createAccountActivity3.getString(R$string.captcha_empty));
                    return;
                }
                if (TextUtils.isEmpty(strTrim3)) {
                    CreateAccountActivity createAccountActivity4 = CreateAccountActivity.this;
                    createAccountActivity4.showToastDialog(createAccountActivity4.getString(R$string.please_enter_your_name));
                    return;
                }
                if (TextUtils.isEmpty(strTrim4)) {
                    CreateAccountActivity createAccountActivity5 = CreateAccountActivity.this;
                    createAccountActivity5.showToastDialog(createAccountActivity5.getString(R$string.password_empty));
                    return;
                }
                if (TextUtils.isEmpty(strTrim5)) {
                    CreateAccountActivity createAccountActivity6 = CreateAccountActivity.this;
                    createAccountActivity6.showToastDialog(createAccountActivity6.getString(R$string.confirm_password_empty));
                } else if (!strTrim4.equals(strTrim5)) {
                    CreateAccountActivity createAccountActivity7 = CreateAccountActivity.this;
                    createAccountActivity7.showToastDialog(createAccountActivity7.getString(R$string.passwords_not_match));
                } else {
                    CreateAccountActivity createAccountActivity8 = CreateAccountActivity.this;
                    createAccountActivity8.showLoadingDialog(createAccountActivity8.getString(R$string.creating_account));
                    NetworkUserLoader.getInstance().createAccount(strTrim, strTrim2, strTrim3, strTrim4);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SendCaptchaResponse sendCaptchaResponse) {
        cancelLoadingDialog();
        if (sendCaptchaResponse.state == 0) {
            showToastDialog(getString(R$string.send_success));
            startTimer();
            return;
        }
        stopTimer();
        if (NetworkUserLoader.isUnknownHostError(sendCaptchaResponse.msg)) {
            return;
        }
        int i = sendCaptchaResponse.state;
        if (i != -1) {
            showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
        } else {
            showTipDialog(getString(R$string.send_failed), getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateAccountResponse createAccountResponse) {
        cancelLoadingDialog();
        int i = createAccountResponse.state;
        if (i == 0) {
            LogToFile.i("账号创建成功");
            showLoadingDialog(getString(R$string.logging_in));
            NetworkUserLoader.getInstance().login(this.binding.edtAccount.getText().toString(), this.binding.edtPassword.getText().toString(), "", this.mINS);
            return;
        }
        if (i != -1) {
            showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
        } else {
            showTipDialog(getString(R$string.create_failed), getString(R$string.ok), null);
        }
        LogToFile.e("创建账号失败：" + createAccountResponse.msg);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(LoginResponse loginResponse) {
        cancelLoadingDialog();
        int i = loginResponse.state;
        if (i == 0) {
            Toast.makeText(this, R$string.login_success, 0).show();
            finish();
        } else if (i == -1) {
            showTipDialog(loginResponse.msg, getString(R$string.ok), null);
        } else {
            showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
        }
    }

    private void startTimer() {
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            this.executor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            this.scheduledFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new AnonymousClass3(), 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: com.qianhe.yct.activity.CreateAccountActivity$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        long count = 60;

        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateAccountActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.CreateAccountActivity.3.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                    if (anonymousClass3.count > 0) {
                        TextView textView = CreateAccountActivity.this.binding.tvCaptcha;
                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                        long j = anonymousClass32.count - 1;
                        anonymousClass32.count = j;
                        textView.setText(String.format("%ss", Long.valueOf(j)));
                        return;
                    }
                    CreateAccountActivity.this.stopTimer();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopTimer() {
        this.binding.tvCaptcha.setText(getString(R$string.captcha));
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = this.executor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.create_account);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        if (insNavi.deviceType == DeviceType.ZPY) {
            this.mINS = insNavi;
            updateAccountHint();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        stopTimer();
    }
}
