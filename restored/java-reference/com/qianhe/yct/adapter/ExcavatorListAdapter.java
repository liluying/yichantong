package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorListAdapter extends RecyclerView.Adapter {
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<ExcavatorEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final List<String> idStrList = new ArrayList();
    private String calibParamsId = "";
    private String deviceExcavatorName = "";

    public interface OnActionListener {
        void onClick(ExcavatorEntity excavatorEntity);

        void onMenuAction(int i, ExcavatorEntity excavatorEntity);

        void onSelItem(List<String> list);
    }

    public ExcavatorListAdapter(AppCompatActivity appCompatActivity, List<ExcavatorEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_excavatorlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final ExcavatorEntity excavatorEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(excavatorEntity.localId))) {
                this.idStrList.add(String.valueOf(excavatorEntity.localId));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        myViewHolder.tvName.setText(excavatorEntity.name);
        myViewHolder.tvTime.setText(this.format.format(new Date(String.valueOf(Math.abs(excavatorEntity.createTime)).length() == 10 ? excavatorEntity.createTime * 1000 : excavatorEntity.createTime)));
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(excavatorEntity.localId)));
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.tvCurrentUse.setVisibility(isCurrentUsage(excavatorEntity) ? 0 : 8);
        myViewHolder.ivSensor.setVisibility(excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode() ? 0 : 8);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ExcavatorListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ExcavatorListAdapter.this.showSelUi) {
                    if (ExcavatorListAdapter.this.onActionListener != null) {
                        ExcavatorListAdapter.this.onActionListener.onClick(excavatorEntity);
                        return;
                    }
                    return;
                }
                if (!myViewHolder.ivSel.isSelected()) {
                    if (!ExcavatorListAdapter.this.isMultiple) {
                        ExcavatorListAdapter.this.idStrList.clear();
                    }
                    if (!ExcavatorListAdapter.this.idStrList.contains(String.valueOf(excavatorEntity.localId))) {
                        ExcavatorListAdapter.this.idStrList.add(String.valueOf(excavatorEntity.localId));
                    }
                } else if (ExcavatorListAdapter.this.idStrList.size() > 1) {
                    ExcavatorListAdapter.this.idStrList.remove(String.valueOf(excavatorEntity.localId));
                }
                ExcavatorListAdapter.this.notifyDataSetChanged();
                if (ExcavatorListAdapter.this.onActionListener != null) {
                    ExcavatorListAdapter.this.onActionListener.onSelItem(ExcavatorListAdapter.this.idStrList);
                }
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.ExcavatorListAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (ExcavatorListAdapter.this.showSelUi) {
                    return false;
                }
                ExcavatorListAdapter.this.showPopupMenu(view, excavatorEntity);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupMenu(View view, final ExcavatorEntity excavatorEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_excavator_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ExcavatorListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ExcavatorListAdapter.$r8$lambda$xNcevctBXxElIQxTSGk6ht7Z0MM(this.f$0, excavatorEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvDetails).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ExcavatorListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ExcavatorListAdapter.$r8$lambda$I5xy8MUFHZgtFqcuYk_02xYCcRg(this.f$0, excavatorEntity, popupWindow, view2);
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

    public static /* synthetic */ void $r8$lambda$xNcevctBXxElIQxTSGk6ht7Z0MM(ExcavatorListAdapter excavatorListAdapter, ExcavatorEntity excavatorEntity, PopupWindow popupWindow, View view) {
        if (!excavatorListAdapter.idStrList.contains(String.valueOf(excavatorEntity.localId))) {
            excavatorListAdapter.idStrList.add(String.valueOf(excavatorEntity.localId));
        }
        OnActionListener onActionListener = excavatorListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(excavatorListAdapter.idStrList);
        }
        OnActionListener onActionListener2 = excavatorListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onMenuAction(1, excavatorEntity);
        }
        popupWindow.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$I5xy8MUFHZgtFqcuYk_02xYCcRg(ExcavatorListAdapter excavatorListAdapter, ExcavatorEntity excavatorEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = excavatorListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, excavatorEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void selecteAll(boolean z) {
        this.idStrList.clear();
        if (z) {
            for (int i = 0; i < this.mData.size(); i++) {
                this.idStrList.add(String.valueOf(this.mData.get(i).localId));
            }
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
    }

    public boolean isCurrentUsage(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return false;
        }
        if (!TextUtils.isEmpty(this.calibParamsId) && this.calibParamsId.equals(excavatorEntity.calibParamsId)) {
            return true;
        }
        if (!TextUtils.isEmpty(this.deviceExcavatorName)) {
            return this.deviceExcavatorName.equals(excavatorEntity.name);
        }
        return CalibParamsIdUtil.matchesExcavator(this.calibParamsId, excavatorEntity);
    }

    public void setCurrentExcavator(String str, List<ExcavatorEntity> list) {
        if (str == null) {
            str = "";
        }
        this.calibParamsId = str;
        this.deviceExcavatorName = CalibParamsIdUtil.resolveExcavatorName(str, list);
        notifyDataSetChanged();
    }

    public void showSelUi(boolean z) {
        showSelUi(z, false);
    }

    public void showSelUi(boolean z, boolean z2) {
        this.showSelUi = true;
        this.isMultiple = z;
        if (z2 && !z) {
            this.idStrList.clear();
            selectCurrentItem();
        }
        notifyDataSetChanged();
        OnActionListener onActionListener = this.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(this.idStrList);
        }
    }

    private void selectCurrentItem() {
        for (ExcavatorEntity excavatorEntity : this.mData) {
            if (isCurrentUsage(excavatorEntity)) {
                this.idStrList.add(String.valueOf(excavatorEntity.localId));
                return;
            }
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
        View fltSel;
        View item;
        ImageView ivDel;
        ImageView ivSel;
        ImageView ivSensor;
        TextView tvCurrentUse;
        TextView tvName;
        TextView tvTime;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvCurrentUse = (TextView) view.findViewById(R$id.tvCurrentUse);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.fltSel = view.findViewById(R$id.fltSel);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
            this.ivSensor = (ImageView) view.findViewById(R$id.ivSensor);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
