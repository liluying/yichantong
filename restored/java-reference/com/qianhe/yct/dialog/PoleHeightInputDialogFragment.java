package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.UnitEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.UnitConvertUtils;
import com.qianhe.rtkclientlib.event.AntennaParams;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogPoleHeightInputBinding;
import com.qianhe.yct.manage.AppConfigManager;
import java.math.BigDecimal;
import java.math.RoundingMode;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PoleHeightInputDialogFragment extends BaseDialogFragment {
    private DialogPoleHeightInputBinding binding;
    private OnPoleHeightConfirmListener listener;
    private int unitType;

    public interface OnPoleHeightConfirmListener {
        void onCancel();

        void onConfirm(float f);
    }

    public void setOnPoleHeightConfirmListener(OnPoleHeightConfirmListener onPoleHeightConfirmListener) {
        this.listener = onPoleHeightConfirmListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogPoleHeightInputBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        int unitPreference = AppConfigManager.getInstance().getUnitPreference();
        this.unitType = unitPreference;
        this.binding.tvUnit.setText(UnitEnum.getSymbol(unitPreference));
        this.binding.edtPoleHeight.setText(formatPoleHeightDisplay(AppConfigManager.getInstance().getPoleHeight()));
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.PoleHeightInputDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PoleHeightInputDialogFragment.m2127$r8$lambda$6gXWeIZLVhS_s4mFSbzktlwWAQ(this.f$0, view);
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.PoleHeightInputDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                PoleHeightInputDialogFragment.$r8$lambda$DdQ74VTDVgRJh4ykvnOU2HdQNis(this.f$0, view);
            }
        });
        if (this.mSp.getFloat("zpy_antennaheight", 0.0f) == 0.0f) {
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "GET,ANTENNA"));
        }
        return alertDialogCreate;
    }

    /* renamed from: $r8$lambda$-6gXWeIZLVhS_s4mFSbzktlwWAQ, reason: not valid java name */
    public static /* synthetic */ void m2127$r8$lambda$6gXWeIZLVhS_s4mFSbzktlwWAQ(PoleHeightInputDialogFragment poleHeightInputDialogFragment, View view) {
        OnPoleHeightConfirmListener onPoleHeightConfirmListener = poleHeightInputDialogFragment.listener;
        if (onPoleHeightConfirmListener != null) {
            onPoleHeightConfirmListener.onCancel();
        }
        poleHeightInputDialogFragment.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$DdQ74VTDVgRJh4ykvnOU2HdQNis(PoleHeightInputDialogFragment poleHeightInputDialogFragment, View view) throws JSONException {
        float meter = (float) UnitConvertUtils.toMeter(poleHeightInputDialogFragment.unitType, poleHeightInputDialogFragment.binding.edtPoleHeight.getNumericValue());
        AppConfigManager.getInstance().setPoleHeight(meter);
        OnPoleHeightConfirmListener onPoleHeightConfirmListener = poleHeightInputDialogFragment.listener;
        if (onPoleHeightConfirmListener != null) {
            onPoleHeightConfirmListener.onConfirm(meter);
        }
        poleHeightInputDialogFragment.dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AntennaParams antennaParams) {
        if (antennaParams.deviceType == DeviceType.ZPY) {
            this.mSp.edit().putFloat("zpy_antennaheight", (antennaParams.h + antennaParams.HL1) / 1000.0f).apply();
            LogToFile.i("天线参数：" + antennaParams.toString());
        }
    }

    private String formatPoleHeightDisplay(float f) {
        double dFromMeter = UnitConvertUtils.fromMeter(this.unitType, f, 3);
        if (dFromMeter == 0.0d) {
            return "0";
        }
        return BigDecimal.valueOf(dFromMeter).setScale(3, RoundingMode.HALF_UP).toString().replaceAll("0*$", "").replaceAll("\\.$", "");
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
