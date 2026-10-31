package com.qianhe.yct.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.FrequencyEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.SETHorizontalAngle;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.ActivityZeroingBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.manage.AppConfigManager;
import java.util.ArrayList;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ZeroingActivity extends BaseActivity {
    protected long angleLastTime;
    private ActivityZeroingBinding binding;
    private boolean cancelZero;
    private GETHorizontalAngleRange horizontalAngleRange;
    private boolean isAvailable;
    private boolean isRefresAngleRange;
    private double mDegrees;
    private int rangeCurrentIndex;
    private final ArrayList<String> list = new ArrayList<String>() { // from class: com.qianhe.yct.activity.ZeroingActivity.1
        {
            add("±1°");
            add("±2°");
            add("±3°");
            add("±4°");
            add("±5°");
            add("±6°");
            add("±7°");
            add("±8°");
            add("±9°");
            add("±10°");
        }
    };
    private int rangeInitialIndex = -1;
    private double zeroDegrees = 1.401298464324817E-45d;
    private double lastDegrees = -1.0d;

    /* JADX INFO: Access modifiers changed from: private */
    public float getLimitValue(int i) {
        if (i == 0) {
            return 1.0f;
        }
        if (i == 1) {
            return 2.0f;
        }
        if (i == 2) {
            return 3.0f;
        }
        if (i == 3) {
            return 4.0f;
        }
        if (i == 4) {
            return 5.0f;
        }
        if (i == 5) {
            return 6.0f;
        }
        if (i == 6) {
            return 7.0f;
        }
        if (i == 7) {
            return 8.0f;
        }
        return i == 8 ? 9.0f : 10.0f;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityZeroingBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.binding.tvTiltDisplay.setText(AppConfigManager.getInstance().getAppConfig().details.tilt_display == 1 ? R$string.display : R$string.hide);
        this.binding.tvTiltDisplay.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ZeroingActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(ZeroingActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Proj4Keyword.title, ZeroingActivity.this.getString(R$string.tilt_display_cut_fill));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(ZeroingActivity.this.getString(R$string.hide));
                arrayList.add(ZeroingActivity.this.getString(R$string.display));
                bundle2.putStringArrayList("list", arrayList);
                bundle2.putInt("currentIndex", arrayList.indexOf(ZeroingActivity.this.binding.tvTiltDisplay.getText().toString().trim()));
                bundle2.putString("requestKey", "tiltdisplay");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvLimit.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ZeroingActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(ZeroingActivity.this.getSupportFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle2 = new Bundle();
                bundle2.putInt("currentIndex", ZeroingActivity.this.rangeCurrentIndex);
                bundle2.putString(Proj4Keyword.title, ZeroingActivity.this.getString(R$string.select_error_range));
                bundle2.putStringArrayList("list", ZeroingActivity.this.list);
                bundle2.putString("requestKey", "zerolist");
                chooseListDialogFragment.setArguments(bundle2);
            }
        });
        this.binding.tvZero.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ZeroingActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Math.abs(ZeroingActivity.this.mDegrees) >= 45.0d) {
                    ZeroingActivity zeroingActivity = ZeroingActivity.this;
                    zeroingActivity.showTipDialog(zeroingActivity.getString(R$string.device_angle_too_large_to_configure), ZeroingActivity.this.getString(R$string.ok), null);
                    return;
                }
                ZeroingActivity.this.cancelZero = false;
                ZeroingActivity zeroingActivity2 = ZeroingActivity.this;
                float limitValue = zeroingActivity2.getLimitValue(zeroingActivity2.rangeCurrentIndex);
                ZeroingActivity zeroingActivity3 = ZeroingActivity.this;
                zeroingActivity3.zeroing(zeroingActivity3.mDegrees, limitValue, 0.1d);
            }
        });
        this.binding.tvCancelZero.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ZeroingActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZeroingActivity.this.cancelZero = true;
                ZeroingActivity.this.rangeInitialIndex = 0;
                ZeroingActivity zeroingActivity = ZeroingActivity.this;
                float limitValue = zeroingActivity.getLimitValue(zeroingActivity.rangeInitialIndex);
                ZeroingActivity zeroingActivity2 = ZeroingActivity.this;
                zeroingActivity2.rangeCurrentIndex = zeroingActivity2.rangeInitialIndex;
                ZeroingActivity.this.binding.tvLimit.setText((CharSequence) ZeroingActivity.this.list.get(ZeroingActivity.this.rangeInitialIndex));
                ZeroingActivity.this.zeroing(0.0d, limitValue, 0.0d);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("zerolist", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.ZeroingActivity$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                ZeroingActivity.m1515$r8$lambda$Ntgww5V74YuL7DbvRxE5bGIxG4(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("tiltdisplay", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.ZeroingActivity$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) throws JSONException {
                ZeroingActivity.m1516$r8$lambda$bCPH_xI7Am1xVFPz78JPqxbass(this.f$0, str, bundle2);
            }
        });
        this.isRefresAngleRange = false;
    }

    /* renamed from: $r8$lambda$Ntgww5V74YuL7DbvRxE5bG-IxG4, reason: not valid java name */
    public static /* synthetic */ void m1515$r8$lambda$Ntgww5V74YuL7DbvRxE5bGIxG4(ZeroingActivity zeroingActivity, String str, Bundle bundle) {
        zeroingActivity.getClass();
        int i = bundle.getInt("index");
        try {
            if ("zerolist".equals(str)) {
                if (i != -1) {
                    zeroingActivity.rangeCurrentIndex = i;
                    zeroingActivity.binding.tvLimit.setText(zeroingActivity.list.get(i));
                } else {
                    Toast.makeText(zeroingActivity, R$string.data_anomaly, 0).show();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("挖机角度限制异常：" + e);
        }
    }

    /* renamed from: $r8$lambda$bC-PH_xI7Am1xVFPz78JPqxbass, reason: not valid java name */
    public static /* synthetic */ void m1516$r8$lambda$bCPH_xI7Am1xVFPz78JPqxbass(ZeroingActivity zeroingActivity, String str, Bundle bundle) throws JSONException {
        ArrayList<String> stringArrayList;
        zeroingActivity.getClass();
        if (!str.equals("tiltdisplay") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
            return;
        }
        int i = bundle.getInt("index");
        zeroingActivity.binding.tvTiltDisplay.setText(stringArrayList.get(i));
        if (i != AppConfigManager.getInstance().getAppConfig().details.tilt_display) {
            AppConfigManager.getInstance().setTiltDisplay(i);
            AppConfig appConfig = zeroingActivity.appConfig;
            if (appConfig != null) {
                appConfig.details.tilt_display = i;
            }
            zeroingActivity.showToastDialog(zeroingActivity.getString(R$string.config_success));
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("rangeCurrentIndex", this.rangeCurrentIndex);
        bundle.putInt("rangeInitialIndex", this.rangeInitialIndex);
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.rangeCurrentIndex = bundle.getInt("rangeCurrentIndex");
        this.rangeInitialIndex = bundle.getInt("rangeInitialIndex");
        int i = this.rangeCurrentIndex;
        if (i != -1) {
            this.binding.tvLimit.setText(this.list.get(i));
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.zero));
        return this.binding.topBar.getRoot();
    }

    private void refrshAngle(double d) {
        if (System.currentTimeMillis() - this.angleLastTime >= 800 || this.appConfig.details.ins_interval == FrequencyEnum.HZ_1.getFrequency()) {
            TextView textView = this.binding.tvRange;
            Locale locale = Locale.ROOT;
            textView.setText(String.format(locale, "%.2f°", Double.valueOf(d)));
            if (this.isRefresAngleRange) {
                this.binding.tvRangeZero.setText(String.format(locale, "%.2f°", Double.valueOf(d - this.zeroDegrees)));
            }
            this.angleLastTime = System.currentTimeMillis();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        try {
            double d = insNavi.pitchDegrees;
            this.mDegrees = d;
            refrshAngle(d);
            String str = insNavi.insStausHex;
            boolean z = str.charAt(str.length() - 1) == '2';
            this.isAvailable = z;
            if (z) {
                this.binding.tvStatus.setText(R$string.data_available);
                this.binding.tvStatus.setSelected(true);
            } else {
                this.binding.tvStatus.setText(R$string.data_unavailable);
                this.binding.tvStatus.setSelected(false);
            }
            if (this.horizontalAngleRange != null) {
                double d2 = insNavi.pitchDegrees;
                if (d2 >= r0.l1 && d2 <= r0.h2) {
                    this.binding.tvRangeState.setText(R$string.horizontal_state);
                    this.binding.tvRangeState.setSelected(true);
                } else {
                    this.binding.tvRangeState.setText(R$string.excessive_angle);
                    this.binding.tvRangeState.setSelected(false);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e(e + "");
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
        if (this.isRefresAngleRange) {
            return;
        }
        this.isRefresAngleRange = true;
        this.horizontalAngleRange = gETHorizontalAngleRange;
        float f = gETHorizontalAngleRange.l1;
        float f2 = gETHorizontalAngleRange.h2 - f;
        this.zeroDegrees = r8 - (Math.abs(f2) / 2.0f);
        int iRound = Math.round(Math.abs(f2) / 2.0f);
        if (this.lastDegrees == -1.0d) {
            this.lastDegrees = this.zeroDegrees;
        }
        for (int i = 0; i < this.list.size(); i++) {
            if (this.list.get(i).equals(String.format(Locale.ROOT, "±%s°", Integer.valueOf(iRound))) && this.rangeInitialIndex == -1) {
                this.rangeCurrentIndex = i;
                this.rangeInitialIndex = i;
                this.binding.tvLimit.setText(this.list.get(i));
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zeroing(double d, float f, double d2) {
        double d3 = f;
        double d4 = d - d3;
        double dFloor = Math.floor((d4 - d2) * 100.0d) / 100.0d;
        double dFloor2 = Math.floor((d4 + d2) * 100.0d) / 100.0d;
        double d5 = d + d3;
        double dFloor3 = Math.floor((d5 - d2) * 100.0d) / 100.0d;
        double dFloor4 = Math.floor((d5 + d2) * 100.0d) / 100.0d;
        EventBus.getDefault().post(new OrderBean("SET,HORIZONTAL_ANGLE," + dFloor + "," + dFloor2 + "," + dFloor3 + "," + dFloor4));
        LogToFile.i("下发置零指令。");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SETHorizontalAngle sETHorizontalAngle) {
        if (sETHorizontalAngle.state) {
            this.horizontalAngleRange = new GETHorizontalAngleRange(sETHorizontalAngle.deviceType, sETHorizontalAngle.l1, sETHorizontalAngle.l2, sETHorizontalAngle.h1, sETHorizontalAngle.h2);
            float f = sETHorizontalAngle.l1;
            float f2 = sETHorizontalAngle.h2;
            double dAbs = f2 - (Math.abs(f2 - f) / 2.0f);
            this.zeroDegrees = dAbs;
            this.binding.tvRangeZero.setText(String.format(Locale.ROOT, "%.2f°", Double.valueOf(this.mDegrees - dAbs)));
            showToastDialog(getString(this.cancelZero ? R$string.has_been_canceled : R$string.zero_successful));
        } else {
            showTipDialog(getString(R$string.operation_failed), getString(R$string.ok), null);
        }
        this.cancelZero = false;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
