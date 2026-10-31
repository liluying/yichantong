package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.qh.xcad.XCadView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCadEntityChooseBinding {
    public final MaterialButton btnAllChoice;
    public final MaterialButton btnAllInvis;
    public final MaterialButton btnAllVis;
    public final MaterialButton btnFinishChoose;
    public final MaterialButton btnRevers;
    public final XCadView cadView;
    public final ImageView ivCadViewResetScale;
    public final ImageView ivMyLocation;
    private final LinearLayout rootView;
    public final RecyclerView rvShowEntityPoints;
    public final TopbarBinding topBar;
    public final TextView tvTotalCount;

    private ActivityCadEntityChooseBinding(LinearLayout linearLayout, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, MaterialButton materialButton5, XCadView xCadView, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, TopbarBinding topbarBinding, TextView textView) {
        this.rootView = linearLayout;
        this.btnAllChoice = materialButton;
        this.btnAllInvis = materialButton2;
        this.btnAllVis = materialButton3;
        this.btnFinishChoose = materialButton4;
        this.btnRevers = materialButton5;
        this.cadView = xCadView;
        this.ivCadViewResetScale = imageView;
        this.ivMyLocation = imageView2;
        this.rvShowEntityPoints = recyclerView;
        this.topBar = topbarBinding;
        this.tvTotalCount = textView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCadEntityChooseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCadEntityChooseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_cad_entity_choose, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCadEntityChooseBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.btnAllChoice;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i);
        if (materialButton != null) {
            i = R$id.btnAllInvis;
            MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, i);
            if (materialButton2 != null) {
                i = R$id.btnAllVis;
                MaterialButton materialButton3 = (MaterialButton) ViewBindings.findChildViewById(view, i);
                if (materialButton3 != null) {
                    i = R$id.btnFinishChoose;
                    MaterialButton materialButton4 = (MaterialButton) ViewBindings.findChildViewById(view, i);
                    if (materialButton4 != null) {
                        i = R$id.btnRevers;
                        MaterialButton materialButton5 = (MaterialButton) ViewBindings.findChildViewById(view, i);
                        if (materialButton5 != null) {
                            i = R$id.cadView;
                            XCadView xCadView = (XCadView) ViewBindings.findChildViewById(view, i);
                            if (xCadView != null) {
                                i = R$id.ivCadViewResetScale;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView != null) {
                                    i = R$id.ivMyLocation;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView2 != null) {
                                        i = R$id.rvShowEntityPoints;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                        if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                            TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
                                            i = R$id.tvTotalCount;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView != null) {
                                                return new ActivityCadEntityChooseBinding((LinearLayout) view, materialButton, materialButton2, materialButton3, materialButton4, materialButton5, xCadView, imageView, imageView2, recyclerView, topbarBindingBind, textView);
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
