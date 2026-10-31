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
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import com.qianhe.yct.utils.FineTuneExcavatorHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketListAdapter extends RecyclerView.Adapter {
    private ExcavatorEntity currentExcavator;
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<ShovelEntity> mData;
    private OnActionListener onActionListener;
    private boolean showSelUi;
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final List<String> idStrList = new ArrayList();
    private String currentName = "";
    private String currentParam = "";
    private String calibParamsId = "";

    public interface OnActionListener {
        void onClick(ShovelEntity shovelEntity);

        void onMenuAction(int i, ShovelEntity shovelEntity);

        void onSelItem(List<String> list);
    }

    public BucketListAdapter(AppCompatActivity appCompatActivity, List<ShovelEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_bucketlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final ShovelEntity shovelEntity = this.mData.get(i);
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        String strFineTuneNameMark = FineTuneExcavatorHelper.fineTuneNameMark(this.mActivity);
        String str = shovelEntity.name;
        if (str == null) {
            str = "";
        }
        if (shouldAppendFineTuneSuffix(shovelEntity, str, strFineTuneNameMark)) {
            str = str + strFineTuneNameMark;
        }
        myViewHolder.tvName.setText(str);
        long j = shovelEntity.createTime;
        if (String.valueOf(Math.abs(j)).length() == 10) {
            j *= 1000;
        }
        myViewHolder.tvTime.setText(this.format.format(new Date(j)));
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(shovelEntity.localId)));
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.tvCurrentUse.setVisibility(isCurrentUsage(shovelEntity) ? 0 : 8);
        myViewHolder.ivSensor.setVisibility(shovelEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode() ? 0 : 8);
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.BucketListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketListAdapter.$r8$lambda$pqPOcCmazo4DMVjk1lUfQ0vjSBc(this.f$0, shovelEntity, myViewHolder, view);
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.BucketListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return BucketListAdapter.m1940$r8$lambda$rl0oRRH57JJHjk6PvIisxLmhns(this.f$0, shovelEntity, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$pqPOcCmazo4DMVjk1lUfQ0vjSBc(BucketListAdapter bucketListAdapter, ShovelEntity shovelEntity, MyViewHolder myViewHolder, View view) {
        if (!bucketListAdapter.showSelUi) {
            OnActionListener onActionListener = bucketListAdapter.onActionListener;
            if (onActionListener != null) {
                onActionListener.onClick(shovelEntity);
                return;
            }
            return;
        }
        String strValueOf = String.valueOf(shovelEntity.localId);
        if (!myViewHolder.ivSel.isSelected()) {
            if (!bucketListAdapter.isMultiple) {
                bucketListAdapter.idStrList.clear();
            }
            if (!bucketListAdapter.idStrList.contains(strValueOf)) {
                bucketListAdapter.idStrList.add(strValueOf);
            }
        } else if (bucketListAdapter.idStrList.size() > 1) {
            bucketListAdapter.idStrList.remove(strValueOf);
        }
        bucketListAdapter.notifyDataSetChanged();
        OnActionListener onActionListener2 = bucketListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onSelItem(bucketListAdapter.idStrList);
        }
    }

    /* renamed from: $r8$lambda$rl0oRRH5-7JJHjk6PvIisxLmhns, reason: not valid java name */
    public static /* synthetic */ boolean m1940$r8$lambda$rl0oRRH57JJHjk6PvIisxLmhns(BucketListAdapter bucketListAdapter, ShovelEntity shovelEntity, View view) {
        if (bucketListAdapter.showSelUi) {
            return false;
        }
        bucketListAdapter.showPopupMenu(view, shovelEntity);
        return true;
    }

    private void showPopupMenu(View view, final ShovelEntity shovelEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_bucket_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.BucketListAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BucketListAdapter.m1939$r8$lambda$asKOQFCsTADNxhI_5rY_vQgAzs(this.f$0, shovelEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvModify).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.BucketListAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BucketListAdapter.m1938$r8$lambda$2B2l0cgbrYw3xgCkZ36dwHHbWY(this.f$0, shovelEntity, popupWindow, view2);
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

    /* renamed from: $r8$lambda$asKOQFCsTADNxhI_5rY_vQg-Azs, reason: not valid java name */
    public static /* synthetic */ void m1939$r8$lambda$asKOQFCsTADNxhI_5rY_vQgAzs(BucketListAdapter bucketListAdapter, ShovelEntity shovelEntity, PopupWindow popupWindow, View view) {
        bucketListAdapter.idStrList.clear();
        bucketListAdapter.idStrList.add(String.valueOf(shovelEntity.localId));
        OnActionListener onActionListener = bucketListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(bucketListAdapter.idStrList);
            bucketListAdapter.onActionListener.onMenuAction(1, shovelEntity);
        }
        popupWindow.dismiss();
    }

    /* renamed from: $r8$lambda$2B2l0cgbrYw3xgCkZ36-dwHHbWY, reason: not valid java name */
    public static /* synthetic */ void m1938$r8$lambda$2B2l0cgbrYw3xgCkZ36dwHHbWY(BucketListAdapter bucketListAdapter, ShovelEntity shovelEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = bucketListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, shovelEntity);
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
            Iterator<ShovelEntity> it = this.mData.iterator();
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
        if (this.currentName.isEmpty() || this.currentParam.isEmpty()) {
            return;
        }
        for (ShovelEntity shovelEntity : this.mData) {
            if (this.currentName.equals(shovelEntity.name) && this.currentParam.equals(shovelEntity.param)) {
                this.idStrList.add(String.valueOf(shovelEntity.localId));
                return;
            }
        }
    }

    public void closeSelUi() {
        this.showSelUi = false;
        this.idStrList.clear();
        notifyDataSetChanged();
    }

    public boolean isCurrentUsage(ShovelEntity shovelEntity) {
        if (shovelEntity == null || TextUtils.isEmpty(this.calibParamsId) || !CalibParamsIdUtil.supportsBucketCurrentUsage(this.calibParamsId, this.currentExcavator)) {
            return false;
        }
        ShovelEntity shovelEntityMatchBucketFromList = CalibParamsIdUtil.matchBucketFromList(this.calibParamsId, this.mData, this.currentExcavator);
        if (shovelEntityMatchBucketFromList == null) {
            return CalibParamsIdUtil.matchesBucket(this.calibParamsId, shovelEntity, this.currentExcavator);
        }
        long j = shovelEntity.localId;
        if (j > 0) {
            long j2 = shovelEntityMatchBucketFromList.localId;
            if (j2 > 0) {
                return j == j2;
            }
        }
        return TextUtils.equals(shovelEntity.name, shovelEntityMatchBucketFromList.name) && TextUtils.equals(shovelEntity.param, shovelEntityMatchBucketFromList.param);
    }

    public void setCurrentParam(String str, List<ShovelEntity> list, ExcavatorEntity excavatorEntity) {
        ShovelEntity shovelEntityMatchBucketFromList;
        this.currentExcavator = excavatorEntity;
        if (!CalibParamsIdUtil.supportsBucketCurrentUsage(str, excavatorEntity)) {
            clearCurrentParam();
            return;
        }
        this.calibParamsId = str != null ? str : "";
        this.currentName = "";
        this.currentParam = "";
        if (!TextUtils.isEmpty(str) && list != null && (shovelEntityMatchBucketFromList = CalibParamsIdUtil.matchBucketFromList(str, list, excavatorEntity)) != null) {
            this.currentName = shovelEntityMatchBucketFromList.name;
            this.currentParam = shovelEntityMatchBucketFromList.param;
        }
        notifyDataSetChanged();
    }

    public void clearCurrentParam() {
        this.calibParamsId = "";
        this.currentName = "";
        this.currentParam = "";
        notifyDataSetChanged();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View fltSel;
        View item;
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
            this.ivSensor = (ImageView) view.findViewById(R$id.ivSensor);
        }
    }

    private boolean shouldAppendFineTuneSuffix(ShovelEntity shovelEntity, String str, String str2) {
        return (shovelEntity == null || TextUtils.isEmpty(shovelEntity.autoGenerateParams) || TextUtils.isEmpty(str2) || FineTuneExcavatorHelper.alreadyHasFineTuneMark(str, str2) || shovelEntity.getAutoGenerateParamsObj().useDistanceMeasure == null) ? false : true;
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
