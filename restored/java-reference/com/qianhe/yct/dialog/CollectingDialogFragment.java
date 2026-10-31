package com.qianhe.yct.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogCollectingBinding;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CollectingDialogFragment extends BaseDialogFragment {
    private DialogCollectingBinding binding;
    private boolean closeNotified;
    private int countDownSeconds = 2;
    private float downX;
    private float downY;
    private OnCloseListener listener;
    private boolean manualCancel;
    private ScheduledExecutorService scheduledExecutor;
    private ScheduledFuture<?> scheduledFuture;

    public interface OnCloseListener {
        void onClose(int i);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogCollectingBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.CollectingDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvTip.setText(arguments.getString("tip"));
            this.countDownSeconds = arguments.getInt("countDownSeconds", 2);
        }
        this.binding.tvCount.setText(String.format("%ss", Integer.valueOf(this.countDownSeconds)));
        this.binding.tvEnd.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CollectingDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectingDialogFragment.$r8$lambda$gbNVmEPZudtTeO0P51qyb9RvIaI(this.f$0, view);
            }
        });
        this.binding.getRoot().setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.dialog.CollectingDialogFragment.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    CollectingDialogFragment.this.downX = motionEvent.getRawX();
                    CollectingDialogFragment.this.downY = motionEvent.getRawY();
                    return true;
                }
                if (action != 2) {
                    return true;
                }
                int rawX = (int) (motionEvent.getRawX() - CollectingDialogFragment.this.downX);
                int rawY = (int) (motionEvent.getRawY() - CollectingDialogFragment.this.downY);
                Window window = CollectingDialogFragment.this.getDialog().getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.x += rawX;
                attributes.y += rawY;
                window.setAttributes(attributes);
                CollectingDialogFragment.this.downX = motionEvent.getRawX();
                CollectingDialogFragment.this.downY = motionEvent.getRawY();
                return true;
            }
        });
        startCollectTimer();
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$gbNVmEPZudtTeO0P51qyb9RvIaI(CollectingDialogFragment collectingDialogFragment, View view) {
        collectingDialogFragment.manualCancel = true;
        if (collectingDialogFragment.getDialog() == null || !collectingDialogFragment.getDialog().isShowing()) {
            return;
        }
        collectingDialogFragment.dismiss();
    }

    /* renamed from: com.qianhe.yct.dialog.CollectingDialogFragment$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        long count;

        AnonymousClass3() {
            this.count = CollectingDialogFragment.this.countDownSeconds;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CollectingDialogFragment.this.isAdded()) {
                CollectingDialogFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.CollectingDialogFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TextView textView = CollectingDialogFragment.this.binding.tvCount;
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        long j = anonymousClass3.count - 1;
                        anonymousClass3.count = j;
                        textView.setText(String.format("%ss", Long.valueOf(j)));
                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                        if (anonymousClass32.count > 0 || CollectingDialogFragment.this.getDialog() == null || !CollectingDialogFragment.this.getDialog().isShowing()) {
                            return;
                        }
                        CollectingDialogFragment.this.dismiss();
                    }
                });
            }
        }
    }

    protected void startCollectTimer() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.scheduledExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.scheduledFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new AnonymousClass3(), 1000L, 1000L, TimeUnit.MILLISECONDS);
    }

    protected void stopCollectTimer() {
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.scheduledFuture = null;
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public void cancelManually() {
        this.manualCancel = true;
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        isPad();
        window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.4f), -2);
        window.setDimAmount(0.3f);
        setWindowsCallback(window);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.manualCancel = true;
        super.onCancel(dialogInterface);
    }

    private void notifyClose() {
        if (this.closeNotified) {
            return;
        }
        this.closeNotified = true;
        OnCloseListener onCloseListener = this.listener;
        if (onCloseListener != null) {
            onCloseListener.onClose(this.manualCancel ? 1 : 0);
        }
        this.manualCancel = false;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        stopCollectTimer();
        notifyClose();
    }
}
