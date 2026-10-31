package com.qianhe.yct.utils;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.dialog.TipsDialogFragment;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class NotFixedSolutionTipHelper {
    private TipsDialogFragment dialog;
    private boolean dismissedManually;
    private final Fragment fragment;
    private int lastTipRes;

    public NotFixedSolutionTipHelper(Fragment fragment) {
        this.fragment = fragment;
    }

    public void onPageResume(GGAEntity gGAEntity) {
        this.dismissedManually = false;
        check(false, gGAEntity);
    }

    public void onPagePause() {
        dismiss();
    }

    public void onGgaUpdated(GGAEntity gGAEntity, boolean z) {
        if (z) {
            check(false, gGAEntity);
        }
    }

    public boolean checkOnContinue(GGAEntity gGAEntity) {
        check(true, gGAEntity);
        return isFixed(resolve(gGAEntity));
    }

    public void dismiss() {
        TipsDialogFragment tipsDialogFragmentFindDialog = findDialog();
        this.dialog = null;
        if (tipsDialogFragmentFindDialog == null || !tipsDialogFragmentFindDialog.isAdded()) {
            return;
        }
        tipsDialogFragmentFindDialog.dismissAllowingStateLoss();
    }

    private void check(boolean z, GGAEntity gGAEntity) {
        if (this.fragment.isAdded()) {
            GGAEntity gGAEntityResolve = resolve(gGAEntity);
            if (isFixed(gGAEntityResolve)) {
                this.dismissedManually = false;
                dismiss();
            } else if (gGAEntityResolve != null || z) {
                if (z || !this.dismissedManually) {
                    show(gGAEntityResolve);
                }
            }
        }
    }

    private void show(GGAEntity gGAEntity) {
        int iTipRes = tipRes(gGAEntity);
        String string = this.fragment.getString(iTipRes);
        TipsDialogFragment tipsDialogFragmentFindDialog = findDialog();
        if (tipsDialogFragmentFindDialog != null) {
            if (iTipRes != this.lastTipRes) {
                tipsDialogFragmentFindDialog.refreshTip(string);
                this.lastTipRes = iTipRes;
                return;
            }
            return;
        }
        this.lastTipRes = iTipRes;
        this.dialog = new TipsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", string);
        bundle.putString("btnStr", this.fragment.getString(R$string.ok));
        bundle.putString("requestKey", "not_fixed_solution");
        this.dialog.setArguments(bundle);
        this.dialog.setOnConfirmListener(new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.utils.NotFixedSolutionTipHelper.1
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                NotFixedSolutionTipHelper.this.dismissedManually = true;
                NotFixedSolutionTipHelper.this.dialog = null;
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (z) {
                    NotFixedSolutionTipHelper.this.dismissedManually = true;
                }
                NotFixedSolutionTipHelper.this.dialog = null;
            }
        });
        this.dialog.show(this.fragment.getParentFragmentManager(), "NotFixedSolutionDialog");
    }

    private TipsDialogFragment findDialog() {
        TipsDialogFragment tipsDialogFragment = this.dialog;
        if (tipsDialogFragment != null && tipsDialogFragment.getDialog() != null && this.dialog.getDialog().isShowing()) {
            return this.dialog;
        }
        Fragment fragmentFindFragmentByTag = this.fragment.getParentFragmentManager().findFragmentByTag("NotFixedSolutionDialog");
        if (!(fragmentFindFragmentByTag instanceof TipsDialogFragment)) {
            return null;
        }
        TipsDialogFragment tipsDialogFragment2 = (TipsDialogFragment) fragmentFindFragmentByTag;
        this.dialog = tipsDialogFragment2;
        return tipsDialogFragment2;
    }

    private GGAEntity resolve(GGAEntity gGAEntity) {
        if (gGAEntity != null) {
            return gGAEntity;
        }
        if (this.fragment.getActivity() instanceof BaseActivity) {
            return ((BaseActivity) this.fragment.getActivity()).mGGA;
        }
        return null;
    }

    private static boolean isFixed(GGAEntity gGAEntity) {
        return gGAEntity != null && gGAEntity.quality == 4;
    }

    private static int tipRes(GGAEntity gGAEntity) {
        if ((gGAEntity == null ? 0 : gGAEntity.quality) == 1) {
            return R$string.not_fixed_solution_check_diff_config;
        }
        return R$string.not_fixed_solution_ensure_leveling_signal;
    }
}
