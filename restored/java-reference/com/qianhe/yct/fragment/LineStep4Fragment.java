package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.gson.Gson;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.workchecker.DitchPositionChecker;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.line.LineWorkActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentLineStep4Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.LineStep4Fragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;
import java.util.Queue;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineStep4Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentLineStep4Binding binding;
    private LineEntity initEntity;
    private boolean isH5Pro;
    private LineEntity lineEntity;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentLineStep4Binding.inflate(getLayoutInflater());
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
            this.initEntity = (LineEntity) arguments.getSerializable("initEntity");
            this.lineEntity = (LineEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
        refreshData();
    }

    /* renamed from: com.qianhe.yct.fragment.LineStep4Fragment$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LineStep4Fragment.this.binding.ivToggle.setSelected(!LineStep4Fragment.this.binding.ivToggle.isSelected());
            LineStep4Fragment.this.binding.lltSpacing.setVisibility(LineStep4Fragment.this.binding.ivToggle.isSelected() ? 0 : 8);
            if (LineStep4Fragment.this.binding.ivToggle.isSelected()) {
                LineStep4Fragment.this.binding.nsv.post(new Runnable() { // from class: com.qianhe.yct.fragment.LineStep4Fragment$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LineStep4Fragment.AnonymousClass1 anonymousClass1 = this.f$0;
                        LineStep4Fragment.this.binding.nsv.smoothScrollTo(0, LineStep4Fragment.this.binding.nsv.getChildAt(0).getHeight());
                    }
                });
            }
        }
    }

    private void initView() {
        this.binding.lltToggle.setOnClickListener(new AnonymousClass1());
        this.binding.edtSpacing.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.LineStep4Fragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LineEntity lineEntity = LineStep4Fragment.this.lineEntity;
                LineStep4Fragment lineStep4Fragment = LineStep4Fragment.this;
                lineEntity.pileSpacing = lineStep4Fragment.formatOtherToMeter(lineStep4Fragment.getGlobalUnit(), LineStep4Fragment.this.binding.edtSpacing.getNumericValue());
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep4Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.LineStep4Fragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineStep4Fragment.this.binding.ivToggle.isSelected() && LineStep4Fragment.this.binding.edtSpacing.getNumericValue() == 0.0d) {
                    ((BaseActivity) LineStep4Fragment.this.requireActivity()).showToastDialog(LineStep4Fragment.this.getString(R$string.please_enter_line_params));
                    return;
                }
                if (LineStep4Fragment.this.binding.ivToggle.isSelected()) {
                    LineStep4Fragment lineStep4Fragment = LineStep4Fragment.this;
                    if (lineStep4Fragment.formatOtherToMeter(lineStep4Fragment.getGlobalUnit(), LineStep4Fragment.this.binding.edtSpacing.getNumericValue()) > 5000.0d) {
                        ((BaseActivity) LineStep4Fragment.this.requireActivity()).showToastDialog(LineStep4Fragment.this.getString(R$string.interval_exceeds_limit));
                        return;
                    }
                }
                Queue<LineEntity> queueCreateEntity = LineStep4Fragment.this.createEntity();
                if (LineStep4Fragment.this.lineEntity.id == 0) {
                    for (LineEntity lineEntity : queueCreateEntity) {
                        String str = "插入直线：" + lineEntity.name;
                        LineStep4Fragment.this.lineEntity.id = DatabaseManager.getInstance(LineStep4Fragment.this.requireContext()).insert(lineEntity);
                    }
                } else if (!LineStep4Fragment.this.initEntity.equals(LineStep4Fragment.this.lineEntity)) {
                    LineStep4Fragment.this.lineEntity.updateTime = System.currentTimeMillis() / 1000;
                    DatabaseManager.getInstance(LineStep4Fragment.this.requireContext()).updateEntityById(LineStep4Fragment.this.lineEntity);
                    NetworkUserLoader.getInstance().modifyProject(LineStep4Fragment.this.mINS, LineStep4Fragment.this.lineEntity);
                }
                if (LineStep4Fragment.this.initEntity.id <= 0 && (LineStep4Fragment.this.lineEntity.spacing > 0.0d || queueCreateEntity.size() > 1)) {
                    LineStep4Fragment.this.requireActivity().finish();
                    return;
                }
                Intent intent = new Intent();
                intent.setClass(LineStep4Fragment.this.requireActivity(), LineWorkActivity.class);
                intent.putExtra("id", LineStep4Fragment.this.lineEntity.id);
                LineStep4Fragment.this.startActivity(intent);
            }
        });
        showData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Queue<LineEntity> createEntity() {
        ArrayDeque arrayDeque;
        int i;
        char c = 0;
        char c2 = 1;
        ArrayDeque arrayDeque2 = new ArrayDeque();
        this.lineEntity.showUnit = getGlobalUnit();
        this.lineEntity.pileSpacing = this.binding.ivToggle.isSelected() ? formatOtherToMeter(getGlobalUnit(), this.binding.edtSpacing.getNumericValue()) : 0.0d;
        LineEntity lineEntity = this.lineEntity;
        List<double[][]> listGenerateParallelLines = DitchPositionChecker.generateParallelLines(new double[]{lineEntity.east1, lineEntity.north1}, new double[]{lineEntity.east2, lineEntity.north2}, lineEntity.spacing, lineEntity.leftItems, lineEntity.rigthItems);
        String str = "直线总条数：" + listGenerateParallelLines.size();
        arrayDeque2.add(this.lineEntity);
        int i2 = 0;
        while (i2 < listGenerateParallelLines.size()) {
            LineEntity lineEntity2 = (LineEntity) new Gson().fromJson(new Gson().toJson(this.lineEntity), LineEntity.class);
            double[][] dArr = listGenerateParallelLines.get(i2);
            int i3 = this.lineEntity.leftItems;
            if (i2 < i3) {
                lineEntity2.name = this.lineEntity.name + "_" + getString(R$string.parallel_lines) + "L" + (i2 + 1);
            } else if (i2 > i3) {
                lineEntity2.name = this.lineEntity.name + "_" + getString(R$string.parallel_lines) + Proj4Keyword.R + (i2 - this.lineEntity.leftItems);
            } else {
                arrayDeque = arrayDeque2;
                i = 1;
                i2 += i;
                arrayDeque2 = arrayDeque;
                c = 0;
                c2 = 1;
            }
            LineEntity lineEntity3 = this.lineEntity;
            lineEntity2.id = lineEntity3.id;
            lineEntity2.type = lineEntity3.type;
            lineEntity2.createTime = lineEntity3.createTime;
            lineEntity2.updateTime = lineEntity3.updateTime;
            lineEntity2.version = lineEntity3.version;
            double[] dArr2 = dArr[c];
            double[] dArr3 = dArr[c2];
            String str2 = "平行线 -> A:" + Arrays.toString(dArr2) + "，B:" + Arrays.toString(dArr3);
            lineEntity2.east1 = dArr2[c];
            lineEntity2.north1 = dArr2[c2];
            GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
            double d = dArr2[c];
            double d2 = dArr2[c2];
            double d3 = this.lineEntity.targetElevation1;
            double[] dArr4 = new double[3];
            dArr4[0] = d;
            dArr4[c2] = d2;
            dArr4[2] = d3;
            double[] dArrConvertGAUSSXYToGeodetic = gnssCoordConvertManager.convertGAUSSXYToGeodetic(dArr4);
            lineEntity2.targetLon1 = dArrConvertGAUSSXYToGeodetic[0];
            lineEntity2.targetLat1 = dArrConvertGAUSSXYToGeodetic[c2];
            lineEntity2.east2 = dArr3[0];
            lineEntity2.north2 = dArr3[c2];
            GnssCoordConvertManager gnssCoordConvertManager2 = GnssCoordConvertManager.getInstance();
            double d4 = dArr3[0];
            double d5 = dArr3[c2];
            arrayDeque = arrayDeque2;
            i = 1;
            double[] dArrConvertGAUSSXYToGeodetic2 = gnssCoordConvertManager2.convertGAUSSXYToGeodetic(new double[]{d4, d5, this.lineEntity.targetElevation2});
            lineEntity2.targetLon2 = dArrConvertGAUSSXYToGeodetic2[0];
            lineEntity2.targetLat2 = dArrConvertGAUSSXYToGeodetic2[1];
            LineEntity lineEntity4 = this.lineEntity;
            lineEntity2.coordinateSystem = lineEntity4.coordinateSystem;
            lineEntity2.corsName = lineEntity4.corsName;
            lineEntity2.corsHost = lineEntity4.corsHost;
            lineEntity2.corsPort = lineEntity4.corsPort;
            lineEntity2.corsMount = lineEntity4.corsMount;
            lineEntity2.baseStationLon = lineEntity4.baseStationLon;
            lineEntity2.baseStationLat = lineEntity4.baseStationLat;
            lineEntity2.baseStationElev = lineEntity4.baseStationElev;
            arrayDeque.add(lineEntity2);
            i2 += i;
            arrayDeque2 = arrayDeque;
            c = 0;
            c2 = 1;
        }
        return arrayDeque2;
    }

    private void showData() {
        this.binding.ivToggle.setSelected(this.lineEntity.pileSpacing > 0.0d);
        FragmentLineStep4Binding fragmentLineStep4Binding = this.binding;
        fragmentLineStep4Binding.lltSpacing.setVisibility(fragmentLineStep4Binding.ivToggle.isSelected() ? 0 : 8);
        this.binding.edtSpacing.setText(this.lineEntity.pileSpacing == 0.0d ? "" : formatCoords(formatMetertoOther(getGlobalUnit(), this.lineEntity.pileSpacing), 3));
    }

    private void refreshData() {
        this.binding.customDropdownSpacing.initUnit(requireContext(), getGlobalUnit());
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
