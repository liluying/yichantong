package com.qianhe.yct.view.map;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MapContainerView extends FrameLayout {
    public MapContainerView(Context context) {
        this(context, null);
    }

    public MapContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MapContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
