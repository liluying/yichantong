package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.YctDeviceManager;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityUserManageBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.dialog.UnregisterDialogFragment;
import com.qianhe.yct.event.LogoutResponse;
import com.qianhe.yct.event.UnregisterAccountResponse;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.io.IOException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UserManageActivity extends BaseActivity {
    private ActivityUserManageBinding binding;
    private Bundle savedInstanceState;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityUserManageBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.binding.tvGotoLogin.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new Intent(UserManageActivity.this, (Class<?>) UserLoginActivity.class);
            }
        });
        this.binding.tvLogout.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                final String token = UserSession.get().getToken();
                if (TextUtils.isEmpty(token)) {
                    UserManageActivity.this.startActivity(new Intent(UserManageActivity.this, (Class<?>) UserLoginActivity.class));
                    UserManageActivity.this.finish();
                } else {
                    UserManageActivity userManageActivity = UserManageActivity.this;
                    userManageActivity.showTipDialog(userManageActivity.getString(R$string.logout_confirm), UserManageActivity.this.getString(R$string.confirm), UserManageActivity.this.getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.UserManageActivity.2.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            UserManageActivity.this.performLogout(token);
                        }
                    });
                }
            }
        });
        this.binding.tvModifyName.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(UserManageActivity.this, (Class<?>) ModifyInfoActivity.class);
                intent.putExtra("modify_type", 1);
                UserManageActivity.this.startActivity(intent);
            }
        });
        this.binding.tvModifyPhone.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(UserManageActivity.this, (Class<?>) ModifyInfoActivity.class);
                intent.putExtra("modify_type", 2);
                UserManageActivity.this.startActivity(intent);
            }
        });
        this.binding.tvModifyPsw.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(UserManageActivity.this, (Class<?>) ModifyInfoActivity.class);
                intent.putExtra("modify_type", 3);
                UserManageActivity.this.startActivity(intent);
            }
        });
        this.binding.tvDeviceManage.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserManageActivity.this.startActivity(new Intent(UserManageActivity.this, (Class<?>) LoginedDeviceManageActivity.class));
            }
        });
        this.binding.tvUnregisterAccount.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.UserManageActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new UnregisterDialogFragment().show(UserManageActivity.this.getSupportFragmentManager(), "UnregisterDialogFragment");
            }
        });
        updateModifyPhoneVisibility();
    }

    private boolean isPhoneAccount(String str) {
        return !TextUtils.isEmpty(str) && str.matches("\\d+");
    }

    private void updateModifyPhoneVisibility() {
        this.binding.tvModifyPhone.setVisibility(isPhoneAccount(UserSession.get().getAccount()) ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performLogout(String str) {
        YCTApplication.getInstance().setSynDataFlag(false);
        YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
        GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        NetworkUserLoader.getInstance().clearLocalLoginInfo();
        showToastDialog(getString(R$string.logout_success));
        startActivity(new Intent(this, (Class<?>) UserLoginActivity.class));
        finish();
        NetworkUserLoader.getInstance().logout(-1, str);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        this.savedInstanceState = bundle;
        super.onRestoreInstanceState(bundle);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        if (this.savedInstanceState == null) {
            finishPreviousActivity();
        }
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            this.binding.tvGotoLogin.setVisibility(0);
            this.binding.lltInfoUser.setVisibility(8);
        } else {
            this.binding.tvGotoLogin.setVisibility(8);
            this.binding.lltInfoUser.setVisibility(0);
            DatabaseManager.prepareCurrentEngineeringForCoordConvert(this);
        }
        this.binding.tvAccount.setText(maskAccount(UserSession.get().getAccount()));
        this.binding.tvName.setText(UserSession.get().getName());
        updateModifyPhoneVisibility();
    }

    private String maskAccount(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("@")) {
            return str.charAt(0) + "****" + str.substring(str.lastIndexOf("@"));
        }
        if (str.length() != 11) {
            return str;
        }
        return str.substring(0, 3) + "****" + str.substring(7);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(LogoutResponse logoutResponse) {
        cancelLoadingDialog();
        if (TextUtils.isEmpty(UserSession.get().getToken()) || logoutResponse.loggedDeviceId != -1) {
            return;
        }
        YCTApplication.getInstance().setSynDataFlag(false);
        int i = logoutResponse.state;
        if (i == 0) {
            UserSession.get().clearLoginInfo();
            showToastDialog(getString(R$string.logout_success));
            startActivity(new Intent(this, (Class<?>) UserLoginActivity.class));
            finish();
            return;
        }
        if (i == 8000) {
            UserSession.get().clearLoginInfo();
            showToastDialog(getString(R$string.current_login_offline));
            startActivity(new Intent(this, (Class<?>) UserLoginActivity.class));
            finish();
            return;
        }
        LogToFile.i("退出请求失败-> 强制清空账户信息。");
        showToastDialog(getString(R$string.logout_success));
        UserSession.get().clearLoginInfo();
        startActivity(new Intent(this, (Class<?>) UserLoginActivity.class));
        finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UnregisterAccountResponse unregisterAccountResponse) {
        cancelLoadingDialog();
        int i = unregisterAccountResponse.state;
        if (i == 0) {
            YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
            DatabaseManager.getInstance(this).clearAllUserData();
            UserSession.get().clearAll();
            showToastDialog(getString(R$string.account_deactivated));
            startActivity(new Intent(this, (Class<?>) UserLoginActivity.class));
            finish();
            return;
        }
        showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.user_management);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
