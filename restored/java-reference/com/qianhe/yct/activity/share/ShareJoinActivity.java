package com.qianhe.yct.activity.share;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityShareJoinBinding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.QueryShareResponse;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareJoinActivity extends BaseActivity {
    private ActivityShareJoinBinding binding;
    private boolean request;

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
        this.binding = ActivityShareJoinBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.binding.fltClearCode.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareJoinActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareJoinActivity shareJoinActivity = ShareJoinActivity.this;
                shareJoinActivity.showTipDialog(shareJoinActivity.getString(R$string.clear_content), ShareJoinActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.share.ShareJoinActivity.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ShareJoinActivity.this.binding.edtCode.setText("");
                    }
                });
            }
        });
        this.binding.tvJoin.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareJoinActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = ShareJoinActivity.this.binding.edtCode.getText().toString();
                if (string.contains(ShareJoinActivity.this.getString(R$string.app_name)) && string.contains(ShareJoinActivity.this.getString(R$string.share_code_flag))) {
                    Matcher matcher = Pattern.compile("\\d{5,}").matcher(string);
                    if (matcher.find()) {
                        String strGroup = matcher.group();
                        if (TextUtils.isEmpty(strGroup)) {
                            return;
                        }
                        ShareJoinActivity.this.request = true;
                        NetworkUserLoader.getInstance().queryShare(null, null, new String[]{strGroup}, "");
                        return;
                    }
                    return;
                }
                ShareJoinActivity.this.request = true;
                NetworkUserLoader.getInstance().queryShare(null, null, new String[]{string}, "");
            }
        });
        setDefaultCursor();
    }

    private void setDefaultCursor() {
        this.binding.edtCode.post(new Runnable() { // from class: com.qianhe.yct.activity.share.ShareJoinActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(ShareJoinActivity.this.binding.edtCode.getText().toString().trim())) {
                    ShareJoinActivity.this.binding.edtCode.setSelection(ShareJoinActivity.this.binding.edtCode.getText().toString().trim().length());
                }
                ShareJoinActivity.this.binding.edtCode.requestFocus();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryShareResponse queryShareResponse) {
        if (this.request) {
            this.request = false;
            int i = queryShareResponse.state;
            if (i == 0) {
                List<ShareEntity> list = queryShareResponse.list;
                if (list != null && !list.isEmpty()) {
                    ShareEntity shareEntity = queryShareResponse.list.get(0);
                    Intent intent = new Intent(this, (Class<?>) ShareCreateActivity.class);
                    intent.setFlags(603979776);
                    intent.putExtra("shareCode", shareEntity.shareCode);
                    startActivity(intent);
                    return;
                }
                showTipDialog(getString(R$string.data_empty), getString(R$string.ok), null);
                return;
            }
            showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.join_share);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        EventBus.getDefault().register(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
