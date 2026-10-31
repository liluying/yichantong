package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.DikeEnum;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.dike.DikeWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentDikeStep3Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DikeStep3Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentDikeStep3Binding binding;
    private double cachedEast1;
    private double cachedEast2;
    private double cachedElev1;
    private double cachedElev2;
    private double cachedNorth1;
    private double cachedNorth2;
    private boolean coordsSnapshotTaken;
    private DikeEntity dikeEntity;
    private DikeEntity initEntity;
    private boolean isH5Pro;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentDikeStep3Binding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,REFSTATION,ONTIME,1"));
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
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
            this.initEntity = (DikeEntity) arguments.getSerializable("initEntity");
            this.dikeEntity = (DikeEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        if (haveCoordsChanged()) {
            recalculateFromCoords();
        } else {
            refreshData();
        }
        takeCoordsSnapshot();
    }

    private void initView() {
        this.binding.edtRatio.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.DikeStep3Fragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                DikeStep3Fragment.this.dikeEntity.ratio = DikeStep3Fragment.this.binding.edtRatio.getNumericValue();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep3Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DikeStep3Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DikeStep3Fragment.this.fillLengthFromAbIfEmpty();
                double lengthMeter = DikeStep3Fragment.this.getLengthMeter();
                if (DikeStep3Fragment.this.binding.edtWidth.getNumericValue() == 0.0d) {
                    ((BaseActivity) DikeStep3Fragment.this.requireActivity()).showToastDialog(DikeStep3Fragment.this.getString(R$string.please_enter_width));
                    return;
                }
                if (lengthMeter == 0.0d) {
                    ((BaseActivity) DikeStep3Fragment.this.requireActivity()).showToastDialog(DikeStep3Fragment.this.getString(R$string.please_enter_length));
                    return;
                }
                if (DikeStep3Fragment.this.dikeEntity.subType != DikeEnum.FLAT.getType() && DikeStep3Fragment.this.binding.lltRatio.getVisibility() == 0 && DikeStep3Fragment.this.binding.edtRatio.getNumericValue() == 0.0d) {
                    ((BaseActivity) DikeStep3Fragment.this.requireActivity()).showToastDialog(DikeStep3Fragment.this.getString(R$string.please_enter_slope_ratio_of_dike));
                    return;
                }
                DikeStep3Fragment.this.createEntity();
                if (DikeStep3Fragment.this.dikeEntity.id == 0) {
                    DikeStep3Fragment.this.dikeEntity.id = DatabaseManager.getInstance(DikeStep3Fragment.this.requireContext()).insert(DikeStep3Fragment.this.dikeEntity);
                    DikeStep3Fragment.this.next();
                } else {
                    if (!DikeStep3Fragment.this.initEntity.equals(DikeStep3Fragment.this.dikeEntity)) {
                        DikeStep3Fragment.this.dikeEntity.updateTime = System.currentTimeMillis() / 1000;
                        DatabaseManager.getInstance(DikeStep3Fragment.this.requireContext()).updateEntityById(DikeStep3Fragment.this.dikeEntity);
                        NetworkUserLoader.getInstance().modifyProject(DikeStep3Fragment.this.mINS, DikeStep3Fragment.this.dikeEntity);
                    }
                    DikeStep3Fragment.this.next();
                }
            }
        });
        showData();
    }

    private double getAbPlanarDistanceMeter() {
        DikeEntity dikeEntity = this.dikeEntity;
        return CoordsCalculUtils.calculateDistanceGAUSS(new double[]{dikeEntity.east1, dikeEntity.north1, dikeEntity.targetElevation1}, new double[]{dikeEntity.east2, dikeEntity.north2, dikeEntity.targetElevation2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getLengthMeter() {
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), Math.abs(this.binding.edtLength.getNumericValue()));
        return otherToMeter == 0.0d ? getAbPlanarDistanceMeter() : otherToMeter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillLengthFromAbIfEmpty() {
        if (this.binding.edtLength.getNumericValue() != 0.0d) {
            return;
        }
        double abPlanarDistanceMeter = getAbPlanarDistanceMeter();
        if (abPlanarDistanceMeter > 0.0d) {
            this.binding.edtLength.setText(formatCoords(formatMetertoOther(getGlobalUnit(), abPlanarDistanceMeter), 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity() {
        this.dikeEntity.showUnit = getGlobalUnit();
        this.dikeEntity.depthA = formatOtherToMeter(getGlobalUnit(), this.dikeEntity.depthA);
        this.dikeEntity.depthB = formatOtherToMeter(getGlobalUnit(), this.dikeEntity.depthB);
        this.dikeEntity.length = getLengthMeter();
        double numericValue = this.binding.edtWidth.getNumericValue();
        this.dikeEntity.width = formatOtherToMeter(getGlobalUnit(), Math.abs(numericValue));
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            this.dikeEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            this.dikeEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            this.dikeEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void showData() {
        this.binding.edtRatio.setEnabled(this.dikeEntity.editState == 0);
        this.binding.edtLength.setEnabled(this.dikeEntity.editState == 0);
        this.binding.edtWidth.setEnabled(this.dikeEntity.editState == 0);
        this.binding.lengthDropdown.initUnit(requireContext(), getGlobalUnit());
        NumericEditText numericEditText = this.binding.edtRatio;
        double d = this.dikeEntity.ratio;
        numericEditText.setText(d != 0.0d ? formatDouble(d) : "");
        double abPlanarDistanceMeter = getAbPlanarDistanceMeter();
        NumericEditText numericEditText2 = this.binding.edtLength;
        int globalUnit = getGlobalUnit();
        double d2 = this.dikeEntity.length;
        if (d2 != 0.0d) {
            abPlanarDistanceMeter = d2;
        }
        numericEditText2.setText(formatCoords(formatMetertoOther(globalUnit, abPlanarDistanceMeter), 2));
        this.binding.edtWidth.setText(this.dikeEntity.width != 0.0d ? formatDouble(formatMetertoOther(getGlobalUnit(), this.dikeEntity.width)) : "");
        refreshData();
    }

    private boolean haveCoordsChanged() {
        if (!this.coordsSnapshotTaken) {
            return haveCoordsChangedFromInit();
        }
        return haveCoordsChangedFromCache();
    }

    private boolean haveCoordsChangedFromInit() {
        return (Double.compare(this.dikeEntity.east1, this.initEntity.east1) == 0 && Double.compare(this.dikeEntity.north1, this.initEntity.north1) == 0 && Double.compare(this.dikeEntity.targetElevation1, this.initEntity.targetElevation1) == 0 && Double.compare(this.dikeEntity.east2, this.initEntity.east2) == 0 && Double.compare(this.dikeEntity.north2, this.initEntity.north2) == 0 && Double.compare(this.dikeEntity.targetElevation2, this.initEntity.targetElevation2) == 0) ? false : true;
    }

    private boolean haveCoordsChangedFromCache() {
        return (Double.compare(this.dikeEntity.east1, this.cachedEast1) == 0 && Double.compare(this.dikeEntity.north1, this.cachedNorth1) == 0 && Double.compare(this.dikeEntity.targetElevation1, this.cachedElev1) == 0 && Double.compare(this.dikeEntity.east2, this.cachedEast2) == 0 && Double.compare(this.dikeEntity.north2, this.cachedNorth2) == 0 && Double.compare(this.dikeEntity.targetElevation2, this.cachedElev2) == 0) ? false : true;
    }

    private void takeCoordsSnapshot() {
        DikeEntity dikeEntity = this.dikeEntity;
        this.cachedEast1 = dikeEntity.east1;
        this.cachedNorth1 = dikeEntity.north1;
        this.cachedElev1 = dikeEntity.targetElevation1;
        this.cachedEast2 = dikeEntity.east2;
        this.cachedNorth2 = dikeEntity.north2;
        this.cachedElev2 = dikeEntity.targetElevation2;
        this.coordsSnapshotTaken = true;
    }

    private void recalculateFromCoords() {
        this.dikeEntity.length = 0.0d;
        this.binding.edtLength.setText(formatCoords(formatMetertoOther(getGlobalUnit(), getAbPlanarDistanceMeter()), 2));
        this.dikeEntity.ratio = 0.0d;
        this.binding.edtRatio.setText("");
        refreshData();
    }

    private void refreshData() {
        this.binding.lengthDropdown.initUnit(requireContext(), getGlobalUnit());
        if (this.dikeEntity.subType == DikeEnum.FLAT.getType()) {
            this.binding.lltRatio.setVisibility(8);
            return;
        }
        DikeEntity dikeEntity = this.dikeEntity;
        int i = dikeEntity.tickA;
        if (i == 1 && dikeEntity.tickB == 1) {
            this.binding.lltRatio.setVisibility(8);
            this.dikeEntity.ratio = 0.0d;
            return;
        }
        if (i == 1 && dikeEntity.depthB != 0.0d) {
            this.binding.lltRatio.setVisibility(8);
            this.dikeEntity.ratio = 0.0d;
            return;
        }
        if (dikeEntity.tickB == 1 && dikeEntity.depthA != 0.0d) {
            this.binding.lltRatio.setVisibility(8);
            this.dikeEntity.ratio = 0.0d;
        } else if (dikeEntity.depthA != 0.0d && dikeEntity.depthB != 0.0d) {
            this.binding.lltRatio.setVisibility(8);
            this.dikeEntity.ratio = 0.0d;
        } else {
            this.binding.lltRatio.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) DikeWorkActivity.class);
        intent.putExtra("id", this.dikeEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStationEntity baseStationEntity) {
        this.baseStationInfo = baseStationEntity;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
