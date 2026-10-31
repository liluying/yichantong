package com.qianhe.yct.utils;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.dialog.LoadingFragment;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LoadingDialogManager {
    private LoadingFragment currentDialog;
    private final FragmentManager fragmentManager;
    private Runnable pendingDismissRunnable;
    private Runnable pendingShowRunnable;
    private final AtomicBoolean isShowing = new AtomicBoolean(false);
    private final AtomicBoolean isPendingDismiss = new AtomicBoolean(false);
    private final AtomicLong lastShowTime = new AtomicLong(0);
    private final AtomicInteger showGeneration = new AtomicInteger(0);
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    public LoadingDialogManager(FragmentManager fragmentManager) {
        this.fragmentManager = fragmentManager;
    }

    public void show(String str, LoadingFragment.OnCloseListener onCloseListener) {
        this.isPendingDismiss.set(false);
        cancelPendingDismiss();
        if (tryUpdateExistingDialog(str, onCloseListener)) {
            this.lastShowTime.set(System.currentTimeMillis());
            cancelPendingShow();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastShowTime.get() < 300) {
            scheduleDelayedShow(str, onCloseListener);
        } else if (this.isShowing.compareAndSet(false, true)) {
            createNewDialog(str, onCloseListener);
            this.lastShowTime.set(jCurrentTimeMillis);
        }
    }

    public void dismiss() {
        LoadingFragment loadingFragment;
        invalidatePendingShow();
        cancelPendingDismiss();
        this.isPendingDismiss.set(true);
        if (!this.isShowing.get() || (loadingFragment = this.currentDialog) == null || !loadingFragment.isAdded()) {
            dismissOrphanByTag();
            return;
        }
        final int i = this.showGeneration.get();
        Runnable runnable = new Runnable() { // from class: com.qianhe.yct.utils.LoadingDialogManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LoadingDialogManager.$r8$lambda$ZgXQwQD2KnLs4YnknMtIxOO_cVM(this.f$0, i);
            }
        };
        this.pendingDismissRunnable = runnable;
        this.mainHandler.postDelayed(runnable, 100L);
    }

    public static /* synthetic */ void $r8$lambda$ZgXQwQD2KnLs4YnknMtIxOO_cVM(LoadingDialogManager loadingDialogManager, int i) {
        LoadingFragment loadingFragment;
        loadingDialogManager.pendingDismissRunnable = null;
        if (i != loadingDialogManager.showGeneration.get()) {
            return;
        }
        if (loadingDialogManager.isShowing.get() && (loadingFragment = loadingDialogManager.currentDialog) != null && loadingFragment.isAdded() && !loadingDialogManager.currentDialog.isRemoving()) {
            try {
                loadingDialogManager.currentDialog.dismiss();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                LogToFile.e("Dismiss failed -> " + e);
                loadingDialogManager.forceCloseDialog(false);
                return;
            }
        }
        loadingDialogManager.forceCloseDialog(false);
    }

    public void dismissImmediately() {
        this.isPendingDismiss.set(true);
        invalidatePendingShow();
        cancelPendingDismiss();
        forceCloseDialog(false);
    }

    private void scheduleDelayedShow(final String str, final LoadingFragment.OnCloseListener onCloseListener) {
        cancelPendingShow();
        final int i = this.showGeneration.get();
        Runnable runnable = new Runnable() { // from class: com.qianhe.yct.utils.LoadingDialogManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LoadingDialogManager.$r8$lambda$uuTwiYdalVVyYGCZPw_8bQkgLu4(this.f$0, i, str, onCloseListener);
            }
        };
        this.pendingShowRunnable = runnable;
        this.mainHandler.postDelayed(runnable, 300L);
    }

    public static /* synthetic */ void $r8$lambda$uuTwiYdalVVyYGCZPw_8bQkgLu4(LoadingDialogManager loadingDialogManager, int i, String str, LoadingFragment.OnCloseListener onCloseListener) {
        loadingDialogManager.pendingShowRunnable = null;
        if (i != loadingDialogManager.showGeneration.get() || loadingDialogManager.isPendingDismiss.get()) {
            return;
        }
        loadingDialogManager.show(str, onCloseListener);
    }

    private void invalidatePendingShow() {
        this.showGeneration.incrementAndGet();
        cancelPendingShow();
    }

    private void cancelPendingShow() {
        Runnable runnable = this.pendingShowRunnable;
        if (runnable != null) {
            this.mainHandler.removeCallbacks(runnable);
            this.pendingShowRunnable = null;
        }
    }

    private void cancelPendingDismiss() {
        Runnable runnable = this.pendingDismissRunnable;
        if (runnable != null) {
            this.mainHandler.removeCallbacks(runnable);
            this.pendingDismissRunnable = null;
        }
    }

    private void forceCloseDialog(boolean z) {
        try {
            dismissFragmentQuietly(this.currentDialog);
            dismissOrphanByTag();
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("Force close failed - > " + e);
        } finally {
            resetDialogState(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissFragmentQuietly(Fragment fragment) {
        if (fragment instanceof DialogFragment) {
            DialogFragment dialogFragment = (DialogFragment) fragment;
            try {
                if (dialogFragment.isAdded() && !dialogFragment.isRemoving()) {
                    dialogFragment.dismissAllowingStateLoss();
                }
                if (dialogFragment.getFragmentManager() == null || !dialogFragment.isAdded() || dialogFragment.isRemoving()) {
                    return;
                }
                this.fragmentManager.beginTransaction().remove(dialogFragment).commitAllowingStateLoss();
            } catch (Exception e) {
                LogToFile.e("Dismiss fragment failed -> " + e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissOrphanByTag() {
        try {
            Fragment fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag("LoadingFragment");
            if (fragmentFindFragmentByTag != null) {
                dismissFragmentQuietly(fragmentFindFragmentByTag);
            }
        } catch (Exception e) {
            LogToFile.e("Dismiss orphan loading dialog failed -> " + e);
        }
    }

    private void createNewDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        final int i = this.showGeneration.get();
        final LoadingFragment loadingFragment = new LoadingFragment();
        this.currentDialog = loadingFragment;
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        bundle.putString("requestKey", "allowRotate");
        loadingFragment.setArguments(bundle);
        loadingFragment.setOnCloseListener(wrapCloseListener(onCloseListener));
        this.fragmentManager.registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks() { // from class: com.qianhe.yct.utils.LoadingDialogManager.1
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
                if (fragment != loadingFragment) {
                    return;
                }
                fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                if (i != LoadingDialogManager.this.showGeneration.get() || LoadingDialogManager.this.isPendingDismiss.get()) {
                    LoadingDialogManager.this.dismissFragmentQuietly(loadingFragment);
                    if (LoadingDialogManager.this.currentDialog == loadingFragment) {
                        LoadingDialogManager.this.resetDialogState(true);
                    }
                    LoadingDialogManager.this.dismissOrphanByTag();
                }
            }
        }, false);
        try {
            if (!this.fragmentManager.isStateSaved()) {
                loadingFragment.showNow(this.fragmentManager, "LoadingFragment");
            } else {
                loadingFragment.show(this.fragmentManager, "LoadingFragment");
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("Show failed -> " + e);
            resetDialogState(true);
        }
    }

    private boolean tryUpdateExistingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        LoadingFragment loadingFragment = this.currentDialog;
        if (loadingFragment == null || !loadingFragment.isAdded() || this.currentDialog.isRemoving()) {
            return false;
        }
        this.currentDialog.refreshTip(str);
        if (onCloseListener == null) {
            return true;
        }
        this.currentDialog.setOnCloseListener(wrapCloseListener(onCloseListener));
        return true;
    }

    private LoadingFragment.OnCloseListener wrapCloseListener(final LoadingFragment.OnCloseListener onCloseListener) {
        return new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.utils.LoadingDialogManager$$ExternalSyntheticLambda1
            @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
            public final void onClose(int i) {
                LoadingDialogManager.m2825$r8$lambda$va7FerQFB4g8v8QCmgblsBBu0(this.f$0, onCloseListener, i);
            }
        };
    }

    /* renamed from: $r8$lambda$va7FerQFB4g8v8QCmgb-lsBBu-0, reason: not valid java name */
    public static /* synthetic */ void m2825$r8$lambda$va7FerQFB4g8v8QCmgblsBBu0(LoadingDialogManager loadingDialogManager, LoadingFragment.OnCloseListener onCloseListener, int i) {
        if (i == 1) {
            loadingDialogManager.invalidatePendingShow();
        }
        loadingDialogManager.resetDialogState(true);
        if (onCloseListener != null) {
            onCloseListener.onClose(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetDialogState(boolean z) {
        this.isShowing.set(false);
        this.currentDialog = null;
        if (z) {
            this.isPendingDismiss.set(false);
        }
    }

    public boolean isShowing() {
        return this.isShowing.get();
    }
}
