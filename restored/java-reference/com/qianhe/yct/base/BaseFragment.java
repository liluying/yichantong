package com.qianhe.yct.base;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.dialog.ToastDialogFragment;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BaseFragment extends Fragment {
    private LoadingFragment loadingFragment;
    protected SharedPreferences mSp;
    private TipsDialogFragment tipsDialogFragment;
    private ToastDialogFragment toastDialogFragment;

    protected int getCentralMeridian(double d) {
        return (((int) ((d - 1.5d) / 3.0d)) + 1) * 3;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mSp = requireContext().getSharedPreferences("sp", 0);
        this.loadingFragment = new LoadingFragment();
        this.toastDialogFragment = new ToastDialogFragment();
        this.tipsDialogFragment = new TipsDialogFragment();
    }

    protected void showLoadingDialog(String str) {
        showLoadingDialog(str, null);
    }

    protected void showLoadingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        LoadingFragment loadingFragment = this.loadingFragment;
        if (loadingFragment != null) {
            if (loadingFragment.getFragmentManager() != null) {
                this.loadingFragment.refreshTip(str);
                return;
            }
            this.loadingFragment.show(requireActivity().getSupportFragmentManager(), "LoadingFragment");
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(str)) {
                str = getString(R$string.please_wait);
            }
            bundle.putString("tip", str);
            this.loadingFragment.setArguments(bundle);
            this.loadingFragment.setOnCloseListener(onCloseListener);
        }
    }

    protected void cancelLoadingDialog() {
        LoadingFragment loadingFragment = this.loadingFragment;
        if (loadingFragment != null) {
            loadingFragment.dismiss();
        }
    }

    protected void showToastDialog(String str) {
        if (this.toastDialogFragment.getDialog() != null && this.toastDialogFragment.getDialog().isShowing()) {
            this.toastDialogFragment.refreshTip(str);
            return;
        }
        ToastDialogFragment toastDialogFragment = new ToastDialogFragment();
        this.toastDialogFragment = toastDialogFragment;
        toastDialogFragment.show(requireActivity().getSupportFragmentManager(), "ToastDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        this.toastDialogFragment.setArguments(bundle);
    }

    protected void showTipDialog(String str, String str2, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        showTipDialog(str, str2, 0, onConfirmListener);
    }

    protected synchronized void showTipDialog(String str, String str2, int i, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        TipsDialogFragment tipsDialogFragment = this.tipsDialogFragment;
        if (tipsDialogFragment != null && tipsDialogFragment.getDialog() != null && this.tipsDialogFragment.getDialog().isShowing()) {
            this.tipsDialogFragment.refreshTip(str);
            this.tipsDialogFragment.setOnConfirmListener(onConfirmListener);
            return;
        }
        this.tipsDialogFragment = new TipsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("btnStr", str2);
        }
        if (i > 0) {
            bundle.putInt("tipColor", R$color.red_dark);
        }
        this.tipsDialogFragment.setArguments(bundle);
        this.tipsDialogFragment.setOnConfirmListener(onConfirmListener);
        this.tipsDialogFragment.show(requireActivity().getSupportFragmentManager(), "BaseFragmentTipsDialog");
    }

    protected String formatFloat(float f) {
        int i = (int) f;
        return f == ((float) i) ? String.format("%s", Integer.valueOf(i)) : String.valueOf(f);
    }

    protected String formatCoords(double d, int i) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return String.valueOf(d);
        }
        if (i < 0) {
            i = 0;
        }
        String plainString = BigDecimal.valueOf(d).setScale(i, RoundingMode.HALF_UP).toPlainString();
        return plainString.contains(".") ? plainString.replaceAll("0*$", "").replaceAll("\\.$", "") : plainString;
    }

    protected String formatDouble(double d) {
        if (d == 0.0d) {
            return "";
        }
        String plainString = EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0.m(BigDecimal.valueOf(d)).toPlainString();
        return (plainString.contains(".") && plainString.endsWith(".")) ? plainString.substring(0, plainString.length() - 1) : plainString;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }
}
