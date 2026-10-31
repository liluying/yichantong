package com.qianhe.yct.activity.debug;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugAdapter extends RecyclerView.Adapter {
    private final Context context;
    private String filter;
    private final List<String> mData = new ArrayList();
    private int pendingInsertStart = -1;
    private boolean pressing;

    public DebugAdapter(Context context) {
        this.context = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_admin_debug, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(final MyViewHolder myViewHolder, int i) {
        String str = this.mData.get(i);
        myViewHolder.tvDebugMessage.setText(str);
        myViewHolder.tvDebugMessage.setSelected(!TextUtils.isEmpty(this.filter) && str.contains(this.filter));
        myViewHolder.itemView.setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.activity.debug.DebugAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return DebugAdapter.$r8$lambda$tcVIHB2PcOatQJrkP8KSEW3B38U(this.f$0, view, motionEvent);
            }
        });
        myViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.activity.debug.DebugAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return DebugAdapter.$r8$lambda$gH0iRckn1ITyhXUzldRBmbdVLOI(this.f$0, myViewHolder, view);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$tcVIHB2PcOatQJrkP8KSEW3B38U(DebugAdapter debugAdapter, View view, MotionEvent motionEvent) {
        debugAdapter.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            debugAdapter.pressing = true;
            return false;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        debugAdapter.pressing = false;
        debugAdapter.flushPendingInserts();
        return false;
    }

    public static /* synthetic */ boolean $r8$lambda$gH0iRckn1ITyhXUzldRBmbdVLOI(DebugAdapter debugAdapter, MyViewHolder myViewHolder, View view) {
        debugAdapter.getClass();
        int bindingAdapterPosition = myViewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || bindingAdapterPosition >= debugAdapter.mData.size()) {
            return false;
        }
        ClipboardManager clipboardManager = (ClipboardManager) debugAdapter.context.getSystemService("clipboard");
        if (clipboardManager == null) {
            return true;
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText("debug", debugAdapter.mData.get(bindingAdapterPosition)));
        Context context = debugAdapter.context;
        Toast.makeText(context, context.getString(R$string.copy_to_clipboard), 0).show();
        return true;
    }

    private void flushPendingInserts() {
        int i = this.pendingInsertStart;
        if (i < 0 || i >= this.mData.size()) {
            return;
        }
        notifyItemRangeInserted(this.pendingInsertStart, this.mData.size() - this.pendingInsertStart);
        this.pendingInsertStart = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void addData(String str) {
        this.mData.add(str);
        if (this.pressing) {
            if (this.pendingInsertStart < 0) {
                this.pendingInsertStart = this.mData.size() - 1;
                return;
            }
            return;
        }
        notifyItemInserted(this.mData.size() - 1);
    }

    public void clear() {
        this.mData.clear();
        this.pendingInsertStart = -1;
        this.pressing = false;
        notifyDataSetChanged();
    }

    public void setFilter(String str) {
        this.filter = str;
    }

    public boolean isPressing() {
        return this.pressing;
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        TextView tvDebugMessage;

        public MyViewHolder(View view) {
            super(view);
            this.tvDebugMessage = (TextView) view.findViewById(R$id.tvDebugMessage);
            view.setClickable(true);
            view.setLongClickable(true);
            this.tvDebugMessage.setLongClickable(false);
            this.tvDebugMessage.setClickable(false);
            this.tvDebugMessage.setFocusable(false);
        }
    }
}
