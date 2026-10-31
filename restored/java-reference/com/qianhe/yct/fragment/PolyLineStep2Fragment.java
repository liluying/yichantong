package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.PolyLineEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.polyline.MultiplePointDetailActivity;
import com.qianhe.yct.activity.polyline.PolyLineCreateActivity;
import com.qianhe.yct.activity.polyline.PolyLineWorkActivity;
import com.qianhe.yct.adapter.MultipleCoordsAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentPolylineStep2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PolyLineStep2Fragment extends BaseProjectFragment {
    private boolean applyingRatioChange;
    private BaseStationEntity baseStationInfo;
    private FragmentPolylineStep2Binding binding;
    private CadPickHelper cadPickHelper;
    private PolyLineEntity initEntity;
    private ActivityResultLauncher launcher;
    private InsNavi mINS;
    private List<double[]> mList;
    private MultipleCoordsAdapter multipleCoordsAdapter;
    private final List<Boolean> pointFromCad = new ArrayList();
    private List<double[]> pointsList;
    private PolyLineEntity polyLineEntity;
    private boolean ratiosInitializedFromCoords;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda4
            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public /* synthetic */ void onFileLoadFailed() {
                CadPickHelper.Callback.CC.$default$onFileLoadFailed(this);
            }

            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public /* synthetic */ void onPickCancelled() {
                CadPickHelper.Callback.CC.$default$onPickCancelled(this);
            }

            @Override // com.qianhe.yct.activity.cad.CadPickHelper.Callback
            public final void onPickResult(String str, double[] dArr) {
                PolyLineStep2Fragment.$r8$lambda$EWqyMFWUe7d_CFz5Nsig6PO9dx8(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$EWqyMFWUe7d_CFz5Nsig6PO9dx8(PolyLineStep2Fragment polyLineStep2Fragment, String str, double[] dArr) {
        polyLineStep2Fragment.polyLineEntity.cadPath = str;
        polyLineStep2Fragment.replaceCadPickPoints(dArr);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentPolylineStep2Binding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception unused) {
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initEntity = (PolyLineEntity) arguments.getSerializable("initEntity");
            this.polyLineEntity = (PolyLineEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        initActivityResultLauncher();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.polyLineView.setWorkMode(false);
        this.binding.toothView.setVisibility(this.polyLineEntity.editState == 0 ? 0 : 8);
        this.binding.tvCadImport.setEnabled(this.polyLineEntity.editState == 0);
        this.binding.tvClearCoords.setEnabled(this.polyLineEntity.editState == 0);
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PolyLineStep2Fragment polyLineStep2Fragment = this.f$0;
                polyLineStep2Fragment.cadPickHelper.pickFromFile(polyLineStep2Fragment.polyLineEntity.cadPath, -1, CadEntityChooseIntent.flattenPoints(polyLineStep2Fragment.mList));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return PolyLineStep2Fragment.$r8$lambda$g689wLyHgLCXNjz1NyRDmB6S2gw(this.f$0, view);
            }
        });
        this.binding.tvClearCoords.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.confirmClearAllCoords();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                boolean z;
                if (PolyLineStep2Fragment.this.binding.tvContinue.isEnabled()) {
                    if (PolyLineStep2Fragment.this.pointsList != null && !PolyLineStep2Fragment.this.pointsList.isEmpty()) {
                        int i2 = 0;
                        z = false;
                        while (true) {
                            if (i2 >= PolyLineStep2Fragment.this.pointsList.size()) {
                                i = 0;
                                break;
                            }
                            double[] dArr = (double[]) PolyLineStep2Fragment.this.pointsList.get(i2);
                            double[] dArr2 = new double[3];
                            z = GnssCoordConvertManager.getInstance().convertToGeodeticInverse(dArr[0], dArr[1], dArr[2], dArr2) && PolyLineStep2Fragment.this.isVaildCoords(dArr2);
                            if (!z) {
                                i = i2 + 1;
                                break;
                            }
                            i2++;
                        }
                    } else {
                        i = 0;
                        z = false;
                    }
                    if (!z) {
                        ((BaseActivity) PolyLineStep2Fragment.this.requireActivity()).showTipDialog("P" + i + PolyLineStep2Fragment.this.getString(R$string.please_confirm_matches_engineering), PolyLineStep2Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS((double[]) PolyLineStep2Fragment.this.mList.get(0), (double[]) PolyLineStep2Fragment.this.mList.get(PolyLineStep2Fragment.this.mList.size() - 1));
                    if (PolyLineStep2Fragment.this.mList.size() < 4 && dCalculateDistanceGAUSS < 0.1d) {
                        ((BaseActivity) PolyLineStep2Fragment.this.requireActivity()).showTipDialog(PolyLineStep2Fragment.this.getString(R$string.start_end_cannot_coincide), PolyLineStep2Fragment.this.getString(R$string.ok), null);
                    } else if (PolyLineStep2Fragment.this.applySlopeBeforeSave()) {
                        PolyLineStep2Fragment.this.saveProjectAndStartWork();
                    }
                }
            }
        });
        this.binding.rcvCoords.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.mList = new ArrayList();
        MultipleCoordsAdapter multipleCoordsAdapter = new MultipleCoordsAdapter(requireActivity(), this.mList, this.polyLineEntity.editState);
        this.multipleCoordsAdapter = multipleCoordsAdapter;
        this.binding.rcvCoords.setAdapter(multipleCoordsAdapter);
        this.multipleCoordsAdapter.setOnActionListener(new MultipleCoordsAdapter.OnActionListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.3
            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onAction(int i, String str) {
                Intent intent = new Intent(PolyLineStep2Fragment.this.requireActivity(), (Class<?>) MultiplePointDetailActivity.class);
                intent.putExtra("coordsListJson", PolyLineStep2Fragment.this.polyLineEntity.coordsListJson);
                intent.putExtra("position", i);
                intent.putExtra("name", str);
                intent.putExtra("cadPath", PolyLineStep2Fragment.this.polyLineEntity.cadPath);
                if (PolyLineStep2Fragment.this.polyLineEntity.isOverallSlopeMode()) {
                    intent.putExtra("disableElevation", true);
                    intent.putExtra("overallSlopeRatio", PolyLineStep2Fragment.this.polyLineEntity.ratio);
                }
                PolyLineStep2Fragment.this.launcher.launch(intent);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onDel(int i) {
                PolyLineStep2Fragment.this.binding.polyLineView.removePoint(i);
                if (((i < 0 || i >= PolyLineStep2Fragment.this.pointFromCad.size()) ? false : Boolean.TRUE.equals(PolyLineStep2Fragment.this.pointFromCad.remove(i))) && !PolyLineStep2Fragment.this.hasCadPickedPoints()) {
                    PolyLineStep2Fragment.this.polyLineEntity.cadPath = "";
                }
                PolyLineStep2Fragment.this.polyLineEntity.coordsListJson = new Gson().toJson(PolyLineStep2Fragment.this.mList);
                PolyLineStep2Fragment.this.syncPointsList();
                PolyLineStep2Fragment.this.binding.tvContinue.setEnabled(PolyLineStep2Fragment.this.mList.size() > 1);
                if (PolyLineStep2Fragment.this.isSegmentMode() && PolyLineStep2Fragment.this.isEditProject()) {
                    PolyLineStep2Fragment.this.recalculateAllRatiosFromCoords();
                } else if (PolyLineStep2Fragment.this.isOverallMode()) {
                    PolyLineStep2Fragment.this.applyOverallSlopeElevations();
                }
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onRatioChanged(int i, Double d) {
                if (PolyLineStep2Fragment.this.applyingRatioChange || !PolyLineStep2Fragment.this.isSegmentMode()) {
                    return;
                }
                PolyLineStep2Fragment.this.applyManualSegmentRatio(i, d);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onInsert(int i, boolean z) {
                PolyLineStep2Fragment.this.insertPoint(i, z);
            }
        });
        syncPointsList();
        List<double[]> list = this.pointsList;
        if (list != null && !list.isEmpty()) {
            Iterator<double[]> it = this.pointsList.iterator();
            while (it.hasNext()) {
                addPoint(it.next(), false);
            }
            initSegmentRatiosOnEnter();
        }
        refreshSegmentRatioVisibility();
        refreshExplanationTip();
    }

    public static /* synthetic */ boolean $r8$lambda$g689wLyHgLCXNjz1NyRDmB6S2gw(PolyLineStep2Fragment polyLineStep2Fragment, View view) {
        polyLineStep2Fragment.cadPickHelper.pickFromFile(-1);
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        List<double[]> list;
        List<double[]> list2;
        super.onResume();
        syncPointsList();
        refreshSegmentRatioVisibility();
        refreshExplanationTip();
        if (isOverallMode() && (list2 = this.mList) != null && list2.size() >= 2) {
            applyOverallSlopeElevations();
            return;
        }
        if (!isSegmentMode() || !isEditProject() || (list = this.mList) == null || list.size() < 2) {
            return;
        }
        Iterator<Double> it = this.multipleCoordsAdapter.getSegmentRatios().iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                return;
            }
        }
        recalculateAllRatiosFromCoords();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSegmentMode() {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        return polyLineEntity != null && polyLineEntity.isSegmentSlopeMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOverallMode() {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        return polyLineEntity != null && polyLineEntity.isOverallSlopeMode();
    }

    private boolean isNoSlopeMode() {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        return polyLineEntity == null || polyLineEntity.isNoSlopeMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEditProject() {
        if (this.polyLineEntity.id != 0) {
            return true;
        }
        PolyLineEntity polyLineEntity = this.initEntity;
        return (polyLineEntity == null || TextUtils.isEmpty(polyLineEntity.coordsListJson)) ? false : true;
    }

    private void refreshSegmentRatioVisibility() {
        MultipleCoordsAdapter multipleCoordsAdapter = this.multipleCoordsAdapter;
        if (multipleCoordsAdapter != null) {
            multipleCoordsAdapter.setShowSegmentRatio(isSegmentMode());
        }
    }

    private void refreshExplanationTip() {
        if (this.binding == null) {
            return;
        }
        if (isOverallMode()) {
            this.binding.tvExplanation.setText(R$string.polyline_attention_des_slope);
        } else if (isSegmentMode()) {
            this.binding.tvExplanation.setText(R$string.polyline_attention_des_segment);
        } else {
            this.binding.tvExplanation.setText(R$string.polyline_attention_des);
        }
    }

    private void initSegmentRatiosOnEnter() {
        if (this.ratiosInitializedFromCoords) {
            return;
        }
        this.ratiosInitializedFromCoords = true;
        if (isSegmentMode()) {
            if (isEditProject()) {
                this.multipleCoordsAdapter.setSegmentRatios(calculateAllSegmentRatios(this.mList));
            } else {
                this.multipleCoordsAdapter.syncSegmentRatioSize();
            }
        }
    }

    private List<Double> calculateAllSegmentRatios(List<double[]> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() >= 2) {
            int i = 0;
            while (i < list.size() - 1) {
                double[] dArr = list.get(i);
                i++;
                arrayList.add(calcSegmentRatio(dArr, list.get(i)));
            }
        }
        return arrayList;
    }

    private Double calcSegmentRatio(double[] dArr, double[] dArr2) {
        double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2);
        if (dCalculateDistanceGAUSS == 0.0d) {
            return Double.valueOf(0.0d);
        }
        return Double.valueOf(((dArr2[2] - dArr[2]) / dCalculateDistanceGAUSS) * 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyManualSegmentRatio(int i, Double d) {
        List<double[]> list = this.mList;
        if (list == null || i < 0 || i >= list.size() - 1) {
            return;
        }
        if (d == null && (d = findLastSetSegmentRatioBefore(i)) == null) {
            return;
        }
        this.applyingRatioChange = true;
        double[] dArr = this.mList.get(i);
        int i2 = i + 1;
        double[] dArr2 = this.mList.get(i2);
        if (CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2) != 0.0d) {
            dArr2[2] = Math.round((dArr[2] + ((d.doubleValue() / 100.0d) * r4)) * 1000.0d) / 1000.0d;
            this.polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
            syncPointsList();
            this.binding.polyLineView.clearPoints();
            Iterator<double[]> it = this.mList.iterator();
            while (it.hasNext()) {
                this.binding.polyLineView.addPoint(it.next());
            }
            if (i2 < this.mList.size() - 1) {
                this.multipleCoordsAdapter.setSegmentRatio(i2, calcSegmentRatio(this.mList.get(i2), this.mList.get(i + 2)));
            }
        }
        this.applyingRatioChange = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recalculateAllRatiosFromCoords() {
        if (isSegmentMode()) {
            this.multipleCoordsAdapter.setSegmentRatios(calculateAllSegmentRatios(this.mList));
        }
    }

    private void recalculateRatiosAroundPoint(int i) {
        List<double[]> list;
        int i2;
        if (!isSegmentMode() || (list = this.mList) == null || list.size() < 2) {
            return;
        }
        this.multipleCoordsAdapter.syncSegmentRatioSize();
        ArrayList arrayList = new ArrayList(this.multipleCoordsAdapter.getSegmentRatios());
        int i3 = i - 1;
        if (i3 >= 0 && i3 < arrayList.size() && i < this.mList.size()) {
            arrayList.set(i3, calcSegmentRatio(this.mList.get(i3), this.mList.get(i)));
        }
        if (i >= 0 && i < arrayList.size() && (i2 = i + 1) < this.mList.size()) {
            arrayList.set(i, calcSegmentRatio(this.mList.get(i), this.mList.get(i2)));
        }
        this.multipleCoordsAdapter.setSegmentRatios(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean applySlopeBeforeSave() {
        List<double[]> list = this.mList;
        if (list == null || list.size() < 2 || isNoSlopeMode()) {
            return true;
        }
        if (isOverallMode()) {
            applyOverallSlopeElevations();
            return true;
        }
        this.multipleCoordsAdapter.syncSegmentRatioSize();
        List<Double> segmentRatios = this.multipleCoordsAdapter.getSegmentRatios();
        if (segmentRatios.isEmpty() || segmentRatios.get(0) == null) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.please_set_slope_ratio), getString(R$string.ok), null);
            return false;
        }
        this.applyingRatioChange = true;
        Double d = null;
        int i = 0;
        while (i < this.mList.size() - 1) {
            Double d2 = i < segmentRatios.size() ? segmentRatios.get(i) : null;
            if (d2 != null) {
                d = d2;
            } else if (d != null) {
                d2 = d;
            } else {
                Double d3 = d2;
                d2 = d;
                d = d3;
            }
            if (d != null) {
                double[] dArr = this.mList.get(i);
                double[] dArr2 = this.mList.get(i + 1);
                if (CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2) != 0.0d) {
                    dArr2[2] = Math.round((dArr[2] + ((d.doubleValue() / 100.0d) * r11)) * 1000.0d) / 1000.0d;
                }
            }
            i++;
            d = d2;
        }
        this.polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
        syncPointsList();
        this.binding.polyLineView.clearPoints();
        Iterator<double[]> it = this.mList.iterator();
        while (it.hasNext()) {
            this.binding.polyLineView.addPoint(it.next());
        }
        this.multipleCoordsAdapter.syncSegmentRatioSize();
        this.multipleCoordsAdapter.notifyDataSetChanged();
        this.applyingRatioChange = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyOverallSlopeElevations() {
        int size = this.mList.size();
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
            double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(this.mList.get(i2), this.mList.get(i3));
            dArr[i2] = dCalculateDistanceGAUSS;
            d2 += dCalculateDistanceGAUSS;
            i2 = i3;
        }
        if (d2 == 0.0d) {
            return;
        }
        double d3 = (this.polyLineEntity.ratio / 100.0d) * d2;
        double d4 = this.mList.get(0)[2];
        for (int i4 = 1; i4 < size; i4++) {
            d += dArr[i4 - 1];
            this.mList.get(i4)[2] = Math.round((((d / d2) * d3) + d4) * 1000.0d) / 1000.0d;
        }
        this.polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
        syncPointsList();
        this.binding.polyLineView.clearPoints();
        Iterator<double[]> it = this.mList.iterator();
        while (it.hasNext()) {
            this.binding.polyLineView.addPoint(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncPointsList() {
        this.pointsList = (List) new Gson().fromJson(this.polyLineEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.4
        }.getType());
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda3
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PolyLineStep2Fragment.$r8$lambda$m85qemb1Z0glq9WcsuNtl6J6JSE(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$m85qemb1Z0glq9WcsuNtl6J6JSE(PolyLineStep2Fragment polyLineStep2Fragment, ActivityResult activityResult) {
        Intent data;
        polyLineStep2Fragment.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        String stringExtra = data.getStringExtra("coordsListJson");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        polyLineStep2Fragment.polyLineEntity.coordsListJson = stringExtra;
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                polyLineStep2Fragment.polyLineEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                polyLineStep2Fragment.polyLineEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                polyLineStep2Fragment.polyLineEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                polyLineStep2Fragment.polyLineEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                polyLineStep2Fragment.polyLineEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                polyLineStep2Fragment.polyLineEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                polyLineStep2Fragment.polyLineEntity.corsMount = stringArrayExtra[6];
            }
        }
        String stringExtra2 = data.getStringExtra("cadPath");
        if (stringExtra2 != null) {
            polyLineStep2Fragment.polyLineEntity.cadPath = stringExtra2;
        }
        int intExtra = data.getIntExtra("position", -1);
        ArrayList arrayList = polyLineStep2Fragment.isSegmentMode() ? new ArrayList(polyLineStep2Fragment.multipleCoordsAdapter.getSegmentRatios()) : null;
        polyLineStep2Fragment.syncPointsList();
        List<double[]> list = polyLineStep2Fragment.pointsList;
        if (list == null || list.isEmpty()) {
            return;
        }
        polyLineStep2Fragment.multipleCoordsAdapter.clear();
        polyLineStep2Fragment.binding.polyLineView.clearPoints();
        polyLineStep2Fragment.pointFromCad.clear();
        Iterator<double[]> it = polyLineStep2Fragment.pointsList.iterator();
        while (it.hasNext()) {
            polyLineStep2Fragment.addPoint(it.next(), true);
        }
        if (polyLineStep2Fragment.isSegmentMode()) {
            if (polyLineStep2Fragment.isEditProject()) {
                polyLineStep2Fragment.recalculateAllRatiosFromCoords();
                return;
            }
            polyLineStep2Fragment.multipleCoordsAdapter.syncSegmentRatioSize();
            List<Double> segmentRatios = polyLineStep2Fragment.multipleCoordsAdapter.getSegmentRatios();
            for (int i = 0; i < segmentRatios.size(); i++) {
                if (arrayList != null && i < arrayList.size()) {
                    segmentRatios.set(i, (Double) arrayList.get(i));
                }
            }
            polyLineStep2Fragment.multipleCoordsAdapter.setSegmentRatios(segmentRatios);
            if (intExtra >= 0) {
                polyLineStep2Fragment.recalculateRatiosAroundPoint(intExtra);
                return;
            }
            return;
        }
        if (polyLineStep2Fragment.isOverallMode()) {
            polyLineStep2Fragment.applyOverallSlopeElevations();
        }
    }

    private void addPoint(double[] dArr, boolean z) {
        addPoint(dArr, z, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPoint(double[] dArr, boolean z, boolean z2) {
        addPoint(dArr, z, z2, false);
    }

    private void addPoint(double[] dArr, boolean z, boolean z2, boolean z3) {
        if (z2 && isSegmentMode()) {
            applyElevationFromPreviousRatio(dArr, this.mList.size());
        }
        this.multipleCoordsAdapter.addCoords(dArr);
        this.pointFromCad.add(Boolean.valueOf(z3));
        this.binding.polyLineView.addPoint(dArr);
        this.binding.tvContinue.setEnabled(this.mList.size() > 1);
        this.polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
        syncPointsList();
        if (z2 && isOverallMode()) {
            applyOverallSlopeElevations();
        }
        if (!z || this.multipleCoordsAdapter.getItemCount() <= 0) {
            return;
        }
        this.binding.rcvCoords.post(new Runnable() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.rcvCoords.smoothScrollToPosition(r0.multipleCoordsAdapter.getItemCount() - 1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertPoint(int i, boolean z) {
        List<double[]> list = this.mList;
        if (list == null || i < 0 || i >= list.size()) {
            return;
        }
        final int i2 = z ? i : i + 1;
        double[] dArr = this.mList.get(i);
        double[] dArr2 = {dArr[0], dArr[1], dArr[2]};
        if (isSegmentMode()) {
            dArr2[2] = Math.round(dArr[2] * 1000.0d) / 1000.0d;
        }
        this.multipleCoordsAdapter.insertCoords(i2, dArr2, z);
        this.pointFromCad.add(i2, Boolean.FALSE);
        if (isOverallMode()) {
            applyOverallSlopeElevations();
        } else {
            this.binding.polyLineView.clearPoints();
            Iterator<double[]> it = this.mList.iterator();
            while (it.hasNext()) {
                this.binding.polyLineView.addPoint(it.next());
            }
            this.polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
            syncPointsList();
        }
        this.binding.tvContinue.setEnabled(this.mList.size() > 1);
        Toast.makeText(requireContext(), getString(R$string.inserted_point, "P" + (i2 + 1)), 0).show();
        this.binding.rcvCoords.post(new Runnable() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PolyLineStep2Fragment.$r8$lambda$CSd70o6mlv9lOVK_6Il0hBRAnU8(this.f$0, i2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$CSd70o6mlv9lOVK_6Il0hBRAnU8(PolyLineStep2Fragment polyLineStep2Fragment, int i) {
        if (i < polyLineStep2Fragment.multipleCoordsAdapter.getItemCount()) {
            polyLineStep2Fragment.binding.rcvCoords.smoothScrollToPosition(i);
        }
    }

    private void applyElevationFromPreviousRatio(double[] dArr, int i) {
        List<double[]> list;
        if (!isSegmentMode() || dArr == null || (list = this.mList) == null || list.isEmpty() || i <= 0 || i > this.mList.size()) {
            return;
        }
        this.multipleCoordsAdapter.syncSegmentRatioSize();
        if (findLastSetSegmentRatioBefore(i) == null) {
            return;
        }
        if (CoordsCalculUtils.calculateDistanceGAUSS(this.mList.get(i - 1), dArr) == 0.0d) {
            return;
        }
        dArr[2] = Math.round((r12[2] + ((r0.doubleValue() / 100.0d) * r1)) * 1000.0d) / 1000.0d;
    }

    private Double findLastSetSegmentRatioBefore(int i) {
        List<Double> segmentRatios = this.multipleCoordsAdapter.getSegmentRatios();
        if (segmentRatios != null && !segmentRatios.isEmpty() && i > 0) {
            for (int iMin = Math.min(i, segmentRatios.size()) - 1; iMin >= 0; iMin--) {
                Double d = segmentRatios.get(iMin);
                if (d != null) {
                    return d;
                }
            }
        }
        return null;
    }

    private void replaceCadPickPoints(double[] dArr) {
        this.multipleCoordsAdapter.clear();
        this.binding.polyLineView.clearPoints();
        this.pointFromCad.clear();
        if (dArr == null || dArr.length < 3) {
            PolyLineEntity polyLineEntity = this.polyLineEntity;
            polyLineEntity.cadPath = "";
            polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
            syncPointsList();
            this.binding.tvContinue.setEnabled(false);
            return;
        }
        addCadPickPoints(dArr);
    }

    private void addCadPickPoints(double[] dArr) {
        if (dArr == null || dArr.length < 3 || dArr.length % 3 != 0) {
            return;
        }
        int length = dArr.length / 3;
        int i = 0;
        while (i < length) {
            int i2 = i * 3;
            addPoint(new double[]{dArr[i2], dArr[i2 + 1], dArr[i2 + 2]}, i == length + (-1), true, true);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmClearAllCoords() {
        List<double[]> list = this.mList;
        if (list == null || list.isEmpty()) {
            return;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.clear_list_confirm), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.5
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                PolyLineStep2Fragment.this.clearAllCoords();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllCoords() {
        List<double[]> list = this.mList;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.multipleCoordsAdapter.clear();
        this.binding.polyLineView.clearPoints();
        this.pointFromCad.clear();
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        polyLineEntity.cadPath = "";
        polyLineEntity.coordsListJson = new Gson().toJson(this.mList);
        syncPointsList();
        this.binding.tvContinue.setEnabled(false);
        if (isSegmentMode()) {
            this.multipleCoordsAdapter.syncSegmentRatioSize();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCadPickedPoints() {
        Iterator<Boolean> it = this.pointFromCad.iterator();
        while (it.hasNext()) {
            if (Boolean.TRUE.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        if (polyLineEntity.id == 0) {
            polyLineEntity.cadPath = "";
        }
    }

    private void initObserve() {
        ((PolyLineCreateActivity) requireActivity()).observeCoordsStep().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !PolyLineStep2Fragment.this.isAdded()) {
                    return;
                }
                PolyLineStep2Fragment.this.clearCadPath();
                PolyLineStep2Fragment.this.addPoint(dArr, true, true);
            }
        });
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.PolyLineStep2Fragment.7
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                PolyLineStep2Fragment.this.clearCadPath();
                PolyLineStep2Fragment.this.polyLineEntity.shovelTipType = 0;
                ((PolyLineCreateActivity) PolyLineStep2Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                PolyLineStep2Fragment.this.clearCadPath();
                PolyLineStep2Fragment.this.polyLineEntity.shovelTipType = i;
                ((PolyLineCreateActivity) PolyLineStep2Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                PolyLineStep2Fragment.this.clearCadPath();
                if (dArr != null) {
                    PolyLineStep2Fragment.this.addPoint(dArr, true, true);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                PolyLineStep2Fragment.this.polyLineEntity.shovelTipType = i;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveProjectAndStartWork() {
        createEntity(this.polyLineEntity);
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        if (polyLineEntity.id == 0) {
            polyLineEntity.id = DatabaseManager.getInstance(requireContext()).insert(this.polyLineEntity);
            startWork();
            return;
        }
        if (!this.initEntity.equals(polyLineEntity)) {
            this.polyLineEntity.updateTime = System.currentTimeMillis() / 1000;
            DatabaseManager.getInstance(requireContext()).updateEntityById(this.polyLineEntity);
            NetworkUserLoader.getInstance().modifyProject(this.mINS, this.polyLineEntity);
        }
        startWork();
    }

    private void createEntity(PolyLineEntity polyLineEntity) {
        polyLineEntity.depthA = 0.0d;
        polyLineEntity.depthB = 0.0d;
        List<double[]> list = this.pointsList;
        if (list != null && list.size() >= 2) {
            List<double[]> list2 = this.pointsList;
            polyLineEntity.heightDiff = list2.get(list2.size() - 1)[2] - this.pointsList.get(0)[2];
            if (isSegmentMode()) {
                polyLineEntity.ratio = 0.0d;
                polyLineEntity.subType = 2;
            } else if (isOverallMode()) {
                polyLineEntity.subType = 1;
            } else {
                polyLineEntity.ratio = 0.0d;
                polyLineEntity.subType = 0;
            }
        }
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            polyLineEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            polyLineEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            polyLineEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void startWork() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) PolyLineWorkActivity.class);
        intent.putExtra("id", this.polyLineEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
