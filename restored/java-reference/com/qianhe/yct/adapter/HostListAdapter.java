package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class HostListAdapter extends RecyclerView.Adapter {
    private final Context context;
    private long currentUsedCorsId;
    private String currentUsedCorsName;
    private final List<CorsEntity> mList;
    private OnActionListener onActionListener;
    private OnMenuListener onMenuListener;

    public interface OnActionListener {
        void onAction(CorsEntity corsEntity);
    }

    public interface OnMenuListener {
        void onDelete(CorsEntity corsEntity);

        void onDeleteCurrentBlocked();

        void onEdit(CorsEntity corsEntity);

        void onPresetBlocked();
    }

    public HostListAdapter(Context context, List<CorsEntity> list) {
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        this.currentUsedCorsId = -1L;
        this.currentUsedCorsName = "";
        this.context = context;
        if (list != null) {
            arrayList.addAll(list);
        }
    }

    public void refreshData(List<CorsEntity> list, long j, String str) {
        this.mList.clear();
        if (list != null) {
            this.mList.addAll(list);
        }
        this.currentUsedCorsId = j;
        if (str == null) {
            str = "";
        }
        this.currentUsedCorsName = str;
        notifyDataSetChanged();
    }

    private boolean isCurrentUsedProvider(CorsEntity corsEntity) {
        long j = corsEntity.id;
        if (j > 0) {
            long j2 = this.currentUsedCorsId;
            if (j2 > 0 && j == j2) {
                return true;
            }
        }
        return !TextUtils.isEmpty(this.currentUsedCorsName) && this.currentUsedCorsName.equals(corsEntity.corsName);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_choose_host, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final CorsEntity corsEntity = this.mList.get(i);
        String str = TextUtils.isEmpty(corsEntity.corsName) ? corsEntity.host : corsEntity.corsName;
        myViewHolder.tvName.setText(String.format(this.context.getString(R$string.service_provider) + "：%s", str));
        if (!TextUtils.isEmpty(corsEntity.host)) {
            myViewHolder.lltHost.setVisibility(0);
            myViewHolder.tvHost.setText(String.format(this.context.getString(R$string.domain_name) + "：%s", corsEntity.host));
        } else {
            myViewHolder.lltHost.setVisibility(8);
        }
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.HostListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HostListAdapter.$r8$lambda$pbM0ETDCZThTQh5PVEO5sbr_vuQ(this.f$0, corsEntity, view);
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.HostListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return HostListAdapter.m1974$r8$lambda$us9AW6MfaPgVcF8JUKAIXR_xvE(this.f$0, corsEntity, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$pbM0ETDCZThTQh5PVEO5sbr_vuQ(HostListAdapter hostListAdapter, CorsEntity corsEntity, View view) {
        OnActionListener onActionListener = hostListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onAction(corsEntity);
        }
    }

    /* renamed from: $r8$lambda$us9AW6MfaPgVcF8JUKAI-XR_xvE, reason: not valid java name */
    public static /* synthetic */ boolean m1974$r8$lambda$us9AW6MfaPgVcF8JUKAIXR_xvE(HostListAdapter hostListAdapter, CorsEntity corsEntity, View view) {
        hostListAdapter.getClass();
        if (corsEntity.id <= 0) {
            OnMenuListener onMenuListener = hostListAdapter.onMenuListener;
            if (onMenuListener != null) {
                onMenuListener.onPresetBlocked();
            }
            return true;
        }
        hostListAdapter.showPopupMenu(view, corsEntity);
        return true;
    }

    private void showPopupMenu(View view, final CorsEntity corsEntity) {
        View viewInflate = LayoutInflater.from(this.context).inflate(R$layout.popup_cors_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvEdit).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.HostListAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HostListAdapter.$r8$lambda$aUv6_Vv7AnMM7lbvys3nTuUm3g4(this.f$0, popupWindow, corsEntity, view2);
            }
        });
        ((TextView) viewInflate.findViewById(R$id.tvDelete)).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.HostListAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HostListAdapter.m1973$r8$lambda$TVgKjIt63X8zA4R0NvUOd291z0(this.f$0, popupWindow, corsEntity, view2);
            }
        });
        viewInflate.measure(0, 0);
        int measuredWidth = viewInflate.getMeasuredWidth();
        int measuredHeight = viewInflate.getMeasuredHeight();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int height = view.getHeight();
        popupWindow.showAsDropDown(view, (view.getWidth() - measuredWidth) / 2, (i + height) + measuredHeight > this.context.getResources().getDisplayMetrics().heightPixels + (-150) ? (-measuredHeight) - height : 0, 8388611);
    }

    public static /* synthetic */ void $r8$lambda$aUv6_Vv7AnMM7lbvys3nTuUm3g4(HostListAdapter hostListAdapter, PopupWindow popupWindow, CorsEntity corsEntity, View view) {
        hostListAdapter.getClass();
        popupWindow.dismiss();
        OnMenuListener onMenuListener = hostListAdapter.onMenuListener;
        if (onMenuListener != null) {
            onMenuListener.onEdit(corsEntity);
        }
    }

    /* renamed from: $r8$lambda$TVgKjIt63X8zA4R0NvUOd2-91z0, reason: not valid java name */
    public static /* synthetic */ void m1973$r8$lambda$TVgKjIt63X8zA4R0NvUOd291z0(HostListAdapter hostListAdapter, PopupWindow popupWindow, CorsEntity corsEntity, View view) {
        hostListAdapter.getClass();
        popupWindow.dismiss();
        if (hostListAdapter.isCurrentUsedProvider(corsEntity)) {
            OnMenuListener onMenuListener = hostListAdapter.onMenuListener;
            if (onMenuListener != null) {
                onMenuListener.onDeleteCurrentBlocked();
                return;
            }
            return;
        }
        OnMenuListener onMenuListener2 = hostListAdapter.onMenuListener;
        if (onMenuListener2 != null) {
            onMenuListener2.onDelete(corsEntity);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }

    public void setOnMenuListener(OnMenuListener onMenuListener) {
        this.onMenuListener = onMenuListener;
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        View lltHost;
        TextView tvHost;
        TextView tvName;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.lltHost = view.findViewById(R$id.lltHost);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvHost = (TextView) view.findViewById(R$id.tvHost);
        }
    }
}
