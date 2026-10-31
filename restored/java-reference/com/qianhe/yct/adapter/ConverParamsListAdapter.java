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
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ConverParamsListAdapter extends RecyclerView.Adapter {
    private long currentTransParamLocalId;
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final ArrayList<String> idStrList = new ArrayList<>();
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<GnssTransParamEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;

    public interface OnActionListener {
        void onItemClick(GnssTransParamEntity gnssTransParamEntity);

        void onMenuAction(int i, GnssTransParamEntity gnssTransParamEntity);

        void onSelItem(ArrayList<String> arrayList);
    }

    public ConverParamsListAdapter(AppCompatActivity appCompatActivity, List<GnssTransParamEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_conver_params, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final GnssTransParamEntity gnssTransParamEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(gnssTransParamEntity.localId))) {
                this.idStrList.add(String.valueOf(gnssTransParamEntity.localId));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        myViewHolder.tvName.setText(gnssTransParamEntity.name);
        myViewHolder.tvType.setText(buildTypeDesc(gnssTransParamEntity));
        long j = gnssTransParamEntity.createTime;
        if (String.valueOf(Math.abs(j)).length() == 10) {
            j *= 1000;
        }
        myViewHolder.tvTime.setText(this.format.format(new Date(j)));
        int i2 = 8;
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(gnssTransParamEntity.localId)));
        long j2 = this.currentTransParamLocalId;
        boolean z = j2 > 0 && gnssTransParamEntity.localId == j2;
        TextView textView = myViewHolder.tvCurrentUse;
        if (z && !this.showSelUi) {
            i2 = 0;
        }
        textView.setVisibility(i2);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConverParamsListAdapter.$r8$lambda$KehA6mOGDDdHJIQOJtFglpI0Eso(this.f$0, myViewHolder, gnssTransParamEntity, view);
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ConverParamsListAdapter.$r8$lambda$6ZX1EyHNbQ2nxsMyLZRnOiePA_k(this.f$0, gnssTransParamEntity, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$KehA6mOGDDdHJIQOJtFglpI0Eso(ConverParamsListAdapter converParamsListAdapter, MyViewHolder myViewHolder, GnssTransParamEntity gnssTransParamEntity, View view) {
        if (converParamsListAdapter.showSelUi) {
            if (!myViewHolder.ivSel.isSelected()) {
                if (!converParamsListAdapter.isMultiple) {
                    converParamsListAdapter.idStrList.clear();
                }
                if (!converParamsListAdapter.idStrList.contains(String.valueOf(gnssTransParamEntity.localId))) {
                    converParamsListAdapter.idStrList.add(String.valueOf(gnssTransParamEntity.localId));
                }
            } else if (converParamsListAdapter.idStrList.size() > 1) {
                converParamsListAdapter.idStrList.remove(String.valueOf(gnssTransParamEntity.localId));
            }
            OnActionListener onActionListener = converParamsListAdapter.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(converParamsListAdapter.idStrList);
            }
            converParamsListAdapter.notifyDataSetChanged();
            return;
        }
        OnActionListener onActionListener2 = converParamsListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onItemClick(gnssTransParamEntity);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$6ZX1EyHNbQ2nxsMyLZRnOiePA_k(ConverParamsListAdapter converParamsListAdapter, GnssTransParamEntity gnssTransParamEntity, View view) {
        if (converParamsListAdapter.showSelUi) {
            return false;
        }
        converParamsListAdapter.showPopupMenu(view, gnssTransParamEntity);
        return true;
    }

    private String buildTypeDesc(GnssTransParamEntity gnssTransParamEntity) {
        String string;
        int i = gnssTransParamEntity.paramType;
        if (i == 1) {
            string = this.mActivity.getString(R$string.four_params);
        } else if (i == 2) {
            string = this.mActivity.getString(R$string.seven_params);
        } else {
            string = "";
        }
        if (gnssTransParamEntity.getControlPointList().isEmpty()) {
            return string;
        }
        return string + " · " + this.mActivity.getString(R$string.with_control_points);
    }

    private void showPopupMenu(View view, final GnssTransParamEntity gnssTransParamEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_conver_params_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsListAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConverParamsListAdapter.$r8$lambda$J2qeXrlMeJWxGAxVyyfL1u9XCIY(this.f$0, gnssTransParamEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvModify).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsListAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConverParamsListAdapter.m1959$r8$lambda$LidB8R8ttnJHS9ucdPETdxscgc(this.f$0, gnssTransParamEntity, popupWindow, view2);
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

    public static /* synthetic */ void $r8$lambda$J2qeXrlMeJWxGAxVyyfL1u9XCIY(ConverParamsListAdapter converParamsListAdapter, GnssTransParamEntity gnssTransParamEntity, PopupWindow popupWindow, View view) {
        converParamsListAdapter.idStrList.clear();
        converParamsListAdapter.idStrList.add(String.valueOf(gnssTransParamEntity.localId));
        OnActionListener onActionListener = converParamsListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(converParamsListAdapter.idStrList);
            converParamsListAdapter.onActionListener.onMenuAction(1, gnssTransParamEntity);
        }
        popupWindow.dismiss();
    }

    /* renamed from: $r8$lambda$LidB8R8ttnJHS9ucdPETdxsc-gc, reason: not valid java name */
    public static /* synthetic */ void m1959$r8$lambda$LidB8R8ttnJHS9ucdPETdxscgc(ConverParamsListAdapter converParamsListAdapter, GnssTransParamEntity gnssTransParamEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = converParamsListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, gnssTransParamEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<GnssTransParamEntity> list) {
        this.mData = list;
        notifyDataSetChanged();
    }

    public void selectAll(boolean z) {
        this.idStrList.clear();
        if (z) {
            Iterator<GnssTransParamEntity> it = this.mData.iterator();
            while (it.hasNext()) {
                this.idStrList.add(String.valueOf(it.next().localId));
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
        long j = this.currentTransParamLocalId;
        if (j > 0) {
            this.idStrList.add(String.valueOf(j));
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

    public void setCurrentTransParamLocalId(long j) {
        this.currentTransParamLocalId = j;
        notifyDataSetChanged();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        FrameLayout fltSel;
        View item;
        ImageView ivSel;
        TextView tvCurrentUse;
        TextView tvName;
        TextView tvTime;
        TextView tvType;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.fltSel = (FrameLayout) view.findViewById(R$id.fltSel);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvType = (TextView) view.findViewById(R$id.tvType);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvCurrentUse = (TextView) view.findViewById(R$id.tvCurrentUse);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
