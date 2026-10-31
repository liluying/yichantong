package com.qianhe.yct.activity.debug;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentResultListener;
import com.leon.lfilepickerlibrary.LFilePicker;
import com.leon.lfilepickerlibrary.utils.Constant;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityDebugUpgradefmwBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.FirmwareResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugUpgradefmwActivity extends BaseActivity {
    private ActivityDebugUpgradefmwBinding binding;
    private ScheduledExecutorService executor;
    private String mPath = "";
    private ScheduledFuture<?> scheduledFuture;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FirmwareResponse firmwareResponse) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityDebugUpgradefmwBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.binding.tvChooseFmw.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugUpgradefmwActivity.this.chooseFmwFile();
            }
        });
        this.binding.tvUpgrade.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(DebugUpgradefmwActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, "请选择设备");
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(DebugUpgradefmwActivity.this.getString(R$string.level));
                arrayList.add(DebugUpgradefmwActivity.this.getString(R$string.base));
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", -1);
                bundle2.putString("requestKey", "debug_upgrade_fmw");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        EventBus.getDefault().post(new OrderBean("UPGRADE,CANCLE"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDebugUpgradeDialog(DeviceType deviceType) {
        DebugUpgradeFmwDialog debugUpgradeFmwDialog = new DebugUpgradeFmwDialog();
        debugUpgradeFmwDialog.show(getSupportFragmentManager(), "DebugUpgradeFmwDialog");
        Bundle bundle = new Bundle();
        bundle.putSerializable("deviceType", deviceType);
        bundle.putString("fmwPath", this.binding.tvPath.getText().toString().trim());
        bundle.putString("md5", FileUtil.getFileMD5(this.binding.tvPath.getText().toString().trim()));
        bundle.putLong("fileSize", new File(this.binding.tvPath.getText().toString().trim()).length());
        if (this.binding.tvPath.getText().toString().contains(".dat")) {
            bundle.putString("model", "M10");
        } else if (this.binding.tvPath.getText().toString().contains(".pkg")) {
            bundle.putString("model", "980");
        }
        debugUpgradeFmwDialog.setArguments(bundle);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("path", this.mPath);
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        String string = bundle.getString("path");
        this.mPath = string;
        this.binding.tvPath.setText(string);
        if (TextUtils.isEmpty(this.mPath)) {
            return;
        }
        this.binding.tvUpgrade.setEnabled(true);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("debug_upgrade_fmw", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.3
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
                if (!"debug_upgrade_fmw".equals(str) || stringArrayList == null || stringArrayList.isEmpty()) {
                    return;
                }
                try {
                    int i = bundle.getInt("index");
                    if (i == 0) {
                        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(DebugUpgradefmwActivity.this);
                        DeviceType deviceType = DeviceType.ZPY;
                        if (multiBluetoothManager.isDeviceConnected(deviceType)) {
                            DebugUpgradefmwActivity.this.showDebugUpgradeDialog(deviceType);
                            return;
                        } else {
                            DebugUpgradefmwActivity debugUpgradefmwActivity = DebugUpgradefmwActivity.this;
                            debugUpgradefmwActivity.showTipDialog(debugUpgradefmwActivity.getString(R$string.disconnected_device), DebugUpgradefmwActivity.this.getString(R$string.go_to_connect), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.3.1
                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                }

                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    DebugUpgradefmwActivity.this.startActivity(new Intent(DebugUpgradefmwActivity.this, (Class<?>) BluetoothActivity.class));
                                }
                            });
                            return;
                        }
                    }
                    if (i == 1) {
                        MultiBluetoothManager multiBluetoothManager2 = MultiBluetoothManager.getInstance(DebugUpgradefmwActivity.this);
                        DeviceType deviceType2 = DeviceType.BASE;
                        if (multiBluetoothManager2.isDeviceConnected(deviceType2)) {
                            DebugUpgradefmwActivity.this.showDebugUpgradeDialog(deviceType2);
                        } else {
                            DebugUpgradefmwActivity debugUpgradefmwActivity2 = DebugUpgradefmwActivity.this;
                            debugUpgradefmwActivity2.showTipDialog(debugUpgradefmwActivity2.getString(R$string.disconnected_device), DebugUpgradefmwActivity.this.getString(R$string.go_to_connect), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.3.2
                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                }

                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    DebugUpgradefmwActivity.this.startActivity(new Intent(DebugUpgradefmwActivity.this, (Class<?>) BluetoothActivity.class));
                                }
                            });
                        }
                    }
                } catch (Exception e) {
                    LogToFile.e("选择差分类型异常：" + e);
                }
            }
        });
    }

    public void stopTimer() {
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
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        super.onEventMessage(bluetoothConnectStateEvent);
        if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            stopTimer();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.firmware_upgrade));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugUpgradefmwActivity.this.onBackPressed();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseFmwFile() {
        if (YCTApplication.getInstance().isAT80orAT85()) {
            new LFilePicker().withActivity(this).withRequestCode(1001).withTitle(getString(R$string.file_selection)).withMutilyMode(false).withMaxNum(1).withStartPath(TextUtils.isEmpty(this.mPath) ? null : new File(this.mPath).getParent()).withNotFoundBooks(getString(R$string.select_at_least_one_file)).withChooseMode(true).withFileFilter(new String[]{"fmw5", "fmw3", "dat", "pkg"}).start();
            return;
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", false);
        startActivityForResult(intent, 1001);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1001 && i2 == -1 && intent != null) {
            if (YCTApplication.getInstance().isAT80orAT85()) {
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(Constant.RESULT_INFO);
                if (stringArrayListExtra == null || stringArrayListExtra.isEmpty()) {
                    return;
                }
                String str = stringArrayListExtra.get(0);
                this.mPath = str;
                this.binding.tvPath.setText(str);
                if (!TextUtils.isEmpty(this.mPath)) {
                    this.binding.tvUpgrade.setEnabled(true);
                }
                LogToFile.i("选中的路径为:" + this.mPath);
                return;
            }
            Uri data = intent.getData();
            try {
                LogToFile.i("文件URI: " + data.toString());
                this.mPath = copyFileToAppDirectory(data).getAbsolutePath();
                LogToFile.i("文件已复制到私有目录: " + this.mPath);
                this.binding.tvPath.setText(this.mPath);
                if (TextUtils.isEmpty(this.mPath)) {
                    return;
                }
                this.binding.tvUpgrade.setEnabled(true);
            } catch (Exception e) {
            }
        }
    }

    private File copyFileToAppDirectory(Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
        File file = new File(getExternalFilesDir(null), getFileName(uri));
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStreamOpenInputStream.read(bArr);
            if (i > 0) {
                fileOutputStream.write(bArr, 0, i);
            } else {
                inputStreamOpenInputStream.close();
                fileOutputStream.close();
                return file;
            }
        }
    }

    private String getFileName(Uri uri) {
        Uri uri2;
        int columnIndex;
        String string = null;
        if (uri.getScheme().equals("content")) {
            uri2 = uri;
            Cursor cursorQuery = getContentResolver().query(uri2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_display_name")) != -1) {
                        string = cursorQuery.getString(columnIndex);
                    }
                } finally {
                    cursorQuery.close();
                }
            }
            if (cursorQuery != null) {
            }
        } else {
            uri2 = uri;
        }
        if (string != null) {
            return string;
        }
        String path = uri2.getPath();
        int iLastIndexOf = path.lastIndexOf(47);
        return iLastIndexOf != -1 ? path.substring(iLastIndexOf + 1) : path;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R$string.tips).setMessage(R$string.exit_page).setPositiveButton(getString(R$string.confirm), new DialogInterface.OnClickListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DebugUpgradefmwActivity.super.onBackPressed();
            }
        }).setNegativeButton(getString(R$string.cancel), new DialogInterface.OnClickListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradefmwActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        builder.create().show();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().post("gnssStopUpgrade");
        EventBus.getDefault().unregister(this);
        stopTimer();
    }
}
