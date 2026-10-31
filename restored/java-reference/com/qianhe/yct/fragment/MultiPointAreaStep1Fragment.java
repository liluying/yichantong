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
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.multipointarea.MultiPointAreaCreateActivity;
import com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity;
import com.qianhe.yct.activity.polyline.MultiplePointDetailActivity;
import com.qianhe.yct.adapter.MultipleCoordsAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentMultiPointAreaStep1Binding;
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
public class MultiPointAreaStep1Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentMultiPointAreaStep1Binding binding;
    private CadPickHelper cadPickHelper;
    private MultiPointAreaEntity initEntity;
    private ActivityResultLauncher launcher;
    private InsNavi mINS;
    private List<double[]> mList;
    private int mToothType;
    private MultiPointAreaEntity multiPointAreaEntity;
    private MultipleCoordsAdapter multipleCoordsAdapter;
    private List<double[]> pointsList;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda0
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
                MultiPointAreaStep1Fragment.$r8$lambda$UEgJpEomf7VHkELZ4U76fzBNNaU(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$UEgJpEomf7VHkELZ4U76fzBNNaU(MultiPointAreaStep1Fragment multiPointAreaStep1Fragment, String str, double[] dArr) {
        multiPointAreaStep1Fragment.multiPointAreaEntity.cadPath = str;
        multiPointAreaStep1Fragment.replaceCadPickPoints(dArr);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentMultiPointAreaStep1Binding.inflate(getLayoutInflater());
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
            this.initEntity = (MultiPointAreaEntity) arguments.getSerializable("initEntity");
            this.multiPointAreaEntity = (MultiPointAreaEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        initActivityResultLauncher();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.areaPreview.setWorkMode(false);
        this.binding.toothView.setVisibility(this.multiPointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.tvCadImport.setEnabled(this.multiPointAreaEntity.editState == 0);
        this.binding.tvClearCoords.setEnabled(this.multiPointAreaEntity.editState == 0);
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.mToothType = this.multiPointAreaEntity.shovelTipType;
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaStep1Fragment multiPointAreaStep1Fragment = this.f$0;
                multiPointAreaStep1Fragment.cadPickHelper.pickFromFile(multiPointAreaStep1Fragment.multiPointAreaEntity.cadPath, -1, CadEntityChooseIntent.flattenPoints(multiPointAreaStep1Fragment.mList));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return MultiPointAreaStep1Fragment.$r8$lambda$kl38kqAmjnjSz7lK872ctTMVvN8(this.f$0, view);
            }
        });
        this.binding.tvClearCoords.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.confirmClearAllCoords();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaStep1Fragment.$r8$lambda$Na0rFTYVis4Y9NkXEThPCYZxH6k(this.f$0, view);
            }
        });
        this.binding.rcvCoords.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.mList = new ArrayList();
        MultipleCoordsAdapter multipleCoordsAdapter = new MultipleCoordsAdapter(requireActivity(), this.mList, this.multiPointAreaEntity.editState);
        this.multipleCoordsAdapter = multipleCoordsAdapter;
        this.binding.rcvCoords.setAdapter(multipleCoordsAdapter);
        this.multipleCoordsAdapter.setOnActionListener(new MultipleCoordsAdapter.OnActionListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment.1
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
                Intent intent = new Intent(MultiPointAreaStep1Fragment.this.requireActivity(), (Class<?>) MultiplePointDetailActivity.class);
                intent.putExtra("coordsListJson", MultiPointAreaStep1Fragment.this.multiPointAreaEntity.coordsListJson);
                intent.putExtra("position", i);
                intent.putExtra("name", str);
                intent.putExtra("cadPath", MultiPointAreaStep1Fragment.this.multiPointAreaEntity.cadPath);
                MultiPointAreaStep1Fragment.this.launcher.launch(intent);
            }

            @Override // com.qianhe.yct.adapter.MultipleCoordsAdapter.OnActionListener
            public void onDel(int i) {
                MultiPointAreaStep1Fragment.this.binding.areaPreview.removePoint(i);
                MultiPointAreaStep1Fragment.this.multiPointAreaEntity.coordsListJson = new Gson().toJson(MultiPointAreaStep1Fragment.this.mList);
                MultiPointAreaStep1Fragment.this.updateContinueButton();
            }
        });
        if (TextUtils.isEmpty(this.multiPointAreaEntity.coordsListJson)) {
            return;
        }
        List<double[]> list = (List) new Gson().fromJson(this.multiPointAreaEntity.coordsListJson, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment.2
        }.getType());
        this.pointsList = list;
        if (list != null) {
            Iterator<double[]> it = list.iterator();
            while (it.hasNext()) {
                addPoint(it.next(), false);
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$kl38kqAmjnjSz7lK872ctTMVvN8(MultiPointAreaStep1Fragment multiPointAreaStep1Fragment, View view) {
        multiPointAreaStep1Fragment.cadPickHelper.pickFromFile(-1);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$Na0rFTYVis4Y9NkXEThPCYZxH6k(MultiPointAreaStep1Fragment multiPointAreaStep1Fragment, View view) {
        if (multiPointAreaStep1Fragment.binding.tvContinue.isEnabled()) {
            if (multiPointAreaStep1Fragment.mList.size() < 3) {
                ((BaseActivity) multiPointAreaStep1Fragment.requireActivity()).showToastDialog(multiPointAreaStep1Fragment.getString(R$string.least_three_points));
                return;
            }
            multiPointAreaStep1Fragment.createEntity(multiPointAreaStep1Fragment.multiPointAreaEntity);
            MultiPointAreaEntity multiPointAreaEntity = multiPointAreaStep1Fragment.multiPointAreaEntity;
            if (multiPointAreaEntity.id == 0) {
                multiPointAreaEntity.id = DatabaseManager.getInstance(multiPointAreaStep1Fragment.requireContext()).insert(multiPointAreaStep1Fragment.multiPointAreaEntity);
                multiPointAreaStep1Fragment.next();
                return;
            }
            if (!multiPointAreaStep1Fragment.initEntity.equals(multiPointAreaEntity)) {
                multiPointAreaStep1Fragment.multiPointAreaEntity.updateTime = System.currentTimeMillis() / 1000;
                DatabaseManager.getInstance(multiPointAreaStep1Fragment.requireContext()).updateEntityById(multiPointAreaStep1Fragment.multiPointAreaEntity);
                NetworkUserLoader.getInstance().modifyProject(multiPointAreaStep1Fragment.mINS, multiPointAreaStep1Fragment.multiPointAreaEntity);
            }
            multiPointAreaStep1Fragment.next();
        }
    }

    private void createEntity(MultiPointAreaEntity multiPointAreaEntity) {
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            multiPointAreaEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            multiPointAreaEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            multiPointAreaEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) MultiPointAreaWorkActivity.class);
        intent.putExtra("id", this.multiPointAreaEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPoint(double[] dArr, boolean z) {
        this.multipleCoordsAdapter.addCoords(dArr);
        this.binding.areaPreview.addPoint(dArr);
        updateContinueButton();
        this.multiPointAreaEntity.coordsListJson = new Gson().toJson(this.mList);
        if (!z || this.multipleCoordsAdapter.getItemCount() <= 0) {
            return;
        }
        this.binding.rcvCoords.post(new Runnable() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.binding.rcvCoords.smoothScrollToPosition(r0.multipleCoordsAdapter.getItemCount() - 1);
            }
        });
    }

    private void replaceCadPickPoints(double[] dArr) {
        this.multipleCoordsAdapter.clear();
        this.binding.areaPreview.clearPoints();
        if (dArr == null || dArr.length < 3) {
            MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
            multiPointAreaEntity.cadPath = "";
            multiPointAreaEntity.coordsListJson = new Gson().toJson(this.mList);
            updateContinueButton();
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
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.clear_list_confirm), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment.3
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                MultiPointAreaStep1Fragment.this.clearAllCoords();
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
        this.binding.areaPreview.clearPoints();
        MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
        multiPointAreaEntity.cadPath = "";
        multiPointAreaEntity.coordsListJson = new Gson().toJson(this.mList);
        updateContinueButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
        if (multiPointAreaEntity.id == 0) {
            multiPointAreaEntity.cadPath = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContinueButton() {
        this.binding.tvContinue.setEnabled(this.mList.size() >= 3);
    }

    private void initObserve() {
        ((MultiPointAreaCreateActivity) requireActivity()).observeCoordsStep().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MultiPointAreaStep1Fragment.$r8$lambda$RVztF3C01Pw_RmLi5jC3rcuQKhE(this.f$0, (double[]) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$RVztF3C01Pw_RmLi5jC3rcuQKhE(MultiPointAreaStep1Fragment multiPointAreaStep1Fragment, double[] dArr) {
        if (dArr == null) {
            multiPointAreaStep1Fragment.getClass();
        } else if (multiPointAreaStep1Fragment.isAdded()) {
            multiPointAreaStep1Fragment.clearCadPath();
            multiPointAreaStep1Fragment.addPoint(dArr, true);
        }
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment.4
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                MultiPointAreaStep1Fragment.this.clearCadPath();
                ((MultiPointAreaCreateActivity) MultiPointAreaStep1Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                MultiPointAreaStep1Fragment.this.clearCadPath();
                ((MultiPointAreaCreateActivity) MultiPointAreaStep1Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                MultiPointAreaStep1Fragment.this.clearCadPath();
                if (dArr != null) {
                    MultiPointAreaStep1Fragment.this.addPoint(dArr, true);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                MultiPointAreaStep1Fragment.this.mToothType = i;
                MultiPointAreaStep1Fragment.this.multiPointAreaEntity.shovelTipType = i;
            }
        };
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment$$ExternalSyntheticLambda6
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MultiPointAreaStep1Fragment.m2466$r8$lambda$4UyetqNS9dxf1UrlUJFMxXBH00(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$4UyetqNS9dxf1UrlUJFMxXB-H00, reason: not valid java name */
    public static /* synthetic */ void m2466$r8$lambda$4UyetqNS9dxf1UrlUJFMxXBH00(MultiPointAreaStep1Fragment multiPointAreaStep1Fragment, ActivityResult activityResult) {
        multiPointAreaStep1Fragment.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            return;
        }
        Intent data = activityResult.getData();
        String stringExtra = data.getStringExtra("coordsListJson");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        multiPointAreaStep1Fragment.multiPointAreaEntity.coordsListJson = stringExtra;
        String stringExtra2 = data.getStringExtra("cadPath");
        if (stringExtra2 != null) {
            multiPointAreaStep1Fragment.multiPointAreaEntity.cadPath = stringExtra2;
        }
        multiPointAreaStep1Fragment.pointsList = (List) new Gson().fromJson(stringExtra, new TypeToken<List<double[]>>() { // from class: com.qianhe.yct.fragment.MultiPointAreaStep1Fragment.5
        }.getType());
        multiPointAreaStep1Fragment.mList.clear();
        multiPointAreaStep1Fragment.multipleCoordsAdapter.notifyDataSetChanged();
        multiPointAreaStep1Fragment.binding.areaPreview.clearPoints();
        List<double[]> list = multiPointAreaStep1Fragment.pointsList;
        if (list != null) {
            Iterator<double[]> it = list.iterator();
            while (it.hasNext()) {
                multiPointAreaStep1Fragment.addPoint(it.next(), true);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi != null) {
            this.mINS = insNavi;
        }
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
