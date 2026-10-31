package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity;
import com.qianhe.yct.activity.dike.DikeWorkActivity;
import com.qianhe.yct.activity.line.LineWorkActivity;
import com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity;
import com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity;
import com.qianhe.yct.activity.polyline.PolyLineWorkActivity;
import com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity;
import com.qianhe.yct.activity.siteleveling.SiteLevelingWorkActivity;
import com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity;
import com.qianhe.yct.activity.wagou.WaGouWorkActivity;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareProjectAdapter extends RecyclerView.Adapter {
    private final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private boolean isProhibitEdit;
    private final AppCompatActivity mActivity;
    private List<BaseProEntity> mData;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onAction(BaseProEntity baseProEntity);

        void onDel(BaseProEntity baseProEntity);
    }

    public ShareProjectAdapter(AppCompatActivity appCompatActivity, List<BaseProEntity> list, boolean z) {
        this.mActivity = appCompatActivity;
        this.mData = list;
        this.isProhibitEdit = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_share_project_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final BaseProEntity baseProEntity = this.mData.get(i);
        String string = this.mActivity.getString(R$string.unknown);
        if (baseProEntity.type == ProjectEnum.ZHAOPING.getType()) {
            string = this.mActivity.getString(R$string.leveling);
        } else if (baseProEntity.type == ProjectEnum.SHUAPO.getType()) {
            string = this.mActivity.getString(R$string.slope);
        } else if (baseProEntity.type == ProjectEnum.WAGOU.getType()) {
            string = this.mActivity.getString(R$string.ditch);
        } else if (baseProEntity.type == ProjectEnum.DIKE.getType()) {
            string = this.mActivity.getString(R$string.dike);
        } else if (baseProEntity.type == ProjectEnum.LINE.getType()) {
            string = this.mActivity.getString(R$string.line);
        } else if (baseProEntity.type == ProjectEnum.POLY_LINE.getType()) {
            string = this.mActivity.getString(R$string.polyline);
        } else if (baseProEntity.type == ProjectEnum.ONEPOINTAREA.getType()) {
            string = this.mActivity.getString(R$string.one_point_area);
        } else if (baseProEntity.type == ProjectEnum.THREEPOINTAREA.getType()) {
            string = this.mActivity.getString(R$string.three_point_area);
        } else if (baseProEntity.type == ProjectEnum.SITELEVELING.getType()) {
            string = this.mActivity.getString(R$string.site_leveling);
        } else if (baseProEntity.type == ProjectEnum.ARBITRARYLINE.getType()) {
            string = this.mActivity.getString(R$string.arbitrary_line);
        } else if (baseProEntity.type == ProjectEnum.CURVEDSLOPE.getType()) {
            string = this.mActivity.getString(R$string.curved_slope);
        } else if (baseProEntity.type == ProjectEnum.MULTI_POINT_AREA.getType()) {
            string = this.mActivity.getString(R$string.multi_point_area);
        }
        myViewHolder.tvType.setText(String.format("%s：%s", this.mActivity.getString(R$string.type), string));
        myViewHolder.tvName.setText(String.format("%s：%s", this.mActivity.getString(R$string.name), baseProEntity.name));
        myViewHolder.ivDel.setVisibility(this.isProhibitEdit ? 8 : 0);
        myViewHolder.ivDel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ShareProjectAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TipsDialogFragment tipsDialogFragment = new TipsDialogFragment();
                tipsDialogFragment.show(ShareProjectAdapter.this.mActivity.getSupportFragmentManager(), "TipsDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString("tip", ShareProjectAdapter.this.mActivity.getString(R$string.want_to_remove, baseProEntity.name));
                bundle.putString("btnStr", ShareProjectAdapter.this.mActivity.getString(R$string.confirm));
                tipsDialogFragment.setArguments(bundle);
                tipsDialogFragment.setOnConfirmListener(new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.adapter.ShareProjectAdapter.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        if (ShareProjectAdapter.this.onActionListener != null) {
                            ShareProjectAdapter.this.onActionListener.onDel(baseProEntity);
                        }
                    }
                });
            }
        });
        myViewHolder.lltItem.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ShareProjectAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                List<BaseProEntity> listQueryEntityById;
                if (!TextUtils.isEmpty(baseProEntity.projectUUid)) {
                    DatabaseManager databaseManager = DatabaseManager.getInstance(ShareProjectAdapter.this.mActivity);
                    BaseProEntity baseProEntity2 = baseProEntity;
                    listQueryEntityById = databaseManager.queryEntityByUUId(baseProEntity2.type, baseProEntity2.projectUUid);
                } else {
                    DatabaseManager databaseManager2 = DatabaseManager.getInstance(ShareProjectAdapter.this.mActivity);
                    BaseProEntity baseProEntity3 = baseProEntity;
                    listQueryEntityById = databaseManager2.queryEntityById(baseProEntity3.type, Long.valueOf(baseProEntity3.id));
                }
                BaseProEntity baseProEntity4 = !listQueryEntityById.isEmpty() ? listQueryEntityById.get(0) : baseProEntity;
                if (ShareProjectAdapter.this.onActionListener != null) {
                    ShareProjectAdapter.this.onActionListener.onAction(baseProEntity4);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void refrshData(List<BaseProEntity> list, boolean z) {
        this.mData = list;
        this.isProhibitEdit = z;
        notifyDataSetChanged();
    }

    public static void startWorkActivity(AppCompatActivity appCompatActivity, BaseProEntity baseProEntity, EngineeringEntity engineeringEntity) {
        if (appCompatActivity == null || baseProEntity == null) {
            return;
        }
        Intent intent = new Intent();
        if (baseProEntity.type == ProjectEnum.ZHAOPING.getType()) {
            intent.setClass(appCompatActivity, ZhaoPingWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.SHUAPO.getType()) {
            intent.setClass(appCompatActivity, ShuaPoWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.WAGOU.getType()) {
            intent.setClass(appCompatActivity, WaGouWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.DIKE.getType()) {
            intent.setClass(appCompatActivity, DikeWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.LINE.getType()) {
            intent.setClass(appCompatActivity, LineWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.POLY_LINE.getType()) {
            intent.setClass(appCompatActivity, PolyLineWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.ONEPOINTAREA.getType()) {
            intent.setClass(appCompatActivity, OnePointAreaWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.THREEPOINTAREA.getType()) {
            intent.setClass(appCompatActivity, ThreePointAreaWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.SITELEVELING.getType()) {
            intent.setClass(appCompatActivity, SiteLevelingWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.ARBITRARYLINE.getType()) {
            intent.setClass(appCompatActivity, ArbitrarylineWorkActivity.class);
        } else if (baseProEntity.type == ProjectEnum.CURVEDSLOPE.getType()) {
            intent.setClass(appCompatActivity, CurvedSlopeWorkActivity.class);
        } else if (baseProEntity.type != ProjectEnum.MULTI_POINT_AREA.getType()) {
            return;
        } else {
            intent.setClass(appCompatActivity, MultiPointAreaWorkActivity.class);
        }
        intent.putExtra("id", baseProEntity.id);
        intent.putExtra("proType", baseProEntity.type);
        intent.putExtra("pagePosition", 1);
        if (engineeringEntity != null) {
            intent.putExtra("shared_engineering", engineeringEntity);
        }
        appCompatActivity.startActivity(intent);
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        ImageView ivDel;
        View lltItem;
        TextView tvName;
        TextView tvType;

        public MyViewHolder(View view) {
            super(view);
            this.lltItem = view.findViewById(R$id.lltItem);
            this.tvType = (TextView) view.findViewById(R$id.tvType);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
