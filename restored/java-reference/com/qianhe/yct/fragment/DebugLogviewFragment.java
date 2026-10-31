package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.GSTEntity;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.DebugLogCache;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.TimeConverter;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.DebugData;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.debug.DebugActivity;
import com.qianhe.yct.activity.debug.DebugAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.FragmentDebugLogviewBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.ToastDialogFragment;
import com.qianhe.yct.enums.InsStatusEnum;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugLogviewFragment extends BaseFragment {
    private double ahrsHeadingError;
    private double ahrsPitchError;
    private double ahrsRollError;
    private AppConfig appConfig;
    private FragmentDebugLogviewBinding binding;
    private boolean hasSend;
    private boolean isFixed;
    private DebugAdapter logAdapter;
    private double naviHeading;
    private double naviPitch;
    private double naviRoll;
    private final ArrayList<String> filterList = new ArrayList<>();
    private final ArrayList<String> historyList = new ArrayList<>();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentDebugLogviewBinding.inflate(getLayoutInflater());
        this.appConfig = ((YCTApplication) requireContext().getApplicationContext()).getAppConfig();
        this.historyList.addAll(FileUtil.readOrders(requireContext()));
        Collections.reverse(this.historyList);
        initView();
        initLiveData();
        getChildFragmentManager().setFragmentResultListener("command_list", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                DebugLogviewFragment.$r8$lambda$2agZac__WOsRh8chw9Uc02DroJQ(this.f$0, str, bundle2);
            }
        });
        getChildFragmentManager().setFragmentResultListener("delete", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) throws IOException {
                DebugLogviewFragment.$r8$lambda$Tf03xeI6Dl0HUp_3cUB20y2b8sk(this.f$0, str, bundle2);
            }
        });
        if (bundle != null) {
            String string = bundle.getString("order");
            if (bundle.getBoolean("hasSend") && !TextUtils.isEmpty(string)) {
                this.logAdapter.setFilter(string.split(",")[1]);
            }
            ArrayList<String> stringArrayList = bundle.getStringArrayList("filterList");
            if (stringArrayList != null) {
                this.filterList.clear();
                this.filterList.addAll(stringArrayList);
                DebugLogCache.setFilter(this.filterList);
            }
            this.binding.tvSave.setSelected(bundle.getBoolean("saveSel"));
            this.binding.tvSaveIns.setSelected(bundle.getBoolean("insSel"));
            this.binding.tvSaveBestpos.setSelected(bundle.getBoolean("bestPosSel"));
            this.binding.tvSaveSnr.setSelected(bundle.getBoolean("snrSel"));
            this.binding.tvSaveGst.setSelected(bundle.getBoolean("gstSel"));
            TextView textView = this.binding.tvSave;
            textView.setText(textView.isSelected() ? R$string.stop_save : R$string.start_save);
        }
        this.binding.lltInfo.post(new Runnable() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.adjustNsvHeight();
            }
        });
        return this.binding.getRoot();
    }

    public static /* synthetic */ void $r8$lambda$2agZac__WOsRh8chw9Uc02DroJQ(DebugLogviewFragment debugLogviewFragment, String str, Bundle bundle) {
        int i;
        debugLogviewFragment.getClass();
        ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
        if (stringArrayList == null || stringArrayList.isEmpty() || (i = bundle.getInt("index")) == -1) {
            return;
        }
        debugLogviewFragment.binding.edtOrder.setText(stringArrayList.get(i));
    }

    public static /* synthetic */ void $r8$lambda$Tf03xeI6Dl0HUp_3cUB20y2b8sk(DebugLogviewFragment debugLogviewFragment, String str, Bundle bundle) throws IOException {
        debugLogviewFragment.getClass();
        ArrayList<String> stringArrayList = bundle.getStringArrayList("list");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            return;
        }
        stringArrayList.remove(bundle.getInt("index"));
        FileUtil.saveOrderList(debugLogviewFragment.requireContext(), stringArrayList);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("order", this.binding.edtOrder.getText().toString().trim());
        bundle.putBoolean("hasSend", this.hasSend);
        bundle.putStringArrayList("filterList", this.filterList);
        bundle.putBoolean("saveSel", this.binding.tvSave.isSelected());
        bundle.putBoolean("insSel", this.binding.tvSaveIns.isSelected());
        bundle.putBoolean("bestPosSel", this.binding.tvSaveBestpos.isSelected());
        bundle.putBoolean("snrSel", this.binding.tvSaveSnr.isSelected());
        bundle.putBoolean("gstSel", this.binding.tvSaveGst.isSelected());
        bundle.putBoolean("isFixed", this.isFixed);
    }

    private void initView() {
        this.binding.btnFixed.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugLogviewFragment debugLogviewFragment;
                int i;
                DebugLogviewFragment.this.isFixed = !r3.isFixed;
                Button button = DebugLogviewFragment.this.binding.btnFixed;
                if (DebugLogviewFragment.this.isFixed) {
                    debugLogviewFragment = DebugLogviewFragment.this;
                    i = R$string.scroll;
                } else {
                    debugLogviewFragment = DebugLogviewFragment.this;
                    i = R$string.fixed;
                }
                button.setText(debugLogviewFragment.getString(i));
            }
        });
        this.binding.btnClear.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugLogviewFragment.this.logAdapter.clear();
            }
        });
        this.binding.btnHistory.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(DebugLogviewFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DebugLogviewFragment.this.getString(R$string.select_command));
                bundle.putStringArrayList("list", DebugLogviewFragment.this.historyList);
                bundle.putString("requestKey", "command_list");
                bundle.putBoolean("showDel", true);
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.btnSend.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add("UNLOG,ALL");
                arrayList.add("LOG,INS.NAVI,ONTIME," + DebugLogviewFragment.this.appConfig.details.ins_interval);
                arrayList.add("LOG,INS.AHRS,ONTIME," + DebugLogviewFragment.this.appConfig.details.ins_interval);
                arrayList.add("LOG,EXTSENSOR-1,ONTIME," + DebugLogviewFragment.this.appConfig.details.extsensor_1);
                arrayList.add("LOG,SNR,ONTIME," + DebugLogviewFragment.this.appConfig.details.snr_interval);
                arrayList.add("LOG,BESTPOS,ONTIME," + DebugLogviewFragment.this.appConfig.details.bestpos_interval);
                arrayList.add("LOG,GST,ONTIME," + DebugLogviewFragment.this.appConfig.details.gst_interval);
                arrayList.add("LOG,GGA,ONTIME," + DebugLogviewFragment.this.appConfig.details.gga_interval);
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(DebugLogviewFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, DebugLogviewFragment.this.getString(R$string.select_command));
                bundle.putStringArrayList("list", arrayList);
                bundle.putString("requestKey", "command_list");
                chooseListDialogFragment.setArguments(bundle);
                return false;
            }
        });
        this.binding.btnSend.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IOException {
                MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(DebugLogviewFragment.this.requireActivity());
                DeviceType deviceType = DeviceType.ZPY;
                if (!multiBluetoothManager.isDeviceConnected(deviceType)) {
                    deviceType = DeviceType.BASE;
                }
                String strTrim = DebugLogviewFragment.this.binding.edtOrder.getText().toString().trim();
                if (!TextUtils.isEmpty(strTrim)) {
                    DebugLogviewFragment.this.hasSend = true;
                    String[] strArrSplit = strTrim.split(",");
                    if (strArrSplit.length > 1) {
                        DebugLogviewFragment.this.logAdapter.setFilter(strArrSplit[1]);
                    }
                    EventBus.getDefault().post(new OrderBean(deviceType, strTrim));
                    DebugLogviewFragment.this.historyList.remove(strTrim);
                    DebugLogviewFragment.this.historyList.add(strTrim);
                    Collections.reverse(DebugLogviewFragment.this.historyList);
                    FileUtil.saveOrder(DebugLogviewFragment.this.requireContext(), strTrim);
                    return;
                }
                ToastDialogFragment toastDialogFragment = new ToastDialogFragment();
                toastDialogFragment.show(DebugLogviewFragment.this.getChildFragmentManager(), "ToastDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString("tip", DebugLogviewFragment.this.getString(R$string.invalid_instruction));
                toastDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvSaveIns.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugLogviewFragment.this.binding.tvSaveIns.setSelected(!DebugLogviewFragment.this.binding.tvSaveIns.isSelected());
                if (DebugLogviewFragment.this.binding.tvSaveIns.isSelected()) {
                    DebugLogviewFragment.this.filterList.add(DebugLogCache.INS);
                } else {
                    DebugLogviewFragment.this.filterList.remove(DebugLogCache.INS);
                }
                DebugLogCache.setFilter(DebugLogviewFragment.this.filterList);
            }
        });
        this.binding.tvSaveBestpos.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugLogviewFragment.this.binding.tvSaveBestpos.setSelected(!DebugLogviewFragment.this.binding.tvSaveBestpos.isSelected());
                if (DebugLogviewFragment.this.binding.tvSaveBestpos.isSelected()) {
                    DebugLogviewFragment.this.filterList.add(DebugLogCache.BESTPOSA);
                } else {
                    DebugLogviewFragment.this.filterList.remove(DebugLogCache.BESTPOSA);
                }
                DebugLogCache.setFilter(DebugLogviewFragment.this.filterList);
            }
        });
        this.binding.tvSaveSnr.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugLogviewFragment.this.binding.tvSaveSnr.setSelected(!DebugLogviewFragment.this.binding.tvSaveSnr.isSelected());
                if (DebugLogviewFragment.this.binding.tvSaveSnr.isSelected()) {
                    DebugLogviewFragment.this.filterList.add(DebugLogCache.GPSNR);
                } else {
                    DebugLogviewFragment.this.filterList.remove(DebugLogCache.GPSNR);
                }
                DebugLogCache.setFilter(DebugLogviewFragment.this.filterList);
            }
        });
        this.binding.tvSaveGst.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugLogviewFragment.this.binding.tvSaveGst.setSelected(!DebugLogviewFragment.this.binding.tvSaveGst.isSelected());
                if (DebugLogviewFragment.this.binding.tvSaveGst.isSelected()) {
                    DebugLogviewFragment.this.filterList.add(DebugLogCache.GPGST);
                } else {
                    DebugLogviewFragment.this.filterList.remove(DebugLogCache.GPGST);
                }
                DebugLogCache.setFilter(DebugLogviewFragment.this.filterList);
            }
        });
        this.binding.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IOException {
                if (!DebugLogviewFragment.this.binding.tvSave.isSelected()) {
                    if (DebugLogviewFragment.this.filterList.isEmpty()) {
                        DebugLogviewFragment debugLogviewFragment = DebugLogviewFragment.this;
                        debugLogviewFragment.showTipDialog(debugLogviewFragment.getString(R$string.select_message_type), DebugLogviewFragment.this.getString(R$string.ok), null);
                        return;
                    }
                    DebugLogviewFragment.this.binding.tvSave.setSelected(true);
                    DebugLogviewFragment.this.binding.tvSave.setText(R$string.stop_save);
                    DebugLogCache.init(DebugLogviewFragment.this.requireContext(), DebugLogviewFragment.this.filterList);
                    DebugLogCache.start();
                    DebugLogviewFragment debugLogviewFragment2 = DebugLogviewFragment.this;
                    debugLogviewFragment2.showToastDialog(debugLogviewFragment2.getString(R$string.start_save));
                    return;
                }
                DebugLogviewFragment.this.binding.tvSave.setSelected(false);
                DebugLogviewFragment.this.binding.tvSave.setText(R$string.start_save);
                DebugLogCache.stop();
                DebugLogviewFragment debugLogviewFragment3 = DebugLogviewFragment.this;
                debugLogviewFragment3.showToastDialog(debugLogviewFragment3.getString(R$string.stopped));
            }
        });
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        DebugAdapter debugAdapter = new DebugAdapter(requireContext());
        this.logAdapter = debugAdapter;
        this.binding.rcv.setAdapter(debugAdapter);
        this.binding.tvSaveIns.setSelected(true);
        this.binding.tvSaveBestpos.setSelected(true);
        this.binding.tvSaveSnr.setSelected(true);
        this.binding.tvSaveGst.setSelected(true);
        this.filterList.add(DebugLogCache.INS);
        this.filterList.add(DebugLogCache.BESTPOSA);
        this.filterList.add(DebugLogCache.GPSNR);
        this.filterList.add(DebugLogCache.GPGST);
        DebugLogCache.setFilter(this.filterList);
        refreshInsAngleViews();
        this.binding.tvExtRoll.setText(String.format("%s：%s", getString(R$string.roll_angle), formatFixed(0.0d, 2)));
        this.binding.tvExtPitch.setText(String.format("%s：%s", getString(R$string.pitch_angle), formatFixed(0.0d, 2)));
        this.binding.tvExtHeading.setText(String.format("%s：%s", getString(R$string.heading_angle), formatFixed(0.0d, 2)));
    }

    /* renamed from: com.qianhe.yct.fragment.DebugLogviewFragment$11, reason: invalid class name */
    class AnonymousClass11 implements Observer {
        AnonymousClass11() {
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(InsNavi insNavi) {
            if (insNavi == null || !DebugLogviewFragment.this.isAdded()) {
                return;
            }
            DebugLogviewFragment.this.naviRoll = insNavi.rollDegrees;
            DebugLogviewFragment.this.naviPitch = insNavi.pitchDegrees;
            DebugLogviewFragment.this.naviHeading = insNavi.headingDegrees;
            DebugLogviewFragment.this.refreshInsAngleViews();
            DebugLogviewFragment.this.binding.tvInsLon.setText(DebugLogviewFragment.this.formatFixed(insNavi.longitude, 8));
            DebugLogviewFragment.this.binding.tvInsLat.setText(DebugLogviewFragment.this.formatFixed(insNavi.latitude, 8));
            DebugLogviewFragment.this.binding.tvInsElev.setText(DebugLogviewFragment.this.formatFixed(insNavi.elevation, 3));
            DebugLogviewFragment.this.binding.tvInsLonR.setText(DebugLogviewFragment.this.formatFixed(insNavi.longitudeR, 8));
            DebugLogviewFragment.this.binding.tvInsLatR.setText(DebugLogviewFragment.this.formatFixed(insNavi.latitudeR, 8));
            DebugLogviewFragment.this.binding.tvInsElevR.setText(DebugLogviewFragment.this.formatFixed(insNavi.elevationR, 3));
            DebugLogviewFragment.this.refreshInsState(insNavi);
            DebugLogviewFragment.this.binding.lltInfo.post(new Runnable() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment$11$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DebugLogviewFragment.this.adjustNsvHeight();
                }
            });
        }
    }

    private void initLiveData() {
        if (getActivity() != null || isAdded()) {
            ((DebugActivity) getActivity()).observeInsNavi().observe(getActivity(), new AnonymousClass11());
            ((DebugActivity) getActivity()).observeInsAhrs().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.12
                @Override // androidx.lifecycle.Observer
                public void onChanged(InsAhrs insAhrs) {
                    if (insAhrs == null || !DebugLogviewFragment.this.isAdded()) {
                        return;
                    }
                    DebugLogviewFragment.this.ahrsRollError = insAhrs.rollDegreesError;
                    DebugLogviewFragment.this.ahrsPitchError = insAhrs.pitchDegreesError;
                    DebugLogviewFragment.this.ahrsHeadingError = insAhrs.headingDegreesError;
                    DebugLogviewFragment.this.refreshInsAngleViews();
                }
            });
            ((DebugActivity) getActivity()).observeSensorInfo().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.13
                @Override // androidx.lifecycle.Observer
                public void onChanged(SensorInfoEvent sensorInfoEvent) {
                    if (sensorInfoEvent == null || !DebugLogviewFragment.this.isAdded()) {
                        return;
                    }
                    DebugLogviewFragment.this.binding.tvExtRoll.setText(String.format("%s：%s", DebugLogviewFragment.this.getString(R$string.roll_angle), DebugLogviewFragment.this.formatFixed(sensorInfoEvent.rollAngle, 2)));
                    DebugLogviewFragment.this.binding.tvExtPitch.setText(String.format("%s：%s", DebugLogviewFragment.this.getString(R$string.pitch_angle), DebugLogviewFragment.this.formatFixed(sensorInfoEvent.pitchAngle, 2)));
                    DebugLogviewFragment.this.binding.tvExtHeading.setText(String.format("%s：%s", DebugLogviewFragment.this.getString(R$string.heading_angle), DebugLogviewFragment.this.formatFixed(sensorInfoEvent.headingAngle, 2)));
                }
            });
            ((DebugActivity) getActivity()).observeGGA().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.14
                @Override // androidx.lifecycle.Observer
                public void onChanged(GGAEntity gGAEntity) {
                    int i;
                    if (gGAEntity == null || !DebugLogviewFragment.this.isAdded()) {
                        return;
                    }
                    if (gGAEntity.age < 1.0f && (i = gGAEntity.quality) != 2 && i != 4 && i != 5) {
                        DebugLogviewFragment.this.binding.tvDiffage.setText(DebugLogviewFragment.this.getString(R$string.no_difference));
                    } else {
                        DebugLogviewFragment.this.binding.tvDiffage.setText(String.format("%s：%s", DebugLogviewFragment.this.getString(R$string.diff_delay), Integer.valueOf((int) gGAEntity.age)));
                    }
                    DebugLogviewFragment.this.refreshData(gGAEntity);
                }
            });
            ((DebugActivity) getActivity()).observeBestpos().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.15
                @Override // androidx.lifecycle.Observer
                public void onChanged(BestPosEntity bestPosEntity) {
                    if (bestPosEntity == null || !DebugLogviewFragment.this.isAdded()) {
                        return;
                    }
                    DebugLogviewFragment.this.binding.tvSolutionNum.setText(String.format("%s：%s", DebugLogviewFragment.this.getString(R$string.solution_star_number), Integer.valueOf(bestPosEntity.useStar)));
                    DebugLogviewFragment.this.binding.tvBestLon.setText(DebugLogviewFragment.this.formatFixed(bestPosEntity.lon, 8));
                    DebugLogviewFragment.this.binding.tvBestLat.setText(DebugLogviewFragment.this.formatFixed(bestPosEntity.lat, 8));
                    DebugLogviewFragment.this.binding.tvBestElev.setText(DebugLogviewFragment.this.formatFixed(bestPosEntity.elve, 3));
                    DebugLogviewFragment.this.binding.tvBestElevDiff.setText(DebugLogviewFragment.this.formatFixed(bestPosEntity.elveDiff, 3));
                }
            });
            ((DebugActivity) getActivity()).observeGst().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.16
                @Override // androidx.lifecycle.Observer
                public void onChanged(GSTEntity gSTEntity) {
                    if (gSTEntity == null || !DebugLogviewFragment.this.isAdded()) {
                        return;
                    }
                    float f = gSTEntity.latstd;
                    float f2 = gSTEntity.lonstd;
                    float fRound = (float) (Math.round(Math.sqrt((f * f) + (f2 * f2)) * 100.0d) / 100.0d);
                    float fRound2 = (float) (Math.round(gSTEntity.altstd * 100.0f) / 100.0d);
                    DebugLogviewFragment.this.binding.tvHRMS.setText(DebugLogviewFragment.this.formatFixed(fRound, 2));
                    DebugLogviewFragment.this.binding.tvHRMS.setSelected(fRound <= DebugLogviewFragment.this.appConfig.details.hrms_limit);
                    DebugLogviewFragment.this.binding.tvVRMS.setText(DebugLogviewFragment.this.formatFixed(fRound2, 2));
                    DebugLogviewFragment.this.binding.tvVRMS.setSelected(fRound2 <= DebugLogviewFragment.this.appConfig.details.vrms_limit);
                }
            });
            ((DebugActivity) getActivity()).observeGpdop().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.17
                @Override // androidx.lifecycle.Observer
                public void onChanged(GPDOPEntity gPDOPEntity) {
                    if (gPDOPEntity == null || !DebugLogviewFragment.this.isAdded()) {
                        return;
                    }
                    DebugLogviewFragment.this.binding.tvHDOP.setText(DebugLogviewFragment.this.formatFixed(gPDOPEntity.hdop, 2));
                    DebugLogviewFragment.this.binding.tvVDOP.setText(DebugLogviewFragment.this.formatFixed(gPDOPEntity.vdop, 2));
                }
            });
            ((DebugActivity) getActivity()).observeDebugdata().observe(getActivity(), new Observer() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.18
                @Override // androidx.lifecycle.Observer
                public void onChanged(DebugData debugData) {
                    if (debugData == null || !DebugLogviewFragment.this.isAdded() || TextUtils.isEmpty(debugData.line) || !DebugLogviewFragment.this.shouldDisplayMessage(debugData.line)) {
                        return;
                    }
                    DebugLogviewFragment.this.logAdapter.addData(debugData.line);
                    if (DebugLogviewFragment.this.logAdapter.getItemCount() > 0) {
                        DebugLogviewFragment.this.binding.rcv.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.DebugLogviewFragment.18.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (DebugLogviewFragment.this.isFixed || DebugLogviewFragment.this.logAdapter.isPressing() || DebugLogviewFragment.this.binding.rcv.getLayoutManager() == null) {
                                    return;
                                }
                                DebugLogviewFragment.this.binding.rcv.getLayoutManager().scrollToPosition(DebugLogviewFragment.this.logAdapter.getItemCount() - 1);
                            }
                        }, 100L);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshInsAngleViews() {
        this.binding.tvInsRoll.setText(String.format("%s：%s|%s", getString(R$string.roll_angle), formatFixed(this.naviRoll, 2), formatFixed(this.ahrsRollError, 2)));
        this.binding.tvInsPitch.setText(String.format("%s：%s|%s", getString(R$string.pitch_angle), formatFixed(this.naviPitch, 2), formatFixed(this.ahrsPitchError, 2)));
        this.binding.tvInsHeading.setText(String.format("%s：%s|%s", getString(R$string.heading_angle), formatFixed(this.naviHeading, 2), formatFixed(this.ahrsHeadingError, 2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatFixed(double d, int i) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return String.valueOf(d);
        }
        if (i < 0) {
            i = 0;
        }
        return String.format(Locale.US, "%." + i + Proj4Keyword.f, Double.valueOf(d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshInsState(InsNavi insNavi) {
        boolean z = true;
        if (YCTApplication.getInstance().isH5Pro()) {
            if ((insNavi.insStaus & InsStatusEnum.GNSSLOST.getStatus()) != 0) {
                this.binding.tvInsStatus.setText(R$string.lost_star);
            } else if ((insNavi.insStaus & InsStatusEnum.GNSSREJECT.getStatus()) != 0) {
                this.binding.tvInsStatus.setText(R$string.ins_invalid);
            } else if ((insNavi.insStaus & InsStatusEnum.TILTREJECT.getStatus()) != 0) {
                this.binding.tvInsStatus.setText(R$string.swing);
            } else if ((insNavi.insStaus & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                this.binding.tvInsStatus.setText(R$string.sensor_offline);
            } else if ((insNavi.insStaus & InsStatusEnum.READY.getStatus()) != 0) {
                this.binding.tvInsStatus.setText(R$string.ins_ok);
            }
            z = false;
        } else if ((insNavi.insStaus & InsStatusEnum.VERTICAL.getStatus()) != 0) {
            this.binding.tvInsStatus.setText(R$string.arm_vertical);
        } else {
            this.binding.tvInsStatus.setText(R$string.arm_tilt);
            z = false;
        }
        this.binding.tvInsStatus.setSelected(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldDisplayMessage(String str) {
        if (str.contains(DebugLogCache.INS)) {
            return this.filterList.contains(DebugLogCache.INS);
        }
        if (str.contains(DebugLogCache.BESTPOSA)) {
            return this.filterList.contains(DebugLogCache.BESTPOSA);
        }
        if (str.contains(DebugLogCache.GPSNR)) {
            return this.filterList.contains(DebugLogCache.GPSNR);
        }
        if (str.contains(DebugLogCache.GPGST)) {
            return this.filterList.contains(DebugLogCache.GPGST);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustNsvHeight() {
        NestedScrollView nestedScrollView;
        int bottom;
        FragmentDebugLogviewBinding fragmentDebugLogviewBinding = this.binding;
        if (fragmentDebugLogviewBinding == null || (nestedScrollView = fragmentDebugLogviewBinding.nsv) == null || fragmentDebugLogviewBinding.rltBest == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = nestedScrollView.getLayoutParams();
        if ((layoutParams.height == 0 && (layoutParams instanceof LinearLayout.LayoutParams) && ((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) || (bottom = this.binding.rltBest.getBottom() + this.binding.lltInfo.getPaddingBottom()) <= 0 || layoutParams.height == bottom) {
            return;
        }
        layoutParams.height = bottom;
        this.binding.nsv.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshData(GGAEntity gGAEntity) {
        String string;
        switch (gGAEntity.quality) {
            case 0:
                string = getString(R$string.invalid_solution);
                break;
            case 1:
                string = getString(R$string.singlepoint_solution);
                break;
            case 2:
                string = getString(R$string.diff_solution);
                break;
            case 3:
                string = getString(R$string.invalid_solution);
                break;
            case 4:
                string = getString(R$string.fixed_solution);
                break;
            case 5:
                string = getString(R$string.float_solution);
                break;
            case 6:
                string = getString(R$string.calcul_solution);
                break;
            case 7:
                string = getString(R$string.base_fixed);
                break;
            case 8:
                string = getString(R$string.UWL);
                break;
            case 9:
                string = getString(R$string.sbas_solution);
                break;
            default:
                string = getString(R$string.unknown_solution) + gGAEntity.quality;
                break;
        }
        this.binding.tvQuality.setText(string);
        TextView textView = this.binding.tvQuality;
        int i = gGAEntity.quality;
        textView.setSelected(i == 4 || (gGAEntity.deviceType == DeviceType.BASE && i == 7));
        this.binding.tvUTC.setText(String.format("%s：%s", getString(R$string.utc_time), TimeConverter.formatUTCTime(gGAEntity.utc)));
    }
}
