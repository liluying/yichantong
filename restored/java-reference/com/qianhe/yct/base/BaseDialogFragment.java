package com.qianhe.yct.base;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.fragment.app.DialogFragment;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.dialog.ToastDialogFragment;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseDialogFragment extends DialogFragment {
    private LoadingFragment loadingFragment;
    protected SharedPreferences mSp;
    protected String requestKey = "";
    private float softInputTouchDownX;
    private float softInputTouchDownY;
    private boolean softInputTouchMoved;
    private TipsDialogFragment tipsDialogFragment;
    private ToastDialogFragment toastDialogFragment;

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((BaseActivity) requireActivity()).notAllowRotateScreen();
        this.mSp = requireContext().getSharedPreferences("sp", 0);
        this.loadingFragment = new LoadingFragment();
        this.toastDialogFragment = new ToastDialogFragment();
        this.tipsDialogFragment = new TipsDialogFragment();
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("requestKey", "");
            this.requestKey = string;
            if (TextUtils.isEmpty(string)) {
                return;
            }
            ((BaseActivity) requireActivity()).allowRotateScreen();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.base.BaseDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return BaseDialogFragment.$r8$lambda$xku6nomVPy2Jzyf2JBB1LXeKaFI(this.f$0, view2, motionEvent);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$xku6nomVPy2Jzyf2JBB1LXeKaFI(BaseDialogFragment baseDialogFragment, View view, MotionEvent motionEvent) {
        baseDialogFragment.forceHideKeyboard();
        return false;
    }

    protected boolean isPad() {
        return YCTApplication.getInstance().isPad();
    }

    private void forceHideKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) requireContext().getSystemService("input_method");
        View viewPeekDecorView = requireActivity().getWindow().peekDecorView();
        if (viewPeekDecorView != null && inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(viewPeekDecorView.getWindowToken(), 2);
        }
        View currentFocus = getDialog() == null ? null : getDialog().getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
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
        LoadingFragment loadingFragment;
        if (!isAdded() || (loadingFragment = this.loadingFragment) == null || loadingFragment.getDialog() == null || !this.loadingFragment.getDialog().isShowing()) {
            return;
        }
        this.loadingFragment.dismiss();
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
        cancelTipDialog();
        if (this.tipsDialogFragment.getFragmentManager() == null) {
            this.tipsDialogFragment.show(requireActivity().getSupportFragmentManager(), "TipsDialogFragment");
            Bundle bundle = new Bundle();
            bundle.putString("tip", str);
            bundle.putString("btnStr", str2);
            this.tipsDialogFragment.setArguments(bundle);
            this.tipsDialogFragment.setOnConfirmListener(onConfirmListener);
        }
    }

    protected void cancelTipDialog() {
        TipsDialogFragment tipsDialogFragment;
        if (!isAdded() || (tipsDialogFragment = this.tipsDialogFragment) == null || tipsDialogFragment.getDialog() == null || !this.tipsDialogFragment.getDialog().isShowing()) {
            return;
        }
        this.tipsDialogFragment.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        try {
            ((BaseActivity) requireActivity()).allowRotateScreen();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void setWindowsCallback(Window window) {
        if (window != null) {
            final Window.Callback callback = window.getCallback();
            window.setCallback(new Window.Callback() { // from class: com.qianhe.yct.base.BaseDialogFragment.1
                @Override // android.view.Window.Callback
                public void onActionModeFinished(ActionMode actionMode) {
                }

                @Override // android.view.Window.Callback
                public void onActionModeStarted(ActionMode actionMode) {
                }

                @Override // android.view.Window.Callback
                public void onAttachedToWindow() {
                }

                @Override // android.view.Window.Callback
                public void onContentChanged() {
                }

                @Override // android.view.Window.Callback
                public void onDetachedFromWindow() {
                }

                @Override // android.view.Window.Callback
                public void onPanelClosed(int i, Menu menu) {
                }

                @Override // android.view.Window.Callback
                public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
                }

                @Override // android.view.Window.Callback
                public void onWindowFocusChanged(boolean z) {
                }

                @Override // android.view.Window.Callback
                public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                    return callback.dispatchKeyEvent(keyEvent);
                }

                @Override // android.view.Window.Callback
                public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
                    return callback.dispatchKeyShortcutEvent(keyEvent);
                }

                @Override // android.view.Window.Callback
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (BaseDialogFragment.this.getDialog() != null) {
                        int actionMasked = motionEvent.getActionMasked();
                        if (actionMasked == 0) {
                            BaseDialogFragment.this.softInputTouchDownX = motionEvent.getRawX();
                            BaseDialogFragment.this.softInputTouchDownY = motionEvent.getRawY();
                            BaseDialogFragment.this.softInputTouchMoved = false;
                            BaseDialogFragment.this.hideSoftInputIfTouchOutside(motionEvent.getRawX(), motionEvent.getRawY());
                        } else if (actionMasked != 1) {
                            if (actionMasked != 2) {
                                if (actionMasked == 3) {
                                    BaseDialogFragment.this.softInputTouchMoved = true;
                                }
                            } else if (!BaseDialogFragment.this.softInputTouchMoved) {
                                float scaledTouchSlop = ViewConfiguration.get(BaseDialogFragment.this.requireContext()).getScaledTouchSlop();
                                if (Math.abs(motionEvent.getRawX() - BaseDialogFragment.this.softInputTouchDownX) > scaledTouchSlop || Math.abs(motionEvent.getRawY() - BaseDialogFragment.this.softInputTouchDownY) > scaledTouchSlop) {
                                    BaseDialogFragment.this.softInputTouchMoved = true;
                                }
                            }
                        } else if (!BaseDialogFragment.this.softInputTouchMoved) {
                            BaseDialogFragment.this.showSoftInputIfClickEditText(motionEvent.getRawX(), motionEvent.getRawY());
                        }
                    }
                    return callback.dispatchTouchEvent(motionEvent);
                }

                @Override // android.view.Window.Callback
                public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
                    return callback.dispatchTrackballEvent(motionEvent);
                }

                @Override // android.view.Window.Callback
                public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
                    return callback.dispatchGenericMotionEvent(motionEvent);
                }

                @Override // android.view.Window.Callback
                public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                    return callback.dispatchPopulateAccessibilityEvent(accessibilityEvent);
                }

                @Override // android.view.Window.Callback
                public View onCreatePanelView(int i) {
                    return callback.onCreatePanelView(i);
                }

                @Override // android.view.Window.Callback
                public boolean onCreatePanelMenu(int i, Menu menu) {
                    return callback.onCreatePanelMenu(i, menu);
                }

                @Override // android.view.Window.Callback
                public boolean onPreparePanel(int i, View view, Menu menu) {
                    return callback.onPreparePanel(i, view, menu);
                }

                @Override // android.view.Window.Callback
                public boolean onMenuOpened(int i, Menu menu) {
                    return callback.onMenuOpened(i, menu);
                }

                @Override // android.view.Window.Callback
                public boolean onMenuItemSelected(int i, MenuItem menuItem) {
                    return callback.onMenuItemSelected(i, menuItem);
                }

                @Override // android.view.Window.Callback
                public boolean onSearchRequested() {
                    return callback.onSearchRequested();
                }

                @Override // android.view.Window.Callback
                public boolean onSearchRequested(SearchEvent searchEvent) {
                    return callback.onSearchRequested(searchEvent);
                }

                @Override // android.view.Window.Callback
                public ActionMode onWindowStartingActionMode(ActionMode.Callback callback2) {
                    return callback.onWindowStartingActionMode(callback2);
                }

                @Override // android.view.Window.Callback
                public ActionMode onWindowStartingActionMode(ActionMode.Callback callback2, int i) {
                    return callback.onWindowStartingActionMode(callback2, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSoftInputIfTouchOutside(float f, float f2) {
        if (getDialog() == null) {
            return;
        }
        View currentFocus = getDialog().getCurrentFocus();
        if ((currentFocus instanceof EditText) && findEditTextUnder(f, f2) == null) {
            currentFocus.clearFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) requireContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSoftInputIfClickEditText(float f, float f2) {
        EditText editTextFindEditTextUnder;
        InputMethodManager inputMethodManager;
        if (getDialog() == null || (editTextFindEditTextUnder = findEditTextUnder(f, f2)) == null || getDialog().getCurrentFocus() == editTextFindEditTextUnder || (inputMethodManager = (InputMethodManager) requireContext().getSystemService("input_method")) == null || isSoftInputVisible()) {
            return;
        }
        editTextFindEditTextUnder.requestFocus();
        inputMethodManager.showSoftInput(editTextFindEditTextUnder, 1);
    }

    private boolean isSoftInputVisible() {
        WindowInsets rootWindowInsets;
        Window window = getDialog() != null ? getDialog().getWindow() : null;
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 30 && (rootWindowInsets = decorView.getRootWindowInsets()) != null && rootWindowInsets.isVisible(WindowInsets.Type.ime())) {
            return true;
        }
        decorView.getWindowVisibleDisplayFrame(new Rect());
        if (r0 - r3.bottom > decorView.getRootView().getHeight() * 0.15d) {
            return true;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) requireContext().getSystemService("input_method");
        View currentFocus = getDialog() != null ? getDialog().getCurrentFocus() : null;
        return inputMethodManager != null && (currentFocus instanceof EditText) && inputMethodManager.isActive(currentFocus) && inputMethodManager.isAcceptingText();
    }

    private boolean isTouchOnView(View view, float f, float f2) {
        if (view != null && view.isShown()) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            if (f >= iArr[0] && f < r2 + view.getWidth()) {
                if (f2 >= iArr[1] && f2 < r1 + view.getHeight()) {
                    return true;
                }
            }
        }
        return false;
    }

    private EditText findEditTextUnder(float f, float f2) {
        Window window = getDialog() != null ? getDialog().getWindow() : null;
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView == null) {
            return null;
        }
        return findEditTextInHierarchy(decorView, f, f2);
    }

    private EditText findEditTextInHierarchy(View view, float f, float f2) {
        if (view.isShown() && isTouchOnView(view, f, f2)) {
            if (view instanceof EditText) {
                if (view.isEnabled()) {
                    return (EditText) view;
                }
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    if (childAt.isShown() && isTouchOnView(childAt, f, f2)) {
                        EditText editTextFindEditTextInHierarchy = findEditTextInHierarchy(childAt, f, f2);
                        if (editTextFindEditTextInHierarchy != null) {
                            return editTextFindEditTextInHierarchy;
                        }
                        if (childAt.isClickable() || childAt.isLongClickable()) {
                            return null;
                        }
                    }
                }
            }
        }
        return null;
    }
}
