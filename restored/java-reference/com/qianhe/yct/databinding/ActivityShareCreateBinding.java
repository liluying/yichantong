package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityShareCreateBinding {
    public final EditText edtName;
    public final FrameLayout fltClearName;
    public final LinearLayout llt;
    public final LinearLayout lltBottom;
    public final LinearLayout lltadd;
    public final LinearLayout lltname;
    public final LinearLayout llttime;
    public final RelativeLayout main;
    public final RecyclerView rcv;
    private final RelativeLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvAdd;
    public final TextView tvCopy;
    public final TextView tvExpireTime;
    public final TextView tvSubmit;

    private ActivityShareCreateBinding(RelativeLayout relativeLayout, EditText editText, FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, RelativeLayout relativeLayout2, RecyclerView recyclerView, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.edtName = editText;
        this.fltClearName = frameLayout;
        this.llt = linearLayout;
        this.lltBottom = linearLayout2;
        this.lltadd = linearLayout3;
        this.lltname = linearLayout4;
        this.llttime = linearLayout5;
        this.main = relativeLayout2;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
        this.tvAdd = textView;
        this.tvCopy = textView2;
        this.tvExpireTime = textView3;
        this.tvSubmit = textView4;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityShareCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityShareCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_share_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityShareCreateBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtName;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.fltClearName;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R$id.llt);
                i = R$id.lltBottom;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout2 != null) {
                    i = R$id.lltadd;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout3 != null) {
                        i = R$id.lltname;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout4 != null) {
                            i = R$id.llttime;
                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout5 != null) {
                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                i = R$id.rcv;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                    TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                    i = R$id.tvAdd;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R$id.tvCopy;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R$id.tvExpireTime;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView3 != null) {
                                                i = R$id.tvSubmit;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView4 != null) {
                                                    return new ActivityShareCreateBinding(relativeLayout, editText, frameLayout, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, relativeLayout, recyclerView, titlebarBindingBind, textView, textView2, textView3, textView4);
                                                }
                                            }
                                        }
                                    }
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
