package com.qianhe.yct.activity;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qh.utils.DistanceUtils;
import com.qh.xcad.XCadEntity;
import com.qh.xcad.XCadItemAreaPoint;
import com.qh.xcad.XCadPoint;
import com.qh.xcad.XCadScene;
import com.qh.xcad.XCadView;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.R$style;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityCadEntityChooseBinding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CADEntityChooseActivity extends BaseActivity {
    private ActivityCadEntityChooseBinding binding;
    private String curCADFilePath;
    private CADUiPoint curCadUiPoint;
    private double gx;
    private double gy;
    private double[] initialChoosePoints;
    private CADUiEntity selectCadEntity;
    private ShowPointAdapter showPointAdapter;
    private double phoneHeading = Double.NaN;
    private boolean hasInsNaviMsg = false;
    private boolean useMaxDistancePosi = false;
    private int totalGetCount = -1;
    private final LinkedHashSet<CollectedPointRef> collectedPoints = new LinkedHashSet<>();
    private HashSet<Integer> inVisiblePointIndex = new HashSet<>();
    private double startPositionX = 5.04904674E8d;
    private double startPositionY = 3.8090673031E9d;
    private boolean single = false;
    private int second = 0;
    private Handler testHandler = new Handler(Looper.getMainLooper()) { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 1) {
                CADEntityChooseActivity.this.binding.cadView.setXCadVehiclePosition(CADEntityChooseActivity.this.startPositionX, CADEntityChooseActivity.this.startPositionY, CADEntityChooseActivity.this.phoneHeading, true);
                CADEntityChooseActivity.this.binding.cadView.setXCadExcavatorBucketPosition(CADEntityChooseActivity.this.startPositionX - 0.5d, CADEntityChooseActivity.this.startPositionY - 0.5d, CADEntityChooseActivity.this.startPositionX + 0.5d, CADEntityChooseActivity.this.startPositionY + 0.5d, CADEntityChooseActivity.this.phoneHeading);
                if (CADEntityChooseActivity.this.second >= 5) {
                    CADEntityChooseActivity.this.second = 0;
                }
                CADEntityChooseActivity.this.binding.cadView.setXCadItemAreaPoint(new XCadItemAreaPoint.XCadItemPointInfo[]{new XCadItemAreaPoint.XCadItemPointInfo(5.04884623304E8d, 3.809067503024E9d, "起点")}, true, true, true);
                CADEntityChooseActivity.this.second++;
                CADEntityChooseActivity.this.startPositionX -= 50.0d;
                CADEntityChooseActivity cADEntityChooseActivity = CADEntityChooseActivity.this;
                cADEntityChooseActivity.startPositionY = cADEntityChooseActivity.single ? CADEntityChooseActivity.this.startPositionY + 5.0d : CADEntityChooseActivity.this.startPositionY - 5.0d;
                CADEntityChooseActivity.this.single = !r2.single;
                CADEntityChooseActivity.this.testHandler.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            if (i == 2 && CADEntityChooseActivity.this.getResources().getConfiguration().orientation != 2) {
                CADEntityChooseActivity.this.setRequestedOrientation(0);
            }
        }
    };

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.testHandler.removeCallbacksAndMessages(null);
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        setTheme(R$style.Theme_CAD);
        this.binding = ActivityCadEntityChooseBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        if (readOnCreateParams()) {
            this.binding.cadView.setToleranceWorld(0.1d);
            this.binding.cadView.setCadTouchEnable(true);
            this.binding.cadView.setSelectSingleLine(true);
            this.binding.cadView.setDrawSelectedLineNumText(false);
            this.binding.cadView.setFollowVehicle(false);
            this.showPointAdapter = new ShowPointAdapter();
            this.binding.rvShowEntityPoints.setLayoutManager(new LinearLayoutManager(this));
            this.binding.rvShowEntityPoints.setAdapter(this.showPointAdapter);
            if (isRadioButton()) {
                this.binding.btnAllChoice.setVisibility(8);
                this.binding.btnRevers.setVisibility(8);
            }
            EventBus.getDefault().register(this);
            setListener();
            this.binding.cadView.setCadFilePath(this.curCADFilePath);
            if (this.binding.cadView.getScene() == null || !this.collectedPoints.isEmpty()) {
                return;
            }
            applyInitialChoosePoints();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRadioButton() {
        return this.totalGetCount == 1;
    }

    private boolean readOnCreateParams() {
        Intent intent = getIntent();
        if (intent != null) {
            this.curCADFilePath = intent.getStringExtra("cad_file_path");
            this.totalGetCount = intent.getIntExtra("cad_choose_max_count", -1);
            this.initialChoosePoints = intent.getDoubleArrayExtra("cad_initial_points");
        }
        if (this.curCADFilePath != null) {
            return true;
        }
        showTipDialog(getString(R$string.cad_invalid_path), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.2
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                CADEntityChooseActivity.this.finish();
            }
        });
        return false;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putDouble("cadview_tx", this.binding.cadView.getTx());
        bundle.putDouble("cadview_ty", this.binding.cadView.getTy());
        bundle.putDouble("cadview_scale", this.binding.cadView.getScale());
        bundle.putIntArray("collected_points", serializeCollectedPoints());
        CADUiEntity cADUiEntity = this.selectCadEntity;
        if (cADUiEntity != null) {
            bundle.putInt("entityIndex", cADUiEntity.xCadEntityIndex);
            bundle.putSerializable("show_invis_items", this.inVisiblePointIndex);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.binding.rvShowEntityPoints.getLayoutManager();
            if (linearLayoutManager != null) {
                bundle.putInt("rv_show_pos", linearLayoutManager.findFirstVisibleItemPosition());
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        int size;
        super.onRestoreInstanceState(bundle);
        XCadScene scene = this.binding.cadView.getScene();
        if (bundle.containsKey("cadview_tx")) {
            this.binding.cadView.setTxRestoreState(bundle.getDouble("cadview_tx", 0.0d));
        }
        if (bundle.containsKey("cadview_ty")) {
            this.binding.cadView.setTyRestoreState(bundle.getDouble("cadview_ty", 0.0d));
        }
        if (bundle.containsKey("cadview_scale")) {
            this.binding.cadView.setScaleRestoreState(bundle.getDouble("cadview_scale", 1.0d));
        }
        if (scene != null) {
            restoreCollectedPoints(bundle.getIntArray("collected_points"));
            int i = bundle.getInt("entityIndex", -1);
            HashSet hashSet = (HashSet) bundle.getSerializable("show_invis_items");
            if (hashSet != null) {
                this.inVisiblePointIndex.addAll(hashSet);
            }
            if (i >= 0 && i < scene.entities.size()) {
                this.binding.cadView.addSelectLine(i);
                CADUiEntity cADUiEntity = new CADUiEntity(i, scene.entities.get(i), hashSet, getCheckedPointIndicesForEntity(i));
                this.selectCadEntity = cADUiEntity;
                List<CADUiPoint> list = cADUiEntity.points;
                if (list != null) {
                    size = list.size();
                    for (CADUiPoint cADUiPoint : list) {
                        if (cADUiPoint.vis) {
                            if (cADUiPoint.check) {
                                this.binding.cadView.addSelectIndicePointCheck(this.selectCadEntity.xCadEntityIndex, cADUiPoint.xPointIndex);
                            } else {
                                this.binding.cadView.addSelectIndicePoint(this.selectCadEntity.xCadEntityIndex, cADUiPoint.xPointIndex);
                            }
                        }
                    }
                } else {
                    size = 0;
                }
                this.binding.tvTotalCount.setText("(" + size + ")");
                this.showPointAdapter.notifyDataSetChanged();
                final int i2 = bundle.getInt("rv_show_pos", 0);
                List<CADUiPoint> list2 = this.selectCadEntity.points;
                if (list2 != null && i2 >= 0 && i2 < list2.size()) {
                    this.binding.rvShowEntityPoints.post(new Runnable() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.binding.rvShowEntityPoints.smoothScrollToPosition(i2);
                        }
                    });
                }
            }
            refreshCollectedVisuals();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.cad_import);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.hasInsNaviMsg = true;
        double d = insNavi.eastM;
        this.gx = d;
        double d2 = insNavi.northM;
        this.gy = d2;
        this.binding.cadView.setXCadVehiclePosition(d, d2, insNavi.headingDegrees, true);
        this.binding.cadView.setXCadExcavatorBucketPosition(insNavi.east, insNavi.north, insNavi.eastR, insNavi.northR, insNavi.headingDegrees);
    }

    private void setListener() {
        this.binding.cadView.setOnLoadCadFileListener(new XCadView.OnLoadCadFileListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.3
            @Override // com.qh.xcad.XCadView.OnLoadCadFileListener
            public void onLoadCadFileFinished(boolean z) {
                if (!z) {
                    CADEntityChooseActivity cADEntityChooseActivity = CADEntityChooseActivity.this;
                    cADEntityChooseActivity.showTipDialog(cADEntityChooseActivity.getString(R$string.cad_failed_to_open_cad_file), CADEntityChooseActivity.this.getString(R$string.close), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.3.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z2) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            CADEntityChooseActivity.this.finish();
                        }
                    });
                } else {
                    CADEntityChooseActivity.this.applyInitialChoosePoints();
                }
            }
        });
        this.binding.cadView.setOnEntityClickListener(new XCadView.OnEntityClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.4
            @Override // com.qh.xcad.XCadView.OnEntityClickListener
            public void onEntityClick(int i, XCadEntity xCadEntity) {
                if (xCadEntity != null) {
                    if (CADEntityChooseActivity.this.selectCadEntity == null || CADEntityChooseActivity.this.selectCadEntity.xCadEntity != xCadEntity) {
                        CADEntityChooseActivity.this.curCadUiPoint = null;
                        CADEntityChooseActivity.this.binding.cadView.clearSelectLightPoint();
                        CADEntityChooseActivity.this.inVisiblePointIndex.clear();
                        CADEntityChooseActivity cADEntityChooseActivity = CADEntityChooseActivity.this;
                        cADEntityChooseActivity.selectCadEntity = new CADUiEntity(i, xCadEntity, null, cADEntityChooseActivity.getCheckedPointIndicesForEntity(i));
                        CADEntityChooseActivity.this.refreshCollectedVisuals();
                        CADEntityChooseActivity.this.notifyLinePointTotalViewVis();
                    }
                }
            }

            @Override // com.qh.xcad.XCadView.OnEntityClickListener
            public void onEntityCancel(int i, XCadEntity xCadEntity) {
                if (CADEntityChooseActivity.this.selectCadEntity == null || CADEntityChooseActivity.this.selectCadEntity.xCadEntityIndex != i) {
                    return;
                }
                CADEntityChooseActivity.this.inVisiblePointIndex.clear();
                CADEntityChooseActivity.this.curCadUiPoint = null;
                CADEntityChooseActivity.this.selectCadEntity = null;
                CADEntityChooseActivity.this.refreshCollectedVisuals();
                CADEntityChooseActivity.this.notifyLinePointTotalViewVis();
            }

            @Override // com.qh.xcad.XCadView.OnEntityClickListener
            public void onEntityClear() {
                CADEntityChooseActivity.this.inVisiblePointIndex.clear();
                CADEntityChooseActivity.this.curCadUiPoint = null;
                if (CADEntityChooseActivity.this.selectCadEntity != null) {
                    CADEntityChooseActivity.this.selectCadEntity = null;
                    CADEntityChooseActivity.this.binding.cadView.clearSelectLightPoint();
                    CADEntityChooseActivity.this.notifyLinePointTotalViewVis();
                }
                CADEntityChooseActivity.this.refreshCollectedVisuals();
            }
        });
        this.binding.cadView.setOnMarkerClickListener(new XCadView.OnMarkerClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.5
            @Override // com.qh.xcad.XCadView.OnMarkerClickListener
            public void onMarkerClick(final int i, final int i2) {
                boolean zIsCollected;
                final CADUiPoint cADUiPointFindCurrentEntityPoint = CADEntityChooseActivity.this.findCurrentEntityPoint(i, i2);
                if (cADUiPointFindCurrentEntityPoint != null) {
                    zIsCollected = cADUiPointFindCurrentEntityPoint.check;
                } else {
                    zIsCollected = CADEntityChooseActivity.this.isCollected(i, i2);
                }
                if ((cADUiPointFindCurrentEntityPoint != null || zIsCollected) && i2 >= 0) {
                    if (!zIsCollected) {
                        if (!CADEntityChooseActivity.this.isRadioButton() && CADEntityChooseActivity.this.totalGetCount > 0 && CADEntityChooseActivity.this.collectedPoints.size() >= CADEntityChooseActivity.this.totalGetCount) {
                            CADEntityChooseActivity cADEntityChooseActivity = CADEntityChooseActivity.this;
                            Toast.makeText(cADEntityChooseActivity, cADEntityChooseActivity.getString(R$string.cad_out_of_the_capture_range), 1).show();
                            return;
                        } else if (CADEntityChooseActivity.this.checkMaxDisPointTips(i, i2, new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.5.1
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                CADEntityChooseActivity.this.useMaxDistancePosi = true;
                                CADEntityChooseActivity.this.clearRadioButtonClickStatus();
                                CADEntityChooseActivity.this.checkPoint(i, i2);
                                CADEntityChooseActivity.this.showPointAdapter.notifyDataSetChanged();
                                if (cADUiPointFindCurrentEntityPoint != null) {
                                    CADEntityChooseActivity.this.binding.rvShowEntityPoints.smoothScrollToPosition(i2);
                                }
                            }
                        })) {
                            return;
                        }
                    }
                    if (!zIsCollected) {
                        CADEntityChooseActivity.this.clearRadioButtonClickStatus();
                        CADEntityChooseActivity.this.checkPoint(i, i2);
                    } else {
                        CADEntityChooseActivity.this.uncheckPoint(i, i2);
                    }
                    CADEntityChooseActivity.this.showPointAdapter.notifyDataSetChanged();
                    if (cADUiPointFindCurrentEntityPoint != null) {
                        CADEntityChooseActivity.this.binding.rvShowEntityPoints.smoothScrollToPosition(i2);
                    }
                }
            }
        });
        this.binding.cadView.setOnCarSelectedEntityListener(new XCadView.OnCarSelectedEntityListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.6
            @Override // com.qh.xcad.XCadView.OnCarSelectedEntityListener
            public void onEntitySelect(int i, XCadEntity xCadEntity) {
            }
        });
        this.binding.ivCadViewResetScale.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADEntityChooseActivity.this.binding.cadView.fitToScreen();
            }
        });
        this.binding.ivMyLocation.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADEntityChooseActivity.this.binding.cadView.centerVehiclePointLocation();
            }
        });
        this.binding.btnAllVis.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADEntityChooseActivity.this.setAllCadShowPointVis(true);
            }
        });
        this.binding.btnAllInvis.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADEntityChooseActivity.this.setAllCadShowPointVis(false);
            }
        });
        this.binding.btnAllChoice.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADEntityChooseActivity.this.setAllCadShowPointCheck(true);
            }
        });
        this.binding.btnRevers.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CADEntityChooseActivity.this.setAllCadShowPointRever();
            }
        });
        this.binding.btnFinishChoose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CADEntityChooseActivity.this.totalGetCount > 0 && CADEntityChooseActivity.this.collectedPoints.size() < CADEntityChooseActivity.this.totalGetCount) {
                    CADEntityChooseActivity cADEntityChooseActivity = CADEntityChooseActivity.this;
                    Toast.makeText(cADEntityChooseActivity, cADEntityChooseActivity.getString(R$string.cad_not_enough_coordinate_points_were_selected), 1).show();
                } else {
                    CADEntityChooseActivity cADEntityChooseActivity2 = CADEntityChooseActivity.this;
                    cADEntityChooseActivity2.showTipDialog(cADEntityChooseActivity2.getString(R$string.cad_has_site_selection_been_completed), CADEntityChooseActivity.this.getString(R$string.cad_done), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.13.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            double[] dArrBuildCollectedResult = CADEntityChooseActivity.this.buildCollectedResult();
                            if (dArrBuildCollectedResult == null) {
                                return;
                            }
                            Intent intent = new Intent();
                            intent.putExtra("cad_result_choose_point", dArrBuildCollectedResult);
                            CADEntityChooseActivity.this.setResult(-1, intent);
                            CADEntityChooseActivity.this.finish();
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkMaxDisPointTips(int i, int i2, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        XCadPoint scenePoint;
        if (this.useMaxDistancePosi || !this.hasInsNaviMsg || (scenePoint = this.binding.cadView.getScenePoint(i, i2)) == null || 2000.0d >= DistanceUtils.distance2D(new DistanceUtils.Point2D(this.gx, this.gy), new DistanceUtils.Point2D(scenePoint.x, scenePoint.y))) {
            return false;
        }
        showTipDialog(LanguagePrefs.getString(this, R$string.cad_point_max_distance_tips, Double.valueOf(2000.0d)), getString(R$string.cad_continue), getString(R$string.cad_current_selection_cancel), "", onConfirmListener);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashSet<Integer> getCheckedPointIndicesForEntity(int i) {
        HashSet<Integer> hashSet = new HashSet<>();
        Iterator<CollectedPointRef> it = this.collectedPoints.iterator();
        while (it.hasNext()) {
            CollectedPointRef next = it.next();
            if (next.entityIndex == i) {
                hashSet.add(Integer.valueOf(next.pointIndex));
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCollected(int i, int i2) {
        return this.collectedPoints.contains(new CollectedPointRef(i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CADUiPoint findCurrentEntityPoint(int i, int i2) {
        List<CADUiPoint> list;
        CADUiEntity cADUiEntity = this.selectCadEntity;
        if (cADUiEntity == null || (list = cADUiEntity.points) == null || cADUiEntity.xCadEntityIndex != i || i2 < 0 || i2 >= list.size()) {
            return null;
        }
        return this.selectCadEntity.points.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPoint(int i, int i2) {
        this.collectedPoints.add(new CollectedPointRef(i, i2));
        CADUiPoint cADUiPointFindCurrentEntityPoint = findCurrentEntityPoint(i, i2);
        if (cADUiPointFindCurrentEntityPoint != null) {
            cADUiPointFindCurrentEntityPoint.check = true;
        }
        refreshCollectedVisuals();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uncheckPoint(int i, int i2) {
        this.collectedPoints.remove(new CollectedPointRef(i, i2));
        CADUiPoint cADUiPointFindCurrentEntityPoint = findCurrentEntityPoint(i, i2);
        if (cADUiPointFindCurrentEntityPoint != null) {
            cADUiPointFindCurrentEntityPoint.check = false;
            if (cADUiPointFindCurrentEntityPoint.vis) {
                this.binding.cadView.addSelectIndicePoint(i, i2);
            } else {
                this.binding.cadView.removeSelectIndicePoint(i, i2);
            }
        } else {
            this.binding.cadView.removeSelectIndicePoint(i, i2);
        }
        refreshCollectedVisuals();
    }

    private void removeCollectedForEntity(int i) {
        for (CollectedPointRef collectedPointRef : new ArrayList(this.collectedPoints)) {
            if (collectedPointRef.entityIndex == i) {
                this.collectedPoints.remove(collectedPointRef);
                CADUiPoint cADUiPointFindCurrentEntityPoint = findCurrentEntityPoint(collectedPointRef.entityIndex, collectedPointRef.pointIndex);
                if (cADUiPointFindCurrentEntityPoint != null) {
                    cADUiPointFindCurrentEntityPoint.check = false;
                }
                this.binding.cadView.removeSelectIndicePoint(collectedPointRef.entityIndex, collectedPointRef.pointIndex);
            }
        }
        refreshCollectedVisuals();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCollectedVisuals() {
        restoreCollectedPointMarkers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyInitialChoosePoints() {
        XCadScene scene;
        List<XCadEntity> list;
        int i;
        double[] dArr = this.initialChoosePoints;
        if (dArr == null || dArr.length < 3 || !this.collectedPoints.isEmpty() || (scene = this.binding.cadView.getScene()) == null || (list = scene.entities) == null || list.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        int length = this.initialChoosePoints.length / 3;
        int i2 = this.totalGetCount;
        if (i2 > 0) {
            length = Math.min(length, i2);
        }
        int i3 = 0;
        while (i3 < length) {
            double[] dArr2 = this.initialChoosePoints;
            int i4 = i3 * 3;
            double d = dArr2[i4];
            int i5 = 1;
            double d2 = dArr2[i4 + 1];
            int i6 = -1;
            double d3 = Double.POSITIVE_INFINITY;
            int i7 = -1;
            int i8 = 0;
            while (i8 < scene.entities.size()) {
                XCadEntity xCadEntity = scene.entities.get(i8);
                XCadScene xCadScene = scene;
                if (xCadEntity != null && xCadEntity.pointCount() >= i5 && (i = xCadEntity.type) != 5 && i != 6) {
                    int i9 = 0;
                    while (i9 < xCadEntity.pointCount()) {
                        int i10 = length;
                        int i11 = i3;
                        if (!hashSet.contains(Long.valueOf((i8 << 32) | (i9 & InternalZipConstants.ZIP_64_SIZE_LIMIT)))) {
                            double dPointX = xCadEntity.pointX(i9) - d;
                            double dPointY = xCadEntity.pointY(i9) - d2;
                            double d4 = (dPointX * dPointX) + (dPointY * dPointY);
                            if (d4 < d3) {
                                i7 = i9;
                                d3 = d4;
                                i6 = i8;
                            }
                        }
                        i9++;
                        length = i10;
                        i3 = i11;
                    }
                }
                i8++;
                length = length;
                scene = xCadScene;
                i3 = i3;
                i5 = 1;
            }
            XCadScene xCadScene2 = scene;
            int i12 = length;
            int i13 = i3;
            if (i6 >= 0 && d3 <= 0.0025000000000000005d) {
                hashSet.add(Long.valueOf((i6 << 32) | (i7 & InternalZipConstants.ZIP_64_SIZE_LIMIT)));
                this.collectedPoints.add(new CollectedPointRef(i6, i7));
            }
            i3 = i13 + 1;
            length = i12;
            scene = xCadScene2;
        }
        if (this.collectedPoints.isEmpty()) {
            return;
        }
        refreshCollectedVisuals();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void restoreCollectedPointMarkers() {
        /*
            r7 = this;
            java.util.LinkedHashSet<com.qianhe.yct.activity.CADEntityChooseActivity$CollectedPointRef> r0 = r7.collectedPoints
            java.util.Iterator r0 = r0.iterator()
            r1 = 1
            r2 = 1
        L8:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L37
            java.lang.Object r3 = r0.next()
            com.qianhe.yct.activity.CADEntityChooseActivity$CollectedPointRef r3 = (com.qianhe.yct.activity.CADEntityChooseActivity.CollectedPointRef) r3
            int r4 = r3.entityIndex
            int r5 = r3.pointIndex
            com.qianhe.yct.activity.CADEntityChooseActivity$CADUiPoint r4 = r7.findCurrentEntityPoint(r4, r5)
            if (r4 == 0) goto L27
            r4.check = r1
            boolean r4 = r4.vis
            if (r4 != 0) goto L27
        L24:
            int r2 = r2 + 1
            goto L8
        L27:
            com.qianhe.yct.databinding.ActivityCadEntityChooseBinding r4 = r7.binding
            com.qh.xcad.XCadView r4 = r4.cadView
            int r5 = r3.entityIndex
            int r3 = r3.pointIndex
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            r4.addSelectIndicePointCheck(r5, r3, r6)
            goto L24
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.CADEntityChooseActivity.restoreCollectedPointMarkers():void");
    }

    private int[] serializeCollectedPoints() {
        int[] iArr = new int[this.collectedPoints.size() * 2];
        Iterator<CollectedPointRef> it = this.collectedPoints.iterator();
        int i = 0;
        while (it.hasNext()) {
            CollectedPointRef next = it.next();
            int i2 = i + 1;
            iArr[i] = next.entityIndex;
            i += 2;
            iArr[i2] = next.pointIndex;
        }
        return iArr;
    }

    private void restoreCollectedPoints(int[] iArr) {
        this.collectedPoints.clear();
        if (iArr == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 >= iArr.length) {
                return;
            }
            this.collectedPoints.add(new CollectedPointRef(iArr[i], iArr[i2]));
            i += 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double[] buildCollectedResult() {
        XCadEntity xCadEntity;
        int i;
        XCadScene scene = this.binding.cadView.getScene();
        if (scene == null || scene.entities == null || this.collectedPoints.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<CollectedPointRef> it = this.collectedPoints.iterator();
        while (it.hasNext()) {
            CollectedPointRef next = it.next();
            int i2 = next.entityIndex;
            if (i2 >= 0 && i2 < scene.entities.size() && (xCadEntity = scene.entities.get(next.entityIndex)) != null && (i = next.pointIndex) >= 0 && i < xCadEntity.pointCount()) {
                double dPointX = xCadEntity.pointX(next.pointIndex);
                double dPointY = xCadEntity.pointY(next.pointIndex);
                double dPointZ = xCadEntity.pointZ(next.pointIndex);
                if (hashSet.add(new CoordKey(dPointX, dPointY))) {
                    arrayList.add(new double[]{dPointX, dPointY, dPointZ});
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        double[] dArr = new double[arrayList.size() * 3];
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            double[] dArr2 = (double[]) arrayList.get(i3);
            int i4 = i3 * 3;
            dArr[i4] = dArr2[0];
            dArr[i4 + 1] = dArr2[1];
            dArr[i4 + 2] = dArr2[2];
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLinePointTotalViewVis() {
        CADUiEntity cADUiEntity = this.selectCadEntity;
        if (cADUiEntity != null) {
            List<CADUiPoint> list = cADUiEntity.points;
            int size = list != null ? list.size() : 0;
            this.binding.tvTotalCount.setText("(" + size + ")");
        } else {
            this.binding.tvTotalCount.setText("");
        }
        this.showPointAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllCadShowPointVis(boolean z) {
        CADUiEntity cADUiEntity = this.selectCadEntity;
        if (cADUiEntity == null || cADUiEntity.points == null) {
            return;
        }
        if (z) {
            for (int i = 0; i < this.selectCadEntity.points.size(); i++) {
                CADUiPoint cADUiPoint = this.selectCadEntity.points.get(i);
                cADUiPoint.vis = true;
                this.inVisiblePointIndex.remove(Integer.valueOf(i));
                if (!cADUiPoint.check) {
                    this.binding.cadView.addSelectIndicePoint(this.selectCadEntity.xCadEntityIndex, cADUiPoint.xPointIndex);
                }
            }
        } else {
            for (int i2 = 0; i2 < this.selectCadEntity.points.size(); i2++) {
                CADUiPoint cADUiPoint2 = this.selectCadEntity.points.get(i2);
                cADUiPoint2.vis = false;
                this.inVisiblePointIndex.add(Integer.valueOf(i2));
                this.binding.cadView.removeSelectIndicePoint(this.selectCadEntity.xCadEntityIndex, cADUiPoint2.xPointIndex);
            }
        }
        refreshCollectedVisuals();
        this.showPointAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllCadShowPointCheck(boolean z) {
        CADUiEntity cADUiEntity = this.selectCadEntity;
        if (cADUiEntity == null || cADUiEntity.points == null) {
            return;
        }
        int i = cADUiEntity.xCadEntityIndex;
        if (z) {
            removeCollectedForEntity(i);
            for (int i2 = 0; i2 < this.selectCadEntity.points.size(); i2++) {
                CADUiPoint cADUiPoint = this.selectCadEntity.points.get(i2);
                if (this.totalGetCount <= 0 || this.collectedPoints.size() < this.totalGetCount) {
                    checkPoint(i, i2);
                } else {
                    cADUiPoint.check = false;
                    if (cADUiPoint.vis) {
                        this.binding.cadView.addSelectIndicePoint(i, cADUiPoint.xPointIndex);
                    }
                }
            }
        }
        this.showPointAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllCadShowPointRever() {
        CADUiEntity cADUiEntity = this.selectCadEntity;
        if (cADUiEntity == null || cADUiEntity.points == null) {
            return;
        }
        int i = cADUiEntity.xCadEntityIndex;
        for (int i2 = 0; i2 < this.selectCadEntity.points.size(); i2++) {
            if (this.selectCadEntity.points.get(i2).check) {
                uncheckPoint(i, i2);
            } else if (this.totalGetCount <= 0 || this.collectedPoints.size() < this.totalGetCount) {
                checkPoint(i, i2);
            }
        }
        this.showPointAdapter.notifyDataSetChanged();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        showTipDialog(getString(R$string.cad_do_you_want_to_close_this_page), getString(R$string.cad_continue), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.15
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                CADEntityChooseActivity.this.finish();
            }
        });
    }

    private static final class CoordKey {
        final long x;
        final long y;

        CoordKey(double d, double d2) {
            this.x = Math.round(d * 1000.0d);
            this.y = Math.round(d2 * 1000.0d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CoordKey)) {
                return false;
            }
            CoordKey coordKey = (CoordKey) obj;
            return this.x == coordKey.x && this.y == coordKey.y;
        }

        public int hashCode() {
            long j = this.x;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.y;
            return i + ((int) (j2 ^ (j2 >>> 32)));
        }
    }

    private static final class CollectedPointRef {
        final int entityIndex;
        final int pointIndex;

        CollectedPointRef(int i, int i2) {
            this.entityIndex = i;
            this.pointIndex = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CollectedPointRef)) {
                return false;
            }
            CollectedPointRef collectedPointRef = (CollectedPointRef) obj;
            return this.entityIndex == collectedPointRef.entityIndex && this.pointIndex == collectedPointRef.pointIndex;
        }

        public int hashCode() {
            return (this.entityIndex * 31) + this.pointIndex;
        }
    }

    private static class CADUiEntity {
        List<CADUiPoint> points = new ArrayList();
        XCadEntity xCadEntity;
        int xCadEntityIndex;

        public CADUiEntity(int i, XCadEntity xCadEntity, HashSet<Integer> hashSet, HashSet<Integer> hashSet2) {
            this.xCadEntity = xCadEntity;
            this.xCadEntityIndex = i;
            if (xCadEntity == null || xCadEntity.points == null) {
                return;
            }
            for (int i2 = 0; i2 < xCadEntity.pointCount(); i2++) {
                XCadPoint xCadPoint = new XCadPoint(xCadEntity.pointX(i2), xCadEntity.pointY(i2), xCadEntity.pointZ(i2));
                List<CADUiPoint> list = this.points;
                boolean z = true;
                boolean z2 = hashSet == null || !hashSet.contains(Integer.valueOf(i2));
                if (hashSet2 == null || !hashSet2.contains(Integer.valueOf(i2))) {
                    z = false;
                }
                list.add(new CADUiPoint(i2, xCadPoint, z2, z));
            }
        }
    }

    private static class CADUiPoint {
        boolean check;
        boolean select = false;
        boolean vis;
        XCadPoint xCadPoint;
        int xPointIndex;

        public CADUiPoint(int i, XCadPoint xCadPoint, boolean z, boolean z2) {
            this.xPointIndex = i;
            this.xCadPoint = xCadPoint;
            this.vis = z;
            this.check = z2;
        }
    }

    private class ShowPointHolder extends RecyclerView.ViewHolder {
        ImageView ivCheck;
        ImageView ivVis;
        LinearLayout layoutRoot;
        TextView tvNo;
        TextView tvPointContent;

        public ShowPointHolder(View view) {
            super(view);
            this.layoutRoot = (LinearLayout) view.findViewById(R$id.layoutRoot);
            this.ivCheck = (ImageView) view.findViewById(R$id.ivCheck);
            this.tvNo = (TextView) view.findViewById(R$id.tvNo);
            this.tvPointContent = (TextView) view.findViewById(R$id.tvPointContent);
            this.ivVis = (ImageView) view.findViewById(R$id.ivVis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatNoString(int i) {
        return String.format("%03d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatPointContent(double d, double d2, double d3) {
        return String.format(Locale.US, "(%.3f, %.3f, %.3f)", Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRadioButtonClickStatus() {
        if (!isRadioButton() || this.collectedPoints.isEmpty()) {
            return;
        }
        ArrayList<CollectedPointRef> arrayList = new ArrayList(this.collectedPoints);
        this.collectedPoints.clear();
        for (CollectedPointRef collectedPointRef : arrayList) {
            CADUiPoint cADUiPointFindCurrentEntityPoint = findCurrentEntityPoint(collectedPointRef.entityIndex, collectedPointRef.pointIndex);
            if (cADUiPointFindCurrentEntityPoint != null) {
                cADUiPointFindCurrentEntityPoint.check = false;
                if (cADUiPointFindCurrentEntityPoint.vis) {
                    this.binding.cadView.addSelectIndicePoint(collectedPointRef.entityIndex, collectedPointRef.pointIndex);
                } else {
                    this.binding.cadView.removeSelectIndicePoint(collectedPointRef.entityIndex, collectedPointRef.pointIndex);
                }
            } else {
                this.binding.cadView.removeSelectIndicePoint(collectedPointRef.entityIndex, collectedPointRef.pointIndex);
            }
        }
        refreshCollectedVisuals();
    }

    private class ShowPointAdapter extends RecyclerView.Adapter {
        private ShowPointAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ShowPointHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return CADEntityChooseActivity.this.new ShowPointHolder(CADEntityChooseActivity.this.getLayoutInflater().inflate(R$layout.item_cad_choose_show_entity_points, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(ShowPointHolder showPointHolder, final int i) throws Resources.NotFoundException {
            int i2;
            int i3;
            if (CADEntityChooseActivity.this.selectCadEntity != null) {
                showPointHolder.tvNo.setText(CADEntityChooseActivity.this.formatNoString(i + 1));
                final CADUiPoint cADUiPoint = CADEntityChooseActivity.this.selectCadEntity.points.get(i);
                ImageView imageView = showPointHolder.ivCheck;
                if (cADUiPoint.check) {
                    i2 = R$drawable.icon_cad_checked;
                } else {
                    i2 = R$drawable.icon_cad_uncheck;
                }
                imageView.setImageResource(i2);
                int color = CADEntityChooseActivity.this.getResources().getColor(R$color.cad_item_text);
                int color2 = CADEntityChooseActivity.this.getResources().getColor(R$color.cad_item_text);
                if (cADUiPoint.select) {
                    showPointHolder.ivCheck.setImageTintList(ColorStateList.valueOf(-1));
                    i3 = -2382022;
                } else {
                    showPointHolder.ivCheck.setImageTintList(null);
                    i3 = 0;
                }
                showPointHolder.layoutRoot.setBackgroundColor(i3);
                showPointHolder.tvNo.setTextColor(color);
                showPointHolder.tvPointContent.setTextColor(color);
                showPointHolder.ivVis.setImageTintList(ColorStateList.valueOf(color2));
                XCadPoint xCadPoint = cADUiPoint.xCadPoint;
                if (xCadPoint != null) {
                    showPointHolder.tvPointContent.setText(CADEntityChooseActivity.this.formatPointContent(xCadPoint.x, xCadPoint.y, xCadPoint.z));
                }
                showPointHolder.ivVis.setImageResource(cADUiPoint.vis ? R$drawable.icon_cad_vis : R$drawable.icon_cad_invis);
                showPointHolder.ivCheck.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.ShowPointAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (!cADUiPoint.check) {
                            if (!CADEntityChooseActivity.this.isRadioButton() && CADEntityChooseActivity.this.totalGetCount > 0 && CADEntityChooseActivity.this.collectedPoints.size() >= CADEntityChooseActivity.this.totalGetCount) {
                                CADEntityChooseActivity cADEntityChooseActivity = CADEntityChooseActivity.this;
                                Toast.makeText(cADEntityChooseActivity, cADEntityChooseActivity.getString(R$string.cad_out_of_the_capture_range), 1).show();
                                return;
                            } else {
                                CADEntityChooseActivity cADEntityChooseActivity2 = CADEntityChooseActivity.this;
                                if (cADEntityChooseActivity2.checkMaxDisPointTips(cADEntityChooseActivity2.selectCadEntity.xCadEntityIndex, i, new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.ShowPointAdapter.1.1
                                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                    public void onClose(boolean z) {
                                    }

                                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                    public void onConfirm() {
                                        CADEntityChooseActivity.this.useMaxDistancePosi = true;
                                        CADEntityChooseActivity.this.clearRadioButtonClickStatus();
                                        CADEntityChooseActivity cADEntityChooseActivity3 = CADEntityChooseActivity.this;
                                        cADEntityChooseActivity3.checkPoint(cADEntityChooseActivity3.selectCadEntity.xCadEntityIndex, i);
                                        ShowPointAdapter.this.notifyDataSetChanged();
                                    }
                                })) {
                                    return;
                                }
                            }
                        }
                        if (cADUiPoint.check) {
                            CADEntityChooseActivity cADEntityChooseActivity3 = CADEntityChooseActivity.this;
                            cADEntityChooseActivity3.uncheckPoint(cADEntityChooseActivity3.selectCadEntity.xCadEntityIndex, i);
                        } else {
                            CADEntityChooseActivity.this.clearRadioButtonClickStatus();
                            CADEntityChooseActivity cADEntityChooseActivity4 = CADEntityChooseActivity.this;
                            cADEntityChooseActivity4.checkPoint(cADEntityChooseActivity4.selectCadEntity.xCadEntityIndex, i);
                        }
                        ShowPointAdapter.this.notifyDataSetChanged();
                    }
                });
                showPointHolder.ivVis.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.ShowPointAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CADUiPoint cADUiPoint2 = cADUiPoint;
                        boolean z = cADUiPoint2.vis;
                        cADUiPoint2.vis = !z;
                        if (!z) {
                            CADEntityChooseActivity.this.inVisiblePointIndex.remove(Integer.valueOf(i));
                            if (cADUiPoint.check) {
                                CADEntityChooseActivity.this.refreshCollectedVisuals();
                            } else {
                                CADEntityChooseActivity.this.binding.cadView.addSelectIndicePoint(CADEntityChooseActivity.this.selectCadEntity.xCadEntityIndex, cADUiPoint.xPointIndex);
                            }
                        } else {
                            CADEntityChooseActivity.this.inVisiblePointIndex.add(Integer.valueOf(i));
                            CADEntityChooseActivity.this.binding.cadView.removeSelectIndicePoint(CADEntityChooseActivity.this.selectCadEntity.xCadEntityIndex, cADUiPoint.xPointIndex);
                            if (cADUiPoint.check) {
                                CADEntityChooseActivity.this.refreshCollectedVisuals();
                            }
                        }
                        ShowPointAdapter.this.notifyDataSetChanged();
                    }
                });
                showPointHolder.layoutRoot.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.CADEntityChooseActivity.ShowPointAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ShowPointAdapter.this.setCadUiPoint(cADUiPoint, i);
                    }
                });
            }
        }

        public void setCadUiPoint(CADUiPoint cADUiPoint, int i) {
            if (cADUiPoint == null) {
                return;
            }
            if (CADEntityChooseActivity.this.curCadUiPoint != null && CADEntityChooseActivity.this.curCadUiPoint != cADUiPoint) {
                CADEntityChooseActivity.this.curCadUiPoint.select = false;
                CADEntityChooseActivity.this.binding.cadView.clearSelectLightPoint();
            }
            cADUiPoint.select = !cADUiPoint.select;
            int i2 = CADEntityChooseActivity.this.selectCadEntity.xCadEntityIndex;
            if (cADUiPoint.select) {
                CADEntityChooseActivity.this.curCadUiPoint = cADUiPoint;
                CADEntityChooseActivity.this.binding.cadView.addSelectLightPoint(i2, i);
            } else {
                CADEntityChooseActivity.this.binding.cadView.removeSelectLightPoint(i2, i);
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (CADEntityChooseActivity.this.selectCadEntity == null || CADEntityChooseActivity.this.selectCadEntity.points == null) {
                return 0;
            }
            return CADEntityChooseActivity.this.selectCadEntity.points.size();
        }
    }
}
