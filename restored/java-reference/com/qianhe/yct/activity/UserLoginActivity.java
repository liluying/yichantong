package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityUserLoginBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.event.LoginResponse;
import com.qianhe.yct.event.SendCaptchaResponse;
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
public class UserLoginActivity extends BaseActivity {
    private ActivityUserLoginBinding binding;
    private ScheduledExecutorService executor;
    private boolean isChinaLanguage;
    private int loginType = 0;
    private InsNavi mINS;
    private ScheduledFuture<?> scheduledFuture;
    private boolean sendMsg;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityUserLoginBinding.inflate(getLayoutInflater());
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
        String token = UserSession.get().getToken();
        this.binding.tvLogin.setText(!TextUtils.isEmpty(token) ? R$string.logout : R$string.login);
        this.binding.edtAccount.setText(UserSession.get().getAccount());
        this.binding.edtAccount.setEnabled(TextUtils.isEmpty(token));
        this.binding.lltPassword.setVisibility(TextUtils.isEmpty(token) ? 0 : 8);
        this.binding.edtAccount.setHint((isInChinaMainland() && this.isChinaLanguage) ? R$string.please_enter_phone_or_email : R$string.please_enter_email);
        updateLoginUi();
    }

    private boolean isInChinaMainland() throws NumberFormatException {
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

    private boolean isPhoneAccount(String str) {
        return !TextUtils.isEmpty(str) && str.matches("\\d+");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLoginUi() {
        if (!isInChinaMainland() || !this.isChinaLanguage) {
            this.binding.tvSwitchMethod.setVisibility(8);
            return;
        }
        String strTrim = this.binding.edtAccount.getText().toString().trim();
        boolean z = TextUtils.isEmpty(strTrim) || isPhoneAccount(strTrim);
        this.binding.tvSwitchMethod.setVisibility(z ? 0 : 8);
        if (!z && this.loginType == 1) {
            switchToPasswordLogin(true);
        }
        this.binding.edtAccount.setHint(this.loginType == 1 ? R$string.please_enter_phone : R$string.please_enter_phone_or_email);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToPasswordLogin(boolean z) {
        this.loginType = 0;
        this.binding.tvSwitchMethod.setText(R$string.switch_verification_code_login);
        if (z) {
            this.binding.edtCaptcha.setText("");
        }
        this.binding.lltSend.setVisibility(8);
        this.binding.lltCaptcha.setVisibility(8);
        this.binding.lltPassword.setVisibility(0);
        stopTimer();
        if (isInChinaMainland() && this.isChinaLanguage) {
            this.binding.edtAccount.setHint(R$string.please_enter_phone_or_email);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToCaptchaLogin() {
        String strTrim = this.binding.edtAccount.getText().toString().trim();
        if (!TextUtils.isEmpty(strTrim) && !isPhoneAccount(strTrim)) {
            showToastDialog(getString(R$string.email_login_password_only));
            return;
        }
        this.loginType = 1;
        this.binding.tvSwitchMethod.setText(R$string.switch_password_login);
        this.binding.edtPassword.setText("");
        this.binding.lltSend.setVisibility(0);
        this.binding.lltCaptcha.setVisibility(0);
        this.binding.lltPassword.setVisibility(8);
        this.binding.edtAccount.setHint(R$string.please_enter_phone);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateAccountInput() {
        String strTrim = this.binding.edtAccount.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            if (isInChinaMainland() && this.isChinaLanguage) {
                showToastDialog(getString(this.loginType == 1 ? R$string.please_enter_phone : R$string.please_enter_phone_or_email));
            } else {
                showToastDialog(getString(R$string.please_enter_email));
            }
            return false;
        }
        if (this.loginType != 1 || isPhoneAccount(strTrim)) {
            return true;
        }
        showToastDialog(getString(R$string.captcha_login_requires_phone));
        return false;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        this.binding.tvCreate.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserLoginActivity.this.startActivity(new Intent(UserLoginActivity.this, (Class<?>) CreateAccountActivity.class));
            }
        });
        this.binding.tvSwitchMethod.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UserLoginActivity.this.loginType == 0) {
                    UserLoginActivity.this.switchToCaptchaLogin();
                } else {
                    UserLoginActivity.this.switchToPasswordLogin(true);
                }
            }
        });
        this.binding.edtAccount.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.activity.UserLoginActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                UserLoginActivity.this.updateLoginUi();
            }
        });
        this.binding.tvCaptcha.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserLoginActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UserLoginActivity.this.validateAccountInput()) {
                    String strTrim = UserLoginActivity.this.binding.edtAccount.getText().toString().trim();
                    if (UserLoginActivity.this.scheduledFuture == null || UserLoginActivity.this.scheduledFuture.isCancelled()) {
                        UserLoginActivity.this.sendMsg = true;
                        UserLoginActivity userLoginActivity = UserLoginActivity.this;
                        userLoginActivity.showLoadingDialog(userLoginActivity.getString(R$string.sending));
                        NetworkUserLoader.getInstance().sendCaptcha(strTrim);
                    }
                }
            }
        });
        this.binding.tvLogin.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserLoginActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = ((BaseActivity) UserLoginActivity.this).mSp.getString("current_coords", "");
                if (UserLoginActivity.this.mINS == null && TextUtils.isEmpty(string)) {
                    UserLoginActivity.this.mINS = new InsNavi();
                }
                if (UserLoginActivity.this.validateAccountInput()) {
                    String strTrim = UserLoginActivity.this.binding.edtAccount.getText().toString().trim();
                    if (UserLoginActivity.this.loginType == 0) {
                        String strTrim2 = UserLoginActivity.this.binding.edtPassword.getText().toString().trim();
                        if (TextUtils.isEmpty(strTrim2)) {
                            UserLoginActivity userLoginActivity = UserLoginActivity.this;
                            userLoginActivity.showToastDialog(userLoginActivity.getString(R$string.password_empty));
                            return;
                        } else {
                            UserLoginActivity userLoginActivity2 = UserLoginActivity.this;
                            userLoginActivity2.showLoadingDialog(userLoginActivity2.getString(R$string.logging_in));
                            NetworkUserLoader.getInstance().login(strTrim, strTrim2, "", UserLoginActivity.this.mINS);
                            return;
                        }
                    }
                    String strTrim3 = UserLoginActivity.this.binding.edtCaptcha.getText().toString().trim();
                    if (TextUtils.isEmpty(strTrim3)) {
                        UserLoginActivity userLoginActivity3 = UserLoginActivity.this;
                        userLoginActivity3.showToastDialog(userLoginActivity3.getString(R$string.captcha_empty));
                    } else {
                        UserLoginActivity userLoginActivity4 = UserLoginActivity.this;
                        userLoginActivity4.showLoadingDialog(userLoginActivity4.getString(R$string.logging_in));
                        NetworkUserLoader.getInstance().login(strTrim, "", strTrim3, UserLoginActivity.this.mINS);
                    }
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SendCaptchaResponse sendCaptchaResponse) {
        if (this.sendMsg) {
            this.sendMsg = false;
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
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(LoginResponse loginResponse) {
        cancelLoadingDialog();
        int i = loginResponse.state;
        if (i == 0) {
            Toast.makeText(this, R$string.login_success, 0).show();
            RtkInfo rtkInfo = ((YCTApplication) getApplication()).getRtkInfo();
            if (rtkInfo != null) {
                NetworkUserLoader.getInstance().notifyUsedDevice(rtkInfo.firmwareVersion);
            }
            YCTApplication.getInstance().setSynDataFlag(true);
            DatabaseManager.prepareCurrentEngineeringForCoordConvert(this);
            startActivity(new Intent(this, (Class<?>) UserManageActivity.class));
            finish();
            return;
        }
        if (i == -1) {
            if (NetworkUserLoader.isUnknownHostError(loginResponse.msg)) {
                return;
            }
            String str = loginResponse.msg;
            if (str != null && str.contains("ConnectException")) {
                showTipDialog(getString(R$string.connect_server_failed_retry), getString(R$string.ok), null);
                return;
            } else {
                showTipDialog(loginResponse.msg, getString(R$string.ok), null);
                return;
            }
        }
        if (i == -2) {
            if (NetworkUserLoader.isUnknownHostError(loginResponse.msg)) {
                return;
            }
            String str2 = loginResponse.msg;
            if (str2 != null && str2.contains("timeout")) {
                showTipDialog(getString(R$string.login_timeout), getString(R$string.ok), null);
                return;
            } else {
                showTipDialog(loginResponse.msg, getString(R$string.ok), null);
                return;
            }
        }
        if (this.loginType == 1) {
            if (TextUtils.isEmpty(this.binding.edtCaptcha.getText().toString().trim())) {
                showTipDialog(getString(R$string.phone_or_captcha_error), getString(R$string.ok), null);
                return;
            } else {
                showTipDialog(ErrorCodeUtils.getErrorMsg(this, loginResponse.state), getString(R$string.ok), null);
                return;
            }
        }
        showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        clearPendingClipShareCode();
    }

    private void startTimer() {
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            this.executor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            this.scheduledFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new AnonymousClass6(), 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: com.qianhe.yct.activity.UserLoginActivity$6, reason: invalid class name */
    class AnonymousClass6 implements Runnable {
        long count = 60;

        AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserLoginActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.UserLoginActivity.6.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                    if (anonymousClass6.count > 0) {
                        TextView textView = UserLoginActivity.this.binding.tvCaptcha;
                        AnonymousClass6 anonymousClass62 = AnonymousClass6.this;
                        long j = anonymousClass62.count - 1;
                        anonymousClass62.count = j;
                        textView.setText(String.format("%ss", Long.valueOf(j)));
                        return;
                    }
                    UserLoginActivity.this.stopTimer();
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
        this.binding.topBar.tvTitle.setText(R$string.login);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        if (insNavi.deviceType == DeviceType.ZPY) {
            this.mINS = insNavi;
            updateLoginUi();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        stopTimer();
    }
}
