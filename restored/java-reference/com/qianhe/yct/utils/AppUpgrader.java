package com.qianhe.yct.utils;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.qh.bspatch.BsPatch;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$string;
import com.qianhe.yct.dialog.UpgradeApkDialogFragment;
import com.qianhe.yct.event.ApkDownloadUrlResponse;
import com.qianhe.yct.event.ApkListResponse;
import com.qianhe.yct.utils.AppUpgrader;
import com.qianhe.yct.utils.BsPatchManager;
import com.qianhe.yct.utils.NetworkDataLoader;
import java.io.File;
import java.io.IOException;
import java.util.List;
import net.lingala.zip4j.util.InternalZipConstants;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AppUpgrader {
    public static final AppUpgrader INSTANCE = new AppUpgrader();
    private ApkListResponse.ApkInfo mApkInfo;
    private String mFilePath;
    private String mMegerApkPath;
    private boolean startDownload;
    private UpgradeApkDialogFragment upgradeTipsDialogFragment;
    private int upgradeErrorCount = 0;
    private String sourceMD5 = "";
    private String baseFileMd5 = "";
    private String mPreparedUpgradeLog = "";

    public interface OnCheckResponseListioner {
        void onCheckResult(ApkListResponse apkListResponse);

        void onError(ApkListResponse apkListResponse);
    }

    public interface OnDownloadInfoResponseListioner {
        void onDownloadInfo(ApkDownloadUrlResponse apkDownloadUrlResponse);
    }

    public interface OnUpgradeListioner {
        void hasNewVersion(ApkListResponse.ApkInfo apkInfo);

        void onCancel(int i);

        void onCheckFailed(String str);

        void onDownloadDone(boolean z, String str);

        void onDownloadError(boolean z);

        void onDownloadInfo();

        void onDownloadProgress(boolean z, int i);

        void onIgnore(ApkListResponse.ApkInfo apkInfo);

        void onLatestVersion();

        void onParsingError();

        void onParsingPackage();

        void onStartDownload(boolean z);

        void onUpgradeFailed(String str);

        void onUpgradeTipsDialogShown();
    }

    private AppUpgrader() {
    }

    public ApkListResponse.ApkInfo getApkInfo() {
        return this.mApkInfo;
    }

    public void startCheckAppUprage(AppCompatActivity appCompatActivity, String str, String str2, boolean z, String str3, String str4, OnUpgradeListioner onUpgradeListioner) {
        LogToFile.i("---------开始检测APP升级-----------");
        this.mApkInfo = null;
        this.startDownload = true;
        this.baseFileMd5 = "";
        this.mPreparedUpgradeLog = "";
        NetworkDataLoader.getInstance().getApkList(str3, str4, new AnonymousClass1(appCompatActivity, str, str2, z, onUpgradeListioner));
    }

    /* renamed from: com.qianhe.yct.utils.AppUpgrader$1, reason: invalid class name */
    class AnonymousClass1 implements OnCheckResponseListioner {
        final /* synthetic */ String val$apkRootPath;
        final /* synthetic */ AppCompatActivity val$context;
        final /* synthetic */ String val$ignoreVersion;
        final /* synthetic */ boolean val$isShowTips;
        final /* synthetic */ OnUpgradeListioner val$onUpgradeListioner;

        AnonymousClass1(AppCompatActivity appCompatActivity, String str, String str2, boolean z, OnUpgradeListioner onUpgradeListioner) {
            this.val$context = appCompatActivity;
            this.val$apkRootPath = str;
            this.val$ignoreVersion = str2;
            this.val$isShowTips = z;
            this.val$onUpgradeListioner = onUpgradeListioner;
        }

        @Override // com.qianhe.yct.utils.AppUpgrader.OnCheckResponseListioner
        public void onCheckResult(final ApkListResponse apkListResponse) {
            String localizedUpdateLog;
            List<ApkListResponse.ApkInfo> list;
            final String strResolveInstalledApkMd5 = AppUpgrader.resolveInstalledApkMd5(this.val$context);
            if (apkListResponse.state == 0 && (list = apkListResponse.apk_list) != null && !list.isEmpty() && apkListResponse.apk_list.get(0) != null) {
                localizedUpdateLog = apkListResponse.apk_list.get(0).getLocalizedUpdateLog(this.val$context);
            } else {
                localizedUpdateLog = "";
            }
            final String str = localizedUpdateLog;
            final AppCompatActivity appCompatActivity = this.val$context;
            final String str2 = this.val$apkRootPath;
            final String str3 = this.val$ignoreVersion;
            final boolean z = this.val$isShowTips;
            final OnUpgradeListioner onUpgradeListioner = this.val$onUpgradeListioner;
            appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpgrader.AnonymousClass1.m2801$r8$lambda$01BfujMtRPcsQVJl09FZzKa9Bs(this.f$0, appCompatActivity, strResolveInstalledApkMd5, str, str2, str3, z, onUpgradeListioner, apkListResponse);
                }
            });
        }

        /* renamed from: $r8$lambda$01Bf-ujMtRPcsQVJl09FZzKa9Bs, reason: not valid java name */
        public static /* synthetic */ void m2801$r8$lambda$01BfujMtRPcsQVJl09FZzKa9Bs(AnonymousClass1 anonymousClass1, AppCompatActivity appCompatActivity, String str, String str2, String str3, String str4, boolean z, OnUpgradeListioner onUpgradeListioner, ApkListResponse apkListResponse) {
            anonymousClass1.getClass();
            if (appCompatActivity.isFinishing() || appCompatActivity.isDestroyed()) {
                return;
            }
            AppUpgrader.this.sourceMD5 = str;
            AppUpgrader.this.mPreparedUpgradeLog = str2;
            AppUpgrader.this.handleCheckResult(appCompatActivity, str3, str4, z, onUpgradeListioner, apkListResponse);
        }

        @Override // com.qianhe.yct.utils.AppUpgrader.OnCheckResponseListioner
        public void onError(final ApkListResponse apkListResponse) {
            final AppCompatActivity appCompatActivity = this.val$context;
            final OnUpgradeListioner onUpgradeListioner = this.val$onUpgradeListioner;
            appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpgrader.AnonymousClass1.$r8$lambda$OANHtPjBj6ZPLoRQufomrajWyX4(appCompatActivity, onUpgradeListioner, apkListResponse);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$OANHtPjBj6ZPLoRQufomrajWyX4(AppCompatActivity appCompatActivity, OnUpgradeListioner onUpgradeListioner, ApkListResponse apkListResponse) {
            if (appCompatActivity.isFinishing() || appCompatActivity.isDestroyed() || onUpgradeListioner == null) {
                return;
            }
            onUpgradeListioner.onUpgradeFailed(apkListResponse.state == 8004 ? appCompatActivity.getString(R$string.machine_num_not_exist) : apkListResponse.err_msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCheckResult(AppCompatActivity appCompatActivity, String str, String str2, boolean z, OnUpgradeListioner onUpgradeListioner, ApkListResponse apkListResponse) {
        if (appCompatActivity.isFinishing() || appCompatActivity.isDestroyed()) {
            return;
        }
        try {
            if (apkListResponse.state != 0) {
                if (onUpgradeListioner != null) {
                    onUpgradeListioner.onCheckFailed(apkListResponse.err_msg);
                    return;
                }
                return;
            }
            List<ApkListResponse.ApkInfo> list = apkListResponse.apk_list;
            if (list == null || list.isEmpty()) {
                if (onUpgradeListioner != null) {
                    onUpgradeListioner.onLatestVersion();
                    return;
                }
                return;
            }
            ApkListResponse.ApkInfo apkInfo = apkListResponse.apk_list.get(0);
            this.mApkInfo = apkInfo;
            this.baseFileMd5 = apkListResponse.base_file_md5;
            if (apkInfo == null) {
                return;
            }
            if (onUpgradeListioner != null) {
                onUpgradeListioner.hasNewVersion(apkInfo);
            }
            if (TextUtils.isEmpty(this.sourceMD5) && this.mApkInfo.forced) {
                if (onUpgradeListioner != null) {
                    onUpgradeListioner.onUpgradeFailed(appCompatActivity.getString(R$string.upgrade_failed));
                    return;
                }
                return;
            }
            ApkListResponse.ApkInfo apkInfo2 = this.mApkInfo;
            if (apkInfo2 != null && !apkInfo2.forced) {
                if (str2.equals(apkInfo2.version) && !z) {
                    LogToFile.i("已忽略app版本更新");
                    if (onUpgradeListioner != null) {
                        onUpgradeListioner.onIgnore(this.mApkInfo);
                        return;
                    }
                    return;
                }
                showUpgradeTipsDialog(appCompatActivity, str, onUpgradeListioner);
                return;
            }
            if (apkInfo2 != null) {
                if (this.sourceMD5.equals(this.baseFileMd5)) {
                    ApkListResponse.ApkInfo apkInfo3 = this.mApkInfo;
                    int i = apkInfo3.diff_apk_id;
                    if (i <= 0 || this.upgradeErrorCount >= 1) {
                        i = apkInfo3.full_apk_id;
                    }
                    downLoad(appCompatActivity, str, i, onUpgradeListioner);
                    return;
                }
                downLoad(appCompatActivity, str, this.mApkInfo.full_apk_id, onUpgradeListioner);
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.i("检测app更新" + e.toString());
            if (onUpgradeListioner != null) {
                onUpgradeListioner.onUpgradeFailed(appCompatActivity.getString(R$string.upgrade_failed));
            }
        }
    }

    private void showUpgradeTipsDialog(final AppCompatActivity appCompatActivity, final String str, final OnUpgradeListioner onUpgradeListioner) {
        ApkListResponse.ApkInfo apkInfo;
        long j;
        if (appCompatActivity.isFinishing() || appCompatActivity.isDestroyed() || this.mApkInfo == null) {
            notifyUpgradeTipsDialogShown(onUpgradeListioner);
            return;
        }
        if (appCompatActivity.getSupportFragmentManager().isStateSaved()) {
            notifyUpgradeTipsDialogShown(onUpgradeListioner);
            return;
        }
        UpgradeApkDialogFragment upgradeApkDialogFragment = this.upgradeTipsDialogFragment;
        if (upgradeApkDialogFragment != null && upgradeApkDialogFragment.isAdded()) {
            notifyUpgradeTipsDialogShown(onUpgradeListioner);
            return;
        }
        this.upgradeTipsDialogFragment = new UpgradeApkDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("upgradeLog", !TextUtils.isEmpty(this.mPreparedUpgradeLog) ? this.mPreparedUpgradeLog : this.mApkInfo.getLocalizedUpdateLog(appCompatActivity));
        bundle.putString("versionOld", "2.0.2609.109");
        bundle.putString("versionNew", this.mApkInfo.version);
        if (this.sourceMD5.equals(this.baseFileMd5)) {
            apkInfo = this.mApkInfo;
            if (apkInfo.diff_apk_id > 0 && this.upgradeErrorCount < 1) {
                j = apkInfo.diff_file_size;
            }
            bundle.putLong("fileSize", j);
            this.upgradeTipsDialogFragment.setArguments(bundle);
            appCompatActivity.getSupportFragmentManager().registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks() { // from class: com.qianhe.yct.utils.AppUpgrader.2
                @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
                public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
                    if (fragment == AppUpgrader.this.upgradeTipsDialogFragment) {
                        AppUpgrader.this.notifyUpgradeTipsDialogShown(onUpgradeListioner);
                        fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                    }
                }
            }, false);
            this.upgradeTipsDialogFragment.show(appCompatActivity.getSupportFragmentManager(), "UpgradeFmwDialogFragment");
            this.upgradeTipsDialogFragment.setOnActionListener(new UpgradeApkDialogFragment.OnActionListener() { // from class: com.qianhe.yct.utils.AppUpgrader.3
                @Override // com.qianhe.yct.dialog.UpgradeApkDialogFragment.OnActionListener
                public void onDownload() throws JSONException {
                    if (AppUpgrader.this.mApkInfo != null) {
                        if (AppUpgrader.this.sourceMD5.equals(AppUpgrader.this.baseFileMd5)) {
                            AppUpgrader appUpgrader = AppUpgrader.this;
                            appUpgrader.downLoad(appCompatActivity, str, (appUpgrader.mApkInfo.diff_apk_id <= 0 || AppUpgrader.this.upgradeErrorCount >= 1) ? AppUpgrader.this.mApkInfo.full_apk_id : AppUpgrader.this.mApkInfo.diff_apk_id, onUpgradeListioner);
                        } else {
                            AppUpgrader appUpgrader2 = AppUpgrader.this;
                            appUpgrader2.downLoad(appCompatActivity, str, appUpgrader2.mApkInfo.full_apk_id, onUpgradeListioner);
                        }
                    }
                }

                @Override // com.qianhe.yct.dialog.UpgradeApkDialogFragment.OnActionListener
                public void onIgnore() {
                    OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                    if (onUpgradeListioner2 != null) {
                        onUpgradeListioner2.onIgnore(AppUpgrader.this.mApkInfo);
                    }
                }

                @Override // com.qianhe.yct.dialog.UpgradeApkDialogFragment.OnActionListener
                public void onClose(int i) {
                    OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                    if (onUpgradeListioner2 != null) {
                        onUpgradeListioner2.onCancel(i);
                    }
                }
            });
        }
        apkInfo = this.mApkInfo;
        j = apkInfo.full_file_size;
        bundle.putLong("fileSize", j);
        this.upgradeTipsDialogFragment.setArguments(bundle);
        appCompatActivity.getSupportFragmentManager().registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks() { // from class: com.qianhe.yct.utils.AppUpgrader.2
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
                if (fragment == AppUpgrader.this.upgradeTipsDialogFragment) {
                    AppUpgrader.this.notifyUpgradeTipsDialogShown(onUpgradeListioner);
                    fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                }
            }
        }, false);
        this.upgradeTipsDialogFragment.show(appCompatActivity.getSupportFragmentManager(), "UpgradeFmwDialogFragment");
        this.upgradeTipsDialogFragment.setOnActionListener(new UpgradeApkDialogFragment.OnActionListener() { // from class: com.qianhe.yct.utils.AppUpgrader.3
            @Override // com.qianhe.yct.dialog.UpgradeApkDialogFragment.OnActionListener
            public void onDownload() throws JSONException {
                if (AppUpgrader.this.mApkInfo != null) {
                    if (AppUpgrader.this.sourceMD5.equals(AppUpgrader.this.baseFileMd5)) {
                        AppUpgrader appUpgrader = AppUpgrader.this;
                        appUpgrader.downLoad(appCompatActivity, str, (appUpgrader.mApkInfo.diff_apk_id <= 0 || AppUpgrader.this.upgradeErrorCount >= 1) ? AppUpgrader.this.mApkInfo.full_apk_id : AppUpgrader.this.mApkInfo.diff_apk_id, onUpgradeListioner);
                    } else {
                        AppUpgrader appUpgrader2 = AppUpgrader.this;
                        appUpgrader2.downLoad(appCompatActivity, str, appUpgrader2.mApkInfo.full_apk_id, onUpgradeListioner);
                    }
                }
            }

            @Override // com.qianhe.yct.dialog.UpgradeApkDialogFragment.OnActionListener
            public void onIgnore() {
                OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                if (onUpgradeListioner2 != null) {
                    onUpgradeListioner2.onIgnore(AppUpgrader.this.mApkInfo);
                }
            }

            @Override // com.qianhe.yct.dialog.UpgradeApkDialogFragment.OnActionListener
            public void onClose(int i) {
                OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                if (onUpgradeListioner2 != null) {
                    onUpgradeListioner2.onCancel(i);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUpgradeTipsDialogShown(OnUpgradeListioner onUpgradeListioner) {
        if (onUpgradeListioner != null) {
            onUpgradeListioner.onUpgradeTipsDialogShown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String resolveInstalledApkMd5(AppCompatActivity appCompatActivity) {
        try {
            ApplicationInfo applicationInfo = appCompatActivity.getPackageManager().getPackageInfo(appCompatActivity.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null) {
                return FileUtil.getFileMD5(applicationInfo.sourceDir);
            }
            return "";
        } catch (PackageManager.NameNotFoundException e) {
            LogToFile.e("resolveInstalledApkMd5：" + e);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downLoad(AppCompatActivity appCompatActivity, String str, int i, final OnUpgradeListioner onUpgradeListioner) throws JSONException {
        if (onUpgradeListioner != null) {
            appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.4
                @Override // java.lang.Runnable
                public void run() {
                    onUpgradeListioner.onDownloadInfo();
                }
            });
        }
        NetworkDataLoader.getInstance().getApkDownloadUrl(i, new AnonymousClass5(appCompatActivity, onUpgradeListioner, str));
    }

    /* renamed from: com.qianhe.yct.utils.AppUpgrader$5, reason: invalid class name */
    class AnonymousClass5 implements OnDownloadInfoResponseListioner {
        final /* synthetic */ String val$apkRootPath;
        final /* synthetic */ AppCompatActivity val$context;
        final /* synthetic */ OnUpgradeListioner val$onUpgradeListioner;

        AnonymousClass5(AppCompatActivity appCompatActivity, OnUpgradeListioner onUpgradeListioner, String str) {
            this.val$context = appCompatActivity;
            this.val$onUpgradeListioner = onUpgradeListioner;
            this.val$apkRootPath = str;
        }

        @Override // com.qianhe.yct.utils.AppUpgrader.OnDownloadInfoResponseListioner
        public void onDownloadInfo(final ApkDownloadUrlResponse apkDownloadUrlResponse) throws IOException {
            if (AppUpgrader.this.startDownload) {
                if (AppUpgrader.this.mApkInfo == null) {
                    this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            OnUpgradeListioner onUpgradeListioner = anonymousClass5.val$onUpgradeListioner;
                            if (onUpgradeListioner != null) {
                                onUpgradeListioner.onUpgradeFailed(ErrorCodeUtils.getErrorMsg(anonymousClass5.val$context, apkDownloadUrlResponse.state));
                            }
                        }
                    });
                    return;
                }
                if (AppUpgrader.this.mApkInfo.diff_apk_id > 0 && AppUpgrader.this.upgradeErrorCount < 1) {
                    AppUpgrader.this.mFilePath = this.val$apkRootPath + InternalZipConstants.ZIP_FILE_SEPARATOR + apkDownloadUrlResponse.version + ".patch";
                    AppUpgrader.this.mMegerApkPath = this.val$apkRootPath + InternalZipConstants.ZIP_FILE_SEPARATOR + apkDownloadUrlResponse.version + ".apk";
                    try {
                        new File(AppUpgrader.this.mMegerApkPath).createNewFile();
                    } catch (IOException e) {
                        LogToFile.e("创建文件异常：" + e);
                    }
                } else {
                    AppUpgrader.this.mFilePath = this.val$apkRootPath + InternalZipConstants.ZIP_FILE_SEPARATOR + apkDownloadUrlResponse.version + ".apk";
                }
                if (!new File(AppUpgrader.this.mFilePath).exists() || new File(AppUpgrader.this.mFilePath).length() != apkDownloadUrlResponse.file_size || !FileUtil.getFileMD5(AppUpgrader.this.mFilePath).equals(apkDownloadUrlResponse.file_md5)) {
                    LogToFile.deleteFolderFile(this.val$apkRootPath, false);
                    this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            if (anonymousClass5.val$onUpgradeListioner == null || !AppUpgrader.this.startDownload) {
                                return;
                            }
                            AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                            anonymousClass52.val$onUpgradeListioner.onStartDownload(AppUpgrader.this.mApkInfo.forced);
                        }
                    });
                    NetworkDataLoader.getInstance().downloadApkWithProgress(apkDownloadUrlResponse.download_url, AppUpgrader.this.mFilePath, new NetworkDataLoader.ProgressListener() { // from class: com.qianhe.yct.utils.AppUpgrader.5.3
                        @Override // com.qianhe.yct.utils.NetworkDataLoader.ProgressListener
                        public void update(long j, long j2, boolean z) {
                            final int i = (int) ((j * 100) / j2);
                            if (z && AppUpgrader.this.mApkInfo != null) {
                                if (AppUpgrader.this.sourceMD5.equals(AppUpgrader.this.baseFileMd5) && AppUpgrader.this.mApkInfo.diff_apk_id > 0 && AppUpgrader.this.upgradeErrorCount < 1) {
                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                    AppUpgrader.this.mergeDiffPackage(anonymousClass5.val$context, anonymousClass5.val$apkRootPath, anonymousClass5.val$onUpgradeListioner);
                                    return;
                                }
                                String fileMD5 = FileUtil.getFileMD5(AppUpgrader.this.mFilePath);
                                LogToFile.i("完整包md5比对：" + fileMD5 + "  ————  " + AppUpgrader.this.mApkInfo.full_file_md5);
                                if (fileMD5.equals(AppUpgrader.this.mApkInfo.full_file_md5)) {
                                    AppUpgrader.this.upgradeErrorCount = 0;
                                    AnonymousClass5.this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.3.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                            OnUpgradeListioner onUpgradeListioner = anonymousClass52.val$onUpgradeListioner;
                                            if (onUpgradeListioner != null) {
                                                onUpgradeListioner.onDownloadDone(AppUpgrader.this.mApkInfo.forced, AppUpgrader.this.mFilePath);
                                            }
                                        }
                                    });
                                    return;
                                } else {
                                    AppUpgrader.this.upgradeErrorCount++;
                                    AnonymousClass5.this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.3.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            OnUpgradeListioner onUpgradeListioner = AnonymousClass5.this.val$onUpgradeListioner;
                                            if (onUpgradeListioner != null) {
                                                onUpgradeListioner.onParsingError();
                                            }
                                        }
                                    });
                                    return;
                                }
                            }
                            AnonymousClass5.this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.3.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                    if (anonymousClass52.val$onUpgradeListioner == null || !AppUpgrader.this.startDownload || AppUpgrader.this.mApkInfo == null) {
                                        return;
                                    }
                                    AnonymousClass5 anonymousClass53 = AnonymousClass5.this;
                                    anonymousClass53.val$onUpgradeListioner.onDownloadProgress(AppUpgrader.this.mApkInfo.forced, i);
                                }
                            });
                        }

                        @Override // com.qianhe.yct.utils.NetworkDataLoader.ProgressListener
                        public void onError() {
                            AnonymousClass5.this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.3.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                    if (anonymousClass5.val$onUpgradeListioner == null || AppUpgrader.this.mApkInfo == null) {
                                        return;
                                    }
                                    AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                    anonymousClass52.val$onUpgradeListioner.onDownloadError(AppUpgrader.this.mApkInfo.forced);
                                }
                            });
                        }
                    });
                } else if (AppUpgrader.this.mApkInfo != null) {
                    if (AppUpgrader.this.sourceMD5.equals(AppUpgrader.this.baseFileMd5) && AppUpgrader.this.mApkInfo.diff_apk_id > 0 && AppUpgrader.this.upgradeErrorCount < 1) {
                        AppUpgrader.this.mergeDiffPackage(this.val$context, this.val$apkRootPath, this.val$onUpgradeListioner);
                    } else {
                        this.val$context.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.5.4
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                OnUpgradeListioner onUpgradeListioner = anonymousClass5.val$onUpgradeListioner;
                                if (onUpgradeListioner != null) {
                                    onUpgradeListioner.onDownloadDone(AppUpgrader.this.mApkInfo.forced, AppUpgrader.this.mFilePath);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeDiffPackage(final AppCompatActivity appCompatActivity, final String str, final OnUpgradeListioner onUpgradeListioner) {
        try {
            ApplicationInfo applicationInfo = appCompatActivity.getPackageManager().getPackageInfo(appCompatActivity.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null) {
                String str2 = applicationInfo.sourceDir;
                LogToFile.i("正在合并——> apkPath:" + str2 + "，mFilePath：" + this.mFilePath + "，mMegerApkPath：" + this.mMegerApkPath);
                BsPatchManager.getInstance().merge(this.mApkInfo, str2, this.mFilePath, this.mMegerApkPath, new BsPatchManager.OnMergeListener() { // from class: com.qianhe.yct.utils.AppUpgrader.6
                    @Override // com.qianhe.yct.utils.BsPatchManager.OnMergeListener
                    public void onProcessing() {
                        appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                                if (onUpgradeListioner2 != null) {
                                    onUpgradeListioner2.onParsingPackage();
                                }
                            }
                        });
                    }

                    @Override // com.qianhe.yct.utils.BsPatchManager.OnMergeListener
                    public void onSuccess(final String str3) {
                        AppUpgrader.this.upgradeErrorCount = 0;
                        appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.6.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                                if (onUpgradeListioner2 != null) {
                                    onUpgradeListioner2.onDownloadDone(AppUpgrader.this.mApkInfo.forced, str3);
                                }
                            }
                        });
                    }

                    @Override // com.qianhe.yct.utils.BsPatchManager.OnMergeListener
                    public void onError(BsPatch.Result result) throws JSONException {
                        if (result != null && result.success) {
                            LogToFile.i("差分包合并异常：合并后完整包md5不匹配");
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("差分包合并异常：");
                            sb.append(result != null ? result.message : "差分包md5不匹配");
                            LogToFile.i(sb.toString());
                        }
                        AppUpgrader.this.upgradeErrorCount++;
                        if (AppUpgrader.this.startDownload && AppUpgrader.this.mApkInfo != null && AppUpgrader.this.mApkInfo.full_apk_id > 0) {
                            LogToFile.i("差分包合并失败，自动改下完整包 full_apk_id=" + AppUpgrader.this.mApkInfo.full_apk_id);
                            AppUpgrader appUpgrader = AppUpgrader.this;
                            appUpgrader.downLoad(appCompatActivity, str, appUpgrader.mApkInfo.full_apk_id, onUpgradeListioner);
                            return;
                        }
                        appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.6.3
                            @Override // java.lang.Runnable
                            public void run() {
                                OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                                if (onUpgradeListioner2 != null) {
                                    onUpgradeListioner2.onParsingError();
                                }
                            }
                        });
                    }
                });
                return;
            }
            appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.7
                @Override // java.lang.Runnable
                public void run() {
                    OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                    if (onUpgradeListioner2 != null) {
                        onUpgradeListioner2.onUpgradeFailed(appCompatActivity.getString(R$string.upgrade_failed));
                    }
                }
            });
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            LogToFile.e("mergeDiffPackage：" + e);
            appCompatActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.utils.AppUpgrader.8
                @Override // java.lang.Runnable
                public void run() {
                    OnUpgradeListioner onUpgradeListioner2 = onUpgradeListioner;
                    if (onUpgradeListioner2 != null) {
                        onUpgradeListioner2.onUpgradeFailed(appCompatActivity.getString(R$string.upgrade_failed));
                    }
                }
            });
        }
    }

    public void cancelDownload() {
        this.startDownload = false;
        NetworkDataLoader.getInstance().cancelDownload();
    }
}
