package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.bean.LoginedDevice;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LoginedDeviceListAdapter extends RecyclerView.Adapter {
    private final AppCompatActivity mActivity;
    private List<LoginedDevice> mData;
    private OnActionListener onActionListener;

    public interface OnActionListener {
        void onDel(LoginedDevice loginedDevice);
    }

    public LoginedDeviceListAdapter(AppCompatActivity appCompatActivity, List<LoginedDevice> list) {
        ArrayList arrayList = new ArrayList();
        this.mData = arrayList;
        this.mActivity = appCompatActivity;
        arrayList.addAll(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_logined_device_list, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final LoginedDevice loginedDevice = this.mData.get(i);
        myViewHolder.tvName.setText(loginedDevice.name);
        String string = Settings.Secure.getString(YCTApplication.getInstance().getApplicationContext().getContentResolver(), "android_id");
        myViewHolder.ivDel.setVisibility(string.equals(loginedDevice.android_id) ? 8 : 0);
        myViewHolder.tvCurrent.setVisibility(string.equals(loginedDevice.android_id) ? 0 : 8);
        myViewHolder.ivDel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.LoginedDeviceListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LoginedDeviceListAdapter.this.onActionListener != null) {
                    LoginedDeviceListAdapter.this.onActionListener.onDel(loginedDevice);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<LoginedDevice> list) {
        this.mData.clear();
        this.mData.addAll(list);
        notifyDataSetChanged();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        ImageView ivDel;
        TextView tvCurrent;
        TextView tvName;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvName = (TextView) view.findViewById(R$id.tvName);
            this.tvCurrent = (TextView) view.findViewById(R$id.tvCurrent);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }
}
