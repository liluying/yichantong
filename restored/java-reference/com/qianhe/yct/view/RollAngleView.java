package com.qianhe.yct.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RollAngleView extends RelativeLayout {
    private ImageView ivICon;
    private TextView tvAngle;

    public RollAngleView(Context context) {
        this(context, null);
    }

    public RollAngleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RollAngleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initView(context);
    }

    private void initView(Context context) {
        LayoutInflater.from(context).inflate(R$layout.view_roll_angle, (ViewGroup) this, true);
        this.ivICon = (ImageView) findViewById(R$id.ivICon);
        this.tvAngle = (TextView) findViewById(R$id.tvTooth);
    }

    public void setCurrnetAngle(double d) {
        if (d > -1.0d && d < 1.0d) {
            this.ivICon.setImageResource(R$drawable.icon_roll_h);
        } else if (d <= -1.0d) {
            this.ivICon.setImageResource(R$drawable.icon_roll_left);
        } else if (d >= 1.0d) {
            this.ivICon.setImageResource(R$drawable.icon_roll_rigth);
        }
        this.tvAngle.setText(String.format(Locale.ROOT, "%.2f°", Double.valueOf(d)));
    }
}
