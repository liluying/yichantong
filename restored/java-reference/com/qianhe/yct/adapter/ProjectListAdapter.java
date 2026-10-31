package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
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
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ProjectListAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final ArrayList<String> idStrList = new ArrayList<>();
    private boolean isMultiple;
    private final AppCompatActivity mActivity;
    private List<BaseProEntity> mData;
    private final SharedPreferences mSp;
    private OnActionListener onActionListener;
    private boolean showSelUi;

    public interface OnActionListener {
        void onContinueWork(BaseProEntity baseProEntity);

        void onMenuAction(int i, BaseProEntity baseProEntity);

        void onSelItem(ArrayList<String> arrayList);
    }

    public ProjectListAdapter(AppCompatActivity appCompatActivity, List<BaseProEntity> list) {
        this.mActivity = appCompatActivity;
        this.mData = list;
        this.mSp = appCompatActivity.getSharedPreferences("sp", 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_projectlist, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final BaseProEntity baseProEntity = this.mData.get(i);
        if (this.showSelUi && this.mData.size() == 1) {
            if (!this.idStrList.contains(String.valueOf(baseProEntity.id))) {
                this.idStrList.add(String.valueOf(baseProEntity.id));
            }
            OnActionListener onActionListener = this.onActionListener;
            if (onActionListener != null) {
                onActionListener.onSelItem(this.idStrList);
            }
        }
        ConfigLayoutHelper.applyLocaleNameStyle(myViewHolder.tvName);
        myViewHolder.tvName.setText(baseProEntity.name);
        myViewHolder.tvTime.setText(this.format.format(new Date(String.valueOf(Math.abs(baseProEntity.createTime)).length() == 10 ? baseProEntity.createTime * 1000 : baseProEntity.createTime)));
        myViewHolder.tvFrom.setVisibility(baseProEntity.editState == 0 ? 8 : 0);
        myViewHolder.fltSel.setVisibility(this.showSelUi ? 0 : 8);
        myViewHolder.ivSel.setSelected(this.idStrList.contains(String.valueOf(baseProEntity.id)));
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ProjectListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ProjectListAdapter.this.showSelUi) {
                    if (ProjectListAdapter.this.onActionListener != null) {
                        ProjectListAdapter.this.onActionListener.onContinueWork(baseProEntity);
                        return;
                    }
                    return;
                }
                if (!myViewHolder.ivSel.isSelected()) {
                    if (!ProjectListAdapter.this.isMultiple) {
                        ProjectListAdapter.this.idStrList.clear();
                    }
                    if (!ProjectListAdapter.this.idStrList.contains(String.valueOf(baseProEntity.id))) {
                        ProjectListAdapter.this.idStrList.add(String.valueOf(baseProEntity.id));
                    }
                } else if (ProjectListAdapter.this.idStrList.size() > 1) {
                    ProjectListAdapter.this.idStrList.remove(String.valueOf(baseProEntity.id));
                }
                if (ProjectListAdapter.this.onActionListener != null) {
                    ProjectListAdapter.this.onActionListener.onSelItem(ProjectListAdapter.this.idStrList);
                }
                ProjectListAdapter.this.notifyDataSetChanged();
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.ProjectListAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (ProjectListAdapter.this.showSelUi) {
                    return false;
                }
                ProjectListAdapter.this.showPopupMenu(view, baseProEntity);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupMenu(View view, final BaseProEntity baseProEntity) {
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R$layout.popup_project_menu, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(10.0f);
        viewInflate.findViewById(R$id.tvDelete).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ProjectListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProjectListAdapter.$r8$lambda$s7gPYikWiYcqT2GJ06zmFUhRWfg(this.f$0, baseProEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvModify).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ProjectListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProjectListAdapter.$r8$lambda$UltUTTZIG1EIkcZXoqlnVRn1sB0(this.f$0, baseProEntity, popupWindow, view2);
            }
        });
        viewInflate.findViewById(R$id.tvShare).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ProjectListAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProjectListAdapter.$r8$lambda$6532f7kVvRhT0LHqXbXDDCiqyPM(this.f$0, baseProEntity, popupWindow, view2);
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

    public static /* synthetic */ void $r8$lambda$s7gPYikWiYcqT2GJ06zmFUhRWfg(ProjectListAdapter projectListAdapter, BaseProEntity baseProEntity, PopupWindow popupWindow, View view) {
        if (!projectListAdapter.idStrList.contains(String.valueOf(baseProEntity.id))) {
            projectListAdapter.idStrList.add(String.valueOf(baseProEntity.id));
        }
        OnActionListener onActionListener = projectListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onSelItem(projectListAdapter.idStrList);
        }
        OnActionListener onActionListener2 = projectListAdapter.onActionListener;
        if (onActionListener2 != null) {
            onActionListener2.onMenuAction(1, baseProEntity);
        }
        popupWindow.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$UltUTTZIG1EIkcZXoqlnVRn1sB0(ProjectListAdapter projectListAdapter, BaseProEntity baseProEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = projectListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(2, baseProEntity);
        }
        popupWindow.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$6532f7kVvRhT0LHqXbXDDCiqyPM(ProjectListAdapter projectListAdapter, BaseProEntity baseProEntity, PopupWindow popupWindow, View view) {
        OnActionListener onActionListener = projectListAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onMenuAction(3, baseProEntity);
        }
        popupWindow.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<BaseProEntity> list) {
        this.mData = list;
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

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        FrameLayout fltSel;
        View item;
        ImageView ivSel;
        TextView tvFrom;
        TextView tvName;
        TextView tvTime;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.fltSel = (FrameLayout) view.findViewById(R$id.fltSel);
            this.ivSel = (ImageView) view.findViewById(R$id.ivSel);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvTime = (TextView) view.findViewById(R$id.tvTime);
            this.tvFrom = (TextView) view.findViewById(R$id.tvFrom);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
