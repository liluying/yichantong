package com.qianhe.yct.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.Observer;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.UnitEnum;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.UnitConvertUtils;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GetPosSmoothResponse;
import com.qianhe.yct.R$string;
import com.qianhe.yct.SplashActivity;
import com.qianhe.yct.activity.AppConfigActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.FragmentH5ConfigBinding;
import com.qianhe.yct.dialog.ChooseLanguageDialogFragment;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.ChooseThemeDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.AppConfigJsonUtil;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import com.qianhe.yct.utils.KeyboardUtil;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.ThemeModeManager;
import java.util.ArrayList;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class H5ConfigFragment extends BaseFragment {
    private FragmentH5ConfigBinding binding;
    private DeviceType mDeviceType = DeviceType.ZPY;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentH5ConfigBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(requireActivity());
        DeviceType deviceType = DeviceType.ZPY;
        if (multiBluetoothManager.isDeviceConnected(deviceType)) {
            this.mDeviceType = deviceType;
        } else {
            MultiBluetoothManager multiBluetoothManager2 = MultiBluetoothManager.getInstance(requireActivity());
            DeviceType deviceType2 = DeviceType.BASE;
            if (multiBluetoothManager2.isDeviceConnected(deviceType2)) {
                this.mDeviceType = deviceType2;
            }
        }
        if (((YCTApplication) requireContext().getApplicationContext()).isH5Pro()) {
            this.binding.lltDataSmooth.setVisibility(0);
            EventBus.getDefault().post(new OrderBean(this.mDeviceType, "GET,POS_SMOOTH"));
        } else {
            this.binding.lltDataSmooth.setVisibility(8);
        }
        initView();
        initData();
        if (bundle != null) {
            this.binding.lltAdmin.setVisibility(bundle.getInt("lltAdmin"));
        }
        ConfigLayoutHelper.applyContentDirectionByLanguage(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("lltAdmin", this.binding.lltAdmin.getVisibility());
    }

    private void initView() {
        updateThemeModeValue();
        this.binding.tvUnitPreference.setText(getUnitLabel(AppConfigManager.getInstance().getUnitPreference()));
        this.binding.tvUnitPreference.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, H5ConfigFragment.this.getString(R$string.unit_preference));
                bundle.putStringArrayList("list", H5ConfigFragment.this.getUnitLabelList());
                bundle.putInt("currentIndex", UnitEnum.typeToSelectableIndex(AppConfigManager.getInstance().getUnitPreference()));
                bundle.putString("requestKey", "unitpref");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvDistanceProjectStarting.setText(AppConfigManager.getInstance().getAppConfig().details.display_distance_starting_point == 1 ? R$string.display : R$string.hide);
        this.binding.tvVerifyAccuracyHorizontalError.setText(AppConfigManager.getInstance().getAppConfig().details.display_verify_horizontal_error == 1 ? R$string.display : R$string.hide);
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "GET,FEATURES"));
        this.binding.tvDiffDataSource.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                H5ConfigFragment.this.startActivity(new Intent(H5ConfigFragment.this.requireContext(), (Class<?>) DiffDataConfigActivity.class));
            }
        });
        this.binding.tvLanguage.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseLanguageDialogFragment chooseLanguageDialogFragment = new ChooseLanguageDialogFragment();
                chooseLanguageDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseLanguageDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString("requestKey", "changelanguage");
                chooseLanguageDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvThemeModeValues.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseThemeDialogFragment chooseThemeDialogFragment = new ChooseThemeDialogFragment();
                Bundle bundle = new Bundle();
                bundle.putString("requestKey", "change_theme");
                chooseThemeDialogFragment.setArguments(bundle);
                chooseThemeDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseThemeDialogFragment");
            }
        });
        this.binding.tvDataSmoot.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, H5ConfigFragment.this.getString(R$string.data_smooth));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(H5ConfigFragment.this.getString(R$string.close));
                arrayList.add("1" + H5ConfigFragment.this.getString(R$string.second));
                arrayList.add("2" + H5ConfigFragment.this.getString(R$string.second));
                arrayList.add("3" + H5ConfigFragment.this.getString(R$string.second));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", arrayList.indexOf(H5ConfigFragment.this.binding.tvDataSmoot.getText().toString().trim()));
                bundle.putString("requestKey", "datasmoot");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.edtWorktolerance.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtWorktolerance.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtWorktolerance.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtWorktolerance.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.work_tolerance) {
                        AppConfigManager.getInstance().setWorktolerance((float) H5ConfigFragment.this.binding.edtWorktolerance.getNumericValue());
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtWorktolerance.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtPoleHeight.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                float meter = (float) UnitConvertUtils.toMeter(AppConfigManager.getInstance().getUnitPreference(), H5ConfigFragment.this.binding.edtPoleHeight.getNumericValue());
                if (meter < 0.0f) {
                    H5ConfigFragment.this.binding.edtPoleHeight.setSelected(true);
                    H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                    h5ConfigFragment.showTipDialog(h5ConfigFragment.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
                } else {
                    H5ConfigFragment.this.binding.edtPoleHeight.setSelected(false);
                    if (meter != AppConfigManager.getInstance().getPoleHeight()) {
                        AppConfigManager.getInstance().setPoleHeight(meter);
                        H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                        h5ConfigFragment2.showToastDialog(h5ConfigFragment2.getString(R$string.config_success));
                    }
                }
            }
        });
        this.binding.edtHRMS.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.8
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtHRMS.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtHRMS.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtHRMS.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.hrms_limit) {
                        AppConfigManager.getInstance().setHRMSLimit((float) H5ConfigFragment.this.binding.edtHRMS.getNumericValue());
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtHRMS.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtVRMS.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.9
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtVRMS.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtVRMS.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtVRMS.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.vrms_limit) {
                        AppConfigManager.getInstance().setVRMSLimit((float) H5ConfigFragment.this.binding.edtVRMS.getNumericValue());
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtVRMS.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.tvDistanceProjectStarting.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, H5ConfigFragment.this.getString(R$string.distance_from_project_starting));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(H5ConfigFragment.this.getString(R$string.hide));
                arrayList.add(H5ConfigFragment.this.getString(R$string.display));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", arrayList.indexOf(H5ConfigFragment.this.binding.tvDistanceProjectStarting.getText().toString().trim()));
                bundle.putString("requestKey", "distanceformproject");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvVerifyAccuracyHorizontalError.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, H5ConfigFragment.this.getString(R$string.verify_accuracy_horizontal_error));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(H5ConfigFragment.this.getString(R$string.hide));
                arrayList.add(H5ConfigFragment.this.getString(R$string.display));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", arrayList.indexOf(H5ConfigFragment.this.binding.tvVerifyAccuracyHorizontalError.getText().toString().trim()));
                bundle.putString("requestKey", "verifyaccuracyhorizontalerror");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.edtBaseMobilityThreshold.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.12
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtBaseMobilityThreshold.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtBaseMobilityThreshold.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtBaseMobilityThreshold.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.base_mobility_threshold) {
                        AppConfigManager.getInstance().setBaseMobilityThreshold((float) H5ConfigFragment.this.binding.edtBaseMobilityThreshold.getNumericValue());
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtBaseMobilityThreshold.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtDop.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.13
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtDop.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtDop.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtDop.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.dop_interval) {
                        AppConfigManager.getInstance().setDopInterval((float) H5ConfigFragment.this.binding.edtDop.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,DOP,ONTIME," + ((float) H5ConfigFragment.this.binding.edtDop.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtDop.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtGst.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.14
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtGst.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtGst.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtGst.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.gst_interval) {
                        AppConfigManager.getInstance().setGstInterval((float) H5ConfigFragment.this.binding.edtGst.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,GST,ONTIME," + ((float) H5ConfigFragment.this.binding.edtGst.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtGst.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtSnr.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.15
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtSnr.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtSnr.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtSnr.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.snr_interval) {
                        AppConfigManager.getInstance().setSnrInterval((float) H5ConfigFragment.this.binding.edtSnr.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,SNR,ONTIME," + ((float) H5ConfigFragment.this.binding.edtSnr.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtSnr.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtSav.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.16
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtSav.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtSav.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtSav.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.sav_interval) {
                        AppConfigManager.getInstance().setSavInterval((float) H5ConfigFragment.this.binding.edtSav.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,SAV,ONTIME," + ((float) H5ConfigFragment.this.binding.edtSav.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtSav.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtSau.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.17
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtSau.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtSau.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtSau.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.sau_interval) {
                        AppConfigManager.getInstance().setSauInterval((float) H5ConfigFragment.this.binding.edtSau.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,SAU,ONTIME," + ((float) H5ConfigFragment.this.binding.edtSau.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtSau.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtRefstation.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.18
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtRefstation.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtRefstation.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtRefstation.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.refstation_interval) {
                        AppConfigManager.getInstance().setRefstationInterval((float) H5ConfigFragment.this.binding.edtRefstation.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,REFSTATION,ONTIME," + ((float) H5ConfigFragment.this.binding.edtRefstation.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtRefstation.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtIns.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.19
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtIns.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtIns.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtIns.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.ins_interval) {
                        AppConfigManager.getInstance().setInsInterval((float) H5ConfigFragment.this.binding.edtIns.getNumericValue());
                        AppConfigManager.getInstance().setInsUnavailableCount((int) Math.ceil((1.0d / H5ConfigFragment.this.binding.edtIns.getNumericValue()) * 2.0d));
                        H5ConfigFragment.this.binding.edtInsUnavailableCount.setText(AppConfigManager.getInstance().getAppConfig().details.ins_unavailable_count + "");
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,INS.NAVI,ONTIME," + ((float) H5ConfigFragment.this.binding.edtIns.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtIns.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtExtsensor1.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.20
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtExtsensor1.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtExtsensor1.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtExtsensor1.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.extsensor_1) {
                        AppConfigManager.getInstance().setExtsensor1((float) H5ConfigFragment.this.binding.edtExtsensor1.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,EXTSENSOR-1,ONTIME," + ((float) H5ConfigFragment.this.binding.edtExtsensor1.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtExtsensor1.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtInsUnavailableCount.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.21
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (H5ConfigFragment.this.binding.edtInsUnavailableCount.getNumericValue() > 0.0d) {
                    H5ConfigFragment.this.binding.edtInsUnavailableCount.setSelected(false);
                    if (H5ConfigFragment.this.binding.edtInsUnavailableCount.getNumericValue() != AppConfigManager.getInstance().getAppConfig().details.ins_unavailable_count) {
                        AppConfigManager.getInstance().setInsUnavailableCount((int) H5ConfigFragment.this.binding.edtInsUnavailableCount.getNumericValue());
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtInsUnavailableCount.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtGGa.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.22
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtGGa.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtGGa.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtGGa.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.gga_interval) {
                        AppConfigManager.getInstance().setGGaInterval((float) H5ConfigFragment.this.binding.edtGGa.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,GGA,ONTIME," + ((float) H5ConfigFragment.this.binding.edtGGa.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtGGa.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtBestpos.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.23
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) H5ConfigFragment.this.binding.edtBestpos.getNumericValue()) >= 0.01f) {
                    H5ConfigFragment.this.binding.edtBestpos.setSelected(false);
                    if (((float) H5ConfigFragment.this.binding.edtBestpos.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.bestpos_interval) {
                        AppConfigManager.getInstance().setBestposInterval((float) H5ConfigFragment.this.binding.edtBestpos.getNumericValue());
                        EventBus.getDefault().post(new OrderBean(H5ConfigFragment.this.mDeviceType, "LOG,BESTPOS,ONTIME," + ((float) H5ConfigFragment.this.binding.edtBestpos.getNumericValue())));
                        H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                        h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                H5ConfigFragment.this.binding.edtBestpos.setSelected(true);
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showTipDialog(h5ConfigFragment2.getString(R$string.invalid_config), H5ConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.tvReset.setOnClickListener(new AnonymousClass24());
        this.binding.tvSolutionMode.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(H5ConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, H5ConfigFragment.this.getString(R$string.solution_mode));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(H5ConfigFragment.this.getString(R$string.strict_mode));
                arrayList.add(H5ConfigFragment.this.getString(R$string.normal_mode));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", arrayList.indexOf(H5ConfigFragment.this.binding.tvSolutionMode.getText().toString().trim()));
                bundle.putString("requestKey", "solutionmode");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        AppConfig appConfig = AppConfigManager.getInstance().getAppConfig();
        this.binding.edtWorktolerance.setText(formatFloat(appConfig.details.work_tolerance));
        int unitPreference = AppConfigManager.getInstance().getUnitPreference();
        this.binding.tvPoleHeightUnit.setText(UnitEnum.getSymbol(unitPreference));
        this.binding.edtPoleHeight.setText(formatFloat((float) UnitConvertUtils.fromMeter(unitPreference, appConfig.details.pole_height, 3)));
        this.binding.edtDop.setText(formatFloat(appConfig.details.dop_interval));
        this.binding.edtGst.setText(formatFloat(appConfig.details.gst_interval));
        this.binding.edtSnr.setText(formatFloat(appConfig.details.snr_interval));
        this.binding.edtSav.setText(formatFloat(appConfig.details.sav_interval));
        this.binding.edtSau.setText(formatFloat(appConfig.details.sau_interval));
        this.binding.edtRefstation.setText(formatFloat(appConfig.details.refstation_interval));
        this.binding.edtIns.setText(formatFloat(appConfig.details.ins_interval));
        this.binding.edtExtsensor1.setText(formatFloat(appConfig.details.extsensor_1));
        this.binding.edtInsUnavailableCount.setText(formatFloat(appConfig.details.ins_unavailable_count));
        this.binding.edtGGa.setText(formatFloat(appConfig.details.gga_interval));
        this.binding.edtBestpos.setText(formatFloat(appConfig.details.bestpos_interval));
        this.binding.edtHRMS.setText(formatFloat(appConfig.details.hrms_limit));
        this.binding.edtVRMS.setText(formatFloat(appConfig.details.vrms_limit));
        this.binding.edtBaseMobilityThreshold.setText(formatFloat(appConfig.details.base_mobility_threshold));
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.binding.lltBaseMobilityThreshold.setVisibility(8);
        }
    }

    /* renamed from: com.qianhe.yct.fragment.H5ConfigFragment$24, reason: invalid class name */
    class AnonymousClass24 implements View.OnClickListener {
        AnonymousClass24() {
        }

        /* renamed from: com.qianhe.yct.fragment.H5ConfigFragment$24$1, reason: invalid class name */
        class AnonymousClass1 implements TipsDialogFragment.OnConfirmListener {
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            AnonymousClass1() {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                if (AppConfigManager.getInstance().resetConfig()) {
                    NetworkUserLoader.getInstance().setConfig(AppConfigJsonUtil.detailsToJsonStringValues(AppConfigManager.getInstance().getAppConfig()));
                    H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
                    h5ConfigFragment.showLoadingDialog(h5ConfigFragment.getString(R$string.please_wait));
                    H5ConfigFragment.this.binding.tvReset.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.24.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (H5ConfigFragment.this.isAdded()) {
                                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                                h5ConfigFragment2.showLoadingDialog(h5ConfigFragment2.getString(R$string.restarting));
                                H5ConfigFragment.this.binding.tvReset.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.24.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (H5ConfigFragment.this.isAdded()) {
                                            ((AppConfigActivity) H5ConfigFragment.this.requireActivity()).restartApp();
                                        }
                                    }
                                }, 500L);
                            }
                        }
                    }, 500L);
                    return;
                }
                H5ConfigFragment h5ConfigFragment2 = H5ConfigFragment.this;
                h5ConfigFragment2.showToastDialog(h5ConfigFragment2.getString(R$string.operation_failed));
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            H5ConfigFragment h5ConfigFragment = H5ConfigFragment.this;
            h5ConfigFragment.showTipDialog(h5ConfigFragment.getString(R$string.reset_tips), H5ConfigFragment.this.getString(R$string.confirm), new AnonymousClass1());
        }
    }

    private void initData() {
        ((AppConfigActivity) requireActivity()).observeAdmin().observe(requireActivity(), new Observer() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.26
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (bool.booleanValue()) {
                    H5ConfigFragment.this.binding.lltAdmin.setVisibility(0);
                }
            }
        });
        getChildFragmentManager().setFragmentResultListener("changelanguage", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                H5ConfigFragment.m2410$r8$lambda$R7y8TZF2v38nqjNEZSr5QcRsvQ(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("change_theme", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                H5ConfigFragment.$r8$lambda$NGYQriC6NOZT3KVYICmTJbX27aY(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("datasmoot", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda2
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) throws JSONException {
                H5ConfigFragment.$r8$lambda$7Gmf9dI1lydy98gJaJX3s5SqMVw(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("unitpref", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) throws JSONException {
                H5ConfigFragment.$r8$lambda$VFi7nCrC2XnhtdvAeI8SWQOoayI(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("distanceformproject", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda4
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) throws JSONException {
                H5ConfigFragment.$r8$lambda$80xRR_1uonegcgQSfk0VB3m6J3Q(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("verifyaccuracyhorizontalerror", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda5
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) throws JSONException {
                H5ConfigFragment.$r8$lambda$aLwZyJ48fRdBbhSNvbm3TgVBOis(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("solutionmode", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment$$ExternalSyntheticLambda6
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                H5ConfigFragment.m2411$r8$lambda$qtzu6DC1Go9DKCuQMXuIJAFZHY(this.f$0, str, bundle);
            }
        });
        new KeyboardUtil(requireActivity(), new KeyboardUtil.OnKeyboardVisibilityListener() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.27
            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardHidden() {
                H5ConfigFragment.this.binding.edtDop.clearFocus();
                H5ConfigFragment.this.binding.edtGst.clearFocus();
                H5ConfigFragment.this.binding.edtSnr.clearFocus();
                H5ConfigFragment.this.binding.edtSav.clearFocus();
                H5ConfigFragment.this.binding.edtSau.clearFocus();
                H5ConfigFragment.this.binding.edtRefstation.clearFocus();
                H5ConfigFragment.this.binding.edtIns.clearFocus();
                H5ConfigFragment.this.binding.edtGGa.clearFocus();
                H5ConfigFragment.this.binding.edtBestpos.clearFocus();
                H5ConfigFragment.this.binding.edtWorktolerance.clearFocus();
                H5ConfigFragment.this.binding.edtWorktolerance.clearFocus();
                H5ConfigFragment.this.binding.edtVRMS.clearFocus();
                H5ConfigFragment.this.binding.edtHRMS.clearFocus();
                H5ConfigFragment.this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.H5ConfigFragment.27.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (H5ConfigFragment.this.isAdded()) {
                            ((AppConfigActivity) H5ConfigFragment.this.requireActivity()).keyboardShown = false;
                        }
                    }
                }, 100L);
            }

            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardShown() {
                if (H5ConfigFragment.this.isAdded()) {
                    ((AppConfigActivity) H5ConfigFragment.this.requireActivity()).keyboardShown = true;
                }
            }
        });
    }

    /* renamed from: $r8$lambda$R7y8TZF2-v38nqjNEZSr5QcRsvQ, reason: not valid java name */
    public static /* synthetic */ void m2410$r8$lambda$R7y8TZF2v38nqjNEZSr5QcRsvQ(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) {
        h5ConfigFragment.getClass();
        if (str.equals("changelanguage")) {
            LanguagePrefs.saveLanguage(h5ConfigFragment.requireContext(), bundle.getString("languageCode"));
            FragmentActivity fragmentActivityRequireActivity = h5ConfigFragment.requireActivity();
            h5ConfigFragment.coverWithWelcomeBackground(fragmentActivityRequireActivity, SplashActivity.resolveWelcomeDrawable(h5ConfigFragment.requireContext()));
            Intent intent = new Intent(h5ConfigFragment.requireContext(), (Class<?>) SplashActivity.class);
            intent.setFlags(268468224);
            h5ConfigFragment.startActivity(intent);
            fragmentActivityRequireActivity.overridePendingTransition(0, 0);
            ActivityCompat.finishAffinity(fragmentActivityRequireActivity);
        }
    }

    public static /* synthetic */ void $r8$lambda$NGYQriC6NOZT3KVYICmTJbX27aY(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) {
        h5ConfigFragment.getClass();
        String string = bundle.getString("themeMode");
        if (string != null) {
            ThemeModeManager.setThemeMode(h5ConfigFragment.requireContext(), string);
            h5ConfigFragment.updateThemeModeValue();
        }
    }

    public static /* synthetic */ void $r8$lambda$7Gmf9dI1lydy98gJaJX3s5SqMVw(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) throws JSONException {
        ArrayList<String> stringArrayList;
        h5ConfigFragment.getClass();
        if (!str.equals("datasmoot") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
            return;
        }
        String str2 = stringArrayList.get(bundle.getInt("index"));
        h5ConfigFragment.binding.tvDataSmoot.setText(str2);
        if (str2.equals(h5ConfigFragment.getString(R$string.close))) {
            str2 = "0" + h5ConfigFragment.getString(R$string.second);
        }
        int iIndexOf = str2.indexOf(h5ConfigFragment.getString(R$string.second));
        if (iIndexOf == -1) {
            iIndexOf = str2.length() - 1;
        }
        String strSubstring = str2.substring(0, iIndexOf);
        if (Integer.parseInt(strSubstring) != AppConfigManager.getInstance().getAppConfig().details.data_smoot) {
            AppConfigManager.getInstance().setDataSmoot(Integer.parseInt(strSubstring));
            EventBus.getDefault().post(new OrderBean(h5ConfigFragment.mDeviceType, "SET,POS_SMOOTH," + Integer.parseInt(strSubstring)));
            h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
        }
    }

    public static /* synthetic */ void $r8$lambda$VFi7nCrC2XnhtdvAeI8SWQOoayI(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) throws JSONException {
        ArrayList<String> stringArrayList;
        h5ConfigFragment.getClass();
        if (!str.equals("unitpref") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
            return;
        }
        int i = bundle.getInt("index");
        int iSelectableIndexToType = UnitEnum.selectableIndexToType(i);
        h5ConfigFragment.binding.tvUnitPreference.setText(stringArrayList.get(i));
        if (iSelectableIndexToType != AppConfigManager.getInstance().getUnitPreference()) {
            AppConfigManager.getInstance().setUnitPreference(iSelectableIndexToType);
            h5ConfigFragment.binding.tvPoleHeightUnit.setText(UnitEnum.getSymbol(iSelectableIndexToType));
            h5ConfigFragment.binding.edtPoleHeight.setText(h5ConfigFragment.formatFloat((float) UnitConvertUtils.fromMeter(iSelectableIndexToType, AppConfigManager.getInstance().getPoleHeight(), 3)));
            h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
        }
    }

    public static /* synthetic */ void $r8$lambda$80xRR_1uonegcgQSfk0VB3m6J3Q(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) throws JSONException {
        ArrayList<String> stringArrayList;
        h5ConfigFragment.getClass();
        if (!str.equals("distanceformproject") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
            return;
        }
        int i = bundle.getInt("index");
        h5ConfigFragment.binding.tvDistanceProjectStarting.setText(stringArrayList.get(i));
        if (i != AppConfigManager.getInstance().getAppConfig().details.display_distance_starting_point) {
            AppConfigManager.getInstance().setDistanceFromProjectVisibility(i);
            h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
        }
    }

    public static /* synthetic */ void $r8$lambda$aLwZyJ48fRdBbhSNvbm3TgVBOis(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) throws JSONException {
        ArrayList<String> stringArrayList;
        h5ConfigFragment.getClass();
        if (!str.equals("verifyaccuracyhorizontalerror") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
            return;
        }
        int i = bundle.getInt("index");
        h5ConfigFragment.binding.tvVerifyAccuracyHorizontalError.setText(stringArrayList.get(i));
        if (i != AppConfigManager.getInstance().getAppConfig().details.display_verify_horizontal_error) {
            AppConfigManager.getInstance().setVerifyAccuracyHorizontalErrorVisibility(i);
            h5ConfigFragment.showToastDialog(h5ConfigFragment.getString(R$string.config_success));
        }
    }

    /* renamed from: $r8$lambda$qtzu6DC1Go9DKCuQMXuIJA-FZHY, reason: not valid java name */
    public static /* synthetic */ void m2411$r8$lambda$qtzu6DC1Go9DKCuQMXuIJAFZHY(H5ConfigFragment h5ConfigFragment, String str, Bundle bundle) {
        ArrayList<String> stringArrayList;
        h5ConfigFragment.getClass();
        if (!str.equals("solutionmode") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
            return;
        }
        h5ConfigFragment.binding.tvSolutionMode.setText(stringArrayList.get(bundle.getInt("index")));
    }

    private void updateThemeModeValue() {
        String string;
        String savedMode = ThemeModeManager.getSavedMode(requireContext());
        String string2 = getString(R$string.theme_select_theme_mode);
        if ("system".equals(savedMode)) {
            string = getString(R$string.theme_select_theme_follow_system);
        } else if ("dark".equals(savedMode)) {
            string = getString(R$string.theme_select_theme_dark);
        } else {
            string = getString(R$string.theme_select_theme_light);
        }
        this.binding.tvThemeModeValues.setText(String.format(Locale.getDefault(), "%s: %s", string2, string));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) throws JSONException {
        if (featuresEvent.value.contains("NO_NTRIP")) {
            AppConfigManager.getInstance().setNtriptype(NtripTypeEnum.SDK.getType());
            this.binding.tvDiffDataSource.setVisibility(8);
        } else {
            this.binding.tvDiffDataSource.setVisibility(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetPosSmoothResponse getPosSmoothResponse) throws JSONException {
        try {
            AppConfigManager.getInstance().setDataSmoot(Integer.parseInt(getPosSmoothResponse.smooth));
            this.binding.tvDataSmoot.setText(Integer.parseInt(getPosSmoothResponse.smooth) > 0 ? getPosSmoothResponse.smooth : getString(R$string.close));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<String> getUnitLabelList() {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i : UnitEnum.getSelectableTypes()) {
            arrayList.add(getUnitLabel(i));
        }
        return arrayList;
    }

    private String getUnitLabel(int i) {
        if (UnitEnum.normalize(i) == UnitEnum.IN.getType()) {
            return getString(R$string.in);
        }
        return getString(R$string.meter);
    }

    private void coverWithWelcomeBackground(Activity activity, int i) {
        Window window = activity.getWindow();
        if (window == null) {
            return;
        }
        window.setBackgroundDrawableResource(i);
        View decorView = window.getDecorView();
        if (decorView instanceof ViewGroup) {
            ImageView imageView = new ImageView(activity);
            imageView.setImageResource(i);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setClickable(true);
            ((ViewGroup) decorView).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
