package com.qianhe.yct.utils;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.dialog.LoadingFragment;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UpgradeingDialogManager {
    private LoadingFragment currentDialog;
    private final FragmentManager fragmentManager;
    private final AtomicBoolean isShowing = new AtomicBoolean(false);
    private final AtomicBoolean isPendingDismiss = new AtomicBoolean(false);
    private final AtomicLong lastShowTime = new AtomicLong(0);
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    public UpgradeingDialogManager(FragmentManager fragmentManager) {
        this.fragmentManager = fragmentManager;
    }

    public void show(final String str, final LoadingFragment.OnCloseListener onCloseListener) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mainHandler.removeCallbacksAndMessages(null);
        this.isPendingDismiss.set(false);
        if (jCurrentTimeMillis - this.lastShowTime.get() < 300) {
            this.mainHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.UpgradeingDialogManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.show(str, onCloseListener);
                }
            }, 300L);
        } else if (!tryUpdateExistingDialog(str, onCloseListener) && this.isShowing.compareAndSet(false, true)) {
            createNewDialog(str, onCloseListener);
            this.lastShowTime.set(jCurrentTimeMillis);
        }
    }

    public void dismiss() {
        if (!this.isShowing.get() || this.currentDialog == null) {
            this.isPendingDismiss.set(true);
        } else {
            this.mainHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.UpgradeingDialogManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    UpgradeingDialogManager.$r8$lambda$GClbxfjyzibRlNjkhJGtUJMcTUc(this.f$0);
                }
            }, 100L);
        }
    }

    public static /* synthetic */ void $r8$lambda$GClbxfjyzibRlNjkhJGtUJMcTUc(UpgradeingDialogManager upgradeingDialogManager) {
        LoadingFragment loadingFragment;
        if (upgradeingDialogManager.isShowing.get() && (loadingFragment = upgradeingDialogManager.currentDialog) != null && loadingFragment.isAdded() && !upgradeingDialogManager.currentDialog.isRemoving()) {
            try {
                upgradeingDialogManager.currentDialog.dismiss();
                return;
            } catch (Exception e) {
                LogToFile.e("Dismiss failed -> " + e);
                upgradeingDialogManager.forceCloseDialog();
                return;
            }
        }
        upgradeingDialogManager.forceCloseDialog();
    }

    public void dismissImmediately() {
        this.mainHandler.removeCallbacksAndMessages(null);
        LoadingFragment loadingFragment = this.currentDialog;
        if (loadingFragment != null && !loadingFragment.isAdded()) {
            this.isPendingDismiss.set(true);
        } else {
            forceCloseDialog();
        }
    }

    private void forceCloseDialog() {
        try {
            Fragment fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag("LoadingFragment");
            if (fragmentFindFragmentByTag != null) {
                if (fragmentFindFragmentByTag.isAdded() && !fragmentFindFragmentByTag.isRemoving()) {
                    if (fragmentFindFragmentByTag instanceof LoadingFragment) {
                        ((LoadingFragment) fragmentFindFragmentByTag).dismissAllowingStateLoss();
                    }
                } else if (!fragmentFindFragmentByTag.isAdded()) {
                    this.isPendingDismiss.set(true);
                    return;
                }
            } else {
                LoadingFragment loadingFragment = this.currentDialog;
                if (loadingFragment != null && loadingFragment.isAdded() && !this.currentDialog.isRemoving()) {
                    this.currentDialog.dismissAllowingStateLoss();
                }
            }
        } catch (Exception e) {
            LogToFile.e("Force close failed - > " + e);
        }
        resetDialogState();
    }

    private void createNewDialog(String str, final LoadingFragment.OnCloseListener onCloseListener) {
        this.currentDialog = new LoadingFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        this.currentDialog.setArguments(bundle);
        this.currentDialog.setOnCloseListener(new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.utils.UpgradeingDialogManager.1
            @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
            public void onClose(int i) {
                UpgradeingDialogManager.this.resetDialogState();
                if (UpgradeingDialogManager.this.isPendingDismiss.get()) {
                    UpgradeingDialogManager.this.isPendingDismiss.set(false);
                }
                LoadingFragment.OnCloseListener onCloseListener2 = onCloseListener;
                if (onCloseListener2 != null) {
                    onCloseListener2.onClose(i);
                }
            }
        });
        this.fragmentManager.registerFragmentLifecycleCallbacks(new AnonymousClass2(), false);
        try {
            this.currentDialog.show(this.fragmentManager, "LoadingFragment");
        } catch (Exception e) {
            LogToFile.e("Show failed -> " + e);
            resetDialogState();
        }
    }

    /* renamed from: com.qianhe.yct.utils.UpgradeingDialogManager$2, reason: invalid class name */
    class AnonymousClass2 extends FragmentManager.FragmentLifecycleCallbacks {
        AnonymousClass2() {
        }

        @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
        public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
            if (fragment == UpgradeingDialogManager.this.currentDialog) {
                if (UpgradeingDialogManager.this.isPendingDismiss.get()) {
                    UpgradeingDialogManager.this.mainHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.UpgradeingDialogManager$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            UpgradeingDialogManager.this.dismiss();
                        }
                    }, 50L);
                }
                fragmentManager.unregisterFragmentLifecycleCallbacks(this);
            }
        }
    }

    private boolean tryUpdateExistingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        LoadingFragment loadingFragment = this.currentDialog;
        if (loadingFragment == null || !loadingFragment.isAdded() || this.currentDialog.isRemoving()) {
            return false;
        }
        this.currentDialog.refreshTip(str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetDialogState() {
        this.isShowing.set(false);
        this.isPendingDismiss.set(false);
    }
}
