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
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointGroupListAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final List<String> idStrList = new ArrayList();
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<PointGroupEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;

    public interface OnActionListener {
        void onClick(PointGroupEntity pointGroupEntity);

        void onMenuAction(int i, PointGroupEntity pointGroupEntity);

        void onSelItem(List<String> list);
    }

    public PointGroupListAdapter(AppCompatActivity appCompatActivity, List<PointGroupEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_projectlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final PointGroupEntity pointGroupEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(pointGroupEntity.groupLocalId))) {
                this.idStrList.add(String.valueOf(pointGroupEntity.groupLocalId));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        myViewHolder.tvFrom.setVisibility(8);
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        myViewHolder.tvName.setText(pointGroupEntity.name);
        myViewHolder.tvTime.setText(this.format.format(new Date(String.valueOf(Math.abs(pointGroupEntity.createTime)).length() == 10 ? pointGroupEntity.createTime * 1000 : pointGroupEntity.createTime)));
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(pointGroupEntity.groupLocalId)));
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointGroupListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PointGroupListAdapter.$r8$lambda$3RJTuXtHFHR1hyZNKhzFDGyrEI8(this.f$0, pointGroupEntity, myViewHolder, view);
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.PointGroupListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return PointGroupListAdapter.$r8$lambda$aljjgBX4g2MyORGDXTltjswhiCQ(this.f$0, pointGroupEntity, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$3RJTuXtHFHR1hyZNKhzFDGyrEI8(PointGroupListAdapter pointGroupListAdapter, PointGroupEntity pointGroupEntity, MyViewHolder myViewHolder, View view) {
        if (!pointGroupListAdapter.showSelUi) {
            OnActionListener onActionListener = pointGroupListAdapter.onActionListener;
            if (onActionListener != null) {
                onActionListener.onClick(pointGroupEntity);
                return;
            }
            return;
        }
        if (!myViewHolder.ivSel.isSelected()) {
            if (!pointGroupListAdapter.isMultiple) {
                pointGroupListAdapter.idStrList.clear();
            }
            if (!pointGroupListAdapter.idStrList.contains(String.valueOf(pointGroupEntity.groupLocalId))) {
                pointGroupListAdapter.idStrList.add(String.valueOf(pointGroupEntity.groupLocalId));
            }
        } else if (pointGroupListAdapter.idStrList.size() > 1) {
            pointGroupListAdapter.idStrList.remove(String.valueOf(pointGroupEntity.groupLocalId));
        }
        pointGroupListAdapter.notifyDataSetChanged();
        OnActionListener onActionListener2 = pointGroupListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onSelItem(pointGroupListAdapter.idStrList);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$aljjgBX4g2MyORGDXTltjswhiCQ(PointGroupListAdapter pointGroupListAdapter, PointGroupEntity pointGroupEntity, View view) {
        if (pointGroupListAdapter.showSelUi) {
            return false;
        }
        pointGroupListAdapter.showPopupMenu(view, pointGroupEntity);
        return true;
    }

    private void showPopupMenu(View view, final PointGroupEntity pointGroupEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_point_group_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointGroupListAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PointGroupListAdapter.m1989$r8$lambda$lkrhjae5gbqXHFH2vtTk5PXQj4(this.f$0, pointGroupEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvModify).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointGroupListAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PointGroupListAdapter.$r8$lambda$hVkU996mlikVxEUfBFbU3QIHwpE(this.f$0, pointGroupEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvExport).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.PointGroupListAdapter$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PointGroupListAdapter.$r8$lambda$AwwLSoovCAf4uY9dXpELpahWxuI(this.f$0, pointGroupEntity, popupWindow, view2);
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

    /* renamed from: $r8$lambda$lkrhjae5gbqXHFH-2vtTk5PXQj4, reason: not valid java name */
    public static /* synthetic */ void m1989$r8$lambda$lkrhjae5gbqXHFH2vtTk5PXQj4(PointGroupListAdapter pointGroupListAdapter, PointGroupEntity pointGroupEntity, PopupWindow popupWindow, View view) {
        if (!pointGroupListAdapter.idStrList.contains(String.valueOf(pointGroupEntity.groupLocalId))) {
            pointGroupListAdapter.idStrList.add(String.valueOf(pointGroupEntity.groupLocalId));
        }
        OnActionListener onActionListener = pointGroupListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(pointGroupListAdapter.idStrList);
        }
        OnActionListener onActionListener2 = pointGroupListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onMenuAction(1, pointGroupEntity);
        }
        popupWindow.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$hVkU996mlikVxEUfBFbU3QIHwpE(PointGroupListAdapter pointGroupListAdapter, PointGroupEntity pointGroupEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = pointGroupListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, pointGroupEntity);
        }
        popupWindow.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$AwwLSoovCAf4uY9dXpELpahWxuI(PointGroupListAdapter pointGroupListAdapter, PointGroupEntity pointGroupEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = pointGroupListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(3, pointGroupEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<PointGroupEntity> list = this.mData;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void setData(List<PointGroupEntity> list) {
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
        if (list != null) {
            this.idStrList.addAll(list);
        }
        notifyDataSetChanged();
    }

    public void selecteAll(boolean z) {
        List<PointGroupEntity> list;
        this.idStrList.clear();
        if (z && (list = this.mData) != null) {
            Iterator<PointGroupEntity> it = list.iterator();
            while (it.hasNext()) {
                this.idStrList.add(String.valueOf(it.next().groupLocalId));
            }
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }

    static class MyViewHolder extends RecyclerView.ViewHolder {
        View fltSel;
        View item;
        ImageView ivSel;
        TextView tvFrom;
        TextView tvName;
        TextView tvTime;

        MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.fltSel = view.findViewById(R$id.fltSel);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvFrom = (TextView) view.findViewById(R$id.tvFrom);
        }
    }
}
