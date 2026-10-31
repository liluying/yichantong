package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
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
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.polyline.MultiplePointDetailActivity;
import com.qianhe.yct.activity.siteleveling.SiteLevelingCreateActivity;
import com.qianhe.yct.activity.siteleveling.SiteLevelingWorkActivity;
import com.qianhe.yct.adapter.MultipleCoordsAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentSitelevelingStep1Binding;
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
public class SiteLevelingStep1Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentSitelevelingStep1Binding binding;
    private CadPickHelper cadPickHelper;
    private SiteLevelingEntity initEntity;
    private boolean isH5Pro;
    private ActivityResultLauncher launcher;
    private InsNavi mINS;
    private MultipleCoordsAdapter multipleCoordsAdapter;
    private final List<Boolean> pointFromCad = new ArrayList();
    private List<double[]> pointsList;
    private SiteLevelingEntity siteLevelingEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda1
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
                SiteLevelingStep1Fragment.$r8$lambda$2fGw1DJZn9Ft3eMdtIgzwqFcc44(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$2fGw1DJZn9Ft3eMdtIgzwqFcc44(SiteLevelingStep1Fragment siteLevelingStep1Fragment, String str, double[] dArr) {
        siteLevelingStep1Fragment.siteLevelingEntity.cadPath = str;
        siteLevelingStep1Fragment.replaceCadPickPoints(dArr);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSitelevelingStep1Binding.inflate(getLayoutInflater());
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
            this.initEntity = (SiteLevelingEntity) arguments.getSerializable("initEntity");
            this.siteLevelingEntity = (SiteLevelingEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        initActivityResultLauncher();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.polyLineView.setWorkMode(false);
        this.binding.toothView.setVisibility(this.siteLevelingEntity.editState == 0 ? 0 : 8);
        this.binding.tvCadImport.setEnabled(this.siteLevelingEntity.editState == 0);
        this.binding.tvClearCoords.setEnabled(this.siteLevelingEntity.editState == 0);
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteLevelingStep1Fragment siteLevelingStep1Fragment = this.f$0;
                siteLevelingStep1Fragment.cadPickHelper.pickFromFile(siteLevelingStep1Fragment.siteLevelingEntity.cadPath, -1, CadEntityChooseIntent.flattenPoints(siteLevelingStep1Fragment.pointsList));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return SiteLevelingStep1Fragment.$r8$lambda$B4elSyxkg278_JkkAL1MbvxfxdY(this.f$0, view);
            }
        });
        this.binding.tvClearCoords.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.confirmClearAllCoords();
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteLevelingStep1Fragment.m2596$r8$lambda$vFdkH65vdxOSqCcgnMJbni0wC0(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SiteLevelingStep1Fragment.this.clearCadPath();
                ((SiteLevelingCreateActivity) SiteLevelingStep1Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                if (SiteLevelingStep1Fragment.this.binding.tvContinue.isEnabled()) {
                    boolean z = false;
                    if (SiteLevelingStep1Fragment.this.pointsList == null || SiteLevelingStep1Fragment.this.pointsList.isEmpty()) {
                        i = 0;
                    } else {
                        boolean z2 = false;
                        for (int i2 = 0; i2 < SiteLevelingStep1Fragment.this.pointsList.size(); i2++) {
                            double[] dArr = (double[]) SiteLevelingStep1Fragment.this.pointsList.get(i2);
                            double[] dArr2 = new double[3];
                            z2 = GnssCoordConvertManager.getInstance().convertToGeodeticInverse(dArr[0], dArr[1], dArr[2], dArr2) && SiteLevelingStep1Fragment.this.isVaildCoords(dArr2);
                            if (!z2) {
                                i = i2 + 1;
                                z = z2;
                                break;
                            }
                        }
                        z = z2;
                        i = 0;
                    }
                    if (!z) {
                        ((BaseActivity) SiteLevelingStep1Fragment.this.requireActivity()).showTipDialog("P" + i + SiteLevelingStep1Fragment.this.getString(R$string.please_confirm_matches_engineering), SiteLevelingStep1Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    if (SiteLevelingStep1Fragment.this.isSlopeLeveling() && SiteLevelingStep1Fragment.this.isStartEndCoincide()) {
                        ((BaseActivity) SiteLevelingStep1Fragment.this.requireActivity()).showTipDialog(SiteLevelingStep1Fragment.this.getString(R$string.start_end_cannot_coincide), SiteLevelingStep1Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    if (SiteLevelingStep1Fragment.this.baseStationInfo != null) {
                        SiteLevelingEntity siteLevelingEntity = SiteLevelingStep1Fragment.this.siteLevelingEntity;
                        SiteLevelingStep1Fragment siteLevelingStep1Fragment = SiteLevelingStep1Fragment.this;
                        siteLevelingEntity.baseStationLon = Double.parseDouble(siteLevelingStep1Fragment.formatCoords(siteLevelingStep1Fragment.baseStationInfo.lon, 8));
                        SiteLevelingEntity siteLevelingEntity2 = SiteLevelingStep1Fragment.this.siteLevelingEntity;
                        SiteLevelingStep1Fragment siteLevelingStep1Fragment2 = SiteLevelingStep1Fragment.this;
                        siteLevelingEntity2.baseStationLat = Double.parseDouble(siteLevelingStep1Fragment2.formatCoords(siteLevelingStep1Fragment2.baseStationInfo.lat, 8));
                        SiteLevelingEntity siteLevelingEntity3 = SiteLevelingStep1Fragment.this.siteLevelingEntity;
                        SiteLevelingStep1Fragment siteLevelingStep1Fragment3 = SiteLevelingStep1Fragment.this;
                        siteLevelingEntity3.baseStationElev = Double.parseDouble(siteLevelingStep1Fragment3.formatCoords(siteLevelingStep1Fragment3.baseStationInfo.elev, 3));
                    }
                    if (SiteLevelingStep1Fragment.this.siteLevelingEntity.subType == 0) {
                        SiteLevelingStep1Fragment.this.saveProjectAndStartWork();
                    } else {
                        EventBus.getDefault().post("next");
                    }
                }
            }
        });
        this.binding.rcvCoords.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.pointsList = new ArrayList();
        MultipleCoordsAdapter multipleCoordsAdapter = new MultipleCoordsAdapter(requireActivity(), this.pointsList, this.siteLevelingEntity.editState);
        this.multipleCoordsAdapter = multipleCoordsAdapter;
        this.binding.rcvCoords.setAdapter(multipleCoordsAdapter);
        this.multipleCoordsAdapter.setOnActionListener(new MultipleCoordsAdapter.OnActionListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.4
            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public /* synthetic */ void onInsert(int i, boolean z) {
                MultipleCoordsAdapter.OnActionListener.CC.$default$onInsert(this, i, z);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public /* synthetic */ void onRatioChanged(int i, Double d) {
                MultipleCoordsAdapter.OnActionListener.CC.$default$onRatioChanged(this, i, d);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onAction(int i, String str) {
                Intent intent = new Intent(SiteLevelingStep1Fragment.this.requireActivity(), (Class<?>) MultiplePointDetailActivity.class);
                intent.putExtra("coordsListJson", SiteLevelingStep1Fragment.this.siteLevelingEntity.coordsListJson);
                intent.putExtra("position", i);
                intent.putExtra("name", str);
                intent.putExtra("cadPath", SiteLevelingStep1Fragment.this.siteLevelingEntity.cadPath);
                SiteLevelingStep1Fragment.this.launcher.launch(intent);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onDel(int i) {
                SiteLevelingStep1Fragment.this.binding.polyLineView.removePoint(i);
                if (((i < 0 || i >= SiteLevelingStep1Fragment.this.pointFromCad.size()) ? false : Boolean.TRUE.equals(SiteLevelingStep1Fragment.this.pointFromCad.remove(i))) && !SiteLevelingStep1Fragment.this.hasCadPickedPoints()) {
                    SiteLevelingStep1Fragment.this.siteLevelingEntity.cadPath = "";
                }
                SiteLevelingStep1Fragment.this.siteLevelingEntity.coordsListJson = new Gson().toJson(SiteLevelingStep1Fragment.this.pointsList);
                SiteLevelingStep1Fragment.this.refreshContinueEnabled();
                if (SiteLevelingStep1Fragment.this.pointsList.isEmpty()) {
                    SiteLevelingStep1Fragment.this.binding.tvMeasure.setText(R$string.start_collection);
                }
            }
        });
        List list = (List) new Gson().fromJson(this.siteLevelingEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.5
        }.getType());
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                addPoint((double[]) it.next(), false);
            }
        }
        refreshContinueEnabled();
    }

    public static /* synthetic */ boolean $r8$lambda$B4elSyxkg278_JkkAL1MbvxfxdY(SiteLevelingStep1Fragment siteLevelingStep1Fragment, View view) {
        siteLevelingStep1Fragment.cadPickHelper.pickFromFile(-1);
        return false;
    }

    /* renamed from: $r8$lambda$vFdkH65vdxOSqCcgnM-Jbni0wC0, reason: not valid java name */
    public static /* synthetic */ void m2596$r8$lambda$vFdkH65vdxOSqCcgnMJbni0wC0(SiteLevelingStep1Fragment siteLevelingStep1Fragment, View view) {
        if (siteLevelingStep1Fragment.binding.toothView.getVisibility() == 0 && siteLevelingStep1Fragment.siteLevelingEntity.shovelTipType == -1) {
            ((BaseActivity) siteLevelingStep1Fragment.requireActivity()).showToastDialog(siteLevelingStep1Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            siteLevelingStep1Fragment.handleMeasureCollectClick(siteLevelingStep1Fragment.siteLevelingEntity.shovelTipType, siteLevelingStep1Fragment.createToothCollectHandler());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                SiteLevelingStep1Fragment.$r8$lambda$4BBnVNeuMoiGdyKlDaphWzhUwaU(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$4BBnVNeuMoiGdyKlDaphWzhUwaU(SiteLevelingStep1Fragment siteLevelingStep1Fragment, ActivityResult activityResult) {
        Intent data;
        siteLevelingStep1Fragment.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        String stringExtra = data.getStringExtra("coordsListJson");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        siteLevelingStep1Fragment.siteLevelingEntity.coordsListJson = stringExtra;
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                siteLevelingStep1Fragment.siteLevelingEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                siteLevelingStep1Fragment.siteLevelingEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                siteLevelingStep1Fragment.siteLevelingEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                siteLevelingStep1Fragment.siteLevelingEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                siteLevelingStep1Fragment.siteLevelingEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                siteLevelingStep1Fragment.siteLevelingEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                siteLevelingStep1Fragment.siteLevelingEntity.corsMount = stringArrayExtra[6];
            }
        }
        String stringExtra2 = data.getStringExtra("cadPath");
        if (stringExtra2 != null) {
            siteLevelingStep1Fragment.siteLevelingEntity.cadPath = stringExtra2;
        }
        List list = (List) new Gson().fromJson(siteLevelingStep1Fragment.siteLevelingEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.6
        }.getType());
        if (list == null || list.isEmpty()) {
            return;
        }
        siteLevelingStep1Fragment.multipleCoordsAdapter.clear();
        siteLevelingStep1Fragment.binding.polyLineView.clearPoints();
        siteLevelingStep1Fragment.pointFromCad.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            siteLevelingStep1Fragment.addPoint((double[]) it.next(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPoint(double[] dArr, boolean z) {
        addPoint(dArr, z, false);
    }

    private void addPoint(double[] dArr, boolean z, boolean z2) {
        this.multipleCoordsAdapter.addCoords(dArr);
        this.pointFromCad.add(Boolean.valueOf(z2));
        this.binding.polyLineView.addPoint(dArr);
        refreshContinueEnabled();
        this.siteLevelingEntity.coordsListJson = new Gson().toJson(this.pointsList);
        if (!this.pointsList.isEmpty()) {
            this.binding.tvMeasure.setText(R$string.continue_collect);
        }
        if (!z || this.multipleCoordsAdapter.getItemCount() <= 0) {
            return;
        }
        this.binding.rcvCoords.post(new Runnable() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.rcvCoords.smoothScrollToPosition(r0.multipleCoordsAdapter.getItemCount() - 1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshContinueEnabled() {
        int i = isSlopeLeveling() ? 2 : 1;
        TextView textView = this.binding.tvContinue;
        List<double[]> list = this.pointsList;
        textView.setEnabled(list != null && list.size() >= i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSlopeLeveling() {
        SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
        return siteLevelingEntity != null && siteLevelingEntity.subType == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStartEndCoincide() {
        List<double[]> list = this.pointsList;
        if (list != null && list.size() >= 2) {
            double[] dArr = this.pointsList.get(0);
            List<double[]> list2 = this.pointsList;
            if (CoordsCalculUtils.calculateDistanceGAUSS(dArr, list2.get(list2.size() - 1)) < 0.1d) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmClearAllCoords() {
        List<double[]> list = this.pointsList;
        if (list == null || list.isEmpty()) {
            return;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.clear_list_confirm), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.7
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                SiteLevelingStep1Fragment.this.clearAllCoords();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllCoords() {
        List<double[]> list = this.pointsList;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.multipleCoordsAdapter.clear();
        this.binding.polyLineView.clearPoints();
        this.pointFromCad.clear();
        SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
        siteLevelingEntity.cadPath = "";
        siteLevelingEntity.coordsListJson = new Gson().toJson(this.pointsList);
        this.binding.tvMeasure.setText(R$string.start_collection);
        refreshContinueEnabled();
    }

    private void replaceCadPickPoints(double[] dArr) {
        this.multipleCoordsAdapter.clear();
        this.binding.polyLineView.clearPoints();
        this.pointFromCad.clear();
        if (dArr == null || dArr.length < 3) {
            SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
            siteLevelingEntity.cadPath = "";
            siteLevelingEntity.coordsListJson = new Gson().toJson(this.pointsList);
            this.binding.tvMeasure.setText(R$string.start_collection);
            refreshContinueEnabled();
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
            addPoint(new double[]{dArr[i2], dArr[i2 + 1], dArr[i2 + 2]}, i == length + (-1), true);
            i++;
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
        SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
        if (siteLevelingEntity.id == 0) {
            siteLevelingEntity.cadPath = "";
        }
    }

    private void initObserve() {
        ((SiteLevelingCreateActivity) requireActivity()).observeCoordsStep().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !SiteLevelingStep1Fragment.this.isAdded()) {
                    return;
                }
                SiteLevelingStep1Fragment.this.clearCadPath();
                SiteLevelingStep1Fragment.this.addPoint(dArr, true);
            }
        });
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.SiteLevelingStep1Fragment.9
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                SiteLevelingStep1Fragment.this.clearCadPath();
                SiteLevelingStep1Fragment.this.siteLevelingEntity.shovelTipType = 0;
                ((SiteLevelingCreateActivity) SiteLevelingStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                SiteLevelingStep1Fragment.this.clearCadPath();
                SiteLevelingStep1Fragment.this.siteLevelingEntity.shovelTipType = i;
                ((SiteLevelingCreateActivity) SiteLevelingStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                SiteLevelingStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    SiteLevelingStep1Fragment.this.addPoint(dArr, true);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                SiteLevelingStep1Fragment.this.siteLevelingEntity.shovelTipType = i;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveProjectAndStartWork() {
        SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
        siteLevelingEntity.ratio = 0.0d;
        if (siteLevelingEntity.id == 0) {
            siteLevelingEntity.id = DatabaseManager.getInstance(requireContext()).insert(this.siteLevelingEntity);
            startWork();
            return;
        }
        if (!this.initEntity.equals(siteLevelingEntity)) {
            this.siteLevelingEntity.updateTime = System.currentTimeMillis() / 1000;
            DatabaseManager.getInstance(requireContext()).updateEntityById(this.siteLevelingEntity);
            NetworkUserLoader.getInstance().modifyProject(this.mINS, this.siteLevelingEntity);
        }
        startWork();
    }

    private void startWork() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) SiteLevelingWorkActivity.class);
        intent.putExtra("id", this.siteLevelingEntity.id);
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
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
