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
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity;
import com.qianhe.yct.activity.polyline.MultiplePointDetailActivity;
import com.qianhe.yct.adapter.MultipleCoordsAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCurvedslopeStep3Binding;
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
public class CurvedSlopeStep3Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentCurvedslopeStep3Binding binding;
    private CadPickHelper cadPickHelper;
    private CurvedSlopeEntity curvedSlopeEntity;
    private CurvedSlopeEntity initEntity;
    private boolean isH5Pro;
    private ActivityResultLauncher launcher;
    private InsNavi mINS;
    private List<double[]> mList;
    private MultipleCoordsAdapter multipleCoordsAdapter;
    private List<double[]> pointsList;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment$$ExternalSyntheticLambda1
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
                CurvedSlopeStep3Fragment.$r8$lambda$wXCG0UOdjbsn94PAn9xprujALQw(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$wXCG0UOdjbsn94PAn9xprujALQw(CurvedSlopeStep3Fragment curvedSlopeStep3Fragment, String str, double[] dArr) {
        curvedSlopeStep3Fragment.curvedSlopeEntity.cadPath = str;
        curvedSlopeStep3Fragment.replaceCadPickPoints(dArr);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCurvedslopeStep3Binding.inflate(getLayoutInflater());
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
            this.initEntity = (CurvedSlopeEntity) arguments.getSerializable("initEntity");
            this.curvedSlopeEntity = (CurvedSlopeEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        initActivityResultLauncher();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.polyLineView.setWorkMode(false);
        this.binding.toothView.setVisibility(this.curvedSlopeEntity.editState == 0 ? 0 : 8);
        this.binding.tvCadImport.setEnabled(this.curvedSlopeEntity.editState == 0);
        this.binding.tvClearCoords.setEnabled(this.curvedSlopeEntity.editState == 0);
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CurvedSlopeStep3Fragment curvedSlopeStep3Fragment = this.f$0;
                curvedSlopeStep3Fragment.cadPickHelper.pickFromFile(curvedSlopeStep3Fragment.curvedSlopeEntity.cadPath, -1, CadEntityChooseIntent.flattenPoints(curvedSlopeStep3Fragment.mList));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return CurvedSlopeStep3Fragment.$r8$lambda$AU7Rv9Mj5IMgVo_dd2_4aKTS0iQ(this.f$0, view);
            }
        });
        this.binding.tvClearCoords.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.confirmClearAllCoords();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{((double[]) CurvedSlopeStep3Fragment.this.mList.get(0))[0], ((double[]) CurvedSlopeStep3Fragment.this.mList.get(0))[1], ((double[]) CurvedSlopeStep3Fragment.this.mList.get(0))[2]}, new double[]{((double[]) CurvedSlopeStep3Fragment.this.mList.get(CurvedSlopeStep3Fragment.this.mList.size() - 1))[0], ((double[]) CurvedSlopeStep3Fragment.this.mList.get(CurvedSlopeStep3Fragment.this.mList.size() - 1))[1], ((double[]) CurvedSlopeStep3Fragment.this.mList.get(CurvedSlopeStep3Fragment.this.mList.size() - 1))[2]});
                if (TextUtils.isEmpty(CurvedSlopeStep3Fragment.this.curvedSlopeEntity.coordsListJson)) {
                    ((BaseActivity) CurvedSlopeStep3Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep3Fragment.this.getString(R$string.please_collect_coordinates), CurvedSlopeStep3Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (dCalculateDistanceGAUSS < 0.1d) {
                    ((BaseActivity) CurvedSlopeStep3Fragment.this.requireActivity()).showTipDialog(CurvedSlopeStep3Fragment.this.getString(R$string.start_end_cannot_coincide), CurvedSlopeStep3Fragment.this.getString(R$string.ok), null);
                    return;
                }
                CurvedSlopeStep3Fragment curvedSlopeStep3Fragment = CurvedSlopeStep3Fragment.this;
                curvedSlopeStep3Fragment.createEntity(curvedSlopeStep3Fragment.curvedSlopeEntity);
                if (CurvedSlopeStep3Fragment.this.curvedSlopeEntity.id == 0) {
                    CurvedSlopeStep3Fragment.this.curvedSlopeEntity.id = DatabaseManager.getInstance(CurvedSlopeStep3Fragment.this.requireContext()).insert(CurvedSlopeStep3Fragment.this.curvedSlopeEntity);
                    CurvedSlopeStep3Fragment.this.next();
                    return;
                }
                if (!CurvedSlopeStep3Fragment.this.initEntity.equals(CurvedSlopeStep3Fragment.this.curvedSlopeEntity)) {
                    CurvedSlopeStep3Fragment.this.curvedSlopeEntity.updateTime = System.currentTimeMillis() / 1000;
                    DatabaseManager.getInstance(CurvedSlopeStep3Fragment.this.requireContext()).updateEntityById(CurvedSlopeStep3Fragment.this.curvedSlopeEntity);
                    NetworkUserLoader.getInstance().modifyProject(CurvedSlopeStep3Fragment.this.mINS, CurvedSlopeStep3Fragment.this.curvedSlopeEntity);
                }
                CurvedSlopeStep3Fragment.this.next();
            }
        });
        this.binding.rcvCoords.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.mList = new ArrayList();
        MultipleCoordsAdapter multipleCoordsAdapter = new MultipleCoordsAdapter(requireActivity(), this.mList, this.curvedSlopeEntity.editState);
        this.multipleCoordsAdapter = multipleCoordsAdapter;
        this.binding.rcvCoords.setAdapter(multipleCoordsAdapter);
        this.multipleCoordsAdapter.setOnActionListener(new MultipleCoordsAdapter.OnActionListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.3
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
                Intent intent = new Intent(CurvedSlopeStep3Fragment.this.requireActivity(), (Class<?>) MultiplePointDetailActivity.class);
                intent.putExtra("coordsListJson", CurvedSlopeStep3Fragment.this.curvedSlopeEntity.coordsListJson);
                intent.putExtra("position", i);
                intent.putExtra("name", str);
                intent.putExtra("cadPath", CurvedSlopeStep3Fragment.this.curvedSlopeEntity.cadPath);
                CurvedSlopeStep3Fragment.this.launcher.launch(intent);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onDel(int i) {
                CurvedSlopeStep3Fragment.this.binding.polyLineView.removePoint(i);
                CurvedSlopeStep3Fragment.this.curvedSlopeEntity.coordsListJson = new Gson().toJson(CurvedSlopeStep3Fragment.this.mList);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$AU7Rv9Mj5IMgVo_dd2_4aKTS0iQ(CurvedSlopeStep3Fragment curvedSlopeStep3Fragment, View view) {
        curvedSlopeStep3Fragment.cadPickHelper.pickFromFile(-1);
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        this.binding.tvCollectType.setText(this.curvedSlopeEntity.subType == 0 ? R$string.collect_slope_top_curves : R$string.collect_slope_bottom_curve);
        this.multipleCoordsAdapter.clear();
        this.binding.polyLineView.clearPoints();
        List<double[]> list = (List) new Gson().fromJson(this.curvedSlopeEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.4
        }.getType());
        this.pointsList = list;
        if (list == null || list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            this.pointsList = arrayList;
            CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
            arrayList.add(new double[]{curvedSlopeEntity.east1, curvedSlopeEntity.north1, curvedSlopeEntity.elev1});
        } else {
            this.pointsList.remove(0);
            List<double[]> list2 = this.pointsList;
            CurvedSlopeEntity curvedSlopeEntity2 = this.curvedSlopeEntity;
            list2.add(0, new double[]{curvedSlopeEntity2.east1, curvedSlopeEntity2.north1, curvedSlopeEntity2.elev1});
        }
        List<double[]> list3 = this.pointsList;
        if (list3 != null) {
            Iterator<double[]> it = list3.iterator();
            while (it.hasNext()) {
                addPoint(it.next(), false);
            }
        }
        this.curvedSlopeEntity.coordsListJson = new Gson().toJson(this.pointsList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity(CurvedSlopeEntity curvedSlopeEntity) {
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            curvedSlopeEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            curvedSlopeEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            curvedSlopeEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) CurvedSlopeWorkActivity.class);
        intent.putExtra("id", this.curvedSlopeEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CurvedSlopeStep3Fragment.$r8$lambda$t1odNjqdhNRqr1_MlS_oycdKBeU(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$t1odNjqdhNRqr1_MlS_oycdKBeU(CurvedSlopeStep3Fragment curvedSlopeStep3Fragment, ActivityResult activityResult) {
        Intent data;
        curvedSlopeStep3Fragment.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        String stringExtra = data.getStringExtra("coordsListJson");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        curvedSlopeStep3Fragment.curvedSlopeEntity.coordsListJson = stringExtra;
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        int intExtra = data.getIntExtra("position", 0);
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                curvedSlopeStep3Fragment.curvedSlopeEntity.corsMount = stringArrayExtra[6];
            }
        }
        String stringExtra2 = data.getStringExtra("cadPath");
        if (stringExtra2 != null) {
            curvedSlopeStep3Fragment.curvedSlopeEntity.cadPath = stringExtra2;
        }
        List list = (List) new Gson().fromJson(curvedSlopeStep3Fragment.curvedSlopeEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.5
        }.getType());
        if (list == null || list.isEmpty()) {
            return;
        }
        curvedSlopeStep3Fragment.multipleCoordsAdapter.clear();
        curvedSlopeStep3Fragment.binding.polyLineView.clearPoints();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            curvedSlopeStep3Fragment.addPoint((double[]) it.next(), true);
        }
        if (intExtra == 0) {
            curvedSlopeStep3Fragment.curvedSlopeEntity.east1 = ((double[]) list.get(0))[0];
            curvedSlopeStep3Fragment.curvedSlopeEntity.north1 = ((double[]) list.get(0))[1];
            curvedSlopeStep3Fragment.curvedSlopeEntity.elev1 = ((double[]) list.get(0))[2];
            double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic((double[]) list.get(0));
            CurvedSlopeEntity curvedSlopeEntity = curvedSlopeStep3Fragment.curvedSlopeEntity;
            curvedSlopeEntity.lon1 = dArrConvertGAUSSXYToGeodetic[0];
            curvedSlopeEntity.lat1 = dArrConvertGAUSSXYToGeodetic[1];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPoint(double[] dArr, boolean z) {
        this.multipleCoordsAdapter.addCoords(dArr);
        this.binding.polyLineView.addPoint(dArr);
        this.binding.tvContinue.setEnabled(this.mList.size() > 1);
        this.curvedSlopeEntity.coordsListJson = new Gson().toJson(this.mList);
        if (!z || this.multipleCoordsAdapter.getItemCount() <= 0) {
            return;
        }
        this.binding.rcvCoords.post(new Runnable() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.rcvCoords.smoothScrollToPosition(r0.multipleCoordsAdapter.getItemCount() - 1);
            }
        });
    }

    private void replaceCadPickPoints(double[] dArr) {
        this.multipleCoordsAdapter.clear();
        this.binding.polyLineView.clearPoints();
        if (dArr == null || dArr.length < 3) {
            CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
            curvedSlopeEntity.cadPath = "";
            curvedSlopeEntity.coordsListJson = new Gson().toJson(this.mList);
            this.binding.tvContinue.setEnabled(this.mList.size() > 1);
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
            addPoint(new double[]{dArr[i2], dArr[i2 + 1], dArr[i2 + 2]}, i == length + (-1));
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmClearAllCoords() {
        List<double[]> list = this.mList;
        if (list == null || list.isEmpty()) {
            return;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.clear_list_confirm), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.6
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                CurvedSlopeStep3Fragment.this.clearAllCoords();
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
        List<double[]> list2 = this.pointsList;
        if (list2 != null) {
            list2.clear();
        }
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        curvedSlopeEntity.cadPath = "";
        curvedSlopeEntity.coordsListJson = new Gson().toJson(this.mList);
        this.binding.tvContinue.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        if (curvedSlopeEntity.id == 0) {
            curvedSlopeEntity.cadPath = "";
        }
    }

    private void initObserve() {
        ((CurvedSlopeCreateActivity) requireActivity()).observeCoordsStep3().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !CurvedSlopeStep3Fragment.this.isAdded()) {
                    return;
                }
                CurvedSlopeStep3Fragment.this.clearCadPath();
                CurvedSlopeStep3Fragment.this.addPoint(dArr, true);
            }
        });
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.CurvedSlopeStep3Fragment.8
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                CurvedSlopeStep3Fragment.this.clearCadPath();
                CurvedSlopeStep3Fragment.this.curvedSlopeEntity.shovelTipType = 0;
                ((CurvedSlopeCreateActivity) CurvedSlopeStep3Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                CurvedSlopeStep3Fragment.this.clearCadPath();
                CurvedSlopeStep3Fragment.this.curvedSlopeEntity.shovelTipType = i;
                ((CurvedSlopeCreateActivity) CurvedSlopeStep3Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                CurvedSlopeStep3Fragment.this.clearCadPath();
                if (dArr != null) {
                    CurvedSlopeStep3Fragment.this.addPoint(dArr, true);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                CurvedSlopeStep3Fragment.this.curvedSlopeEntity.shovelTipType = i;
            }
        };
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
