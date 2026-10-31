package com.qianhe.yct.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.LoginedDeviceListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.LoginedDevice;
import com.qianhe.yct.databinding.ActivityLoginedDeviceManageBinding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.LogoutResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LoginedDeviceManageActivity extends BaseActivity {
    private LoginedDeviceListAdapter adapter;
    private ActivityLoginedDeviceManageBinding binding;
    private List<LoginedDevice> mData = new ArrayList();

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
        this.binding = ActivityLoginedDeviceManageBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(this));
        List list = (List) new Gson().fromJson(this.mSp.getString("logined_devices", ""), new TypeToken<List<LoginedDevice>>() { // from class: com.qianhe.yct.activity.LoginedDeviceManageActivity.1
        }.getType());
        if (list != null) {
            this.mData.addAll(list);
        }
        LoginedDeviceListAdapter loginedDeviceListAdapter = new LoginedDeviceListAdapter(this, this.mData);
        this.adapter = loginedDeviceListAdapter;
        this.binding.rcv.setAdapter(loginedDeviceListAdapter);
        this.adapter.setOnActionListener(new LoginedDeviceListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.LoginedDeviceManageActivity.2
            @Override // com.qianhe.yct.adapter.LoginedDeviceListAdapter.OnActionListener
            public void onDel(final LoginedDevice loginedDevice) {
                LoginedDeviceManageActivity loginedDeviceManageActivity = LoginedDeviceManageActivity.this;
                loginedDeviceManageActivity.showTipDialog(loginedDeviceManageActivity.getString(R$string.should_the_device_be_taken_offline), LoginedDeviceManageActivity.this.getString(R$string.confirm), LoginedDeviceManageActivity.this.getString(R$string.close), loginedDevice.name, new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.LoginedDeviceManageActivity.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        NetworkUserLoader.getInstance().logout(loginedDevice.id);
                    }
                });
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(LogoutResponse logoutResponse) {
        Iterator<LoginedDevice> it = this.mData.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (it.next().id == logoutResponse.loggedDeviceId) {
                it.remove();
                Toast.makeText(this, R$string.operation_success, 0).show();
                break;
            }
        }
        this.adapter.setData(this.mData);
        try {
            this.mSp.edit().putString("logined_devices", new JSONArray(new Gson().toJson(this.mData)).toString()).apply();
        } catch (JSONException e) {
            LogToFile.e("登录设备保存异常：" + e);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.device_manage);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
