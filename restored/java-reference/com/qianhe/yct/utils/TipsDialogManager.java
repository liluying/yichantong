package com.qianhe.yct.utils;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.dialog.TipsDialogFragment;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class TipsDialogManager {
    private boolean closeCallbackConsumed;
    private TipsDialogFragment currentDialog;
    private String currentRequestKey;
    private TipsDialogFragment.OnConfirmListener currentUserListener;
    private final FragmentManager fragmentManager;
    private volatile boolean isShowing = false;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    public TipsDialogManager(FragmentManager fragmentManager) {
        this.fragmentManager = fragmentManager;
    }

    public void show(String str, String str2, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        show(str, str2, null, onConfirmListener);
    }

    public void show(String str, String str2, String str3, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        show(str, str2, null, str3, onConfirmListener, null);
    }

    public void show(final String str, final String str2, final String str3, final String str4, final TipsDialogFragment.OnConfirmListener onConfirmListener, final String str5) {
        TipsDialogFragment tipsDialogFragment;
        if (TextUtils.isEmpty(str)) {
            LogToFile.i("tip is empty, ignore show");
            return;
        }
        this.mainHandler.removeCallbacksAndMessages(null);
        if (this.isShowing && isPermissionDialogShowing() && !"permission".equals(str5)) {
            LogToFile.i("Permission dialog is showing, ignore new tips dialog");
            return;
        }
        if (this.isShowing && isBluetoothPairingDialogShowing() && !"bluetooth_pairing".equals(str5)) {
            LogToFile.i("Replace bluetooth pairing tip with new tips dialog");
            try {
                TipsDialogFragment tipsDialogFragment2 = this.currentDialog;
                if (tipsDialogFragment2 != null) {
                    tipsDialogFragment2.dismissAllowingStateLoss();
                }
            } catch (Exception e) {
                LogToFile.i("Dismiss pairing tip failed: " + e.getMessage());
            }
            resetDialogState();
        }
        if (this.isShowing && isBluetoothPairingDialogShowing() && "bluetooth_pairing".equals(str5)) {
            return;
        }
        if (this.isShowing && (tipsDialogFragment = this.currentDialog) != null) {
            try {
                tipsDialogFragment.dismissAllowingStateLoss();
            } catch (Exception e2) {
                LogToFile.i("Previous dialog dismiss failed: " + e2.getMessage());
            }
        }
        Runnable runnable = new Runnable() { // from class: com.qianhe.yct.utils.TipsDialogManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.createNewDialog(str, str2, str3, str4, onConfirmListener, str5);
            }
        };
        if (Looper.myLooper() == this.mainHandler.getLooper()) {
            runnable.run();
        } else {
            this.mainHandler.post(runnable);
        }
    }

    public void dismissImmediately() {
        this.mainHandler.removeCallbacksAndMessages(null);
        Runnable runnable = new Runnable() { // from class: com.qianhe.yct.utils.TipsDialogManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TipsDialogManager.$r8$lambda$LtnmCC1OkhLtEe6yi12W0sEa7DU(this.f$0);
            }
        };
        if (Looper.myLooper() == this.mainHandler.getLooper()) {
            runnable.run();
        } else {
            this.mainHandler.post(runnable);
        }
    }

    public static /* synthetic */ void $r8$lambda$LtnmCC1OkhLtEe6yi12W0sEa7DU(TipsDialogManager tipsDialogManager) {
        tipsDialogManager.getClass();
        try {
            try {
                if (tipsDialogManager.isBluetoothPairingDialogShowing()) {
                    tipsDialogManager.notifyUserClose(true);
                }
                TipsDialogFragment tipsDialogFragment = tipsDialogManager.currentDialog;
                if (tipsDialogFragment == null) {
                    Fragment fragmentFindFragmentByTag = tipsDialogManager.fragmentManager.findFragmentByTag("TipsDialogFragment");
                    if (fragmentFindFragmentByTag instanceof TipsDialogFragment) {
                        tipsDialogFragment = (TipsDialogFragment) fragmentFindFragmentByTag;
                    }
                }
                if (tipsDialogFragment != null) {
                    if (tipsDialogFragment.isAdded() && !tipsDialogFragment.isRemoving()) {
                        tipsDialogFragment.dismissAllowingStateLoss();
                    }
                    Fragment fragmentFindFragmentByTag2 = tipsDialogManager.fragmentManager.findFragmentByTag("TipsDialogFragment");
                    if (fragmentFindFragmentByTag2 != null && fragmentFindFragmentByTag2.isAdded() && !fragmentFindFragmentByTag2.isRemoving()) {
                        tipsDialogManager.fragmentManager.beginTransaction().remove(fragmentFindFragmentByTag2).commitAllowingStateLoss();
                    }
                }
                tipsDialogManager.resetDialogState();
            } catch (Exception e) {
                LogToFile.i("Force close failed: " + e.getMessage());
                tipsDialogManager.resetDialogState();
            }
        } catch (Throwable th) {
            tipsDialogManager.resetDialogState();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createNewDialog(String str, String str2, String str3, String str4, final TipsDialogFragment.OnConfirmListener onConfirmListener, String str5) {
        this.currentDialog = null;
        this.currentRequestKey = str5;
        this.currentUserListener = onConfirmListener;
        this.closeCallbackConsumed = false;
        this.currentDialog = new TipsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("btnStr", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString("cancelStr", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            bundle.putString("hintTip", str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            bundle.putString("requestKey", str5);
        }
        this.currentDialog.setArguments(bundle);
        this.currentDialog.setOnConfirmListener(new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.utils.TipsDialogManager.1
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                TipsDialogFragment.OnConfirmListener onConfirmListener2 = onConfirmListener;
                if (onConfirmListener2 != null) {
                    onConfirmListener2.onConfirm();
                }
                TipsDialogManager.this.resetDialogState();
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                TipsDialogManager.this.notifyUserClose(z);
                TipsDialogManager.this.resetDialogState();
            }
        });
        try {
            if (this.fragmentManager.isStateSaved()) {
                this.fragmentManager.beginTransaction().add(this.currentDialog, "TipsDialogFragment").commitAllowingStateLoss();
            } else {
                this.currentDialog.show(this.fragmentManager, "TipsDialogFragment");
            }
            this.isShowing = true;
        } catch (Exception e) {
            LogToFile.i("Show dialog failed: " + e.getMessage());
            resetDialogState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetDialogState() {
        this.isShowing = false;
        this.currentDialog = null;
        this.currentRequestKey = null;
        this.currentUserListener = null;
        this.closeCallbackConsumed = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUserClose(boolean z) {
        TipsDialogFragment.OnConfirmListener onConfirmListener;
        if (this.closeCallbackConsumed || (onConfirmListener = this.currentUserListener) == null) {
            return;
        }
        this.closeCallbackConsumed = true;
        try {
            onConfirmListener.onClose(z);
        } catch (Exception e) {
            LogToFile.i("Tips dialog close callback failed: " + e.getMessage());
        }
    }

    public boolean isShowing() {
        return this.isShowing || this.fragmentManager.findFragmentByTag("TipsDialogFragment") != null;
    }

    public boolean isPermissionDialogShowing() {
        if (!isShowing()) {
            return false;
        }
        TipsDialogFragment tipsDialogFragment = this.currentDialog;
        if (tipsDialogFragment == null) {
            Fragment fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag("TipsDialogFragment");
            if (fragmentFindFragmentByTag instanceof TipsDialogFragment) {
                tipsDialogFragment = (TipsDialogFragment) fragmentFindFragmentByTag;
            }
        }
        if (tipsDialogFragment == null || tipsDialogFragment.getArguments() == null) {
            return false;
        }
        return "permission".equals(tipsDialogFragment.getArguments().getString("requestKey"));
    }

    public boolean isBluetoothPairingDialogShowing() {
        if (!isShowing()) {
            return false;
        }
        if ("bluetooth_pairing".equals(this.currentRequestKey)) {
            return true;
        }
        TipsDialogFragment tipsDialogFragment = this.currentDialog;
        if (tipsDialogFragment == null) {
            Fragment fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag("TipsDialogFragment");
            if (fragmentFindFragmentByTag instanceof TipsDialogFragment) {
                tipsDialogFragment = (TipsDialogFragment) fragmentFindFragmentByTag;
            }
        }
        if (tipsDialogFragment == null || tipsDialogFragment.getArguments() == null) {
            return false;
        }
        return "bluetooth_pairing".equals(tipsDialogFragment.getArguments().getString("requestKey"));
    }
}
