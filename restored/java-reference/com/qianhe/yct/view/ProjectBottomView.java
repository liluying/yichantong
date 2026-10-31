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
public class ProjectBottomView extends FrameLayout {
    private int LENGTH;
    private int currentIndex;
    private View fltChoice;
    private View fltExecute;
    private FrameLayout[] flts;
    private ImageView[] icons;
    private OnNavItemClickListener listener;
    private TextView[] texts;
    private View tvCancel;
    private View tvConfirm;

    public interface OnNavItemClickListener {
        void onCancel();

        void onExecuteClick(int i);

        void onItemClick(int i);
    }

    public ProjectBottomView(Context context) {
        this(context, null);
    }

    public ProjectBottomView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProjectBottomView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.currentIndex = 0;
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R$layout.nav_bottom_project, (ViewGroup) this, true);
        this.LENGTH = 4;
        this.flts = new FrameLayout[4];
        this.icons = new ImageView[4];
        this.texts = new TextView[4];
        this.fltChoice = findViewById(R$id.fltChoice);
        this.fltExecute = findViewById(R$id.fltExecute);
        this.tvCancel = findViewById(R$id.tvCancel);
        this.tvConfirm = findViewById(R$id.tvConfirm);
        this.flts[0] = (FrameLayout) findViewById(R$id.fltCreate);
        this.flts[1] = (FrameLayout) findViewById(R$id.fltDel);
        this.flts[2] = (FrameLayout) findViewById(R$id.fltModify);
        this.flts[3] = (FrameLayout) findViewById(R$id.fltShare);
        this.icons[0] = (ImageView) findViewById(R$id.ivCreate);
        this.icons[1] = (ImageView) findViewById(R$id.ivDel);
        this.icons[2] = (ImageView) findViewById(R$id.ivModify);
        this.icons[3] = (ImageView) findViewById(R$id.ivShare);
        this.texts[0] = (TextView) findViewById(R$id.tvCreate);
        this.texts[1] = (TextView) findViewById(R$id.tvDel);
        this.texts[2] = (TextView) findViewById(R$id.tvModify);
        this.texts[3] = (TextView) findViewById(R$id.tvShare);
        setSelectedIndex(0);
        for (final int i = 0; i < this.LENGTH; i++) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qianhe.yct.view.ProjectBottomView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ProjectBottomView.m2960$r8$lambda$zD_iX1OlHArB0Icp3ygrPtdRdY(this.f$0, i, view);
                }
            };
            this.icons[i].setOnClickListener(onClickListener);
            this.texts[i].setOnClickListener(onClickListener);
        }
        this.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ProjectBottomView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectBottomView.this.closeExecuteUi();
                ProjectBottomView.this.clearSelection();
                ProjectBottomView.this.setSelectedIndex(0);
                if (ProjectBottomView.this.listener != null) {
                    ProjectBottomView.this.listener.onCancel();
                }
            }
        });
        this.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ProjectBottomView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ProjectBottomView.this.listener != null) {
                    ProjectBottomView.this.listener.onExecuteClick(ProjectBottomView.this.currentIndex);
                }
            }
        });
    }

    /* renamed from: $r8$lambda$zD_iX1OlHArB0Icp3y-grPtdRdY, reason: not valid java name */
    public static /* synthetic */ void m2960$r8$lambda$zD_iX1OlHArB0Icp3ygrPtdRdY(ProjectBottomView projectBottomView, int i, View view) {
        projectBottomView.setSelectedIndex(i);
        if (i != 0) {
            projectBottomView.showExecuteUi();
            OnNavItemClickListener onNavItemClickListener = projectBottomView.listener;
            if (onNavItemClickListener != null) {
                onNavItemClickListener.onItemClick(i);
                return;
            }
            return;
        }
        OnNavItemClickListener onNavItemClickListener2 = projectBottomView.listener;
        if (onNavItemClickListener2 != null) {
            onNavItemClickListener2.onExecuteClick(i);
        }
    }

    public void showExecuteUi() {
        this.fltExecute.setVisibility(0);
        this.fltChoice.setVisibility(8);
    }

    public void closeExecuteUi() {
        this.fltChoice.setVisibility(0);
        this.fltExecute.setVisibility(8);
        setSelectedIndex(0);
    }

    public void clearSelection() {
        this.currentIndex = -1;
        updateUI(-1);
    }

    public void setSelectedIndex(int i) {
        if (i < 0 || i > this.LENGTH - 1) {
            return;
        }
        this.currentIndex = i;
        updateUI(i);
    }

    public int getSelectedIndex() {
        return this.currentIndex;
    }

    public void setOnNavItemClickListener(OnNavItemClickListener onNavItemClickListener) {
        this.listener = onNavItemClickListener;
    }

    private void updateUI(int i) {
        int color = ContextCompat.getColor(getContext(), R$color.theme);
        int color2 = ContextCompat.getColor(getContext(), R$color.text_black);
        int i2 = 0;
        while (i2 < this.LENGTH) {
            boolean z = true;
            boolean z2 = i2 == this.currentIndex;
            this.texts[i2].setTextColor((!z2 || i == -1) ? color2 : color);
            ImageView imageView = this.icons[i2];
            if (!z2 || i == -1) {
                z = false;
            }
            imageView.setSelected(z);
            i2++;
        }
    }
}
