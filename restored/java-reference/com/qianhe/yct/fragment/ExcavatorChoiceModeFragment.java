package com.qianhe.yct.fragment;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.databinding.FragmentExcavatorChoiceModeBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ChooseSensorDialogFragment;
import com.qianhe.yct.dialog.SensorScanListDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.view.HdImageView;
import org.greenrobot.eventbus.EventBus;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorChoiceModeFragment extends BaseProjectFragment {
    private FragmentExcavatorChoiceModeBinding binding;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private DatabaseManager mDatabaseManager;
    private InsNavi mINS;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorChoiceModeBinding.inflate(getLayoutInflater());
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
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity.localId < 1 && excavatorEntity.mode == 0) {
            this.binding.ivMode1.performClick();
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        showData();
        FragmentExcavatorChoiceModeBinding fragmentExcavatorChoiceModeBinding = this.binding;
        if (fragmentExcavatorChoiceModeBinding != null) {
            fragmentExcavatorChoiceModeBinding.tvContinue.setEnabled(true);
        }
    }

    private void initView() {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseProjectFragment) ExcavatorChoiceModeFragment.this).mSp.edit().putBoolean("show_install_sensor_tips", true).apply();
                ExcavatorChoiceModeFragment.this.showInstallTipsDialog(null);
            }
        };
        this.binding.tvDoubtSensor.setOnClickListener(onClickListener);
        this.binding.tvDoubtSensor4.setOnClickListener(onClickListener);
        this.binding.ivMode1.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorChoiceModeFragment.this.clearModeSelection();
                ExcavatorChoiceModeFragment.this.binding.ivMode1.setSelected(true);
                ExcavatorChoiceModeFragment.this.binding.tvModeDes1.setSelected(true);
                ExcavatorChoiceModeFragment.this.excavatorEntity.mode = ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode();
                ExcavatorChoiceModeFragment.this.excavatorEntity.distanceBucketMeasure = false;
                ExcavatorChoiceModeFragment.this.clearDistanceMeasureIfNeeded();
            }
        });
        this.binding.ivMode3.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (YCTApplication.getInstance().isDemo()) {
                    ExcavatorChoiceModeFragment.this.seclectMode3();
                    return;
                }
                DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(ExcavatorChoiceModeFragment.this.requireActivity()).queryDeviceInfo(YCTApplication.getInstance().getLastDeviceName());
                if (deviceInfoQueryDeviceInfo == null || TextUtils.isEmpty(deviceInfoQueryDeviceInfo.fmwVersion)) {
                    return;
                }
                if (Integer.parseInt(deviceInfoQueryDeviceInfo.fmwVersion.split("\\.")[r4.length - 1]) >= 105) {
                    ExcavatorChoiceModeFragment.this.seclectMode3();
                } else {
                    ((BaseActivity) ExcavatorChoiceModeFragment.this.requireActivity()).showTipDialog(ExcavatorChoiceModeFragment.this.getString(R$string.firmware_version_not_support_action), ExcavatorChoiceModeFragment.this.getString(R$string.ok), null);
                }
            }
        });
        this.binding.ivMode4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (YCTApplication.getInstance().isDemo()) {
                    ExcavatorChoiceModeFragment.this.seclectMode4();
                    return;
                }
                DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(ExcavatorChoiceModeFragment.this.requireActivity()).queryDeviceInfo(YCTApplication.getInstance().getLastDeviceName());
                if (deviceInfoQueryDeviceInfo == null || TextUtils.isEmpty(deviceInfoQueryDeviceInfo.fmwVersion)) {
                    return;
                }
                if (Integer.parseInt(deviceInfoQueryDeviceInfo.fmwVersion.split("\\.")[r4.length - 1]) >= 105) {
                    ExcavatorChoiceModeFragment.this.seclectMode4();
                } else {
                    ((BaseActivity) ExcavatorChoiceModeFragment.this.requireActivity()).showTipDialog(ExcavatorChoiceModeFragment.this.getString(R$string.firmware_version_not_support_action), ExcavatorChoiceModeFragment.this.getString(R$string.ok), null);
                }
            }
        });
        this.binding.tvModeDes1.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.ivMode1.performClick();
            }
        });
        this.binding.tvModeDes3.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.ivMode3.performClick();
            }
        });
        this.binding.tvModeDes4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.binding.ivMode4.performClick();
            }
        });
        this.binding.ivDoubtMode1.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showModeDesDialog(R$string.excavator_mode_simple_title, R$drawable.icon_excavator_all, R$string.excavator_mode_simple_desc);
            }
        });
        this.binding.ivDoubtMode3.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showModeDesDialog(R$string.excavator_mode_sensor_combo_title, R$drawable.icon_all_sensor, R$string.excavator_mode_sensor_combo_desc);
            }
        });
        this.binding.ivDoubtMode4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showModeDesDialog(R$string.excavator_mode_sensor_combo2_title, R$drawable.icon_all_mode4_sensor, R$string.excavator_mode_sensor_combo2_desc);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ExcavatorChoiceModeFragment.this.binding.ivMode1.isSelected() && !ExcavatorChoiceModeFragment.this.binding.ivMode3.isSelected() && !ExcavatorChoiceModeFragment.this.binding.ivMode4.isSelected()) {
                    ((BaseActivity) ExcavatorChoiceModeFragment.this.requireActivity()).showToastDialog(ExcavatorChoiceModeFragment.this.getString(R$string.please_select_measure_mode));
                } else if (ExcavatorChoiceModeFragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
                    ExcavatorChoiceModeFragment.this.checkAndShowInstallTips(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Bundle bundle = new Bundle();
                            bundle.putString(Proj4Keyword.title, ExcavatorChoiceModeFragment.this.getString(R$string.confirm_sensor_status));
                            bundle.putString("requestKey", "clickaction");
                            ChooseSensorDialogFragment.showSafely(ExcavatorChoiceModeFragment.this.getParentFragmentManager(), bundle);
                        }
                    });
                } else {
                    ExcavatorChoiceModeFragment.this.goNext();
                }
            }
        });
        getParentFragmentManager().setFragmentResultListener("clickaction", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.7
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                boolean z = bundle.getBoolean("sensor_scan");
                boolean z2 = bundle.getBoolean("confirm");
                if (!z) {
                    if (z2) {
                        ExcavatorChoiceModeFragment.this.goNext();
                    }
                } else {
                    SensorScanListDialogFragment sensorScanListDialogFragment = new SensorScanListDialogFragment();
                    sensorScanListDialogFragment.show(ExcavatorChoiceModeFragment.this.getParentFragmentManager(), "SensorScanListDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(Proj4Keyword.title, ExcavatorChoiceModeFragment.this.getString(R$string.please_select_sensor));
                    bundle2.putString("requestKey", "sensorscanlist");
                    sensorScanListDialogFragment.setArguments(bundle2);
                }
            }
        });
        getParentFragmentManager().setFragmentResultListener("sensorscanlist", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.8
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                MyBluetoothDevice myBluetoothDevice = (MyBluetoothDevice) bundle.getParcelable("sensor_myBluetoothDevice");
                ChooseSensorDialogFragment chooseSensorDialogFragmentFind = ChooseSensorDialogFragment.find(ExcavatorChoiceModeFragment.this.getParentFragmentManager());
                if (chooseSensorDialogFragmentFind == null || myBluetoothDevice == null) {
                    return;
                }
                chooseSensorDialogFragmentFind.setChooseDevice(myBluetoothDevice);
            }
        });
        showData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearModeSelection() {
        this.binding.ivMode1.setSelected(false);
        this.binding.ivMode3.setSelected(false);
        this.binding.ivMode4.setSelected(false);
        this.binding.tvModeDes1.setSelected(false);
        this.binding.tvModeDes3.setSelected(false);
        this.binding.tvModeDes4.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seclectMode4() {
        clearModeSelection();
        this.binding.ivMode4.setSelected(true);
        this.binding.tvModeDes4.setSelected(true);
        this.excavatorEntity.mode = ExcavatorCalibrateModeEnum.SENSOR.getMode();
        this.excavatorEntity.distanceBucketMeasure = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() {
        FragmentExcavatorChoiceModeBinding fragmentExcavatorChoiceModeBinding = this.binding;
        if (fragmentExcavatorChoiceModeBinding != null) {
            fragmentExcavatorChoiceModeBinding.tvContinue.setEnabled(false);
        }
        beginCalibrateSession();
        EventBus.getDefault().post("next");
    }

    private void beginCalibrateSession() {
        CalibrateLogToFile.discardSession();
        CalibrateSessionHelper.clearAwaitSetParamReply();
        CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seclectMode3() {
        clearModeSelection();
        this.binding.ivMode3.setSelected(true);
        this.binding.tvModeDes3.setSelected(true);
        this.excavatorEntity.mode = ExcavatorCalibrateModeEnum.SENSOR.getMode();
        this.excavatorEntity.distanceBucketMeasure = false;
        clearDistanceMeasureIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDistanceMeasureIfNeeded() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || !excavatorEntity.usesDistanceMeasure()) {
            return;
        }
        this.excavatorEntity.clearMeasureParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndShowInstallTips(Runnable runnable) {
        if (this.mSp.getBoolean("show_install_sensor_tips", true)) {
            showInstallTipsDialog(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInstallTipsDialog(final Runnable runnable) {
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_install_tips, (ViewGroup) null);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        int i = getResources().getDisplayMetrics().widthPixels;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        float f = getResources().getDisplayMetrics().density;
        float f2 = getResources().getConfiguration().orientation == 2 ? 0.68f : 0.9f;
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvTitle);
        AppCompatImageView appCompatImageView = (AppCompatImageView) viewInflate.findViewById(R$id.ivInstallImage);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvContent);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.lltNoMore);
        final ImageView imageView = (ImageView) viewInflate.findViewById(R$id.ivNoMore);
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvPrevious);
        TextView textView4 = (TextView) viewInflate.findViewById(R$id.tvNext);
        textView.setText(R$string.install_attitude_sensor);
        textView2.setText(R$string.install_attitude_sensor_step);
        textView2.setGravity(17);
        textView3.setVisibility(8);
        textView4.setText(runnable != null ? R$string.next : R$string.ok);
        boolean zIsKe76Pro = MultiBluetoothManager.getInstance(requireContext()).isKe76Pro();
        appCompatImageView.setVisibility(0);
        appCompatImageView.setImageResource(zIsKe76Pro ? R$drawable.icon_install_sensor_xfix : R$drawable.icon_install_sensor_yct);
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = (int) (i * f2);
            attributes.height = -2;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        final boolean[] zArr = {false};
        imageView.setSelected(false);
        linearLayout.setVisibility(runnable == null ? 8 : 0);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean[] zArr2 = zArr;
                boolean z = !zArr2[0];
                zArr2[0] = z;
                imageView.setSelected(z);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (zArr[0]) {
                    ((BaseProjectFragment) ExcavatorChoiceModeFragment.this).mSp.edit().putBoolean("show_install_sensor_tips", false).apply();
                }
                dialog.dismiss();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showModeDesDialog(int i, int i2, int i3) {
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_excavator_mode_des, (ViewGroup) null);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        int i4 = getResources().getDisplayMetrics().widthPixels;
        int i5 = getResources().getDisplayMetrics().heightPixels;
        float f = getResources().getDisplayMetrics().density;
        boolean z = getResources().getConfiguration().orientation == 2;
        boolean z2 = (requireActivity() instanceof BaseActivity) && ((BaseActivity) requireActivity()).isPad();
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvTitle);
        HdImageView hdImageView = (HdImageView) viewInflate.findViewById(R$id.ivModeImage);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvContent);
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvOk);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate.findViewById(R$id.nsvContent);
        textView.setText(i);
        hdImageView.setImageResource(i2);
        textView2.setText(i3);
        int modeDesMaxScrollHeight = getModeDesMaxScrollHeight(i5, f, z, z2);
        int i6 = (int) (i4 * (z ? z2 ? 0.68f : 0.55f : 0.9f));
        applyScrollViewHeightLimit(nestedScrollView, modeDesMaxScrollHeight, i6 - ((int) (f * 40.0f)));
        if (!z) {
            modeDesMaxScrollHeight = (int) (modeDesMaxScrollHeight * 0.45f);
        }
        hdImageView.setMaxDisplayHeight(modeDesMaxScrollHeight);
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = i6;
            attributes.height = -2;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorChoiceModeFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    private int getModeDesMaxScrollHeight(int i, float f, boolean z, boolean z2) {
        float f2 = 0.72f;
        if (z && !z2) {
            f2 = 0.78f;
        }
        return Math.max((int) (f * 120.0f), ((int) (i * f2)) - ((int) (139.0f * f)));
    }

    private void applyScrollViewHeightLimit(NestedScrollView nestedScrollView, int i, int i2) {
        View childAt = nestedScrollView.getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(i2, 0), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        ViewGroup.LayoutParams layoutParams = nestedScrollView.getLayoutParams();
        layoutParams.height = Math.min(childAt.getMeasuredHeight(), i);
        nestedScrollView.setLayoutParams(layoutParams);
    }

    private void showData() {
        int i = this.excavatorEntity.mode;
        ExcavatorCalibrateModeEnum excavatorCalibrateModeEnum = ExcavatorCalibrateModeEnum.SENSOR;
        boolean z = false;
        boolean z2 = i == excavatorCalibrateModeEnum.getMode() && this.excavatorEntity.distanceBucketMeasure;
        this.binding.ivMode1.setSelected(this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode());
        HdImageView hdImageView = this.binding.ivMode3;
        if (this.excavatorEntity.mode == excavatorCalibrateModeEnum.getMode() && !z2) {
            z = true;
        }
        hdImageView.setSelected(z);
        this.binding.ivMode4.setSelected(z2);
        FragmentExcavatorChoiceModeBinding fragmentExcavatorChoiceModeBinding = this.binding;
        fragmentExcavatorChoiceModeBinding.tvModeDes1.setSelected(fragmentExcavatorChoiceModeBinding.ivMode1.isSelected());
        FragmentExcavatorChoiceModeBinding fragmentExcavatorChoiceModeBinding2 = this.binding;
        fragmentExcavatorChoiceModeBinding2.tvModeDes3.setSelected(fragmentExcavatorChoiceModeBinding2.ivMode3.isSelected());
        FragmentExcavatorChoiceModeBinding fragmentExcavatorChoiceModeBinding3 = this.binding;
        fragmentExcavatorChoiceModeBinding3.tvModeDes4.setSelected(fragmentExcavatorChoiceModeBinding3.ivMode4.isSelected());
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
    }
}
