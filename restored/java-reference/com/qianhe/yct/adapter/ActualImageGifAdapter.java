package com.qianhe.yct.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.utils.GifLoadHelper;
import java.util.ArrayList;
import java.util.List;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ActualImageGifAdapter extends RecyclerView.Adapter {
    private final List<Integer> imageResIds = new ArrayList();

    public void setImages(List<Integer> list) {
        this.imageResIds.clear();
        if (list != null) {
            this.imageResIds.addAll(list);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_actual_image_gif, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        GifLoadHelper.setGif(viewHolder.gifIv, this.imageResIds.get(i).intValue());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        GifLoadHelper.recycle(viewHolder.gifIv);
        super.onViewRecycled((RecyclerView.ViewHolder) viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.imageResIds.size();
    }

    public int getImageResId(int i) {
        return this.imageResIds.get(i).intValue();
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        final GifImageView gifIv;

        ViewHolder(View view) {
            super(view);
            this.gifIv = (GifImageView) view.findViewById(R$id.gifIv);
        }
    }
}
