package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogCalibrateBinding;
import com.qianhe.yct.enums.InsStatusEnum;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CalibrateDialogFragment extends BaseDialogFragment {
    private DialogCalibrateBinding binding;
    private boolean headingAccuracyMode;
    private float headingErrorMaxDeg;
    private boolean isH5Pro;
    private Double latestHeadingDegreesError;
    private OnConfirmListener listener;
    private GGAEntity mGGA;
    private InsNavi mIns;
    private boolean manual;
    private boolean showingHeadingAccuracyTip;
    private boolean showingSensorOfflineTip;
    private int gnssIssueDisplayMode = 0;
    private final Runnable runnable = new Runnable() { // from class: com.qianhe.yct.dialog.CalibrateDialogFragment.5
        @Override // java.lang.Runnable
        public void run() {
            if (CalibrateDialogFragment.this.isAdded() && TextUtils.isEmpty(CalibrateDialogFragment.this.binding.tvContent.getText())) {
                CalibrateDialogFragment.this.binding.tvContent.setText(R$string.data_unavailable);
            }
        }
    };

    public interface OnConfirmListener {
        void onClose(boolean z);

        void onClose(boolean z, boolean z2);

        void onConfirm();

        /* renamed from: com.qianhe.yct.dialog.CalibrateDialogFragment$OnConfirmListener$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
        }
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.listener = onConfirmListener;
    }

    private void updateButtonLayout(boolean z) {
        this.binding.tvCancel.setVisibility(z ? 0 : 8);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.binding.tvSure.getLayoutParams();
        if (z) {
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        } else {
            layoutParams.leftMargin = DpUtils.dp2px(this.binding.getRoot().getContext(), 50.0f);
            layoutParams.rightMargin = DpUtils.dp2px(this.binding.getRoot().getContext(), 50.0f);
        }
        this.binding.tvSure.setLayoutParams(layoutParams);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            dismiss();
        }
        EventBus.getDefault().register(this);
        this.binding = DialogCalibrateBinding.inflate(getLayoutInflater());
        updateButtonLayout(false);
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            GGAEntity gGAEntity = new GGAEntity();
            this.mGGA = gGAEntity;
            gGAEntity.quality = arguments.getInt("quality");
            this.headingAccuracyMode = arguments.getBoolean("headingAccuracyMode", false);
            this.headingErrorMaxDeg = arguments.getFloat("headingErrorMaxDeg", 0.0f);
            this.binding.tvContent.setTextColor(ContextCompat.getColor(requireContext(), arguments.getInt("tipColor", R$color.text_black)));
            String string = arguments.getString("btnStr");
            String string2 = arguments.getString("cancelStr");
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvSure.setText(string);
            }
            if (!TextUtils.isEmpty(string2)) {
                this.binding.tvCancel.setText(string2);
            }
        }
        if (this.headingAccuracyMode) {
            applyHeadingAccuracyTip();
        }
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CalibrateDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CalibrateDialogFragment.this.headingAccuracyMode || CalibrateDialogFragment.this.showingHeadingAccuracyTip) {
                    CalibrateDialogFragment.this.manual = true;
                    CalibrateDialogFragment.this.dismiss();
                    return;
                }
                if (CalibrateDialogFragment.this.mIns != null && (CalibrateDialogFragment.this.mIns.insStaus & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                    if (CalibrateDialogFragment.this.binding.tvContent.getText().toString().equals(CalibrateDialogFragment.this.getString(R$string.sensor_offline))) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(Proj4Keyword.title, CalibrateDialogFragment.this.getString(R$string.confirm_sensor_status));
                        bundle2.putString("nextStr", CalibrateDialogFragment.this.getString(R$string.disconnect1));
                        bundle2.putString("requestKey", "clickaction");
                        ChooseSensorDialogFragment.showSafely(CalibrateDialogFragment.this.requireActivity().getSupportFragmentManager(), bundle2);
                        return;
                    }
                    CalibrateDialogFragment.this.manual = true;
                    CalibrateDialogFragment.this.dismiss();
                    if (CalibrateDialogFragment.this.listener != null) {
                        CalibrateDialogFragment.this.listener.onConfirm();
                        return;
                    }
                    return;
                }
                CalibrateDialogFragment.this.manual = true;
                CalibrateDialogFragment.this.dismiss();
                if (CalibrateDialogFragment.this.listener != null) {
                    CalibrateDialogFragment.this.listener.onConfirm();
                }
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.CalibrateDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CalibrateDialogFragment.this.manual = true;
                CalibrateDialogFragment.this.dismiss();
            }
        });
        this.binding.tvContent.postDelayed(this.runnable, 500L);
        initData();
        return alertDialogCreate;
    }

    private void initData() {
        getParentFragmentManager().setFragmentResultListener("clickaction", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.dialog.CalibrateDialogFragment.3
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (CalibrateDialogFragment.this.isAdded()) {
                    if (bundle.getBoolean("sensor_scan")) {
                        Fragment fragmentFindFragmentByTag = CalibrateDialogFragment.this.getParentFragmentManager().findFragmentByTag("SensorScanListDialogFragment");
                        if (fragmentFindFragmentByTag == null || !fragmentFindFragmentByTag.isAdded()) {
                            SensorScanListDialogFragment sensorScanListDialogFragment = new SensorScanListDialogFragment();
                            Bundle bundle2 = new Bundle();
                            bundle2.putString(Proj4Keyword.title, CalibrateDialogFragment.this.getString(R$string.please_select_sensor));
                            bundle2.putString("requestKey", "sensorscanlist");
                            sensorScanListDialogFragment.setArguments(bundle2);
                            sensorScanListDialogFragment.show(CalibrateDialogFragment.this.getParentFragmentManager(), "SensorScanListDialogFragment");
                            return;
                        }
                        return;
                    }
                    CalibrateDialogFragment.this.dismiss();
                }
            }
        });
        getParentFragmentManager().setFragmentResultListener("sensorscanlist", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.dialog.CalibrateDialogFragment.4
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (CalibrateDialogFragment.this.isAdded()) {
                    MyBluetoothDevice myBluetoothDevice = (MyBluetoothDevice) bundle.getParcelable("sensor_myBluetoothDevice");
                    ChooseSensorDialogFragment chooseSensorDialogFragmentFind = ChooseSensorDialogFragment.find(CalibrateDialogFragment.this.getParentFragmentManager());
                    if (chooseSensorDialogFragmentFind != null && myBluetoothDevice != null) {
                        chooseSensorDialogFragmentFind.setChooseDevice(myBluetoothDevice);
                    }
                    if (CalibrateDialogFragment.this.listener != null) {
                        CalibrateDialogFragment.this.listener.onConfirm();
                    }
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isH5Pro = YCTApplication.getInstance().isH5Pro();
    }

    private void updateGnssIssueDisplayMode(boolean z, boolean z2) {
        if (z) {
            this.gnssIssueDisplayMode = 1;
        } else {
            if (z2) {
                if (this.gnssIssueDisplayMode != 1) {
                    this.gnssIssueDisplayMode = 2;
                    return;
                }
                return;
            }
            this.gnssIssueDisplayMode = 0;
        }
    }

    private boolean applyGnssIssueTip() {
        int i;
        if (this.gnssIssueDisplayMode == 0) {
            return false;
        }
        this.binding.gifIv.setVisibility(8);
        if (this.gnssIssueDisplayMode == 1) {
            this.binding.tvContent.setText(R$string.move_open_area);
            return true;
        }
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity != null && gGAEntity.age < 1.0f && (i = gGAEntity.quality) != 2 && i != 4 && i != 5) {
            this.binding.tvContent.setText(R$string.no_difference);
            this.binding.tvHint.setVisibility(0);
            this.binding.tvHint.setText(R$string.check_mobile_network);
        } else {
            this.binding.tvContent.setText(R$string.move_open_area);
        }
        return true;
    }

    private void applyHeadingAccuracyTip() {
        this.showingSensorOfflineTip = false;
        this.showingHeadingAccuracyTip = true;
        this.binding.tvHint.setVisibility(8);
        this.binding.gifIv.setVisibility(0);
        this.binding.tvContent.setText(R$string.heading_accuracy_poor);
        this.binding.tvSure.setText(R$string.ok);
        updateButtonLayout(false);
        updateHeadingAccuracyValue();
    }

    private void updateHeadingAccuracyValue() {
        TextView textView;
        DialogCalibrateBinding dialogCalibrateBinding = this.binding;
        if (dialogCalibrateBinding == null || (textView = dialogCalibrateBinding.tvHeadingAccuracy) == null) {
            return;
        }
        if (!this.headingAccuracyMode && !this.showingHeadingAccuracyTip) {
            textView.setVisibility(8);
            return;
        }
        if (this.latestHeadingDegreesError == null) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        this.binding.tvHeadingAccuracy.setText(LanguagePrefs.getString(requireContext(), R$string.heading_accuracy_value, this.latestHeadingDegreesError));
        this.binding.tvHeadingAccuracy.setTextColor(ContextCompat.getColor(requireContext(), isHeadingDegreesOkFromHost() ? R$color.green : R$color.red));
    }

    private void hideHeadingAccuracyValue() {
        TextView textView;
        DialogCalibrateBinding dialogCalibrateBinding = this.binding;
        if (dialogCalibrateBinding == null || (textView = dialogCalibrateBinding.tvHeadingAccuracy) == null) {
            return;
        }
        textView.setVisibility(8);
    }

    private boolean isHeadingDegreesOkFromHost() {
        double latestHeadingDegreesError;
        if (this.headingErrorMaxDeg > 0.0f) {
            Double d = this.latestHeadingDegreesError;
            if (d != null) {
                latestHeadingDegreesError = d.doubleValue();
            } else {
                latestHeadingDegreesError = requireActivity() instanceof BaseActivity ? ((BaseActivity) requireActivity()).getLatestHeadingDegreesError() : Double.MAX_VALUE;
            }
            return latestHeadingDegreesError < ((double) this.headingErrorMaxDeg);
        }
        if (requireActivity() instanceof BaseActivity) {
            return ((BaseActivity) requireActivity()).isHeadingDegreesOK();
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsAhrs insAhrs) {
        if (insAhrs == null || !isAdded()) {
            return;
        }
        this.latestHeadingDegreesError = Double.valueOf(insAhrs.headingDegreesError);
        if (this.headingAccuracyMode || this.showingHeadingAccuracyTip) {
            updateHeadingAccuracyValue();
            if (isHeadingDegreesOkFromHost()) {
                dismiss();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsNavi insNavi) {
        if (this.mGGA == null || insNavi == null) {
            return;
        }
        this.mIns = insNavi;
        if (this.headingAccuracyMode) {
            applyHeadingAccuracyTip();
            if (isHeadingDegreesOkFromHost()) {
                dismiss();
                return;
            }
            return;
        }
        this.binding.tvHint.setVisibility(8);
        this.binding.gifIv.setVisibility(8);
        hideHeadingAccuracyValue();
        this.showingHeadingAccuracyTip = false;
        updateButtonLayout(false);
        if (this.isH5Pro) {
            updateGnssIssueDisplayMode((insNavi.insStaus & InsStatusEnum.GNSSLOST.getStatus()) != 0, (insNavi.insStaus & InsStatusEnum.GNSSREJECT.getStatus()) != 0);
            if (applyGnssIssueTip()) {
                this.showingSensorOfflineTip = false;
                return;
            }
            if ((insNavi.insStaus & InsStatusEnum.TILTREJECT.getStatus()) != 0) {
                this.showingSensorOfflineTip = false;
                this.binding.gifIv.setVisibility(0);
                this.binding.tvContent.setText(R$string.calibrate_device);
                this.binding.tvSure.setText(R$string.ok);
                return;
            }
            if ((insNavi.insStaus & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                this.showingSensorOfflineTip = true;
                this.binding.tvContent.setText(R$string.sensor_offline);
                this.binding.tvHint.setVisibility(0);
                this.binding.tvHint.setText(R$string.please_reconnect_sensor_or_recalibrate);
                updateButtonLayout(true);
                this.binding.tvSure.setText(R$string.go_to_connect);
                return;
            }
            if ((insNavi.insStaus & InsStatusEnum.READY.getStatus()) != 0) {
                this.showingSensorOfflineTip = false;
                dismiss();
                return;
            } else {
                this.showingSensorOfflineTip = false;
                return;
            }
        }
        if (this.mGGA.quality != 4) {
            this.binding.gifIv.setVisibility(8);
            this.binding.tvContent.setText(R$string.move_open_area);
        } else if ((insNavi.insStaus & InsStatusEnum.VERTICAL.getStatus()) != 0) {
            dismiss();
        } else {
            this.binding.gifIv.setVisibility(8);
            this.binding.tvContent.setText(R$string.arm_tilt);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.8f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.CalibrateDialogFragment.6
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (CalibrateDialogFragment.this.getFragmentManager() != null) {
                        CalibrateDialogFragment.this.getFragmentManager().beginTransaction().remove(CalibrateDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (getFragmentManager() != null) {
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
        OnConfirmListener onConfirmListener = this.listener;
        if (onConfirmListener != null) {
            boolean z = this.manual;
            onConfirmListener.onClose(z, z && this.showingSensorOfflineTip);
        }
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        this.binding.tvContent.removeCallbacks(this.runnable);
    }
}
