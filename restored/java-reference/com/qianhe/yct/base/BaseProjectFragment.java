package com.qianhe.yct.base;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.qh.xcad.XCadView$$ExternalSyntheticBackport0;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.UnitEnum;
import com.qianhe.baselib.utils.UnitConvertUtils;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.GifLoadHelper;
import com.qianhe.yct.view.ToothView;
import java.math.BigDecimal;
import java.math.RoundingMode;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BaseProjectFragment extends Fragment {
    private long lastContinueClickElapsed;
    private LoadingFragment loadingFragment;
    protected SharedPreferences mSp;
    private TipsDialogFragment tipsDialogFragment;

    public abstract void gga(GGAEntity gGAEntity);

    public abstract void insNavi(InsNavi insNavi, boolean z);

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        this.mSp = requireContext().getSharedPreferences("sp", 0);
        this.loadingFragment = new LoadingFragment();
        this.tipsDialogFragment = new TipsDialogFragment();
    }

    protected ExcavatorEntity resolveExcavatorEntity() {
        if (getActivity() instanceof ExcavatorCreateActivity) {
            return ((ExcavatorCreateActivity) getActivity()).getExcavatorEntity();
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            return (ExcavatorEntity) arguments.getSerializable("excavatorEntity");
        }
        return null;
    }

    protected ExcavatorEntity resolveInitExcavatorEntity() {
        if (getActivity() instanceof ExcavatorCreateActivity) {
            return ((ExcavatorCreateActivity) getActivity()).getInitEntity();
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            return (ExcavatorEntity) arguments.getSerializable("initEntity");
        }
        return null;
    }

    protected boolean isFastContinueClick() {
        if (getActivity() instanceof ExcavatorCreateActivity) {
            return ((ExcavatorCreateActivity) getActivity()).isFastContinueClick();
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.lastContinueClickElapsed < 800) {
            return true;
        }
        this.lastContinueClickElapsed = jElapsedRealtime;
        return false;
    }

    protected void bindContinueClick(View view, final View.OnClickListener onClickListener) {
        if (view == null || onClickListener == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.base.BaseProjectFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseProjectFragment.m2041$r8$lambda$_Utap9ej_0UTpkL3awbA28Z73g(this.f$0, onClickListener, view2);
            }
        });
    }

    /* renamed from: $r8$lambda$_Utap9ej_0UTpkL3awbA28Z73-g, reason: not valid java name */
    public static /* synthetic */ void m2041$r8$lambda$_Utap9ej_0UTpkL3awbA28Z73g(BaseProjectFragment baseProjectFragment, View.OnClickListener onClickListener, View view) {
        if (baseProjectFragment.isFastContinueClick()) {
            return;
        }
        onClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postWizardNext(View view) {
        if (view != null) {
            view.setEnabled(false);
        }
        EventBus.getDefault().post("next");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void restoreContinueEnabled(View view) {
        if (view != null) {
            view.setEnabled(true);
        }
    }

    protected void showLoadingDialog(String str) {
        showLoadingDialog(str, null);
    }

    protected void showLoadingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        LoadingFragment loadingFragment = this.loadingFragment;
        if (loadingFragment != null) {
            if (loadingFragment.getFragmentManager() != null) {
                this.loadingFragment.refreshTip(str);
                return;
            }
            this.loadingFragment.show(requireActivity().getSupportFragmentManager(), "LoadingFragment");
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(str)) {
                str = getString(R$string.please_wait);
            }
            bundle.putString("tip", str);
            this.loadingFragment.setArguments(bundle);
            this.loadingFragment.setOnCloseListener(onCloseListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cancelLoadingDialog() {
        LoadingFragment loadingFragment;
        if (!isAdded() || (loadingFragment = this.loadingFragment) == null || loadingFragment.getDialog() == null || !this.loadingFragment.getDialog().isShowing()) {
            return;
        }
        this.loadingFragment.dismiss();
    }

    public interface ToothCollectHandler {
        void goCollectCoordinates(int i);

        void goPointLibrary();

        void onInstrumentCollectResult(BaseActivity.InstrumentCollectResult instrumentCollectResult);

        void onInstrumentCollectResult(double[] dArr, double[] dArr2);

        void setShovelTipType(int i);

        /* renamed from: com.qianhe.yct.base.BaseProjectFragment$ToothCollectHandler$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onInstrumentCollectResult(ToothCollectHandler toothCollectHandler, BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                if (instrumentCollectResult == null) {
                    toothCollectHandler.onInstrumentCollectResult(null, null);
                } else {
                    toothCollectHandler.onInstrumentCollectResult(instrumentCollectResult.coords, instrumentCollectResult.geodetic);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchInstrumentCollectResult(ToothCollectHandler toothCollectHandler, BaseActivity.InstrumentCollectResult instrumentCollectResult) {
        if (toothCollectHandler == null) {
            return;
        }
        toothCollectHandler.onInstrumentCollectResult(instrumentCollectResult);
    }

    protected void setupToothViewCollectListeners(ToothView toothView, final ToothCollectHandler toothCollectHandler) {
        toothView.setOnToothClickListener(new ToothView.OnToothClickListener() { // from class: com.qianhe.yct.base.BaseProjectFragment$$ExternalSyntheticLambda2
            @Override // com.qianhe.yct.view.ToothView.OnToothClickListener
            public final void onToothClick(int i) {
                this.f$0.handleToothCollectClick(i, toothCollectHandler);
            }
        });
        toothView.setOnToothLongClickListener(new ToothView.OnToothLongClickListener() { // from class: com.qianhe.yct.base.BaseProjectFragment$$ExternalSyntheticLambda3
            @Override // com.qianhe.yct.view.ToothView.OnToothLongClickListener
            public final void onToothLongClick(int i) {
                this.f$0.handleToothCollectLongClick(i, toothCollectHandler);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleToothCollectLongClick(int i, final ToothCollectHandler toothCollectHandler) {
        if (i == 5 && toothCollectHandler != null && (requireActivity() instanceof BaseActivity)) {
            toothCollectHandler.setShovelTipType(i);
            ((BaseActivity) requireActivity()).startInstrumentCollectWithPoleHeight(new BaseActivity.OnInstrumentCollectListener() { // from class: com.qianhe.yct.base.BaseProjectFragment$$ExternalSyntheticLambda4
                @Override // com.qianhe.yct.base.BaseActivity.OnInstrumentCollectListener
                public final void onResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                    this.f$0.dispatchInstrumentCollectResult(toothCollectHandler, instrumentCollectResult);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleToothCollectClick(int i, final ToothCollectHandler toothCollectHandler) {
        if (toothCollectHandler == null || !(requireActivity() instanceof BaseActivity)) {
            return;
        }
        if (i == 3) {
            toothCollectHandler.setShovelTipType(0);
            toothCollectHandler.goPointLibrary();
        } else if (i == 5) {
            toothCollectHandler.setShovelTipType(i);
            ((BaseActivity) requireActivity()).startInstrumentCollect(new BaseActivity.OnInstrumentCollectListener() { // from class: com.qianhe.yct.base.BaseProjectFragment$$ExternalSyntheticLambda5
                @Override // com.qianhe.yct.base.BaseActivity.OnInstrumentCollectListener
                public final void onResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                    this.f$0.dispatchInstrumentCollectResult(toothCollectHandler, instrumentCollectResult);
                }
            });
        } else {
            toothCollectHandler.setShovelTipType(i);
            toothCollectHandler.goCollectCoordinates(i);
        }
    }

    protected void handleMeasureCollectClick(int i, final ToothCollectHandler toothCollectHandler) {
        if (toothCollectHandler == null || !(requireActivity() instanceof BaseActivity)) {
            return;
        }
        if (i == -1) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.please_select_shovel_tip));
        } else if (i == 5) {
            ((BaseActivity) requireActivity()).startInstrumentCollect(new BaseActivity.OnInstrumentCollectListener() { // from class: com.qianhe.yct.base.BaseProjectFragment$$ExternalSyntheticLambda1
                @Override // com.qianhe.yct.base.BaseActivity.OnInstrumentCollectListener
                public final void onResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
                    this.f$0.dispatchInstrumentCollectResult(toothCollectHandler, instrumentCollectResult);
                }
            });
        } else {
            toothCollectHandler.goCollectCoordinates(i);
        }
    }

    protected String formatDouble(double d) {
        if (d == 0.0d || Double.isNaN(d) || Double.isInfinite(d)) {
            return "";
        }
        String plainString = EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0.m(BigDecimal.valueOf(d)).toPlainString();
        return (plainString.contains(".") && plainString.endsWith(".")) ? plainString.substring(0, plainString.length() - 1) : plainString;
    }

    protected double formatMetertoOther(int i, double d) {
        int i2;
        int iNormalize = UnitEnum.normalize(i);
        if (iNormalize == UnitEnum.CM.getType()) {
            i2 = 2;
        } else {
            i2 = iNormalize == UnitEnum.IN.getType() ? 4 : 0;
        }
        return formatMetertoOther(iNormalize, d, i2);
    }

    protected double formatMetertoOther(int i, double d, int i2) {
        return UnitConvertUtils.fromMeter(i, d, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getGlobalUnit() {
        return AppConfigManager.getInstance().getUnitPreference();
    }

    protected String getUnitLabel(int i) {
        if (UnitEnum.normalize(i) == UnitEnum.IN.getType()) {
            return getString(R$string.in);
        }
        return getString(R$string.meter);
    }

    protected String getDisplayUnitText() {
        return "\u200e" + getUnitLabel(getGlobalUnit());
    }

    protected void refreshMode1UnitLabel(TextView textView) {
        if (textView != null) {
            textView.setText(getDisplayUnitText());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double formatOtherToMeter(int i, double d) {
        return formatOtherToMeter(i, d, 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double formatOtherToMeter(int i, double d, int i2) {
        return UnitConvertUtils.toMeter(i, d);
    }

    protected String formatCoords(String str, int i) {
        try {
            return formatCoords(Double.parseDouble(str), i);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    protected String formatCoords(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return "";
        }
        if (d == 0.0d) {
            return "0";
        }
        return formatCoords(d, 8);
    }

    protected boolean isValidCoord(double d) {
        return XCadView$$ExternalSyntheticBackport0.m(d) && !Double.isNaN(d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isVaildCoords(double[] dArr) {
        for (double d : dArr) {
            if (!isValidCoord(d)) {
                return false;
            }
        }
        return true;
    }

    protected String formatCoords(double d, int i) {
        return !isValidCoord(d) ? "" : BigDecimal.valueOf(d).setScale(i, RoundingMode.HALF_UP).toString().replaceAll("0*$", "").replaceAll("\\.$", "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGifResource(ImageView imageView, int i) {
        GifLoadHelper.setGif(imageView, i);
    }

    protected void setGifPlaying(ImageView imageView, boolean z) {
        GifLoadHelper.setPlaying(imageView, z);
    }

    protected void recycleGif(ImageView imageView) {
        GifLoadHelper.recycle(imageView);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }
}
