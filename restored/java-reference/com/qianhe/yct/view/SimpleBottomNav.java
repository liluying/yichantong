package com.qianhe.yct.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SimpleBottomNav extends FrameLayout {
    private int LENGTH;
    private int currentIndex;
    private ImageView[] icons;
    private OnNavItemClickListener listener;
    private View[] roots;
    private TextView[] texts;

    public interface OnNavItemClickListener {
        void onItemClick(int i);
    }

    public SimpleBottomNav(Context context) {
        this(context, null);
    }

    public SimpleBottomNav(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleBottomNav(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.currentIndex = 0;
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R$layout.view_simple_bottom_nav, (ViewGroup) this, true);
        this.LENGTH = 2;
        View[] viewArr = new View[2];
        this.roots = viewArr;
        this.icons = new ImageView[2];
        this.texts = new TextView[2];
        viewArr[0] = findViewById(R$id.home);
        this.roots[1] = findViewById(R$id.setup);
        this.icons[0] = (ImageView) findViewById(R$id.ivHomeNav);
        this.icons[1] = (ImageView) findViewById(R$id.ivSettingNav);
        this.texts[0] = (TextView) findViewById(R$id.tvHomeNav);
        this.texts[1] = (TextView) findViewById(R$id.tvSettingNav);
        setSelectedIndex(0);
        for (final int i = 0; i < this.LENGTH; i++) {
            this.roots[i].setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.SimpleBottomNav$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SimpleBottomNav.m2966$r8$lambda$r_GrAE3tbkqQP7huW5T5cB7TL4(this.f$0, i, view);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$r_GrAE3tb-kqQP7huW5T5cB7TL4, reason: not valid java name */
    public static /* synthetic */ void m2966$r8$lambda$r_GrAE3tbkqQP7huW5T5cB7TL4(SimpleBottomNav simpleBottomNav, int i, View view) {
        OnNavItemClickListener onNavItemClickListener = simpleBottomNav.listener;
        if (onNavItemClickListener != null) {
            onNavItemClickListener.onItemClick(i);
        }
        simpleBottomNav.setSelectedIndex(i);
    }

    public void setSelectedIndex(int i) {
        if (i < 0 || i > this.LENGTH - 1) {
            return;
        }
        this.currentIndex = i;
        updateUI();
    }

    public int getSelectedIndex() {
        return this.currentIndex;
    }

    public void setOnNavItemClickListener(OnNavItemClickListener onNavItemClickListener) {
        this.listener = onNavItemClickListener;
    }

    private void updateUI() {
        int color = ContextCompat.getColor(getContext(), R$color.theme);
        int color2 = ContextCompat.getColor(getContext(), R$color.text_black);
        int i = 0;
        while (i < this.LENGTH) {
            boolean z = i == this.currentIndex;
            this.texts[i].setTextColor(z ? color : color2);
            this.icons[i].setSelected(z);
            i++;
        }
    }
}
