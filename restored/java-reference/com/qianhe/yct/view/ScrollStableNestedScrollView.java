package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.widget.NestedScrollView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ScrollStableNestedScrollView extends NestedScrollView {
    private int lockedScrollY;
    private final Runnable restoreRunnable;
    private boolean restoreScrollOnLayout;

    @Override // androidx.core.widget.NestedScrollView
    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        return 0;
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        return false;
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return false;
    }

    public ScrollStableNestedScrollView(Context context) {
        super(context);
        this.restoreRunnable = new Runnable() { // from class: com.qianhe.yct.view.ScrollStableNestedScrollView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.restoreLockedScroll();
            }
        };
        init();
    }

    public ScrollStableNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.restoreRunnable = new Runnable() { // from class: com.qianhe.yct.view.ScrollStableNestedScrollView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.restoreLockedScroll();
            }
        };
        init();
    }

    public ScrollStableNestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.restoreRunnable = new Runnable() { // from class: com.qianhe.yct.view.ScrollStableNestedScrollView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.restoreLockedScroll();
            }
        };
        init();
    }

    private void init() {
        setDescendantFocusability(393216);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public void lockScrollPosition() {
        if (!this.restoreScrollOnLayout) {
            this.lockedScrollY = getScrollY();
            this.restoreScrollOnLayout = true;
        }
        removeCallbacks(this.restoreRunnable);
        post(this.restoreRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreLockedScroll() {
        int scrollY = getScrollY();
        int i = this.lockedScrollY;
        if (scrollY != i) {
            scrollTo(0, i);
        }
        post(new Runnable() { // from class: com.qianhe.yct.view.ScrollStableNestedScrollView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.restoreScrollOnLayout = false;
            }
        });
    }

    @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.restoreScrollOnLayout) {
            int scrollY = getScrollY();
            int i5 = this.lockedScrollY;
            if (scrollY != i5) {
                scrollTo(0, i5);
            }
        }
    }
}
