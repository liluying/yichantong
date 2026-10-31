package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareListAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final ArrayList<String> idStrList = new ArrayList<>();
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<ShareEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;

    public interface OnActionListener {
        void onClick(ShareEntity shareEntity);

        void onMenuAction(int i, ShareEntity shareEntity);

        void onSelItem(ArrayList<String> arrayList);
    }

    public ShareListAdapter(AppCompatActivity appCompatActivity, List<ShareEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_projectlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final ShareEntity shareEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(shareEntity.shareId))) {
                this.idStrList.add(String.valueOf(shareEntity.shareId));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        myViewHolder.tvName.setText(shareEntity.name);
        myViewHolder.tvTime.setText(this.format.format(new Date(String.valueOf(Math.abs(shareEntity.createTime)).length() == 10 ? shareEntity.createTime * 1000 : shareEntity.createTime)));
        myViewHolder.tvFrom.setVisibility(shareEntity.editState == 0 ? 8 : 0);
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(shareEntity.shareId)));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ShareListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ShareListAdapter.this.showSelUi) {
                    if (ShareListAdapter.this.onActionListener != null) {
                        ShareListAdapter.this.onActionListener.onClick(shareEntity);
                        return;
                    }
                    return;
                }
                if (!myViewHolder.ivSel.isSelected()) {
                    if (!ShareListAdapter.this.isMultiple) {
                        ShareListAdapter.this.idStrList.clear();
                    }
                    if (!ShareListAdapter.this.idStrList.contains(String.valueOf(shareEntity.shareId))) {
                        ShareListAdapter.this.idStrList.add(String.valueOf(shareEntity.shareId));
                    }
                } else if (ShareListAdapter.this.idStrList.size() > 1) {
                    ShareListAdapter.this.idStrList.remove(String.valueOf(shareEntity.shareId));
                }
                ShareListAdapter.this.notifyDataSetChanged();
                if (ShareListAdapter.this.onActionListener != null) {
                    ShareListAdapter.this.onActionListener.onSelItem(ShareListAdapter.this.idStrList);
                }
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.ShareListAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (!ShareListAdapter.this.showSelUi) {
                    if (!ShareListAdapter.this.idStrList.contains(String.valueOf(shareEntity.shareId))) {
                        ShareListAdapter.this.idStrList.add(String.valueOf(shareEntity.shareId));
                    }
                    ShareListAdapter.this.showSelUi(false);
                }
                return false;
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.ShareListAdapter.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (ShareListAdapter.this.showSelUi) {
                    return false;
                }
                ShareListAdapter.this.showPopupMenu(view, shareEntity);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupMenu(View view, final ShareEntity shareEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_share_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ShareListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShareListAdapter.$r8$lambda$t1rmYM8QmKJJNh7YwsufGBIK8gg(this.f$0, shareEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvDetails).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ShareListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShareListAdapter.m2004$r8$lambda$6BKO0I7sN5pY_I6R3nRvUsqtY(this.f$0, shareEntity, popupWindow, view2);
            }
        });
        viewInflate.measure(0, 0);
        int measuredWidth = viewInflate.getMeasuredWidth();
        int measuredHeight = viewInflate.getMeasuredHeight();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int height = view.getHeight();
        popupWindow.showAsDropDown(view, (view.getWidth() - measuredWidth) / 2, (i + height) + measuredHeight > this.mActivity.getResources().getDisplayMetrics().heightPixels + (-150) ? (-measuredHeight) - height : 0, 8388611);
    }

    public static /* synthetic */ void $r8$lambda$t1rmYM8QmKJJNh7YwsufGBIK8gg(ShareListAdapter shareListAdapter, ShareEntity shareEntity, PopupWindow popupWindow, View view) {
        if (!shareListAdapter.idStrList.contains(String.valueOf(shareEntity.shareId))) {
            shareListAdapter.idStrList.add(String.valueOf(shareEntity.shareId));
        }
        OnActionListener onActionListener = shareListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(shareListAdapter.idStrList);
        }
        OnActionListener onActionListener2 = shareListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onMenuAction(2, shareEntity);
        }
        popupWindow.dismiss();
    }

    /* renamed from: $r8$lambda$6BKO0I7sN5-p-Y_I6R3nRvUsqtY, reason: not valid java name */
    public static /* synthetic */ void m2004$r8$lambda$6BKO0I7sN5pY_I6R3nRvUsqtY(ShareListAdapter shareListAdapter, ShareEntity shareEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = shareListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(3, shareEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<ShareEntity> list) {
        this.mData = list;
        notifyDataSetChanged();
    }

    public void showSelUi(boolean z) {
        this.showSelUi = true;
        this.isMultiple = z;
        notifyDataSetChanged();
    }

    public void closeSelUi() {
        this.showSelUi = false;
        this.idStrList.clear();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
        notifyDataSetChanged();
    }

    public void selecteAll(boolean z) {
        this.idStrList.clear();
        if (z) {
            for (int i = 0; i < this.mData.size(); i++) {
                this.idStrList.add(String.valueOf(this.mData.get(i).shareId));
            }
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
    }

    public void refreshIdStrList(List<String> list) {
        this.idStrList.clear();
        this.idStrList.addAll(list);
        notifyDataSetChanged();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View fltSel;
        View item;
        ImageView ivDel;
        ImageView ivSel;
        TextView tvFrom;
        TextView tvName;
        TextView tvTime;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.fltSel = view.findViewById(R$id.fltSel);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvFrom = (TextView) view.findViewById(R$id.tvFrom);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
