package com.qianhe.yct.view;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GridSpaceItemDecorator extends RecyclerView.ItemDecoration {
    private final int space;

    public GridSpaceItemDecorator(int i) {
        this.space = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int spanCount = ((GridLayoutManager) recyclerView.getLayoutManager()).getSpanCount();
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition % spanCount == 0) {
            rect.left = 0;
        } else {
            rect.left = this.space;
        }
        if ((childAdapterPosition + 1) % spanCount == 0) {
            rect.right = 0;
        } else {
            rect.right = this.space;
        }
    }
}
