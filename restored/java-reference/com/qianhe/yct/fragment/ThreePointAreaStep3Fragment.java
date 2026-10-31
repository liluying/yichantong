package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.cad.CadEntityChooseIntent;
import com.qianhe.yct.activity.cad.CadPickHelper;
import com.qianhe.yct.activity.threepointarea.ThreePointAreaCreateActivity;
import com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentThreepointAreaStep3Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ThreePointAreaStep3Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentThreepointAreaStep3Binding binding;
    private CadPickHelper cadPickHelper;
    private ThreePointAreaEntity initEntity;
    private boolean isH5Pro;
    private InsNavi mINS;
    private ThreePointAreaEntity threePointAreaEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cadPickHelper = new CadPickHelper(this, new CadPickHelper.Callback() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment$$ExternalSyntheticLambda3
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
                ThreePointAreaStep3Fragment.$r8$lambda$xjtHQZWjhIDk6TsOrn2TscEwKo0(this.f$0, str, dArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$xjtHQZWjhIDk6TsOrn2TscEwKo0(ThreePointAreaStep3Fragment threePointAreaStep3Fragment, String str, double[] dArr) {
        threePointAreaStep3Fragment.threePointAreaEntity.cadPath = str;
        threePointAreaStep3Fragment.showCoords(dArr[0], dArr[1], dArr[2]);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentThreepointAreaStep3Binding.inflate(getLayoutInflater());
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
            this.initEntity = (ThreePointAreaEntity) arguments.getSerializable("initEntity");
            this.threePointAreaEntity = (ThreePointAreaEntity) arguments.getSerializable("baseProEntity");
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
        this.binding.ivReset.setVisibility(this.threePointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.toothView.setVisibility(this.threePointAreaEntity.editState == 0 ? 0 : 8);
        this.binding.edtEast.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.edtNorth.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.edtElev.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.tvCadImport.setEnabled(this.threePointAreaEntity.editState == 0);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) ThreePointAreaStep3Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep3Fragment.this.getString(R$string.reset_data), ThreePointAreaStep3Fragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ThreePointAreaStep3Fragment.this.threePointAreaEntity.east3 = ThreePointAreaStep3Fragment.this.initEntity.east3;
                        ThreePointAreaStep3Fragment.this.threePointAreaEntity.north3 = ThreePointAreaStep3Fragment.this.initEntity.north3;
                        ThreePointAreaStep3Fragment.this.threePointAreaEntity.elev3 = ThreePointAreaStep3Fragment.this.initEntity.elev3;
                        ThreePointAreaStep3Fragment.this.threePointAreaEntity.cadPath = ThreePointAreaStep3Fragment.this.initEntity.cadPath;
                        ThreePointAreaStep3Fragment threePointAreaStep3Fragment = ThreePointAreaStep3Fragment.this;
                        threePointAreaStep3Fragment.showCoords(threePointAreaStep3Fragment.initEntity.east3, ThreePointAreaStep3Fragment.this.initEntity.north3, ThreePointAreaStep3Fragment.this.initEntity.elev3);
                    }
                });
            }
        });
        this.binding.edtEast.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep3Fragment.this.threePointAreaEntity.east3 = ThreePointAreaStep3Fragment.this.binding.edtEast.getNumericValue();
            }
        });
        this.binding.edtNorth.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep3Fragment.this.threePointAreaEntity.north3 = ThreePointAreaStep3Fragment.this.binding.edtNorth.getNumericValue();
            }
        });
        this.binding.edtElev.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                ThreePointAreaStep3Fragment.this.threePointAreaEntity.elev3 = ThreePointAreaStep3Fragment.this.binding.edtElev.getNumericValue();
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        this.binding.tvCadImport.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreePointAreaStep3Fragment threePointAreaStep3Fragment = this.f$0;
                threePointAreaStep3Fragment.cadPickHelper.pickFromFile(threePointAreaStep3Fragment.threePointAreaEntity.cadPath, 1, CadEntityChooseIntent.singlePoint(threePointAreaStep3Fragment.binding.edtEast.getNumericValue(), threePointAreaStep3Fragment.binding.edtNorth.getNumericValue(), threePointAreaStep3Fragment.binding.edtElev.getNumericValue()));
            }
        });
        this.binding.tvCadImport.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ThreePointAreaStep3Fragment.$r8$lambda$__Xp9j3IDvOB9BUyLZj9geTvbW0(this.f$0, view);
            }
        });
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreePointAreaStep3Fragment.m2636$r8$lambda$3ujN2EM2dDtcPMImVMPpUy5OyI(this.f$0, view);
            }
        });
        this.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ThreePointAreaStep3Fragment.this.clearCadPath();
                ((ThreePointAreaCreateActivity) ThreePointAreaStep3Fragment.this.requireActivity()).goPointLibrary();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double numericValue = ThreePointAreaStep3Fragment.this.binding.edtEast.getNumericValue();
                double numericValue2 = ThreePointAreaStep3Fragment.this.binding.edtNorth.getNumericValue();
                double numericValue3 = ThreePointAreaStep3Fragment.this.binding.edtElev.getNumericValue();
                if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                    ((BaseActivity) ThreePointAreaStep3Fragment.this.requireActivity()).showToastDialog(ThreePointAreaStep3Fragment.this.getString(R$string.please_collect_pointC));
                    return;
                }
                if (!ThreePointAreaStep3Fragment.this.saveInputCoordsToGeodetic(numericValue, numericValue2, numericValue3)) {
                    ((BaseActivity) ThreePointAreaStep3Fragment.this.requireActivity()).showTipDialog(ThreePointAreaStep3Fragment.this.getString(R$string.please_confirm_matches_engineering), ThreePointAreaStep3Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (ThreePointAreaStep3Fragment.this.checkPointsNotCoincide()) {
                    ThreePointAreaStep3Fragment.this.createEntity();
                    if (ThreePointAreaStep3Fragment.this.threePointAreaEntity.id == 0) {
                        ThreePointAreaStep3Fragment.this.threePointAreaEntity.id = DatabaseManager.getInstance(ThreePointAreaStep3Fragment.this.requireContext()).insert(ThreePointAreaStep3Fragment.this.threePointAreaEntity);
                        ThreePointAreaStep3Fragment.this.next();
                    } else {
                        if (!ThreePointAreaStep3Fragment.this.initEntity.equals(ThreePointAreaStep3Fragment.this.threePointAreaEntity)) {
                            ThreePointAreaStep3Fragment.this.threePointAreaEntity.updateTime = System.currentTimeMillis() / 1000;
                            DatabaseManager.getInstance(ThreePointAreaStep3Fragment.this.requireContext()).updateEntityById(ThreePointAreaStep3Fragment.this.threePointAreaEntity);
                            NetworkUserLoader.getInstance().modifyProject(ThreePointAreaStep3Fragment.this.mINS, ThreePointAreaStep3Fragment.this.threePointAreaEntity);
                        }
                        ThreePointAreaStep3Fragment.this.next();
                    }
                }
            }
        });
        showData(this.threePointAreaEntity);
    }

    public static /* synthetic */ boolean $r8$lambda$__Xp9j3IDvOB9BUyLZj9geTvbW0(ThreePointAreaStep3Fragment threePointAreaStep3Fragment, View view) {
        threePointAreaStep3Fragment.cadPickHelper.pickFromFile(1);
        return false;
    }

    /* renamed from: $r8$lambda$3u-jN2EM2dDtcPMImVMPpUy5OyI, reason: not valid java name */
    public static /* synthetic */ void m2636$r8$lambda$3ujN2EM2dDtcPMImVMPpUy5OyI(ThreePointAreaStep3Fragment threePointAreaStep3Fragment, View view) {
        if (threePointAreaStep3Fragment.binding.toothView.getVisibility() == 0 && threePointAreaStep3Fragment.threePointAreaEntity.shovelTipType == -1) {
            ((BaseActivity) threePointAreaStep3Fragment.requireActivity()).showToastDialog(threePointAreaStep3Fragment.getString(R$string.please_select_shovel_tip));
        } else {
            threePointAreaStep3Fragment.handleMeasureCollectClick(threePointAreaStep3Fragment.threePointAreaEntity.shovelTipType, threePointAreaStep3Fragment.createToothCollectHandler());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtDepth.getNumericValue());
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        if (this.binding.fillDigType.getCurrentType() != 1) {
            otherToMeter = -otherToMeter;
        }
        threePointAreaEntity.depthC = otherToMeter;
        this.threePointAreaEntity.showUnit = getGlobalUnit();
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            this.threePointAreaEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            this.threePointAreaEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            this.threePointAreaEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) ThreePointAreaWorkActivity.class);
        intent.putExtra("id", this.threePointAreaEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    private void showData(ThreePointAreaEntity threePointAreaEntity) {
        this.binding.fillDigType.setCurrentType(threePointAreaEntity.depthC > 0.0d ? 1 : 0);
        this.binding.edtDepth.setText(threePointAreaEntity.depthC == 0.0d ? "0" : formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(threePointAreaEntity.depthC))));
        this.binding.toothView.setCurrentType(threePointAreaEntity.shovelTipType);
        showCoords(threePointAreaEntity.east3, threePointAreaEntity.north3, threePointAreaEntity.elev3);
    }

    private void initObserve() {
        ((ThreePointAreaCreateActivity) requireActivity()).observeCoordsStep3().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(double[] dArr) {
                if (dArr == null || !ThreePointAreaStep3Fragment.this.isAdded()) {
                    return;
                }
                ThreePointAreaStep3Fragment.this.clearCadPath();
                ThreePointAreaStep3Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCadPath() {
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        if (threePointAreaEntity.id == 0) {
            threePointAreaEntity.cadPath = "";
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
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        threePointAreaEntity.east3 = d;
        threePointAreaEntity.north3 = d2;
        threePointAreaEntity.elev3 = d3;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().convertToGeodeticInverse(d, d2, d3, dArr) || !isVaildCoords(dArr)) {
            ThreePointAreaEntity threePointAreaEntity2 = this.threePointAreaEntity;
            threePointAreaEntity2.lon3 = 0.0d;
            threePointAreaEntity2.lat3 = 0.0d;
            return false;
        }
        this.threePointAreaEntity.lon3 = Double.parseDouble(formatCoords(dArr[0]));
        this.threePointAreaEntity.lat3 = Double.parseDouble(formatCoords(dArr[1]));
        return true;
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.ThreePointAreaStep3Fragment.9
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public /* synthetic */ void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                BaseProjectFragment.ToothCollectHandler.CC.$default$onInstrumentCollectResult(this, instrumentCollectResult);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
                ThreePointAreaStep3Fragment.this.clearCadPath();
                ThreePointAreaStep3Fragment.this.threePointAreaEntity.shovelTipType = 0;
                ((ThreePointAreaCreateActivity) ThreePointAreaStep3Fragment.this.requireActivity()).goPointLibrary();
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ThreePointAreaStep3Fragment.this.clearCadPath();
                ThreePointAreaStep3Fragment.this.threePointAreaEntity.shovelTipType = i;
                ((ThreePointAreaCreateActivity) ThreePointAreaStep3Fragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) {
                ThreePointAreaStep3Fragment.this.clearCadPath();
                if (dArr != null) {
                    ThreePointAreaStep3Fragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                ThreePointAreaStep3Fragment.this.threePointAreaEntity.shovelTipType = i;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPointsNotCoincide() {
        if (Math.abs(this.threePointAreaEntity.east1 - this.binding.edtEast.getNumericValue()) < 0.1d && Math.abs(this.threePointAreaEntity.north1 - this.binding.edtNorth.getNumericValue()) < 0.1d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.ac_cannot_coincide), getString(R$string.ok), null);
            return false;
        }
        if (Math.abs(this.threePointAreaEntity.east2 - this.binding.edtEast.getNumericValue()) < 0.1d && Math.abs(this.threePointAreaEntity.north2 - this.binding.edtNorth.getNumericValue()) < 0.1d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.bc_cannot_coincide), getString(R$string.ok), null);
            return false;
        }
        ThreePointAreaEntity threePointAreaEntity = this.threePointAreaEntity;
        if (Math.abs(threePointAreaEntity.east1 - threePointAreaEntity.east2) >= 0.1d) {
            return true;
        }
        ThreePointAreaEntity threePointAreaEntity2 = this.threePointAreaEntity;
        if (Math.abs(threePointAreaEntity2.north1 - threePointAreaEntity2.north2) >= 0.1d) {
            return true;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.ab_cannot_coincide), getString(R$string.ok), null);
        return false;
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
