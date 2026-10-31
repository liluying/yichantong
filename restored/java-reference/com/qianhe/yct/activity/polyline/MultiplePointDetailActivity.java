package com.qianhe.yct.activity.polyline;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityPolylinePointDetailBinding;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MultiplePointDetailActivity extends BaseActivity {
    private ActivityPolylinePointDetailBinding binding;
    private CadPickHelper cadPickHelper;
    private List<double[]> coordsList;
    private String coordsListJson;
    private String[] corsArray;
    private boolean disableElevation;
    private String initJson;
    private ActivityResultLauncher launcher;
    private int mToothType;
    private double overallSlopeRatio;
    private int position;
    private String cadPath = "";
    private String initCadPath = "";

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00ab  */
    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onCreate(android.os.Bundle r14) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.polyline.MultiplePointDetailActivity.onCreate(android.os.Bundle):void");
    }

    /* renamed from: $r8$lambda$oDm-He-2RY6Qs6NJTjYw43ZSX6o, reason: not valid java name */
    public static /* synthetic */ void m1726$r8$lambda$oDmHe2RY6Qs6NJTjYw43ZSX6o(MultiplePointDetailActivity multiplePointDetailActivity, String str, double[] dArr) {
        multiplePointDetailActivity.cadPath = str;
        multiplePointDetailActivity.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    public static /* synthetic */ void $r8$lambda$ZzgfaYYK2wJs0Z1zpknkBhqpFUE(MultiplePointDetailActivity multiplePointDetailActivity, int i) {
        multiplePointDetailActivity.mToothType = i;
        if (i == 3) {
            multiplePointDetailActivity.clearCadPath();
            multiplePointDetailActivity.goPointLibrary();
        } else if (i == 5) {
            multiplePointDetailActivity.clearCadPath();
            multiplePointDetailActivity.startInstrumentCollect(new MultiplePointDetailActivity$$ExternalSyntheticLambda8(multiplePointDetailActivity));
        } else {
            multiplePointDetailActivity.clearCadPath();
            multiplePointDetailActivity.goCollectCoordinates(i);
        }
    }

    public static /* synthetic */ void $r8$lambda$ZE1IIbG7x2dz2hpxnQT3zD_oHvU(MultiplePointDetailActivity multiplePointDetailActivity, int i) {
        if (i != 5) {
            multiplePointDetailActivity.getClass();
            return;
        }
        multiplePointDetailActivity.mToothType = i;
        multiplePointDetailActivity.clearCadPath();
        multiplePointDetailActivity.startInstrumentCollectWithPoleHeight(new MultiplePointDetailActivity$$ExternalSyntheticLambda8(multiplePointDetailActivity));
    }

    public static /* synthetic */ void $r8$lambda$bwZr1YC6LJ1taGfb37zNIZBmsYc(MultiplePointDetailActivity multiplePointDetailActivity, View view) {
        double numericValue;
        double numericValue2;
        multiplePointDetailActivity.getClass();
        double numericValue3 = 0.0d;
        try {
            numericValue = multiplePointDetailActivity.binding.edtEast.getNumericValue();
            try {
                numericValue2 = multiplePointDetailActivity.binding.edtNorth.getNumericValue();
                try {
                    numericValue3 = multiplePointDetailActivity.binding.edtElev.getNumericValue();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                numericValue2 = 0.0d;
            }
        } catch (Exception unused3) {
            numericValue = 0.0d;
            numericValue2 = 0.0d;
        }
        multiplePointDetailActivity.cadPickHelper.pickFromFile(multiplePointDetailActivity.cadPath, 1, CadEntityChooseIntent.singlePoint(numericValue, numericValue2, numericValue3));
    }

    public static /* synthetic */ boolean $r8$lambda$FsF6E9VTXcQBfJWp2zq3_TDiyBg(MultiplePointDetailActivity multiplePointDetailActivity, View view) {
        multiplePointDetailActivity.cadPickHelper.pickFromFile(1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$ZziGRi_YctGjKCaIjuEiFREuJQw(MultiplePointDetailActivity multiplePointDetailActivity, View view) {
        if (multiplePointDetailActivity.binding.toothView.getVisibility() == 0 && multiplePointDetailActivity.mToothType == -1) {
            multiplePointDetailActivity.showToastDialog(multiplePointDetailActivity.getString(R$string.please_select_shovel_tip));
        } else if (multiplePointDetailActivity.mToothType == 5) {
            multiplePointDetailActivity.clearCadPath();
            multiplePointDetailActivity.startInstrumentCollect(new MultiplePointDetailActivity$$ExternalSyntheticLambda8(multiplePointDetailActivity));
        } else {
            multiplePointDetailActivity.clearCadPath();
            multiplePointDetailActivity.goCollectCoordinates(multiplePointDetailActivity.mToothType);
        }
    }

    /* renamed from: $r8$lambda$7ToeM-lkFAGW_-swOiGeoDiLfnM, reason: not valid java name */
    public static /* synthetic */ void m1725$r8$lambda$7ToeMlkFAGW_swOiGeoDiLfnM(MultiplePointDetailActivity multiplePointDetailActivity, View view, boolean z) {
        if (z) {
            multiplePointDetailActivity.getClass();
        } else {
            multiplePointDetailActivity.refreshElevFromOverallSlope(multiplePointDetailActivity.binding.edtEast.getNumericValue(), multiplePointDetailActivity.binding.edtNorth.getNumericValue(), multiplePointDetailActivity.binding.edtElev.getNumericValue());
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        String str = this.coordsListJson;
        if (str != null) {
            bundle.putString("coordsListJson", str);
        }
        bundle.putString("cadPath", this.cadPath);
        bundle.putString("initCadPath", this.initCadPath);
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.coordsListJson = bundle.getString("coordsListJson", this.coordsListJson);
        this.cadPath = bundle.getString("cadPath", this.cadPath);
        this.initCadPath = bundle.getString("initCadPath", this.initCadPath);
    }

    public void goCollectCoordinates(int i) {
        Intent intent = new Intent(this, (Class<?>) CollectCoordsActivity.class);
        intent.putExtra("toothType", i);
        this.launcher.launch(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyCollectedCoords(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
        double[] dArr;
        if (instrumentCollectResult == null || (dArr = instrumentCollectResult.coords) == null) {
            return;
        }
        showCoords(dArr[0], dArr[1], dArr[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoords(double d, double d2, double d3) {
        List<double[]> list;
        this.binding.edtEast.setText(d != 0.0d ? formatCoords(d, 3) : "");
        this.binding.edtNorth.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
        if (this.disableElevation && (list = this.coordsList) != null && list.size() >= 2) {
            refreshElevFromOverallSlope(d, d2, d3);
        } else {
            setElevText(d3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setElevText(double d) {
        this.binding.edtElev.setText(d != 0.0d ? formatCoords(d, 3) : "");
    }

    private double refreshElevFromOverallSlope(double d, double d2, double d3) {
        List<double[]> list = this.coordsList;
        if (list == null || list.size() < 2) {
            setElevText(d3);
            return d3;
        }
        double[] dArr = this.coordsList.get(this.position);
        dArr[0] = d;
        dArr[1] = d2;
        if (this.position == 0) {
            dArr[2] = d3;
        }
        applyOverallSlopeElevationsToList();
        double d4 = this.coordsList.get(this.position)[2];
        setElevText(d4);
        return d4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyOverallSlopeElevationsToList() {
        int size = this.coordsList.size();
        if (size < 2) {
            return;
        }
        int i = size - 1;
        double[] dArr = new double[i];
        double d = 0.0d;
        double d2 = 0.0d;
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(this.coordsList.get(i2), this.coordsList.get(i3));
            dArr[i2] = dCalculateDistanceGAUSS;
            d2 += dCalculateDistanceGAUSS;
            i2 = i3;
        }
        if (d2 == 0.0d) {
            return;
        }
        double d3 = (this.overallSlopeRatio / 100.0d) * d2;
        double d4 = this.coordsList.get(0)[2];
        for (int i4 = 1; i4 < size; i4++) {
            d += dArr[i4 - 1];
            this.coordsList.get(i4)[2] = Math.round((((d / d2) * d3) + d4) * 1000.0d) / 1000.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        if (TextUtils.isEmpty(this.initCadPath)) {
            this.cadPath = "";
        }
    }

    public void goPointLibrary() {
        this.launcher.launch(PointLibraryIntent.pickPoint(this));
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.polyline.MultiplePointDetailActivity$$ExternalSyntheticLambda7
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MultiplePointDetailActivity.$r8$lambda$SkVsJuaAgFoUIazvEGC3ZZA0kqw(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$SkVsJuaAgFoUIazvEGC3ZZA0kqw(MultiplePointDetailActivity multiplePointDetailActivity, ActivityResult activityResult) {
        Intent data;
        multiplePointDetailActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        multiplePointDetailActivity.corsArray = data.getStringArrayExtra("cors");
        if (doubleArrayExtra != null) {
            multiplePointDetailActivity.clearCadPath();
            multiplePointDetailActivity.showCoords(doubleArrayExtra[0], doubleArrayExtra[1], doubleArrayExtra[2]);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        initActivityResultLauncher();
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.polyline.MultiplePointDetailActivity.5
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    MultiplePointDetailActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.collect_coordinates));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
