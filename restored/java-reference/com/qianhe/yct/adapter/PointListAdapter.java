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
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointListAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final List<String> idStrList = new ArrayList();
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<PointlibEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;

    public interface OnActionListener {
        void onClick(PointlibEntity pointlibEntity);

        void onMenuAction(int i, PointlibEntity pointlibEntity);

        void onSelItem(List<String> list);
    }

    public PointListAdapter(AppCompatActivity appCompatActivity, List<PointlibEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_projectlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final PointlibEntity pointlibEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(pointlibEntity.id))) {
                this.idStrList.add(String.valueOf(pointlibEntity.id));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        myViewHolder.tvName.setText(pointlibEntity.name);
        myViewHolder.tvTime.setText(this.format.format(new Date(String.valueOf(Math.abs(pointlibEntity.createTime)).length() == 10 ? pointlibEntity.createTime * 1000 : pointlibEntity.createTime)));
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(pointlibEntity.id)));
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!PointListAdapter.this.showSelUi) {
                    if (PointListAdapter.this.onActionListener != null) {
                        PointListAdapter.this.onActionListener.onClick(pointlibEntity);
                        return;
                    }
                    return;
                }
                if (!myViewHolder.ivSel.isSelected()) {
                    if (!PointListAdapter.this.isMultiple) {
                        PointListAdapter.this.idStrList.clear();
                    }
                    if (!PointListAdapter.this.idStrList.contains(String.valueOf(pointlibEntity.id))) {
                        PointListAdapter.this.idStrList.add(String.valueOf(pointlibEntity.id));
                    }
                } else if (PointListAdapter.this.idStrList.size() > 1) {
                    PointListAdapter.this.idStrList.remove(String.valueOf(pointlibEntity.id));
                }
                PointListAdapter.this.notifyDataSetChanged();
                if (PointListAdapter.this.onActionListener != null) {
                    PointListAdapter.this.onActionListener.onSelItem(PointListAdapter.this.idStrList);
                }
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.PointListAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (!PointListAdapter.this.showSelUi) {
                    if (!PointListAdapter.this.idStrList.contains(String.valueOf(pointlibEntity.id))) {
                        PointListAdapter.this.idStrList.add(String.valueOf(pointlibEntity.id));
                    }
                    PointListAdapter.this.showSelUi(false);
                }
                return false;
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.PointListAdapter.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (PointListAdapter.this.showSelUi) {
                    return false;
                }
                PointListAdapter.this.showPopupMenu(view, pointlibEntity);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupMenu(View view, final PointlibEntity pointlibEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_point_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PointListAdapter.m1991$r8$lambda$rWnd_XCU39uZ9AXkjRawv3X47o(this.f$0, pointlibEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvModify).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PointListAdapter.m1990$r8$lambda$gVySlhDqx5SqpWDNtnxbRDH6bc(this.f$0, pointlibEntity, popupWindow, view2);
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

    /* renamed from: $r8$lambda$rWnd-_XCU39uZ9AXkjRawv3X47o, reason: not valid java name */
    public static /* synthetic */ void m1991$r8$lambda$rWnd_XCU39uZ9AXkjRawv3X47o(PointListAdapter pointListAdapter, PointlibEntity pointlibEntity, PopupWindow popupWindow, View view) {
        if (!pointListAdapter.idStrList.contains(String.valueOf(pointlibEntity.id))) {
            pointListAdapter.idStrList.add(String.valueOf(pointlibEntity.id));
        }
        OnActionListener onActionListener = pointListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(pointListAdapter.idStrList);
        }
        OnActionListener onActionListener2 = pointListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onMenuAction(1, pointlibEntity);
        }
        popupWindow.dismiss();
    }

    /* renamed from: $r8$lambda$gVySlhDqx5SqpWDNtn-xbRDH6bc, reason: not valid java name */
    public static /* synthetic */ void m1990$r8$lambda$gVySlhDqx5SqpWDNtnxbRDH6bc(PointListAdapter pointListAdapter, PointlibEntity pointlibEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = pointListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, pointlibEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<PointlibEntity> list) {
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

    public void refreshIdStrList(List<String> list) {
        this.idStrList.clear();
        this.idStrList.addAll(list);
        notifyDataSetChanged();
    }

    public void selecteAll(boolean z) {
        this.idStrList.clear();
        if (z) {
            for (int i = 0; i < this.mData.size(); i++) {
                this.idStrList.add(String.valueOf(this.mData.get(i).id));
            }
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
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
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvFrom = (TextView) view.findViewById(R$id.tvFrom);
            this.fltSel = view.findViewById(R$id.fltSel);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
