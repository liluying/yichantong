package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.LanguageEntity;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import java.util.ArrayList;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseLanguageAdapter extends RecyclerView.Adapter {
    private final Context context;
    private String currnetCode;
    private final ArrayList<LanguageEntity> mList;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(String str);
    }

    public ChooseLanguageAdapter(Context context, ArrayList<LanguageEntity> arrayList) {
        ArrayList<LanguageEntity> arrayList2 = new ArrayList<>();
        this.mList = arrayList2;
        this.context = context;
        arrayList2.addAll(arrayList);
        this.currnetCode = LanguagePrefs.getSavedLanguage(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_language, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final LanguageEntity languageEntity = this.mList.get(i);
        myViewHolder.tvName.setText(TextUtils.isEmpty(languageEntity.code) ? this.context.getString(R$string.auto) : languageEntity.name);
        myViewHolder.item.setSelected(TextUtils.equals(languageEntity.code, this.currnetCode));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ChooseLanguageAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseLanguageAdapter.this.onActionListener != null) {
                    ChooseLanguageAdapter.this.onActionListener.onAction(languageEntity.code);
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
