package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.ThemeEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.utils.ThemeModeManager;
import java.util.ArrayList;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseThemeAdapter extends RecyclerView.Adapter {
    private final Context context;
    private final String currentValue;
    private final ArrayList<ThemeEntity> mList;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(String str);
    }

    public ChooseThemeAdapter(Context context, ArrayList<ThemeEntity> arrayList) {
        ArrayList<ThemeEntity> arrayList2 = new ArrayList<>();
        this.mList = arrayList2;
        this.context = context;
        arrayList2.addAll(arrayList);
        this.currentValue = ThemeModeManager.getSavedMode(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_theme, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final ThemeEntity themeEntity = this.mList.get(i);
        myViewHolder.tvName.setText(themeEntity.name);
        myViewHolder.item.setSelected(TextUtils.equals(themeEntity.value, this.currentValue));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChooseThemeAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseThemeAdapter.this.onActionListener != null) {
                    ChooseThemeAdapter.this.onActionListener.onAction(themeEntity.value);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvName;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
        }
    }
}
