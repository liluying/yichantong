package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogBubbleCompassBinding;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BubbleCompassDialogFragment extends BaseDialogFragment {
    private DialogBubbleCompassBinding binding;
    private boolean collectClicked;
    private OnActionListener listener;
    private boolean resultDelivered;

    public interface OnActionListener {
        void onCancel();

        void onCollect();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.listener = onActionListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            this.collectClicked = bundle.getBoolean("collected", false);
        }
        this.binding = DialogBubbleCompassBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        setCancelable(true);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.BubbleCompassDialogFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return BubbleCompassDialogFragment.$r8$lambda$64rN6by7CNpaati7FSQY8oyexbQ(this.f$0, dialogInterface, i, keyEvent);
            }
        });
        this.binding.tvCollect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.BubbleCompassDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BubbleCompassDialogFragment.$r8$lambda$WadUkKrw1C4NyN8r7IADmVE0J3k(this.f$0, view);
            }
        });
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        return alertDialogCreate;
    }

    public static /* synthetic */ boolean $r8$lambda$64rN6by7CNpaati7FSQY8oyexbQ(BubbleCompassDialogFragment bubbleCompassDialogFragment, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        bubbleCompassDialogFragment.getClass();
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        bubbleCompassDialogFragment.dismiss();
        return true;
    }

    public static /* synthetic */ void $r8$lambda$WadUkKrw1C4NyN8r7IADmVE0J3k(BubbleCompassDialogFragment bubbleCompassDialogFragment, View view) {
        bubbleCompassDialogFragment.collectClicked = true;
        if (bubbleCompassDialogFragment.getDialog() == null || !bubbleCompassDialogFragment.getDialog().isShowing()) {
            return;
        }
        bubbleCompassDialogFragment.dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onInsNavi(InsNavi insNavi) {
        if (insNavi == null || this.binding == null) {
            return;
        }
        if (MultiBluetoothManager.getInstance(requireContext()).isDeviceConnected(DeviceType.ZPY) && insNavi.deviceType == DeviceType.BASE) {
            return;
        }
        this.binding.bubbleCompassView.setAngles(insNavi.rollDegrees, insNavi.pitchDegrees);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.52f : 0.92f)), -2);
        window.setDimAmount(0.3f);
        setWindowsCallback(window);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("collected", this.collectClicked);
    }

    private void deliverFragmentResult() {
        if (this.resultDelivered) {
            return;
        }
        this.resultDelivered = true;
        Bundle bundle = new Bundle();
        bundle.putBoolean("collected", this.collectClicked);
        getParentFragmentManager().setFragmentResult("BubbleCompassDialogFragment_result", bundle);
    }

    private void notifyLegacyListener() {
        OnActionListener onActionListener = this.listener;
        if (onActionListener == null) {
            return;
        }
        if (this.collectClicked) {
            onActionListener.onCollect();
        } else {
            onActionListener.onCancel();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.collectClicked = false;
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        deliverFragmentResult();
        notifyLegacyListener();
    }
}
