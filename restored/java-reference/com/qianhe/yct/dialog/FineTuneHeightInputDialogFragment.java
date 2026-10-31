package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.enums.UnitEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.UnitConvertUtils;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogFineTuneHeightInputBinding;
import com.qianhe.yct.manage.AppConfigManager;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class FineTuneHeightInputDialogFragment extends BaseDialogFragment {
    private DialogFineTuneHeightInputBinding binding;
    private OnHeightConfirmListener listener;
    private boolean mHasPendingLlh;
    private boolean mInitialHasLlh;
    private double mInitialLat;
    private double mInitialLon;
    private double mPendingLat;
    private double mPendingLon;
    private int unitType;
    private double mInitialHeightMeters = Double.NaN;
    private final ActivityResultLauncher pointLibLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda0
        @Override // androidx.activity.result.ActivityResultCallback
        public final void onActivityResult(Object obj) {
            FineTuneHeightInputDialogFragment.m2100$r8$lambda$TKSpwCzPCWlCUf31QVMqliM9M(this.f$0, (ActivityResult) obj);
        }
    });

    public interface OnHeightConfirmListener {
        void onCancel();

        void onConfirm(double d, double d2, double d3, boolean z);
    }

    /* renamed from: $r8$lambda$TKSpwCzPCW-lCUf31QVMqliM-9M, reason: not valid java name */
    public static /* synthetic */ void m2100$r8$lambda$TKSpwCzPCWlCUf31QVMqliM9M(FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment, ActivityResult activityResult) {
        fineTuneHeightInputDialogFragment.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            return;
        }
        Intent data = activityResult.getData();
        double[] doubleArrayExtra = data.getDoubleArrayExtra("geodetic");
        if (doubleArrayExtra != null && doubleArrayExtra.length >= 3) {
            fineTuneHeightInputDialogFragment.fillFromGeodetic(doubleArrayExtra[0], doubleArrayExtra[1], doubleArrayExtra[2]);
            return;
        }
        fineTuneHeightInputDialogFragment.clearPendingLlh();
        if (data.hasExtra("alt")) {
            fineTuneHeightInputDialogFragment.fillHeightFromMeters(data.getDoubleExtra("alt", 0.0d));
        }
    }

    public void setOnHeightConfirmListener(OnHeightConfirmListener onHeightConfirmListener) {
        this.listener = onHeightConfirmListener;
    }

    public void setInitialHeight(double d, double d2, double d3, boolean z) {
        this.mInitialHeightMeters = d;
        this.mInitialLon = d2;
        this.mInitialLat = d3;
        this.mInitialHasLlh = z;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment;
        getParentFragmentManager().setFragmentResultListener("BubbleCompassDialogFragment_result", this, new FragmentResultListener() { // from class: com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                FineTuneHeightInputDialogFragment.$r8$lambda$ZQeTDiPe_a9gWSP98rqPgYF1GS8(this.f$0, str, bundle2);
            }
        });
        this.binding = DialogFineTuneHeightInputBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        setCancelable(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        int unitPreference = AppConfigManager.getInstance().getUnitPreference();
        this.unitType = unitPreference;
        this.binding.tvUnit.setText(UnitEnum.getSymbol(unitPreference));
        if (restorePendingState(bundle)) {
            fineTuneHeightInputDialogFragment = this;
        } else {
            clearPendingLlh();
            if (!Double.isNaN(this.mInitialHeightMeters)) {
                if (this.mInitialHasLlh) {
                    fineTuneHeightInputDialogFragment = this;
                    fineTuneHeightInputDialogFragment.fillFromGeodetic(this.mInitialLon, this.mInitialLat, this.mInitialHeightMeters);
                } else {
                    fineTuneHeightInputDialogFragment = this;
                    fillHeightFromMeters(fineTuneHeightInputDialogFragment.mInitialHeightMeters);
                }
            } else {
                fineTuneHeightInputDialogFragment = this;
                fineTuneHeightInputDialogFragment.binding.edtHeight.setText("");
            }
        }
        fineTuneHeightInputDialogFragment.binding.tvPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment2 = this.f$0;
                fineTuneHeightInputDialogFragment2.pointLibLauncher.launch(PointLibraryIntent.pickPointForRawElev(fineTuneHeightInputDialogFragment2.requireContext()));
            }
        });
        fineTuneHeightInputDialogFragment.binding.tvInstrumentCollect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.startInstrumentCollectForHeight();
            }
        });
        fineTuneHeightInputDialogFragment.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FineTuneHeightInputDialogFragment.$r8$lambda$ctLqrSWvY5ftFoIeKJPuXLvwVOk(this.f$0, view);
            }
        });
        fineTuneHeightInputDialogFragment.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FineTuneHeightInputDialogFragment.$r8$lambda$pP8Y7KvXsIJMBJVjl0wGCaAs9HI(this.f$0, view);
            }
        });
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$ZQeTDiPe_a9gWSP98rqPgYF1GS8(FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment, String str, Bundle bundle) {
        fineTuneHeightInputDialogFragment.getClass();
        if (bundle.getBoolean("collected", false)) {
            fineTuneHeightInputDialogFragment.applyInstrumentCollectFromBubbleCompass();
        }
    }

    public static /* synthetic */ void $r8$lambda$ctLqrSWvY5ftFoIeKJPuXLvwVOk(FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment, View view) {
        OnHeightConfirmListener onHeightConfirmListener = fineTuneHeightInputDialogFragment.listener;
        if (onHeightConfirmListener != null) {
            onHeightConfirmListener.onCancel();
        }
        fineTuneHeightInputDialogFragment.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$pP8Y7KvXsIJMBJVjl0wGCaAs9HI(FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment, View view) {
        double meter = UnitConvertUtils.toMeter(fineTuneHeightInputDialogFragment.unitType, fineTuneHeightInputDialogFragment.binding.edtHeight.getNumericValue());
        OnHeightConfirmListener onHeightConfirmListener = fineTuneHeightInputDialogFragment.listener;
        if (onHeightConfirmListener != null) {
            onHeightConfirmListener.onConfirm(meter, fineTuneHeightInputDialogFragment.mPendingLon, fineTuneHeightInputDialogFragment.mPendingLat, fineTuneHeightInputDialogFragment.mHasPendingLlh);
        }
        fineTuneHeightInputDialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInstrumentCollectForHeight() {
        if (!(requireActivity() instanceof BaseActivity) || isDetached()) {
            return;
        }
        ((BaseActivity) requireActivity()).startInstrumentCollectWithBubbleCompass(null);
    }

    private void applyInstrumentCollectFromBubbleCompass() {
        BaseActivity.InstrumentCollectResult instrumentCollectResultSnapshotInstrumentCollectFromCurrentGga;
        double[] dArr;
        if (!isAdded() || this.binding == null || !(requireActivity() instanceof BaseActivity) || (instrumentCollectResultSnapshotInstrumentCollectFromCurrentGga = ((BaseActivity) requireActivity()).snapshotInstrumentCollectFromCurrentGga()) == null || (dArr = instrumentCollectResultSnapshotInstrumentCollectFromCurrentGga.coords) == null) {
            return;
        }
        double[] dArrResolveRawGeodetic = resolveRawGeodetic(dArr, instrumentCollectResultSnapshotInstrumentCollectFromCurrentGga.geodetic);
        if (dArrResolveRawGeodetic != null && dArrResolveRawGeodetic.length >= 3) {
            fillFromGeodetic(dArrResolveRawGeodetic[0], dArrResolveRawGeodetic[1], dArrResolveRawGeodetic[2]);
        } else {
            clearPendingLlh();
            fillHeightFromMeters(resolveRawElevationMeters(instrumentCollectResultSnapshotInstrumentCollectFromCurrentGga.coords, instrumentCollectResultSnapshotInstrumentCollectFromCurrentGga.geodetic));
        }
    }

    private boolean restorePendingState(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        this.mPendingLon = bundle.getDouble("pendingLon", 0.0d);
        this.mPendingLat = bundle.getDouble("pendingLat", 0.0d);
        this.mHasPendingLlh = bundle.getBoolean("hasPendingLlh", false);
        String string = bundle.getString("heightText");
        if (string == null) {
            return false;
        }
        this.binding.edtHeight.setText(string);
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putDouble("pendingLon", this.mPendingLon);
        bundle.putDouble("pendingLat", this.mPendingLat);
        bundle.putBoolean("hasPendingLlh", this.mHasPendingLlh);
        DialogFineTuneHeightInputBinding dialogFineTuneHeightInputBinding = this.binding;
        if (dialogFineTuneHeightInputBinding == null || dialogFineTuneHeightInputBinding.edtHeight.getText() == null) {
            return;
        }
        bundle.putString("heightText", this.binding.edtHeight.getText().toString());
    }

    private static double[] resolveRawGeodetic(double[] dArr, double[] dArr2) {
        GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
        GnssTransParamEntity currentTransParam = gnssCoordConvertManager.getCurrentTransParam();
        if (currentTransParam != null && currentTransParam.hasParamsDetail() && dArr != null && dArr.length >= 3) {
            double[] dArr3 = new double[3];
            if (gnssCoordConvertManager.projToGeodeticInverse(dArr[0], dArr[1], dArr[2], dArr3)) {
                return dArr3;
            }
        }
        if (dArr2 == null || dArr2.length < 3) {
            return null;
        }
        return dArr2;
    }

    private static double resolveRawElevationMeters(double[] dArr, double[] dArr2) {
        double[] dArrResolveRawGeodetic = resolveRawGeodetic(dArr, dArr2);
        if (dArrResolveRawGeodetic != null && dArrResolveRawGeodetic.length >= 3) {
            return dArrResolveRawGeodetic[2];
        }
        return dArr[2];
    }

    private void fillFromGeodetic(double d, double d2, double d3) {
        this.mPendingLon = d;
        this.mPendingLat = d2;
        this.mHasPendingLlh = true;
        fillHeightFromMeters(d3);
    }

    private void clearPendingLlh() {
        this.mPendingLon = 0.0d;
        this.mPendingLat = 0.0d;
        this.mHasPendingLlh = false;
    }

    private void fillHeightFromMeters(double d) {
        if (this.binding == null) {
            return;
        }
        double dFromMeter = UnitConvertUtils.fromMeter(this.unitType, d, 3);
        if (dFromMeter == 0.0d) {
            this.binding.edtHeight.setText("0");
        } else {
            this.binding.edtHeight.setText(BigDecimal.valueOf(dFromMeter).setScale(3, RoundingMode.HALF_UP).toString().replaceAll("0*$", "").replaceAll("\\.$", ""));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.8f)), -2);
        setWindowsCallback(window);
    }
}
