package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.arabitraryline.ArbitrarylineCreateActivity;
import com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentArbitrarylineCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.DitchTypeDropdown;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ArbitrarylineCreateFragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentArbitrarylineCreateBinding binding;
    private CadPickHelper cadPickHelper;
    private ArbitraryLineEntity initEntity;
    private boolean isH5Pro;
    private ArbitraryLineEntity mArbitraryLineEntity;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment$$ExternalSyntheticLambda2
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
                ArbitrarylineCreateFragment.m2190$r8$lambda$vl5JB5Rf0BptkzBqOlUgQJdxo(this.f$0, str, dArr);
            }
        });
    }

    /* renamed from: $r8$lambda$vl5JB5Rf-0Bptk-zBqOlUgQJdxo, reason: not valid java name */
    public static /* synthetic */ void m2190$r8$lambda$vl5JB5Rf0BptkzBqOlUgQJdxo(ArbitrarylineCreateFragment arbitrarylineCreateFragment, String str, double[] dArr) {
        arbitrarylineCreateFragment.mArbitraryLineEntity.cadPath = str;
        arbitrarylineCreateFragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentArbitrarylineCreateBinding.inflate(getLayoutInflater());
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
            this.initEntity = (ArbitraryLineEntity) arguments.getSerializable("initEntity");
            this.mArbitraryLineEntity = (ArbitraryLineEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
    }

    private void initView() {
        this.binding.unitDropdown.initUnit(requireContext(), getGlobalUnit());
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ArbitrarylineCreateFragment.this.requireActivity()).showTipDialog(ArbitrarylineCreateFragment.this.getString(R$string.reset_data), ArbitrarylineCreateFragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ArbitrarylineCreateFragment.this.mArbitraryLineEntity.east = ArbitrarylineCreateFragment.this.initEntity.east;
                        ArbitrarylineCreateFragment.this.mArbitraryLineEntity.north = ArbitrarylineCreateFragment.this.initEntity.north;
                        ArbitrarylineCreateFragment.this.mArbitraryLineEntity.elev = ArbitrarylineCreateFragment.this.initEntity.elev;
                        ArbitrarylineCreateFragment.this.mArbitraryLineEntity.cadPath = ArbitrarylineCreateFragment.this.initEntity.cadPath;
                        ArbitrarylineCreateFragment arbitrarylineCreateFragment = ArbitrarylineCreateFragment.this;
                        arbitrarylineCreateFragment.showCoords(arbitrarylineCreateFragment.initEntity.east, ArbitrarylineCreateFragment.this.initEntity.north, ArbitrarylineCreateFragment.this.initEntity.elev);
                    }
                });
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArbitrarylineCreateFragment arbitrarylineCreateFragment = this.f$0;
                arbitrarylineCreateFragment.cadPickHelper.pickFromFile(arbitrarylineCreateFragment.mArbitraryLineEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(arbitrarylineCreateFragment.binding.edtEast.getNumericValue(), arbitrarylineCreateFragment.binding.edtNorth.getNumericValue(), arbitrarylineCreateFragment.binding.edtElev.getNumericValue()));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ArbitrarylineCreateFragment.$r8$lambda$pDwd_9wG_VFD8BH9tCjcIIvIuHk(this.f$0, view);
            }
        });
        this.binding.fillDigType.setOnTypetSelectedListener(new DitchTypeDropdown.OnTypeSelectedListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.2
            @Override // com.qianhe.yct.view.DitchTypeDropdown.OnTypeSelectedListener
            public void onTypeSelected(int i) {
                if (ArbitrarylineCreateFragment.this.mArbitraryLineEntity.depth != 0.0d) {
                    ArbitrarylineCreateFragment.this.mArbitraryLineEntity.depth = i == 0 ? -Math.abs(ArbitrarylineCreateFragment.this.mArbitraryLineEntity.depth) : Math.abs(ArbitrarylineCreateFragment.this.mArbitraryLineEntity.depth);
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = ArbitrarylineCreateFragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = ArbitrarylineCreateFragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = ArbitrarylineCreateFragment.this.binding.edtElev.getNumericValue();
                if (ArbitrarylineCreateFragment.this.binding.edtEast.getNumericValue() == 0.0d && ArbitrarylineCreateFragment.this.binding.edtNorth.getNumericValue() == 0.0d && ArbitrarylineCreateFragment.this.binding.edtElev.getNumericValue() == 0.0d) {
                    ((BaseActivity) ArbitrarylineCreateFragment.this.requireActivity()).showTipDialog(ArbitrarylineCreateFragment.this.getString(R$string.please_collect_coordinates), ArbitrarylineCreateFragment.this.getString(R$string.ok), null);
                    return;
                }
                if (!ArbitrarylineCreateFragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) ArbitrarylineCreateFragment.this.requireActivity()).showTipDialog(ArbitrarylineCreateFragment.this.getString(R$string.please_confirm_matches_engineering), ArbitrarylineCreateFragment.this.getString(R$string.ok), null);
                    return;
                }
                if (ArbitrarylineCreateFragment.this.binding.edtRatio.getNumericValue() == 0.0d) {
                    ((BaseActivity) ArbitrarylineCreateFragment.this.requireActivity()).showTipDialog(ArbitrarylineCreateFragment.this.getString(R$string.please_enter_slope_ratio), ArbitrarylineCreateFragment.this.getString(R$string.ok), null);
                    return;
                }
                ArbitrarylineCreateFragment arbitrarylineCreateFragment = ArbitrarylineCreateFragment.this;
                arbitrarylineCreateFragment.createEntity(arbitrarylineCreateFragment.mArbitraryLineEntity);
                if (ArbitrarylineCreateFragment.this.mArbitraryLineEntity.id == 0) {
                    ArbitrarylineCreateFragment.this.mArbitraryLineEntity.id = DatabaseManager.getInstance(ArbitrarylineCreateFragment.this.requireContext()).insert(ArbitrarylineCreateFragment.this.mArbitraryLineEntity);
                    ArbitrarylineCreateFragment.this.next();
                } else {
                    if (!ArbitrarylineCreateFragment.this.initEntity.equals(ArbitrarylineCreateFragment.this.mArbitraryLineEntity)) {
                        ArbitrarylineCreateFragment.this.mArbitraryLineEntity.updateTime = System.currentTimeMillis() / 1000;
                        DatabaseManager.getInstance(ArbitrarylineCreateFragment.this.requireContext()).updateEntityById(ArbitrarylineCreateFragment.this.mArbitraryLineEntity);
                        NetworkUserLoader.getInstance().modifyProject(ArbitrarylineCreateFragment.this.mINS, ArbitrarylineCreateFragment.this.mArbitraryLineEntity);
                    }
                    ArbitrarylineCreateFragment.this.next();
                }
            }
        });
        showData();
    }

    public static /* synthetic */ boolean $r8$lambda$pDwd_9wG_VFD8BH9tCjcIIvIuHk(ArbitrarylineCreateFragment arbitrarylineCreateFragment, View view) {
        arbitrarylineCreateFragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) ArbitrarylineWorkActivity.class);
        intent.putExtra("id", this.mArbitraryLineEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity(ArbitraryLineEntity arbitraryLineEntity) {
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtDepth.getNumericValue());
        if (this.binding.fillDigType.getCurrentType() != 1) {
            otherToMeter = -otherToMeter;
        }
        arbitraryLineEntity.depth = otherToMeter;
        arbitraryLineEntity.ratio = Double.parseDouble(formatCoords(this.binding.edtRatio.getNumericValue(), 3));
        arbitraryLineEntity.showUnit = getGlobalUnit();
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            arbitraryLineEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            arbitraryLineEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            arbitraryLineEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void showData() {
        this.binding.toothView.setCurrentType(this.mArbitraryLineEntity.shovelTipType);
        this.binding.ivReset.setVisibility(this.mArbitraryLineEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.mArbitraryLineEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.mArbitraryLineEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.mArbitraryLineEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.mArbitraryLineEntity.editState == 0);
        this.binding.edtDepth.setEnabled(this.mArbitraryLineEntity.editState == 0);
        this.binding.edtDepth.setText(this.mArbitraryLineEntity.depth == 0.0d ? "0" : formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.mArbitraryLineEntity.depth))));
        this.binding.edtRatio.setText(formatCoords(this.mArbitraryLineEntity.ratio, 3));
        this.binding.tvCadImport.setEnabled(this.mArbitraryLineEntity.editState == 0);
        this.binding.fillDigType.setEnabled(this.mArbitraryLineEntity.editState == 0);
        this.binding.fillDigType.setCurrentType(this.mArbitraryLineEntity.depth > 0.0d ? 1 : 0);
        this.binding.tvContinue.setEnabled(true);
        this.binding.lltCollect.setVisibility(0);
        ArbitraryLineEntity arbitraryLineEntity = this.mArbitraryLineEntity;
        if (arbitraryLineEntity != null) {
            showCoords(arbitraryLineEntity.east, arbitraryLineEntity.north, arbitraryLineEntity.elev);
        }
    }

    private void initObserve() {
        ((ArbitrarylineCreateActivity) requireActivity()).observeCoords().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ArbitrarylineCreateFragment.this.isAdded()) {
                    return;
                }
                ArbitrarylineCreateFragment.this.clearCadPath();
                ArbitrarylineCreateFragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        ArbitraryLineEntity arbitraryLineEntity = this.mArbitraryLineEntity;
        if (arbitraryLineEntity.id == 0) {
            arbitraryLineEntity.cadPath = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoords(double d, double d2, double d3) {
        saveInputCoordsToGeodetic(d, d2, d3);
        this.binding.edtEast.setText(d != 0.0d ? formatCoords(d, 3) : "");
        this.binding.edtNorth.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
        this.binding.edtElev.setText(d3 != 0.0d ? formatCoords(d3, 3) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveInputCoordsToGeodetic(double d, double d2, double d3) {
        ArbitraryLineEntity arbitraryLineEntity = this.mArbitraryLineEntity;
        arbitraryLineEntity.east = d;
        arbitraryLineEntity.north = d2;
        arbitraryLineEntity.elev = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ArbitraryLineEntity arbitraryLineEntity2 = this.mArbitraryLineEntity;
            arbitraryLineEntity2.lon = 0.0d;
            arbitraryLineEntity2.lat = 0.0d;
            return false;
        }
        this.mArbitraryLineEntity.lon = Double.parseDouble(formatCoords(dArr[0]));
        this.mArbitraryLineEntity.lat = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ArbitrarylineCreateFragment.6
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ArbitrarylineCreateFragment.this.clearCadPath();
                ArbitrarylineCreateFragment.this.mArbitraryLineEntity.shovelTipType = 0;
                ((ArbitrarylineCreateActivity) ArbitrarylineCreateFragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ArbitrarylineCreateFragment.this.clearCadPath();
                ArbitrarylineCreateFragment.this.mArbitraryLineEntity.shovelTipType = i;
                ((ArbitrarylineCreateActivity) ArbitrarylineCreateFragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ArbitrarylineCreateFragment.this.clearCadPath();
                if (dArr != null) {
                    ArbitrarylineCreateFragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ArbitrarylineCreateFragment.this.mArbitraryLineEntity.shovelTipType = i;
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
