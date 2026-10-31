package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityMultiBluetoothExampleBinding {
    public final Button btnConnectPrimary;
    public final Button btnConnectSecondary;
    public final Button btnDisconnectPrimary;
    public final Button btnDisconnectSecondary;
    public final Button btnRefreshStatus;
    private final LinearLayout rootView;
    public final TextView tvPrimaryStatus;
    public final TextView tvSecondaryStatus;

    private ActivityMultiBluetoothExampleBinding(LinearLayout linearLayout, Button button, Button button2, Button button3, Button button4, Button button5, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.btnConnectPrimary = button;
        this.btnConnectSecondary = button2;
        this.btnDisconnectPrimary = button3;
        this.btnDisconnectSecondary = button4;
        this.btnRefreshStatus = button5;
        this.tvPrimaryStatus = textView;
        this.tvSecondaryStatus = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMultiBluetoothExampleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMultiBluetoothExampleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_multi_bluetooth_example, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMultiBluetoothExampleBinding bind(View view) {
        int i = R$id.btnConnectPrimary;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R$id.btnConnectSecondary;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R$id.btnDisconnectPrimary;
                Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                if (button3 != null) {
                    i = R$id.btnDisconnectSecondary;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, i);
                    if (button4 != null) {
                        i = R$id.btnRefreshStatus;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, i);
                        if (button5 != null) {
                            i = R$id.tvPrimaryStatus;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R$id.tvSecondaryStatus;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    return new ActivityMultiBluetoothExampleBinding((LinearLayout) view, button, button2, button3, button4, button5, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
