package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentOnepointAreaStpe2Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.NumericEditText;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OnePointAreaStep2Fragment extends BaseProjectFragment {
    private BaseStationEntity baseStationInfo;
    private FragmentOnepointAreaStpe2Binding binding;
    private OnePointAreaEntity initEntity;
    private InsNavi mINS;
    private OnePointAreaEntity onePointAreaEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentOnepointAreaStpe2Binding.inflate(getLayoutInflater());
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
            this.initEntity = (OnePointAreaEntity) arguments.getSerializable("initEntity");
            this.onePointAreaEntity = (OnePointAreaEntity) arguments.getSerializable("baseProEntity");
        }
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep2Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.OnePointAreaStep2Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnePointAreaStep2Fragment onePointAreaStep2Fragment = OnePointAreaStep2Fragment.this;
                onePointAreaStep2Fragment.createEntity(onePointAreaStep2Fragment.onePointAreaEntity);
                if (OnePointAreaStep2Fragment.this.onePointAreaEntity.id == 0) {
                    OnePointAreaStep2Fragment.this.onePointAreaEntity.id = DatabaseManager.getInstance(OnePointAreaStep2Fragment.this.requireContext()).insert(OnePointAreaStep2Fragment.this.onePointAreaEntity);
                    OnePointAreaStep2Fragment.this.next();
                } else {
                    if (!OnePointAreaStep2Fragment.this.initEntity.equals(OnePointAreaStep2Fragment.this.onePointAreaEntity)) {
                        OnePointAreaStep2Fragment.this.onePointAreaEntity.updateTime = System.currentTimeMillis() / 1000;
                        DatabaseManager.getInstance(OnePointAreaStep2Fragment.this.requireContext()).updateEntityById(OnePointAreaStep2Fragment.this.onePointAreaEntity);
                        NetworkUserLoader.getInstance().modifyProject(OnePointAreaStep2Fragment.this.mINS, OnePointAreaStep2Fragment.this.onePointAreaEntity);
                    }
                    OnePointAreaStep2Fragment.this.next();
                }
            }
        });
        showData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Toast.makeText(requireContext(), R$string.start_jobs, 0).show();
        Intent intent = new Intent(requireContext(), (Class<?>) OnePointAreaWorkActivity.class);
        intent.putExtra("id", this.onePointAreaEntity.id);
        startActivity(intent);
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEntity(OnePointAreaEntity onePointAreaEntity) {
        onePointAreaEntity.ratioE = this.binding.edtRatioE.getNumericValue();
        onePointAreaEntity.ratioN = this.binding.edtRatioN.getNumericValue();
        BaseStationEntity baseStationEntity = this.baseStationInfo;
        if (baseStationEntity != null) {
            onePointAreaEntity.baseStationLon = Double.parseDouble(formatCoords(baseStationEntity.lon, 8));
            onePointAreaEntity.baseStationLat = Double.parseDouble(formatCoords(this.baseStationInfo.lat, 8));
            onePointAreaEntity.baseStationElev = Double.parseDouble(formatCoords(this.baseStationInfo.elev, 3));
        }
    }

    private void showData() {
        NumericEditText numericEditText = this.binding.edtRatioE;
        double d = this.onePointAreaEntity.ratioE;
        numericEditText.setText(d == 0.0d ? "0" : formatDouble(d));
        NumericEditText numericEditText2 = this.binding.edtRatioN;
        double d2 = this.onePointAreaEntity.ratioN;
        numericEditText2.setText(d2 != 0.0d ? formatDouble(d2) : "0");
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
