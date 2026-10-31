package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.qianhe.yct.R$styleable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MarqueeTextView extends AppCompatTextView {
    private boolean marqueeEnabled;
    private TextUtils.TruncateAt xmlEllipsize;

    public MarqueeTextView(Context context) {
        this(context, null);
    }

    public MarqueeTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MarqueeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.marqueeEnabled = true;
        TextUtils.TruncateAt ellipsize = getEllipsize();
        this.xmlEllipsize = ellipsize;
        if (ellipsize == null) {
            this.xmlEllipsize = TextUtils.TruncateAt.END;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MarqueeTextView);
            this.marqueeEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MarqueeTextView_marqueeEnabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }
        init();
    }

    private void init() {
        setSingleLine();
        if (this.marqueeEnabled) {
            setEllipsize(TextUtils.TruncateAt.MARQUEE);
            setMarqueeRepeatLimit(-1);
        } else {
            setEllipsize(this.xmlEllipsize);
            setMarqueeRepeatLimit(0);
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (this.marqueeEnabled) {
            super.onFocusChanged(true, i, rect);
        } else {
            super.onFocusChanged(z, i, rect);
        }
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.marqueeEnabled || super.isFocused();
    }

    public void setMarqueeEnabled(boolean z) {
        this.marqueeEnabled = z;
        if (z) {
            setFocusable(true);
            setFocusableInTouchMode(true);
            requestFocus();
        } else {
            setFocusable(false);
            setFocusableInTouchMode(false);
        }
    }
}
