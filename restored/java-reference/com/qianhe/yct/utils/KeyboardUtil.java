package com.qianhe.yct.utils;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class KeyboardUtil {
    private Activity activity;
    private int keyboardHeightThreshold = dpToPx(200);
    private OnKeyboardVisibilityListener listener;
    private View rootView;

    public interface OnKeyboardVisibilityListener {
        void onKeyboardHidden();

        void onKeyboardShown();
    }

    public KeyboardUtil(Activity activity, OnKeyboardVisibilityListener onKeyboardVisibilityListener) {
        this.activity = activity;
        this.listener = onKeyboardVisibilityListener;
        initRootView();
    }

    private void initRootView() {
        View childAt = ((FrameLayout) this.activity.findViewById(R.id.content)).getChildAt(0);
        this.rootView = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.qianhe.yct.utils.KeyboardUtil.1
            private int lastRootViewHeight;

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Rect rect = new Rect();
                KeyboardUtil.this.rootView.getWindowVisibleDisplayFrame(rect);
                int height = KeyboardUtil.this.rootView.getRootView().getHeight();
                int i = rect.bottom;
                int i2 = height - i;
                int i3 = this.lastRootViewHeight;
                if (i3 > 0) {
                    if (i > i3 + (KeyboardUtil.this.keyboardHeightThreshold / 2)) {
                        if (KeyboardUtil.this.listener != null) {
                            KeyboardUtil.this.listener.onKeyboardHidden();
                        }
                    } else if (KeyboardUtil.this.listener != null && i2 > 100) {
                        KeyboardUtil.this.listener.onKeyboardShown();
                    }
                }
                this.lastRootViewHeight = i;
            }
        });
    }

    private int dpToPx(int i) {
        return (int) ((i * this.activity.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
