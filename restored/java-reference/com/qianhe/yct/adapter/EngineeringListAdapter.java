package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.EngineeringEntity;
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
public class EngineeringListAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final ArrayList<String> idStrList = new ArrayList<>();
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<EngineeringEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;

    public interface OnActionListener {
        void onItemClick(EngineeringEntity engineeringEntity);

        void onMenuAction(int i, EngineeringEntity engineeringEntity);

        void onSelItem(ArrayList<String> arrayList);
    }

    public EngineeringListAdapter(AppCompatActivity appCompatActivity, List<EngineeringEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_engineering, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final EngineeringEntity engineeringEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(engineeringEntity.id))) {
                this.idStrList.add(String.valueOf(engineeringEntity.id));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        myViewHolder.tvName.setText(engineeringEntity.name);
        long j = engineeringEntity.createTime;
        if (String.valueOf(Math.abs(j)).length() == 10) {
            j *= 1000;
        }
        myViewHolder.tvTime.setText(this.format.format(new Date(j)));
        if (engineeringEntity.currentUsage == 1) {
            myViewHolder.tvCurrentUse.setVisibility(0);
        } else {
            myViewHolder.tvCurrentUse.setVisibility(8);
        }
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(engineeringEntity.id)));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.EngineeringListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EngineeringListAdapter.m1965$r8$lambda$4rfvjtvrJA8qyn1Pt0Xe9ghyeQ(this.f$0, engineeringEntity, myViewHolder, view);
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.EngineeringListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return EngineeringListAdapter.$r8$lambda$ElYjL9vNhlNzDvgwZ1RootV5URM(this.f$0, engineeringEntity, view);
            }
        });
    }

    /* renamed from: $r8$lambda$4rfvjtvrJA8qy-n1Pt0Xe9ghyeQ, reason: not valid java name */
    public static /* synthetic */ void m1965$r8$lambda$4rfvjtvrJA8qyn1Pt0Xe9ghyeQ(EngineeringListAdapter engineeringListAdapter, EngineeringEntity engineeringEntity, MyViewHolder myViewHolder, View view) {
        if (!engineeringListAdapter.showSelUi) {
            OnActionListener onActionListener = engineeringListAdapter.onActionListener;
            if (onActionListener != null) {
                onActionListener.onItemClick(engineeringEntity);
                return;
            }
            return;
        }
        if (!myViewHolder.ivSel.isSelected()) {
            if (!engineeringListAdapter.isMultiple) {
                engineeringListAdapter.idStrList.clear();
            }
            if (!engineeringListAdapter.idStrList.contains(String.valueOf(engineeringEntity.id))) {
                engineeringListAdapter.idStrList.add(String.valueOf(engineeringEntity.id));
            }
        } else if (engineeringListAdapter.idStrList.size() > 1) {
            engineeringListAdapter.idStrList.remove(String.valueOf(engineeringEntity.id));
        }
        OnActionListener onActionListener2 = engineeringListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onSelItem(engineeringListAdapter.idStrList);
        }
        engineeringListAdapter.notifyDataSetChanged();
    }

    public static /* synthetic */ boolean $r8$lambda$ElYjL9vNhlNzDvgwZ1RootV5URM(EngineeringListAdapter engineeringListAdapter, EngineeringEntity engineeringEntity, View view) {
        if (engineeringListAdapter.showSelUi) {
            return false;
        }
        engineeringListAdapter.showPopupMenu(view, engineeringEntity);
        return true;
    }

    private void showPopupMenu(View view, final EngineeringEntity engineeringEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_engineering_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.EngineeringListAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EngineeringListAdapter.$r8$lambda$vu0AKUIxlk6A2qudYcb1OQW1uQE(this.f$0, engineeringEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvModify).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.EngineeringListAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EngineeringListAdapter.m1966$r8$lambda$h6ooJC_0vxm3Cism8_b1xCpNvc(this.f$0, engineeringEntity, popupWindow, view2);
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

    public static /* synthetic */ void $r8$lambda$vu0AKUIxlk6A2qudYcb1OQW1uQE(EngineeringListAdapter engineeringListAdapter, EngineeringEntity engineeringEntity, PopupWindow popupWindow, View view) {
        if (!engineeringListAdapter.idStrList.contains(String.valueOf(engineeringEntity.id))) {
            engineeringListAdapter.idStrList.clear();
            engineeringListAdapter.idStrList.add(String.valueOf(engineeringEntity.id));
        }
        OnActionListener onActionListener = engineeringListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(engineeringListAdapter.idStrList);
        }
        OnActionListener onActionListener2 = engineeringListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onMenuAction(1, engineeringEntity);
        }
        popupWindow.dismiss();
    }

    /* renamed from: $r8$lambda$h6ooJC_0vxm-3Cism8_b1xCpNvc, reason: not valid java name */
    public static /* synthetic */ void m1966$r8$lambda$h6ooJC_0vxm3Cism8_b1xCpNvc(EngineeringListAdapter engineeringListAdapter, EngineeringEntity engineeringEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = engineeringListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, engineeringEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<EngineeringEntity> list) {
        this.mData = list;
        notifyDataSetChanged();
    }

    public void selectAll(boolean z) {
        this.idStrList.clear();
        if (z) {
            Iterator<EngineeringEntity> it = this.mData.iterator();
            while (it.hasNext()) {
                this.idStrList.add(String.valueOf(it.next().id));
            }
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
    }

    public void showSelUi(boolean z) {
        this.showSelUi = true;
        this.isMultiple = z;
        notifyDataSetChanged();
    }

    public void selectCurrentItem() {
        this.idStrList.clear();
        Iterator<EngineeringEntity> it = this.mData.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EngineeringEntity next = it.next();
            if (next.currentUsage == 1) {
                this.idStrList.add(String.valueOf(next.id));
                break;
            }
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
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

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        FrameLayout fltSel;
        View item;
        ImageView ivSel;
        TextView tvCurrentUse;
        TextView tvName;
        TextView tvTime;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.fltSel = (FrameLayout) view.findViewById(R$id.fltSel);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvCurrentUse = (TextView) view.findViewById(R$id.tvCurrentUse);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
