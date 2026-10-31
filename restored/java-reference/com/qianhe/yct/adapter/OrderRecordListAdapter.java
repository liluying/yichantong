package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.OrderRecordEntity;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OrderRecordListAdapter extends RecyclerView.Adapter {
    private Context context;
    private List<OrderRecordEntity> mData;
    private String orderNo;
    private final SimpleDateFormat formatSec = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private final SimpleDateFormat formatDay = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());

    public OrderRecordListAdapter(Context context, List<OrderRecordEntity> list) {
        this.context = context;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_order_record_list, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        final OrderRecordEntity orderRecordEntity = this.mData.get(i);
        myViewHolder.tvHostNum.setText(orderRecordEntity.accountName);
        myViewHolder.tvOrderNumber.setText(orderRecordEntity.orderNo);
        int i2 = orderRecordEntity.unit;
        int i3 = i2 == 0 ? R$string.day : i2 == 1 ? R$string.moon : R$string.year;
        myViewHolder.tvRenewalDration.setText(orderRecordEntity.count + this.context.getString(i3));
        myViewHolder.tvValidUntil.setText(formatTime(orderRecordEntity.createEpochAfter, this.formatDay));
        myViewHolder.tvPaymentTime.setText(formatTime(orderRecordEntity.createEpoch, this.formatSec));
        TextView textView = myViewHolder.tvPaymentStatus;
        int i4 = orderRecordEntity.payState;
        textView.setText(i4 == 0 ? R$string.awaiting_payment : i4 == 1 ? R$string.payment_successful : i4 == 2 ? R$string.payment_failed : R$string.order_closed);
        myViewHolder.tvCloseOrder.setVisibility(orderRecordEntity.payState == 0 ? 0 : 8);
        float f = orderRecordEntity.price / 100.0f;
        int i5 = (int) f;
        String str = f == ((float) i5) ? String.format("%s", Integer.valueOf(i5)) : String.format("%s", Float.valueOf(f));
        myViewHolder.tvPaymentAmount.setText(str + this.context.getString(R$string.currency_unit));
        myViewHolder.tvHostNum.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.OrderRecordListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((ClipboardManager) OrderRecordListAdapter.this.context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", myViewHolder.tvHostNum.getText().toString().trim()));
                Toast.makeText(OrderRecordListAdapter.this.context, OrderRecordListAdapter.this.context.getString(R$string.host_number) + OrderRecordListAdapter.this.context.getString(R$string.copy_to_clipboard), 0).show();
            }
        });
        myViewHolder.tvCloseOrder.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.OrderRecordListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = OrderRecordListAdapter.this.context.getSharedPreferences("sp", 0).getString(Constant.WX_PLAY_APPID, "");
                IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(OrderRecordListAdapter.this.context, string, true);
                boolean zRegisterApp = iwxapiCreateWXAPI.registerApp(string);
                StringBuilder sb = new StringBuilder();
                sb.append("微信API注册app");
                sb.append(zRegisterApp ? "成功" : "失败。");
                LogToFile.i(sb.toString());
                if (zRegisterApp) {
                    OrderRecordListAdapter.this.orderNo = orderRecordEntity.orderNo;
                    SendAuth.Req req = new SendAuth.Req();
                    req.scope = "snsapi_userinfo";
                    req.state = OrderRecordListAdapter.this.orderNo;
                    iwxapiCreateWXAPI.sendReq(req);
                }
            }
        });
    }

    private String formatTime(long j, SimpleDateFormat simpleDateFormat) {
        if (j < 0) {
            return this.context.getString(R$string.none);
        }
        return simpleDateFormat.format(Long.valueOf(j * 1000));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        View item;
        TextView tvCloseOrder;
        TextView tvCopySn;
        TextView tvHostNum;
        TextView tvOrderNumber;
        TextView tvPaymentAmount;
        TextView tvPaymentStatus;
        TextView tvPaymentTime;
        TextView tvRenewalDration;
        TextView tvValidUntil;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvHostNum = (TextView) view.findViewById(R$id.tvHostNum);
            this.tvCopySn = (TextView) view.findViewById(R$id.tvCopySn);
            this.tvOrderNumber = (TextView) view.findViewById(R$id.tvOrderNumber);
            this.tvRenewalDration = (TextView) view.findViewById(R$id.tvRenewalDration);
            this.tvValidUntil = (TextView) view.findViewById(R$id.tvValidUntil);
            this.tvPaymentTime = (TextView) view.findViewById(R$id.tvPaymentTime);
            this.tvPaymentAmount = (TextView) view.findViewById(R$id.tvPaymentAmount);
            this.tvPaymentStatus = (TextView) view.findViewById(R$id.tvPaymentStatus);
            this.tvCloseOrder = (TextView) view.findViewById(R$id.tvCloseOrder);
        }
    }
}
