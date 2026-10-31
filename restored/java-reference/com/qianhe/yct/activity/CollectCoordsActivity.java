package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityCollectCoordsBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CollectCoordsActivity extends BaseActivity {
    private ActivityCollectCoordsBinding binding;
    private List<double[]> collectList;
    private int count;
    private boolean dopLogEnabled;
    private List<double[]> geodeticCollectList;
    private boolean isShowTips;
    private GGAEntity mGGA;
    private GPDOPEntity mGPDOP;
    private InsNavi mINS;
    private int mToothType;
    private boolean returnGeodetic;
    private ScheduledExecutorService scheduledExecutor;
    private ScheduledFuture<?> scheduledFuture;
    private boolean start;
    private DeviceType mDeviceType = DeviceType.ZPY;
    private final List<Float> hdopSamples = new ArrayList();
    private final List<Float> vdopSamples = new ArrayList();

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityCollectCoordsBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.mToothType = intent.getIntExtra("toothType", 0);
            this.returnGeodetic = intent.getBooleanExtra("returnGeodetic", false);
        }
        this.collectList = new ArrayList();
        this.geodeticCollectList = this.returnGeodetic ? new ArrayList() : null;
        DatabaseManager.prepareCurrentEngineeringForCoordConvert(this);
        this.binding.tvCollect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CollectCoordsActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CollectCoordsActivity.this.startCollect();
            }
        });
        if (((YCTApplication) getApplication()).isH5Pro()) {
            int i = this.mToothType;
            if (i == 2) {
                this.binding.ivAngleStatus.setImageResource(R$drawable.icon_rigth_tooth_h5pro);
                this.binding.tvToothTips.setText(R$string.align_right_bucket_tip);
            } else if (i == 1) {
                this.binding.ivAngleStatus.setImageResource(R$drawable.icon_middle_tooth_h5pro);
                this.binding.tvToothTips.setText(R$string.align_middle_bucket_tip);
            } else {
                this.binding.ivAngleStatus.setImageResource(R$drawable.icon_left_tooth_h5pro);
                this.binding.tvToothTips.setText(R$string.align_left_bucket_tip);
            }
            this.binding.lltAngle.setVisibility(8);
            this.binding.tvH5proTips.setVisibility(0);
            this.binding.tvToothTips.setVisibility(0);
            return;
        }
        this.binding.lltAngle.setVisibility(0);
        this.binding.tvH5proTips.setVisibility(8);
        this.binding.tvToothTips.setVisibility(8);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("toothType", this.mToothType);
        if (Build.VERSION.SDK_INT >= 24) {
            bundle.putDoubleArray("collectList", flattenDoubleArrays(this.collectList));
        }
    }

    private double[] flattenDoubleArrays(List<double[]> list) {
        if (list == null || list.isEmpty()) {
            return new double[0];
        }
        int length = 0;
        for (double[] dArr : list) {
            if (dArr != null) {
                length += dArr.length;
            }
        }
        double[] dArr2 = new double[length];
        int length2 = 0;
        for (double[] dArr3 : list) {
            if (dArr3 != null) {
                System.arraycopy(dArr3, 0, dArr2, length2, dArr3.length);
                length2 += dArr3.length;
            }
        }
        return dArr2;
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mToothType = bundle.getInt("toothType");
        double[] doubleArray = bundle.getDoubleArray("collectList");
        this.collectList = new ArrayList();
        if (doubleArray != null) {
            for (double d : doubleArray) {
                this.collectList.add(new double[]{d});
            }
            return;
        }
        resetStatus();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void showCalibrateTips() {
        cancelCollect();
        super.showCalibrateTips();
    }

    protected void startCollect() {
        this.start = true;
        this.binding.tvCollect.setEnabled(false);
    }

    protected void cancelCollect() {
        this.start = false;
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.scheduledFuture = null;
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        this.scheduledExecutor = null;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.ZPY;
        if (multiBluetoothManager.isDeviceConnected(deviceType)) {
            this.mDeviceType = deviceType;
        } else {
            MultiBluetoothManager multiBluetoothManager2 = MultiBluetoothManager.getInstance(this);
            DeviceType deviceType2 = DeviceType.BASE;
            if (multiBluetoothManager2.isDeviceConnected(deviceType2)) {
                this.mDeviceType = deviceType2;
            }
        }
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,DOP,ONTIME,1"));
        this.dopLogEnabled = true;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GPDOPEntity gPDOPEntity) {
        if (gPDOPEntity == null) {
            return;
        }
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && gPDOPEntity.deviceType == DeviceType.BASE) {
            return;
        }
        this.mGPDOP = gPDOPEntity;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.collect);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
        try {
            boolean zIsH5Pro = ((YCTApplication) getApplication()).isH5Pro();
            if (zIsH5Pro) {
                String str = insNavi.insStausHex;
                char cCharAt = str.charAt(str.length() - 1);
                this.binding.tvArmAngle.setText(String.format(Locale.ROOT, "%.2f°", Double.valueOf(this.pitchAngle)));
                this.mAvailable = resolveWorkInsAvailable(cCharAt == '2');
                refreshImgStatus(zIsH5Pro, insNavi.pitchDegrees);
            } else {
                String str2 = insNavi.insStausHex;
                char cCharAt2 = str2.charAt(str2.length() - 3);
                this.binding.tvArmAngle.setText(String.format(Locale.ROOT, "%.2f°", Double.valueOf(this.pitchAngle)));
                this.mAvailable = cCharAt2 == '8';
                refreshImgStatus(zIsH5Pro, insNavi.pitchDegrees - this.zeroDegrees);
            }
            this.binding.tvArmAngle.setSelected(isDataAvailable());
            if (isDataAvailable()) {
                this.binding.tvArmAngle.setSelected(true);
                this.binding.tvArmAngle.setClickable(false);
                this.count = 0;
                if (this.isShowTips) {
                    this.isShowTips = false;
                    this.binding.tvCollect.setEnabled(true);
                }
            } else {
                this.count++;
                this.binding.tvArmAngle.setSelected(false);
                this.binding.tvArmAngle.setClickable(true);
                if (zIsH5Pro && !this.isShowTips && this.count > this.appConfig.details.ins_unavailable_count / 3 && this.mGGA != null) {
                    resetStatus();
                    showCalibrateTips();
                }
            }
            if (!this.start) {
                this.binding.tvCollect.setEnabled(isDataAvailable());
            }
            if (this.start && this.collectList.size() < 5 && isDataAvailable()) {
                int i = this.mToothType;
                if (i == 0 || !zIsH5Pro) {
                    List<double[]> list = this.collectList;
                    InsNavi insNavi2 = this.mINS;
                    list.add(new double[]{insNavi2.east, insNavi2.north, insNavi2.elevation});
                    InsNavi insNavi3 = this.mINS;
                    addGeodeticSample(insNavi3.geodeticLon, insNavi3.geodeticLat, insNavi3.geodeticElev);
                    addDopSample();
                } else if (i == 1) {
                    List<double[]> list2 = this.collectList;
                    InsNavi insNavi4 = this.mINS;
                    list2.add(new double[]{insNavi4.eastM, insNavi4.northM, insNavi4.elevationM});
                    InsNavi insNavi5 = this.mINS;
                    addGeodeticSample(insNavi5.geodeticLonM, insNavi5.geodeticLatM, insNavi5.geodeticElevM);
                    addDopSample();
                } else {
                    List<double[]> list3 = this.collectList;
                    InsNavi insNavi6 = this.mINS;
                    list3.add(new double[]{insNavi6.eastR, insNavi6.northR, insNavi6.elevationR});
                    InsNavi insNavi7 = this.mINS;
                    addGeodeticSample(insNavi7.geodeticLonR, insNavi7.geodeticLatR, insNavi7.geodeticElevR);
                    addDopSample();
                }
                this.binding.bar1.setSelected(true);
                if (this.collectList.size() >= 2) {
                    this.binding.bar2.setSelected(true);
                }
                if (this.collectList.size() >= 3) {
                    this.binding.bar3.setSelected(true);
                }
                if (this.collectList.size() >= 4) {
                    this.binding.bar4.setSelected(true);
                }
                if (this.collectList.size() >= 5) {
                    this.binding.bar5.setSelected(true);
                }
            }
            if (this.collectList.size() == 5) {
                if (moveJudge()) {
                    showTipDialog(getString(R$string.invalid_collection), getString(R$string.ok), null);
                    cancelCollect();
                    resetStatus();
                    return;
                }
                finishWithCollectResult();
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e(e + "");
        }
    }

    private void addGeodeticSample(double d, double d2, double d3) {
        List<double[]> list = this.geodeticCollectList;
        if (list != null) {
            list.add(new double[]{d, d2, d3});
        }
    }

    private void addDopSample() {
        GPDOPEntity gPDOPEntity = this.mGPDOP;
        if (gPDOPEntity != null) {
            this.hdopSamples.add(Float.valueOf(gPDOPEntity.hdop));
            this.vdopSamples.add(Float.valueOf(this.mGPDOP.vdop));
        } else {
            GGAEntity gGAEntity = this.mGGA;
            if (gGAEntity != null) {
                this.hdopSamples.add(Float.valueOf((float) gGAEntity.hdop));
            }
        }
    }

    private void finishWithCollectResult() {
        Intent intent = new Intent();
        double[] dArrCalculateCoords = calculateCoords();
        intent.putExtra("coords", dArrCalculateCoords);
        if (this.returnGeodetic) {
            intent.putExtra("geodetic", calculateAverageCoords(this.geodeticCollectList));
        }
        GGAEntity gGAEntity = this.mGGA;
        intent.putExtra("quality", gGAEntity != null ? gGAEntity.quality : 0);
        intent.putExtra("hdop", averageDopSample(this.hdopSamples));
        intent.putExtra("vdop", averageDopSample(this.vdopSamples));
        setResult(dArrCalculateCoords != null ? -1 : 0, intent);
        finish();
    }

    private double averageDopSample(List<Float> list) {
        double dFloatValue = 0.0d;
        if (list == null || list.isEmpty()) {
            return 0.0d;
        }
        while (list.iterator().hasNext()) {
            dFloatValue += r2.next().floatValue();
        }
        return dFloatValue / list.size();
    }

    private void resetStatus() {
        this.isShowTips = true;
        this.collectList.clear();
        List<double[]> list = this.geodeticCollectList;
        if (list != null) {
            list.clear();
        }
        this.hdopSamples.clear();
        this.vdopSamples.clear();
        this.binding.bar1.setSelected(false);
        this.binding.bar2.setSelected(false);
        this.binding.bar3.setSelected(false);
        this.binding.bar4.setSelected(false);
        this.binding.bar5.setSelected(false);
    }

    private boolean moveJudge() {
        DatabaseManager.prepareCurrentEngineeringForCoordConvert(this);
        if (this.collectList.size() >= 2) {
            double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(0));
            double[] dArrConvertGAUSSXYToGeodetic2 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(1));
            if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{dArrConvertGAUSSXYToGeodetic[0], dArrConvertGAUSSXYToGeodetic[1], dArrConvertGAUSSXYToGeodetic[2]}, new double[]{dArrConvertGAUSSXYToGeodetic2[0], dArrConvertGAUSSXYToGeodetic2[1], dArrConvertGAUSSXYToGeodetic2[2]}) >= 0.05d) {
                return true;
            }
        }
        if (this.collectList.size() >= 3) {
            double[] dArrConvertGAUSSXYToGeodetic3 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(1));
            double[] dArrConvertGAUSSXYToGeodetic4 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(2));
            if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{dArrConvertGAUSSXYToGeodetic4[0], dArrConvertGAUSSXYToGeodetic4[1], dArrConvertGAUSSXYToGeodetic4[2]}, new double[]{dArrConvertGAUSSXYToGeodetic3[0], dArrConvertGAUSSXYToGeodetic3[1], dArrConvertGAUSSXYToGeodetic3[2]}) >= 0.05d) {
                return true;
            }
        }
        if (this.collectList.size() >= 4) {
            double[] dArrConvertGAUSSXYToGeodetic5 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(2));
            double[] dArrConvertGAUSSXYToGeodetic6 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(3));
            if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{dArrConvertGAUSSXYToGeodetic5[0], dArrConvertGAUSSXYToGeodetic5[1], dArrConvertGAUSSXYToGeodetic5[2]}, new double[]{dArrConvertGAUSSXYToGeodetic6[0], dArrConvertGAUSSXYToGeodetic6[1], dArrConvertGAUSSXYToGeodetic6[2]}) >= 0.05d) {
                return true;
            }
        }
        if (this.collectList.size() >= 5) {
            double[] dArrConvertGAUSSXYToGeodetic7 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(3));
            double[] dArrConvertGAUSSXYToGeodetic8 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(this.collectList.get(4));
            if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{dArrConvertGAUSSXYToGeodetic8[0], dArrConvertGAUSSXYToGeodetic8[1], dArrConvertGAUSSXYToGeodetic8[2]}, new double[]{dArrConvertGAUSSXYToGeodetic7[0], dArrConvertGAUSSXYToGeodetic7[1], dArrConvertGAUSSXYToGeodetic7[2]}) >= 0.05d) {
                return true;
            }
        }
        return false;
    }

    private void refreshImgStatus(boolean z, double d) {
        if (z) {
            return;
        }
        if (this.mAvailable) {
            this.binding.ivAngleStatus.setImageResource(R$drawable.icon_collect_v);
        } else if (d > 0.0d) {
            this.binding.ivAngleStatus.setImageResource(R$drawable.icon_collect_l);
        } else if (d < 0.0d) {
            this.binding.ivAngleStatus.setImageResource(R$drawable.icon_collect_r);
        }
    }

    private double[] calculateCoords() {
        return calculateAverageCoords(this.collectList);
    }

    private double[] calculateAverageCoords(List<double[]> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        double[] dArr = new double[3];
        for (double[] dArr2 : list) {
            dArr[0] = dArr[0] + dArr2[0];
            dArr[1] = dArr[1] + dArr2[1];
            dArr[2] = dArr[2] + dArr2[2];
        }
        dArr[0] = dArr[0] / list.size();
        dArr[1] = dArr[1] / list.size();
        double size = dArr[2] / list.size();
        dArr[2] = size;
        return (dArr[0] == 0.0d && dArr[1] == 0.0d && size == 0.0d) ? new double[]{0.0d, 0.0d, 0.0d} : dArr;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (moveJudge()) {
            cancelCollect();
            resetStatus();
            showTipDialog(getString(R$string.invalid_collection), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CollectCoordsActivity.2
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    CollectCoordsActivity.this.setResult(0);
                    CollectCoordsActivity.super.onBackPressed();
                }
            });
        } else {
            finishWithCollectResult();
            super.onBackPressed();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (this.dopLogEnabled) {
            EventBus.getDefault().post(new OrderBean(this.mDeviceType, "UNLOG,DOP"));
        }
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        cancelCollect();
    }
}
