package com.qianhe.yct.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.bean.HomeItem;
import com.qianhe.yct.databinding.ItemHomeBinding;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class HomeAdapter extends RecyclerView.Adapter {
    private List<HomeItem> mData;
    private OnItemClickListener mListener;

    public interface OnItemClickListener {
        void onItemClick(HomeItem homeItem);
    }

    public HomeAdapter(List<HomeItem> list, OnItemClickListener onItemClickListener) {
        this.mData = list;
        this.mListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(ItemHomeBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        final HomeItem homeItem = this.mData.get(i);
        viewHolder.binding.ivIcon.setImageResource(homeItem.getIconRes());
        viewHolder.binding.tvTitle.setText(homeItem.getTitleRes());
        viewHolder.binding.lltItemContent.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.HomeAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeAdapter.$r8$lambda$mElJWnkSxnyTuuaUu60iNgXjuYI(this.f$0, homeItem, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$mElJWnkSxnyTuuaUu60iNgXjuYI(HomeAdapter homeAdapter, HomeItem homeItem, View view) {
        OnItemClickListener onItemClickListener = homeAdapter.mListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(homeItem);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<HomeItem> list = this.mData;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void onItemMove(int i, int i2) {
        if (i == i2 || i < 0 || i2 < 0 || i >= this.mData.size() || i2 >= this.mData.size()) {
            return;
        }
        this.mData.add(i2, this.mData.remove(i));
        notifyItemMoved(i, i2);
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        ItemHomeBinding binding;

        public ViewHolder(ItemHomeBinding itemHomeBinding) {
            super(itemHomeBinding.getRoot());
            this.binding = itemHomeBinding;
        }
    }
}
