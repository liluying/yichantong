package com.qianhe.yct.activity;

import android.content.Intent;
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
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityModifyInfoBinding;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.event.ModifyResponse;
import com.qianhe.yct.event.SendCaptchaResponse;
import com.qianhe.yct.utils.ChineseEnglishLengthFilter;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ModifyInfoActivity extends BaseActivity {
    private ActivityModifyInfoBinding binding;
    private ScheduledExecutorService executor;
    private boolean isChinaLanguage;
    private GGAEntity mGGA;
    private ScheduledFuture<?> scheduledFuture;
    private int type;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    private boolean isPhoneAccount(String str) {
        return !TextUtils.isEmpty(str) && str.matches("\\d+");
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityModifyInfoBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.isChinaLanguage = LanguagePrefs.isZH(this);
        Intent intent = getIntent();
        if (intent != null) {
            int intExtra = intent.getIntExtra("modify_type", 0);
            this.type = intExtra;
            if (intExtra == 1) {
                this.binding.lltName.setVisibility(0);
            } else if (intExtra == 2) {
                this.binding.lltPhone.setVisibility(0);
                this.binding.lltCaptcha.setVisibility(0);
                this.binding.lltSend.setVisibility(0);
                this.binding.lltPassword.setVisibility(0);
            } else if (intExtra == 3) {
                this.binding.lltPassword.setVisibility(0);
                this.binding.lltNewPassword.setVisibility(0);
                this.binding.tvSwitchMethod.setVisibility(isPhoneAccount(UserSession.get().getAccount()) ? 0 : 8);
            }
        }
        this.binding.edtName.setText(UserSession.get().getName());
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        this.binding.tvSwitchMethod.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ModifyInfoActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ModifyInfoActivity.this.binding.lltPassword.getVisibility() == 0) {
                    ModifyInfoActivity.this.binding.lltPassword.setVisibility(8);
                    ModifyInfoActivity.this.binding.lltPhone.setVisibility(0);
                    ModifyInfoActivity.this.binding.lltCaptcha.setVisibility(0);
                    ModifyInfoActivity.this.binding.lltSend.setVisibility(0);
                    return;
                }
                ModifyInfoActivity.this.binding.lltPassword.setVisibility(0);
                ModifyInfoActivity.this.binding.lltPhone.setVisibility(8);
                ModifyInfoActivity.this.binding.lltCaptcha.setVisibility(8);
                ModifyInfoActivity.this.binding.lltSend.setVisibility(8);
            }
        });
        this.binding.tvCaptcha.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ModifyInfoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strTrim = ModifyInfoActivity.this.binding.edtAccount.getText().toString().trim();
                if (ModifyInfoActivity.this.isChinaLanguage && TextUtils.isEmpty(strTrim)) {
                    ModifyInfoActivity modifyInfoActivity = ModifyInfoActivity.this;
                    modifyInfoActivity.showToastDialog(modifyInfoActivity.getString(R$string.please_enter_phone_or_email));
                } else if (TextUtils.isEmpty(strTrim)) {
                    ModifyInfoActivity modifyInfoActivity2 = ModifyInfoActivity.this;
                    modifyInfoActivity2.showToastDialog(modifyInfoActivity2.getString(R$string.please_enter_email));
                } else if (ModifyInfoActivity.this.scheduledFuture == null || ModifyInfoActivity.this.scheduledFuture.isCancelled()) {
                    ModifyInfoActivity modifyInfoActivity3 = ModifyInfoActivity.this;
                    modifyInfoActivity3.showLoadingDialog(modifyInfoActivity3.getString(R$string.sending));
                    NetworkUserLoader.getInstance().sendCaptcha(strTrim);
                }
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ModifyInfoActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ModifyInfoActivity.this.type == 1) {
                    String strTrim = ModifyInfoActivity.this.binding.edtName.getText().toString().trim();
                    if (!strTrim.equals(UserSession.get().getName())) {
                        if (TextUtils.isEmpty(strTrim)) {
                            ModifyInfoActivity modifyInfoActivity = ModifyInfoActivity.this;
                            modifyInfoActivity.showToastDialog(modifyInfoActivity.getString(R$string.user_name_empty));
                            return;
                        } else {
                            ModifyInfoActivity modifyInfoActivity2 = ModifyInfoActivity.this;
                            modifyInfoActivity2.showLoadingDialog(modifyInfoActivity2.getString(R$string.submitting));
                            NetworkUserLoader.getInstance().modifyName(strTrim);
                            return;
                        }
                    }
                    ModifyInfoActivity modifyInfoActivity3 = ModifyInfoActivity.this;
                    modifyInfoActivity3.showToastDialog(modifyInfoActivity3.getString(R$string.no_modify_content));
                    return;
                }
                if (ModifyInfoActivity.this.type == 2) {
                    String strTrim2 = ModifyInfoActivity.this.binding.edtAccount.getText().toString().trim();
                    String strTrim3 = ModifyInfoActivity.this.binding.edtPassword.getText().toString().trim();
                    String strTrim4 = ModifyInfoActivity.this.binding.edtCaptcha.getText().toString().trim();
                    if (!strTrim2.equals(UserSession.get().getAccount())) {
                        if (ModifyInfoActivity.this.isChinaLanguage && TextUtils.isEmpty(strTrim2)) {
                            ModifyInfoActivity modifyInfoActivity4 = ModifyInfoActivity.this;
                            modifyInfoActivity4.showToastDialog(modifyInfoActivity4.getString(R$string.please_enter_phone));
                            return;
                        }
                        if (TextUtils.isEmpty(strTrim2)) {
                            ModifyInfoActivity modifyInfoActivity5 = ModifyInfoActivity.this;
                            modifyInfoActivity5.showToastDialog(modifyInfoActivity5.getString(R$string.please_enter_email));
                            return;
                        }
                        if (TextUtils.isEmpty(strTrim3)) {
                            ModifyInfoActivity modifyInfoActivity6 = ModifyInfoActivity.this;
                            modifyInfoActivity6.showToastDialog(modifyInfoActivity6.getString(R$string.password_empty));
                            return;
                        } else if (TextUtils.isEmpty(strTrim4)) {
                            ModifyInfoActivity modifyInfoActivity7 = ModifyInfoActivity.this;
                            modifyInfoActivity7.showToastDialog(modifyInfoActivity7.getString(R$string.captcha_empty));
                            return;
                        } else {
                            ModifyInfoActivity modifyInfoActivity8 = ModifyInfoActivity.this;
                            modifyInfoActivity8.showLoadingDialog(modifyInfoActivity8.getString(R$string.submitting));
                            NetworkUserLoader.getInstance().modifyPhone(strTrim2, strTrim3, strTrim4);
                            return;
                        }
                    }
                    ModifyInfoActivity modifyInfoActivity9 = ModifyInfoActivity.this;
                    modifyInfoActivity9.showToastDialog(modifyInfoActivity9.getString(R$string.no_modify_content));
                    return;
                }
                if (ModifyInfoActivity.this.type == 3) {
                    String strTrim5 = ModifyInfoActivity.this.binding.edtPassword.getText().toString().trim();
                    String strTrim6 = ModifyInfoActivity.this.binding.edtNewPassword.getText().toString().trim();
                    String strTrim7 = ModifyInfoActivity.this.binding.edtCaptcha.getText().toString().trim();
                    if (ModifyInfoActivity.this.binding.lltPassword.getVisibility() == 0) {
                        if (TextUtils.isEmpty(strTrim5) || TextUtils.isEmpty(strTrim6)) {
                            ModifyInfoActivity modifyInfoActivity10 = ModifyInfoActivity.this;
                            modifyInfoActivity10.showToastDialog(modifyInfoActivity10.getString(R$string.password_empty));
                            return;
                        } else if (strTrim5.equals(strTrim6)) {
                            ModifyInfoActivity modifyInfoActivity11 = ModifyInfoActivity.this;
                            modifyInfoActivity11.showToastDialog(modifyInfoActivity11.getString(R$string.passwords_same));
                            return;
                        }
                    } else {
                        String strTrim8 = ModifyInfoActivity.this.binding.edtAccount.getText().toString().trim();
                        if (ModifyInfoActivity.this.isChinaLanguage && TextUtils.isEmpty(strTrim8)) {
                            ModifyInfoActivity modifyInfoActivity12 = ModifyInfoActivity.this;
                            modifyInfoActivity12.showToastDialog(modifyInfoActivity12.getString(R$string.please_enter_phone_or_email));
                        } else if (TextUtils.isEmpty(strTrim8)) {
                            ModifyInfoActivity modifyInfoActivity13 = ModifyInfoActivity.this;
                            modifyInfoActivity13.showToastDialog(modifyInfoActivity13.getString(R$string.please_enter_email));
                        } else if (TextUtils.isEmpty(strTrim6)) {
                            ModifyInfoActivity modifyInfoActivity14 = ModifyInfoActivity.this;
                            modifyInfoActivity14.showToastDialog(modifyInfoActivity14.getString(R$string.password_empty));
                            return;
                        } else if (TextUtils.isEmpty(strTrim7)) {
                            ModifyInfoActivity modifyInfoActivity15 = ModifyInfoActivity.this;
                            modifyInfoActivity15.showToastDialog(modifyInfoActivity15.getString(R$string.captcha_empty));
                            return;
                        }
                    }
                    ModifyInfoActivity modifyInfoActivity16 = ModifyInfoActivity.this;
                    modifyInfoActivity16.showLoadingDialog(modifyInfoActivity16.getString(R$string.submitting));
                    NetworkUserLoader.getInstance().modifyPassword(strTrim6, strTrim5, strTrim7);
                }
            }
        });
        setChineseEnglishOnly(this.binding.edtName);
    }

    private void setChineseEnglishOnly(EditText editText) {
        editText.setFilters(new InputFilter[]{new ChineseEnglishLengthFilter(20)});
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(ModifyResponse modifyResponse) {
        cancelLoadingDialog();
        int i = modifyResponse.state;
        if (i != 0) {
            if (i != -1) {
                showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
                return;
            } else {
                showTipDialog(getString(R$string.modify_fail), getString(R$string.ok), null);
                return;
            }
        }
        Toast.makeText(this, R$string.modify_success, 0).show();
        int i2 = this.type;
        if (i2 == 1) {
            UserSession.get().updateName(this.binding.edtName.getText().toString().trim());
        } else if (i2 == 2) {
            UserSession.get().updateAccount(this.binding.edtAccount.getText().toString().trim());
        }
        finish();
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

    private void startTimer() {
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            this.executor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            this.scheduledFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new AnonymousClass4(), 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: com.qianhe.yct.activity.ModifyInfoActivity$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        long count = 60;

        AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModifyInfoActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.ModifyInfoActivity.4.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                    if (anonymousClass4.count > 0) {
                        TextView textView = ModifyInfoActivity.this.binding.tvCaptcha;
                        AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                        long j = anonymousClass42.count - 1;
                        anonymousClass42.count = j;
                        textView.setText(String.format("%ss", Long.valueOf(j)));
                        return;
                    }
                    ModifyInfoActivity.this.stopTimer();
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
        TextView textView = this.binding.topBar.tvTitle;
        int i = this.type;
        textView.setText(i == 1 ? R$string.modify_name : i == 2 ? R$string.modify_phone : R$string.modify_password);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        stopTimer();
    }
}
