package com.qianhe.yct.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ProjectCategoryAdapter extends RecyclerView.Adapter {
    private Context context;
    private OnItemClickListener listener;
    private List<CategoryItem> mList;

    public interface OnItemClickListener {
        void onItemClick(int i);
    }

    public ProjectCategoryAdapter(Context context, List<CategoryItem> list) {
        new ArrayList();
        this.context = context;
        this.mList = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R$layout.item_project_category, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        CategoryItem categoryItem = this.mList.get(i);
        viewHolder.tvName.setText(categoryItem.getName());
        viewHolder.tvName.setSelected(categoryItem.isSelected());
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ProjectCategoryAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProjectCategoryAdapter.$r8$lambda$nNwZe9MDAIV2SRNZPLXW_26A5No(this.f$0, i, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$nNwZe9MDAIV2SRNZPLXW_26A5No(ProjectCategoryAdapter projectCategoryAdapter, int i, View view) {
        OnItemClickListener onItemClickListener = projectCategoryAdapter.listener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvName;

        public ViewHolder(View view) {
            super(view);
            this.tvName = (TextView) view.findViewById(R$id.tvCategoryName);
        }
    }

    public static class CategoryItem {
        private String name;
        private boolean selected;
        private ProjectEnum type;

        public CategoryItem(String str, ProjectEnum projectEnum) {
            this.name = str;
            this.type = projectEnum;
        }

        public String getName() {
            return this.name;
        }

        public ProjectEnum getType() {
            return this.type;
        }

        public boolean isSelected() {
            return this.selected;
        }

        public void setSelected(boolean z) {
            this.selected = z;
        }
    }
}
