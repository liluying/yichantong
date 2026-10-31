package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.enums.CoordTypeEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.pointlib.PointGroupCreateActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentPointCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.PointLibCoordUtils;
import com.qianhe.yct.view.NumericEditText;
import java.util.ArrayList;
import org.greenrobot.eventbus.EventBus;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointCreateFragment extends BaseProjectFragment {
    private int applyingCoordDisplayCount;
    private FragmentPointCreateBinding binding;
    private long groupLocalId;
    private PointlibEntity initEntity;
    private InsNavi mINS;
    private int mToothType;
    private final ArrayList<String> pointSystems = new ArrayList<>();
    private PointlibEntity pointlibEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Throwable {
        this.binding = FragmentPointCreateBinding.inflate(getLayoutInflater());
        this.pointSystems.clear();
        this.pointSystems.add(getString(R$string.gauss_coordinate));
        this.pointSystems.add(getString(R$string.geodetic_coordinates));
        this.pointSystems.add(getString(R$string.ecef_coordinates));
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initEntity = (PointlibEntity) arguments.getSerializable("initEntity");
            this.pointlibEntity = (PointlibEntity) arguments.getSerializable("pointlibEntity");
            this.groupLocalId = arguments.getLong("groupLocalId", 0L);
        }
        if ((requireActivity() instanceof PointGroupCreateActivity) && this.groupLocalId <= 0) {
            this.groupLocalId = ((PointGroupCreateActivity) requireActivity()).getGroupLocalId();
        }
        if (requireActivity() instanceof PointGroupCreateActivity) {
            PointGroupCreateActivity pointGroupCreateActivity = (PointGroupCreateActivity) requireActivity();
            PointlibEntity pointlibEntity = pointGroupCreateActivity.getPointlibEntity();
            if (pointlibEntity != null) {
                this.pointlibEntity = pointlibEntity;
            }
            PointlibEntity initEntity = pointGroupCreateActivity.getInitEntity();
            if (initEntity != null) {
                this.initEntity = initEntity;
            }
        }
        initView();
        initObserve();
        return this.binding.getRoot();
    }

    private void initView() throws Throwable {
        this.binding.tvPointSystem.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PointCreateFragment.$r8$lambda$YMk0ai1yZYyUXRY22tT7cEFWAd8(this.f$0, view);
            }
        });
        this.binding.ivResetH.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PointCreateFragment pointCreateFragment = this.f$0;
                ((BaseActivity) pointCreateFragment.requireActivity()).showTipDialog(pointCreateFragment.getString(R$string.reset_data), pointCreateFragment.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment.2
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() throws Throwable {
                        PointCreateFragment.this.restoreInitGeodeticCoords();
                        if (PointCreateFragment.this.isEcefMode()) {
                            PointCreateFragment.this.refreshEcefDisplay();
                        } else {
                            PointCreateFragment pointCreateFragment2 = PointCreateFragment.this;
                            pointCreateFragment2.showCoords(pointCreateFragment2.initEntity.east, PointCreateFragment.this.initEntity.north, PointCreateFragment.this.initEntity.elev);
                        }
                    }
                });
            }
        });
        setupToothViewCollectListeners(this.binding.toothView, createToothCollectHandler());
        setupCoordManualEditWatchers();
        this.binding.tvMeasure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PointCreateFragment.$r8$lambda$ELy4DdBXfE3_sPVqEEsmb5t08zM(this.f$0, view);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.savePoint();
            }
        });
        this.binding.edtPointName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.PointCreateFragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                PointCreateFragment.this.pointlibEntity.name = editable.toString();
            }
        });
        if (!TextUtils.isEmpty(this.pointlibEntity.name)) {
            this.binding.edtPointName.setText(this.pointlibEntity.name);
        }
        getParentFragmentManager().setFragmentResultListener("defaultname", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda5
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                PointCreateFragment.m2494$r8$lambda$4AAU8OrgPKbCtIabqfEKmPSn7I(this.f$0, str, bundle);
            }
        });
        showData(this.pointlibEntity);
    }

    public static /* synthetic */ void $r8$lambda$YMk0ai1yZYyUXRY22tT7cEFWAd8(PointCreateFragment pointCreateFragment, View view) {
        pointCreateFragment.getClass();
        ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
        chooseListDialogFragment.show(pointCreateFragment.getChildFragmentManager(), "ChooseListDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, pointCreateFragment.getString(R$string.select_coordinates_system));
        bundle.putStringArrayList("list", pointCreateFragment.pointSystems);
        chooseListDialogFragment.setArguments(bundle);
        chooseListDialogFragment.setOnConfirmListener(new ChooseListDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.PointCreateFragment.1
            @Override // com.qianhe.yct.dialog.ChooseListDialogFragment.OnConfirmListener
            public void onConfirm(int i) throws Throwable {
                int coordModeIndex = PointCreateFragment.this.getCoordModeIndex();
                if (i != coordModeIndex && PointCreateFragment.this.commitInputFromMode(coordModeIndex)) {
                    PointCreateFragment.this.binding.tvPointSystem.setText((CharSequence) PointCreateFragment.this.pointSystems.get(i));
                    PointCreateFragment.this.updateCoordTypeUi(i);
                    if (PointCreateFragment.this.hasStoredCoords()) {
                        PointCreateFragment.this.refreshCoordDisplayForCurrentMode();
                    } else {
                        PointCreateFragment.this.clearCoordDisplay();
                    }
                }
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ELy4DdBXfE3_sPVqEEsmb5t08zM(PointCreateFragment pointCreateFragment, View view) {
        if (pointCreateFragment.binding.toothView.getVisibility() == 0 && pointCreateFragment.mToothType == -1) {
            ((BaseActivity) pointCreateFragment.requireActivity()).showToastDialog(pointCreateFragment.getString(R$string.please_select_shovel_tip));
        } else {
            pointCreateFragment.handleMeasureCollectClick(pointCreateFragment.mToothType, pointCreateFragment.createToothCollectHandler());
        }
    }

    /* renamed from: $r8$lambda$4AAU8OrgPKbCtIabqfEK-mPSn7I, reason: not valid java name */
    public static /* synthetic */ void m2494$r8$lambda$4AAU8OrgPKbCtIabqfEKmPSn7I(PointCreateFragment pointCreateFragment, String str, Bundle bundle) {
        pointCreateFragment.getClass();
        if ("defaultname".equals(str)) {
            if (bundle.getBoolean("confirm")) {
                pointCreateFragment.applyDefaultPointName();
            } else if (bundle.getBoolean("manual_cancel")) {
                pointCreateFragment.binding.edtPointName.requestFocus();
            }
        }
    }

    private void applyDefaultPointName() {
        if (this.groupLocalId <= 0 && (requireActivity() instanceof PointGroupCreateActivity)) {
            this.groupLocalId = ((PointGroupCreateActivity) requireActivity()).getGroupLocalId();
        }
        String strGenerateDefaultPointName = DatabaseManager.getInstance(requireContext()).generateDefaultPointName(this.groupLocalId);
        this.binding.edtPointName.setText(strGenerateDefaultPointName);
        this.pointlibEntity.name = strGenerateDefaultPointName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void savePoint() {
        String strTrim = this.binding.edtPointName.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "defaultname");
            return;
        }
        if (this.groupLocalId <= 0 && (requireActivity() instanceof PointGroupCreateActivity)) {
            PointGroupCreateActivity pointGroupCreateActivity = (PointGroupCreateActivity) requireActivity();
            if (pointGroupCreateActivity.isCreateNewGroup()) {
                long jEnsurePendingGroupCreated = pointGroupCreateActivity.ensurePendingGroupCreated();
                this.groupLocalId = jEnsurePendingGroupCreated;
                if (jEnsurePendingGroupCreated <= 0) {
                    if (TextUtils.isEmpty(pointGroupCreateActivity.getPendingGroupName())) {
                        ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.point_group_name_empty));
                        return;
                    }
                    return;
                }
            } else {
                this.groupLocalId = pointGroupCreateActivity.getGroupLocalId();
            }
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(requireContext());
        if (databaseManager.isPointNameExistsInGroup(this.groupLocalId, strTrim) && (this.pointlibEntity.id == 0 || !strTrim.equals(this.initEntity.name))) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.point_name_already_exists), getString(R$string.ok), null);
            return;
        }
        if (getCoordModeIndex() == 0 && this.binding.edtEast.getNumericValue() == 0.0d && this.binding.edtNorth.getNumericValue() == 0.0d && this.binding.edtElev.getNumericValue() == 0.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.please_collect_coordinates), getString(R$string.ok), null);
            return;
        }
        if (getCoordModeIndex() == 1 && this.binding.edtLon.getNumericValue() == 0.0d && this.binding.edtLat.getNumericValue() == 0.0d && this.binding.edtElev.getNumericValue() == 0.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.please_collect_coordinates), getString(R$string.ok), null);
            return;
        }
        if (getCoordModeIndex() == 2 && this.binding.edtEcefX.getNumericValue() == 0.0d && this.binding.edtEcefY.getNumericValue() == 0.0d && this.binding.edtEcefZ.getNumericValue() == 0.0d) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.please_collect_coordinates), getString(R$string.ok), null);
            return;
        }
        if (createEntity(this.pointlibEntity)) {
            PointlibEntity pointlibEntity = this.pointlibEntity;
            pointlibEntity.name = strTrim;
            long j = this.groupLocalId;
            pointlibEntity.groupLocalId = j;
            PointGroupEntity pointGroupEntityQueryPointGroupByLocalId = databaseManager.queryPointGroupByLocalId(j);
            if (pointGroupEntityQueryPointGroupByLocalId != null) {
                this.pointlibEntity.groupId = pointGroupEntityQueryPointGroupByLocalId.groupId;
            }
            PointlibEntity pointlibEntity2 = this.pointlibEntity;
            if (pointlibEntity2.id == 0) {
                pointlibEntity2.id = databaseManager.insertPoint(pointlibEntity2);
            } else if (!this.initEntity.equals(pointlibEntity2)) {
                databaseManager.updatePoint(this.pointlibEntity);
                uploadModifiedPoint(this.pointlibEntity);
            }
            Toast.makeText(requireContext(), R$string.saved_successfully, 0).show();
            EventBus.getDefault().post("pointSaved");
        }
    }

    private void uploadModifiedPoint(PointlibEntity pointlibEntity) {
        if (pointlibEntity == null || pointlibEntity.pointId <= 0 || TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        NetworkUserLoader.getInstance().modifyPoint(pointlibEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCoordModeIndex() {
        String string = this.binding.tvPointSystem.getText().toString();
        for (int i = 0; i < this.pointSystems.size(); i++) {
            if (this.pointSystems.get(i).equals(string)) {
                return i;
            }
        }
        return 0;
    }

    private boolean isGeodeticMode() {
        return getCoordModeIndex() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEcefMode() {
        return getCoordModeIndex() == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCoordTypeUi(int i) {
        this.binding.lltPlane.setVisibility(i == 0 ? 0 : 8);
        this.binding.lltEarth.setVisibility(i == 1 ? 0 : 8);
        this.binding.lltEcef.setVisibility(i == 2 ? 0 : 8);
        this.binding.llElev.setVisibility(i != 2 ? 0 : 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean createEntity(com.qianhe.baselib.bean.PointlibEntity r21) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.fragment.PointCreateFragment.createEntity(com.qianhe.baselib.bean.PointlibEntity):boolean");
    }

    private boolean prepareEcefEntityFromInput(PointlibEntity pointlibEntity) throws NumberFormatException {
        if (!GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.no_engineering_applied));
            return false;
        }
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().xyzToGeodeticOnly(this.binding.edtEcefX.getNumericValue(), this.binding.edtEcefY.getNumericValue(), this.binding.edtEcefZ.getNumericValue(), dArr)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.coord_convert_failed));
            return false;
        }
        pointlibEntity.geodeticLon = Double.parseDouble(formatCoords(dArr[0], 8));
        pointlibEntity.geodeticLat = Double.parseDouble(formatCoords(dArr[1], 8));
        double d = Double.parseDouble(formatCoords(dArr[2], 3));
        pointlibEntity.geodeticElev = d;
        pointlibEntity.lon = pointlibEntity.geodeticLon;
        pointlibEntity.lat = pointlibEntity.geodeticLat;
        pointlibEntity.alt = d;
        return true;
    }

    private void fillDerivedCoordsFromGeodetic(PointlibEntity pointlibEntity) throws NumberFormatException {
        pointlibEntity.geodeticLon = Double.parseDouble(formatCoords(pointlibEntity.geodeticLon, 8));
        pointlibEntity.geodeticLat = Double.parseDouble(formatCoords(pointlibEntity.geodeticLat, 8));
        double d = Double.parseDouble(formatCoords(pointlibEntity.geodeticElev, 3));
        pointlibEntity.geodeticElev = d;
        pointlibEntity.lon = pointlibEntity.geodeticLon;
        pointlibEntity.lat = pointlibEntity.geodeticLat;
        pointlibEntity.alt = d;
        double[] dArr = new double[3];
        if (GnssCoordConvertManager.getInstance().geoToAlignedProj(pointlibEntity.lon, pointlibEntity.lat, pointlibEntity.alt, dArr)) {
            pointlibEntity.east = Double.parseDouble(formatCoords(dArr[0]));
            pointlibEntity.north = Double.parseDouble(formatCoords(dArr[1]));
            pointlibEntity.elev = Double.parseDouble(formatCoords(dArr[2], 3));
        }
    }

    private void showData(PointlibEntity pointlibEntity) throws Throwable {
        this.binding.toothView.setCurrentType(this.mToothType);
        if (!TextUtils.isEmpty(pointlibEntity.systemType) && pointlibEntity.systemType.equals(CoordTypeEnum.ECEF.getType())) {
            this.binding.tvPointSystem.setText(this.pointSystems.get(2));
            updateCoordTypeUi(2);
            refreshEcefDisplay();
            return;
        }
        if ((!TextUtils.isEmpty(pointlibEntity.systemType) && pointlibEntity.systemType.equals(CoordTypeEnum.GEODETIC.getType())) || shouldPreferGeodeticDisplay(pointlibEntity)) {
            this.binding.tvPointSystem.setText(this.pointSystems.get(1));
            updateCoordTypeUi(1);
            double d = pointlibEntity.east;
            if (d != 0.0d || pointlibEntity.north != 0.0d || pointlibEntity.elev != 0.0d) {
                showCoords(d, pointlibEntity.north, pointlibEntity.elev);
                return;
            } else {
                refreshGeodeticDisplay();
                return;
            }
        }
        this.binding.tvPointSystem.setText(this.pointSystems.get(0));
        updateCoordTypeUi(0);
        showCoords(pointlibEntity.east, pointlibEntity.north, pointlibEntity.elev);
    }

    private boolean shouldPreferGeodeticDisplay(PointlibEntity pointlibEntity) {
        if (pointlibEntity == null) {
            return false;
        }
        return !((pointlibEntity.east > 0.0d ? 1 : (pointlibEntity.east == 0.0d ? 0 : -1)) != 0 || (pointlibEntity.north > 0.0d ? 1 : (pointlibEntity.north == 0.0d ? 0 : -1)) != 0 || (pointlibEntity.elev > 0.0d ? 1 : (pointlibEntity.elev == 0.0d ? 0 : -1)) != 0) && ((pointlibEntity.lon > 0.0d ? 1 : (pointlibEntity.lon == 0.0d ? 0 : -1)) != 0 || (pointlibEntity.lat > 0.0d ? 1 : (pointlibEntity.lat == 0.0d ? 0 : -1)) != 0 || (pointlibEntity.alt > 0.0d ? 1 : (pointlibEntity.alt == 0.0d ? 0 : -1)) != 0 || pointlibEntity.hasGeodeticCoords());
    }

    private void initObserve() {
        PointGroupCreateActivity pointGroupCreateActivity = (PointGroupCreateActivity) requireActivity();
        pointGroupCreateActivity.observeGnssQualityLive().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda6
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PointCreateFragment.$r8$lambda$L4Qtwv6jUB1PqxVTFjzyXDpNjNo(this.f$0, (PointGroupCreateActivity.CollectGnssQuality) obj);
            }
        });
        pointGroupCreateActivity.observeCoordsLive().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) throws Throwable {
                PointCreateFragment.$r8$lambda$HurBjBw5zIzpTzDWD7DQohzcd9g(this.f$0, (double[]) obj);
            }
        });
        pointGroupCreateActivity.observeGeodeticLive().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.PointCreateFragment$$ExternalSyntheticLambda8
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PointCreateFragment.$r8$lambda$lPbA_eSw5K7V3bsu5zL9LDRY5Eo(this.f$0, (double[]) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$L4Qtwv6jUB1PqxVTFjzyXDpNjNo(PointCreateFragment pointCreateFragment, PointGroupCreateActivity.CollectGnssQuality collectGnssQuality) {
        if (collectGnssQuality == null) {
            pointCreateFragment.getClass();
        } else if (pointCreateFragment.isAdded()) {
            pointCreateFragment.applyCollectedGnssQuality(collectGnssQuality.quality, collectGnssQuality.hdop, collectGnssQuality.vdop);
        }
    }

    public static /* synthetic */ void $r8$lambda$HurBjBw5zIzpTzDWD7DQohzcd9g(PointCreateFragment pointCreateFragment, double[] dArr) throws Throwable {
        if (dArr == null) {
            pointCreateFragment.getClass();
        } else if (pointCreateFragment.isAdded()) {
            pointCreateFragment.showCoords(dArr[0], dArr[1], dArr[2]);
        }
    }

    public static /* synthetic */ void $r8$lambda$lPbA_eSw5K7V3bsu5zL9LDRY5Eo(PointCreateFragment pointCreateFragment, double[] dArr) {
        if (dArr == null) {
            pointCreateFragment.getClass();
        } else if (pointCreateFragment.isAdded()) {
            pointCreateFragment.applyGeodetic(dArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyGeodetic(double[] dArr) {
        if (isVaildCoords(dArr)) {
            this.pointlibEntity.geodeticLon = Double.parseDouble(formatCoords(dArr[0], 8));
            this.pointlibEntity.geodeticLat = Double.parseDouble(formatCoords(dArr[1], 8));
            this.pointlibEntity.geodeticElev = Double.parseDouble(formatCoords(dArr[2], 3));
            if (hasCollectedCoords()) {
                fillGeodeticFromPlaneCoords(this.pointlibEntity);
                refreshDerivedGeodeticDisplay();
            }
        }
    }

    private void refreshDerivedGeodeticDisplay() {
        beginApplyingCoordDisplay();
        try {
            NumericEditText numericEditText = this.binding.edtLon;
            double d = this.pointlibEntity.lon;
            numericEditText.setText(d != 0.0d ? formatCoords(d, 8) : "");
            NumericEditText numericEditText2 = this.binding.edtLat;
            double d2 = this.pointlibEntity.lat;
            numericEditText2.setText(d2 != 0.0d ? formatCoords(d2, 8) : "");
            updateElevFieldDisplay(this.pointlibEntity.elev);
            if (isEcefMode()) {
                refreshEcefDisplay();
            }
            endApplyingCoordDisplay();
        } catch (Throwable th) {
            endApplyingCoordDisplay();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasStoredCoords() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        return (pointlibEntity.east == 0.0d && pointlibEntity.north == 0.0d && pointlibEntity.elev == 0.0d && pointlibEntity.lon == 0.0d && pointlibEntity.lat == 0.0d && pointlibEntity.alt == 0.0d && !pointlibEntity.hasGeodeticCoords()) ? false : true;
    }

    private boolean hasCollectedCoords() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        return (pointlibEntity.east == 0.0d && pointlibEntity.north == 0.0d && pointlibEntity.elev == 0.0d) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCoordDisplayForCurrentMode() throws Throwable {
        if (isEcefMode()) {
            if (!hasCollectedCoords() && hasLonLatAlt()) {
                fillPlaneFromGeodetic(this.pointlibEntity);
            }
            refreshEcefDisplay();
            return;
        }
        if (isGeodeticMode()) {
            if (hasCollectedCoords()) {
                PointlibEntity pointlibEntity = this.pointlibEntity;
                showCoords(pointlibEntity.east, pointlibEntity.north, pointlibEntity.elev);
                return;
            } else {
                refreshGeodeticDisplay();
                return;
            }
        }
        if (!hasCollectedCoords() && hasLonLatAlt() && !fillPlaneFromGeodetic(this.pointlibEntity)) {
            clearCoordDisplay();
        } else if (hasCollectedCoords()) {
            PointlibEntity pointlibEntity2 = this.pointlibEntity;
            showCoords(pointlibEntity2.east, pointlibEntity2.north, pointlibEntity2.elev);
        } else {
            clearCoordDisplay();
        }
    }

    private boolean hasLonLatAlt() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        return (pointlibEntity.lon == 0.0d && pointlibEntity.lat == 0.0d && pointlibEntity.alt == 0.0d && !pointlibEntity.hasGeodeticCoords()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean commitInputFromMode(int i) {
        double d;
        double d2;
        if (i == 2) {
            double numericValue = this.binding.edtEcefX.getNumericValue();
            double numericValue2 = this.binding.edtEcefY.getNumericValue();
            double numericValue3 = this.binding.edtEcefZ.getNumericValue();
            if (numericValue == 0.0d && numericValue2 == 0.0d && numericValue3 == 0.0d) {
                return true;
            }
            if (this.pointlibEntity.hasGeodeticCoords() && !isEcefInputEdited(numericValue, numericValue2, numericValue3)) {
                fillGeodeticFromPlaneCoords(this.pointlibEntity);
                return true;
            }
            if (!prepareEcefEntityFromInput(this.pointlibEntity)) {
                return false;
            }
            markManualCoordEdit();
            return fillPlaneFromGeodetic(this.pointlibEntity);
        }
        if (i == 1) {
            double numericValue4 = this.binding.edtLon.getNumericValue();
            double numericValue5 = this.binding.edtLat.getNumericValue();
            double numericValue6 = this.binding.edtElev.getNumericValue();
            if (numericValue4 == 0.0d && numericValue5 == 0.0d && numericValue6 == 0.0d) {
                return true;
            }
            if (this.pointlibEntity.hasGeodeticCoords()) {
                fillGeodeticFromPlaneCoords(this.pointlibEntity);
                if (isSameDisplayCoord(numericValue4, this.pointlibEntity.lon, 8) && isSameDisplayCoord(numericValue5, this.pointlibEntity.lat, 8)) {
                    d2 = numericValue6;
                    if (isSameDisplayCoord(d2, this.pointlibEntity.alt, 3)) {
                        return true;
                    }
                } else {
                    d2 = numericValue6;
                }
                markManualCoordEdit();
                this.pointlibEntity.lon = Double.parseDouble(formatCoords(numericValue4, 8));
                this.pointlibEntity.lat = Double.parseDouble(formatCoords(numericValue5, 8));
                this.pointlibEntity.alt = Double.parseDouble(formatCoords(d2, 3));
                PointlibEntity pointlibEntity = this.pointlibEntity;
                pointlibEntity.geodeticLon = pointlibEntity.lon;
                pointlibEntity.geodeticLat = pointlibEntity.lat;
                pointlibEntity.geodeticElev = pointlibEntity.alt;
                return fillPlaneFromGeodetic(pointlibEntity);
            }
            markManualCoordEdit();
            this.pointlibEntity.lon = Double.parseDouble(formatCoords(numericValue4, 8));
            this.pointlibEntity.lat = Double.parseDouble(formatCoords(numericValue5, 8));
            this.pointlibEntity.alt = Double.parseDouble(formatCoords(numericValue6, 3));
            PointlibEntity pointlibEntity2 = this.pointlibEntity;
            pointlibEntity2.geodeticLon = pointlibEntity2.lon;
            pointlibEntity2.geodeticLat = pointlibEntity2.lat;
            pointlibEntity2.geodeticElev = pointlibEntity2.alt;
            return fillPlaneFromGeodetic(pointlibEntity2);
        }
        double numericValue7 = this.binding.edtEast.getNumericValue();
        double numericValue8 = this.binding.edtNorth.getNumericValue();
        double numericValue9 = this.binding.edtElev.getNumericValue();
        if (numericValue7 == 0.0d && numericValue8 == 0.0d && numericValue9 == 0.0d) {
            return true;
        }
        if (this.pointlibEntity.hasGeodeticCoords()) {
            if (isSameDisplayCoord(numericValue7, this.pointlibEntity.east, 3) && isSameDisplayCoord(numericValue8, this.pointlibEntity.north, 3)) {
                d = numericValue9;
                if (isSameDisplayCoord(d, this.pointlibEntity.elev, 3)) {
                    fillGeodeticFromPlaneCoords(this.pointlibEntity);
                    return true;
                }
            } else {
                d = numericValue9;
            }
            markManualCoordEdit();
            this.pointlibEntity.east = Double.parseDouble(formatCoords(numericValue7, 3));
            this.pointlibEntity.north = Double.parseDouble(formatCoords(numericValue8, 3));
            this.pointlibEntity.elev = Double.parseDouble(formatCoords(d, 3));
            return fillGeodeticFromPlaneInverse(this.pointlibEntity);
        }
        this.pointlibEntity.east = Double.parseDouble(formatCoords(numericValue7, 3));
        this.pointlibEntity.north = Double.parseDouble(formatCoords(numericValue8, 3));
        this.pointlibEntity.elev = Double.parseDouble(formatCoords(numericValue9, 3));
        markManualCoordEdit();
        return fillGeodeticFromPlaneInverse(this.pointlibEntity);
    }

    private boolean isSameDisplayCoord(double d, double d2, int i) {
        return Double.parseDouble(formatCoords(d, i)) == Double.parseDouble(formatCoords(d2, i));
    }

    private boolean isEcefInputEdited(double d, double d2, double d3) {
        double storedLon = getStoredLon();
        double storedLat = getStoredLat();
        double storedGeodeticElev = getStoredGeodeticElev();
        if ((storedLon == 0.0d && storedLat == 0.0d && storedGeodeticElev == 0.0d) || !GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            return true;
        }
        double[] dArr = new double[3];
        return (GnssCoordConvertManager.getInstance().geodeticToXyzOnly(storedLon, storedLat, storedGeodeticElev, dArr) && isSameDisplayCoord(d, dArr[0], 4) && isSameDisplayCoord(d2, dArr[1], 4) && isSameDisplayCoord(d3, dArr[2], 4)) ? false : true;
    }

    private boolean fillPlaneFromGeodetic(PointlibEntity pointlibEntity) {
        if (!GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.no_engineering_applied));
            return false;
        }
        double d = pointlibEntity.lon;
        double d2 = (d == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.geodeticLon : d;
        double d3 = (d == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.geodeticLat : pointlibEntity.lat;
        double d4 = pointlibEntity.alt;
        if (d4 == 0.0d) {
            d4 = pointlibEntity.geodeticElev;
            if (d4 == 0.0d) {
                d4 = pointlibEntity.elev;
            }
        }
        double d5 = d4;
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().geoToAlignedProj(d2, d3, d5, dArr) || !isVaildCoords(dArr)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.coord_convert_failed));
            return false;
        }
        pointlibEntity.east = Double.parseDouble(formatCoords(dArr[0]));
        pointlibEntity.north = Double.parseDouble(formatCoords(dArr[1]));
        pointlibEntity.elev = Double.parseDouble(formatCoords(dArr[2], 3));
        return true;
    }

    private boolean fillGeodeticFromPlaneInverse(PointlibEntity pointlibEntity) throws NumberFormatException {
        if (!GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.no_engineering_applied));
            return false;
        }
        double[] dArr = new double[3];
        if (!GnssCoordConvertManager.getInstance().projToGeodeticInverse(pointlibEntity.east, pointlibEntity.north, pointlibEntity.elev, dArr) || !isVaildCoords(dArr)) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.coord_convert_failed));
            return false;
        }
        pointlibEntity.lon = Double.parseDouble(formatCoords(dArr[0], 8));
        pointlibEntity.lat = Double.parseDouble(formatCoords(dArr[1], 8));
        double d = Double.parseDouble(formatCoords(dArr[2], 3));
        pointlibEntity.alt = d;
        pointlibEntity.geodeticLon = pointlibEntity.lon;
        pointlibEntity.geodeticLat = pointlibEntity.lat;
        pointlibEntity.geodeticElev = d;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreInitGeodeticCoords() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        PointlibEntity pointlibEntity2 = this.initEntity;
        pointlibEntity.geodeticLon = pointlibEntity2.geodeticLon;
        pointlibEntity.geodeticLat = pointlibEntity2.geodeticLat;
        pointlibEntity.geodeticElev = pointlibEntity2.geodeticElev;
        pointlibEntity.lon = pointlibEntity2.lon;
        pointlibEntity.lat = pointlibEntity2.lat;
        pointlibEntity.alt = pointlibEntity2.alt;
        pointlibEntity.east = pointlibEntity2.east;
        pointlibEntity.north = pointlibEntity2.north;
        pointlibEntity.elev = pointlibEntity2.elev;
        applyCollectedGnssQuality(pointlibEntity2.quality, pointlibEntity2.hdop, pointlibEntity2.vdop);
    }

    private double getStoredLon() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        double d = pointlibEntity.lon;
        return (d == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.hasGeodeticCoords() ? this.pointlibEntity.geodeticLon : this.pointlibEntity.lon : d;
    }

    private double getStoredLat() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        if (pointlibEntity.lon == 0.0d && pointlibEntity.lat == 0.0d) {
            return pointlibEntity.hasGeodeticCoords() ? this.pointlibEntity.geodeticLat : this.pointlibEntity.lat;
        }
        return pointlibEntity.lat;
    }

    private double getStoredGeodeticElev() {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        if (pointlibEntity.lon != 0.0d || pointlibEntity.lat != 0.0d) {
            double d = pointlibEntity.alt;
            return d != 0.0d ? d : pointlibEntity.elev;
        }
        if (pointlibEntity.hasGeodeticCoords()) {
            return this.pointlibEntity.geodeticElev;
        }
        PointlibEntity pointlibEntity2 = this.pointlibEntity;
        double d2 = pointlibEntity2.alt;
        return d2 != 0.0d ? d2 : pointlibEntity2.elev;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshEcefDisplay() {
        beginApplyingCoordDisplay();
        try {
            double storedLon = getStoredLon();
            double storedLat = getStoredLat();
            double storedGeodeticElev = getStoredGeodeticElev();
            if (storedLon == 0.0d && storedLat == 0.0d && storedGeodeticElev == 0.0d) {
                this.binding.edtEcefX.setText("");
                this.binding.edtEcefY.setText("");
                this.binding.edtEcefZ.setText("");
            } else {
                if (!GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
                    this.binding.edtEcefX.setText("");
                    this.binding.edtEcefY.setText("");
                    this.binding.edtEcefZ.setText("");
                    return;
                }
                double[] dArr = new double[3];
                if (GnssCoordConvertManager.getInstance().geodeticToXyzOnly(storedLon, storedLat, storedGeodeticElev, dArr)) {
                    this.binding.edtEcefX.setText(formatCoords(dArr[0], 4));
                    this.binding.edtEcefY.setText(formatCoords(dArr[1], 4));
                    this.binding.edtEcefZ.setText(formatCoords(dArr[2], 4));
                } else {
                    this.binding.edtEcefX.setText("");
                    this.binding.edtEcefY.setText("");
                    this.binding.edtEcefZ.setText("");
                }
            }
        } finally {
            endApplyingCoordDisplay();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCoordDisplay() {
        beginApplyingCoordDisplay();
        try {
            this.binding.edtEast.setText("");
            this.binding.edtNorth.setText("");
            this.binding.edtLon.setText("");
            this.binding.edtLat.setText("");
            this.binding.edtElev.setText("");
            this.binding.edtEcefX.setText("");
            this.binding.edtEcefY.setText("");
            this.binding.edtEcefZ.setText("");
        } finally {
            endApplyingCoordDisplay();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoords(double d, double d2, double d3) throws Throwable {
        beginApplyingCoordDisplay();
        try {
            saveCoords(d, d2, d3);
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.binding.edtEast.setText(d != 0.0d ? formatCoords(d, 3) : "");
            this.binding.edtNorth.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
            if (!hasCollectedCoords()) {
                if (isGeodeticMode()) {
                    refreshGeodeticDisplay();
                } else {
                    this.binding.edtLon.setText("");
                    this.binding.edtLat.setText("");
                    this.binding.edtElev.setText("");
                }
                endApplyingCoordDisplay();
                return;
            }
            refreshDerivedGeodeticDisplay();
            endApplyingCoordDisplay();
        } catch (Throwable th2) {
            th = th2;
            Throwable th3 = th;
            endApplyingCoordDisplay();
            throw th3;
        }
    }

    private void refreshGeodeticDisplay() {
        beginApplyingCoordDisplay();
        try {
            NumericEditText numericEditText = this.binding.edtLon;
            double d = this.pointlibEntity.lon;
            numericEditText.setText(d != 0.0d ? formatCoords(d, 8) : "");
            NumericEditText numericEditText2 = this.binding.edtLat;
            double d2 = this.pointlibEntity.lat;
            numericEditText2.setText(d2 != 0.0d ? formatCoords(d2, 8) : "");
            NumericEditText numericEditText3 = this.binding.edtElev;
            double d3 = this.pointlibEntity.alt;
            numericEditText3.setText(d3 != 0.0d ? formatCoords(d3, 3) : "");
            endApplyingCoordDisplay();
        } catch (Throwable th) {
            endApplyingCoordDisplay();
            throw th;
        }
    }

    private void updateElevFieldDisplay(double d) {
        beginApplyingCoordDisplay();
        try {
            if (isGeodeticMode()) {
                NumericEditText numericEditText = this.binding.edtElev;
                double d2 = this.pointlibEntity.alt;
                numericEditText.setText(d2 != 0.0d ? formatCoords(d2, 3) : "");
            } else {
                this.binding.edtElev.setText(d != 0.0d ? formatCoords(d, 3) : "");
            }
            endApplyingCoordDisplay();
        } catch (Throwable th) {
            endApplyingCoordDisplay();
            throw th;
        }
    }

    private void saveCoords(double d, double d2, double d3) {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        pointlibEntity.east = d;
        pointlibEntity.north = d2;
        pointlibEntity.elev = Double.parseDouble(formatCoords(d3, 3));
        if (d == 0.0d && d2 == 0.0d && d3 == 0.0d) {
            return;
        }
        fillGeodeticFromPlaneCoords(this.pointlibEntity);
    }

    private void fillGeodeticFromPlaneCoords(PointlibEntity pointlibEntity) {
        if (pointlibEntity.hasGeodeticCoords() && GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            double[] dArr = new double[3];
            if (GnssCoordConvertManager.getInstance().geoToAlignedGeodetic(pointlibEntity.geodeticLon, pointlibEntity.geodeticLat, pointlibEntity.geodeticElev, dArr) && isVaildCoords(dArr)) {
                pointlibEntity.lon = Double.parseDouble(formatCoords(dArr[0], 8));
                pointlibEntity.lat = Double.parseDouble(formatCoords(dArr[1], 8));
                pointlibEntity.alt = Double.parseDouble(formatCoords(dArr[2], 3));
            }
        }
    }

    private BaseProjectFragment.ToothCollectHandler createToothCollectHandler() {
        return new BaseProjectFragment.ToothCollectHandler() { // from class: com.qianhe.yct.fragment.PointCreateFragment.4
            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goPointLibrary() {
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void goCollectCoordinates(int i) {
                ((PointGroupCreateActivity) PointCreateFragment.this.requireActivity()).goCollectCoordinates(i);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) throws Throwable {
                if (instrumentCollectResult != null) {
                    PointCreateFragment.this.applyCollectedGnssQuality(instrumentCollectResult.quality, instrumentCollectResult.hdop, instrumentCollectResult.vdop);
                    onInstrumentCollectResult(instrumentCollectResult.coords, instrumentCollectResult.geodetic);
                } else {
                    onInstrumentCollectResult(null, null);
                }
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void onInstrumentCollectResult(double[] dArr, double[] dArr2) throws Throwable {
                if (dArr == null) {
                    return;
                }
                if (PointCreateFragment.this.isVaildCoords(dArr2)) {
                    PointCreateFragment.this.applyGeodetic(dArr2);
                }
                PointCreateFragment.this.showCoords(dArr[0], dArr[1], dArr[2]);
            }

            @Override // com.qianhe.yct.base.BaseProjectFragment.ToothCollectHandler
            public void setShovelTipType(int i) {
                PointCreateFragment.this.mToothType = i;
            }
        };
    }

    private void setupCoordManualEditWatchers() {
        TextWatcher textWatcher = new TextWatcher() { // from class: com.qianhe.yct.fragment.PointCreateFragment.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                PointCreateFragment.this.markManualCoordEdit();
            }
        };
        this.binding.edtEast.addTextChangedListener(textWatcher);
        this.binding.edtNorth.addTextChangedListener(textWatcher);
        this.binding.edtElev.addTextChangedListener(textWatcher);
        this.binding.edtLon.addTextChangedListener(textWatcher);
        this.binding.edtLat.addTextChangedListener(textWatcher);
        this.binding.edtEcefX.addTextChangedListener(textWatcher);
        this.binding.edtEcefY.addTextChangedListener(textWatcher);
        this.binding.edtEcefZ.addTextChangedListener(textWatcher);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyCollectedGnssQuality(int i, double d, double d2) {
        PointlibEntity pointlibEntity = this.pointlibEntity;
        if (pointlibEntity == null) {
            return;
        }
        pointlibEntity.quality = i;
        pointlibEntity.hdop = PointLibCoordUtils.roundDop(d);
        this.pointlibEntity.vdop = PointLibCoordUtils.roundDop(d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markManualCoordEdit() {
        PointlibEntity pointlibEntity;
        if (isApplyingCoordDisplay() || (pointlibEntity = this.pointlibEntity) == null) {
            return;
        }
        pointlibEntity.quality = 0;
        pointlibEntity.hdop = 0.0d;
        pointlibEntity.vdop = 0.0d;
    }

    private void beginApplyingCoordDisplay() {
        this.applyingCoordDisplayCount++;
    }

    private void endApplyingCoordDisplay() {
        int i = this.applyingCoordDisplayCount;
        if (i > 0) {
            this.applyingCoordDisplayCount = i - 1;
        }
    }

    private boolean isApplyingCoordDisplay() {
        return this.applyingCoordDisplayCount > 0;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi != null) {
            this.mINS = insNavi;
        }
    }
}
