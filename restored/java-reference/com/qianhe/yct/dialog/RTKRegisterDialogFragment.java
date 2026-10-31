package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertDialog;
import com.journeyapps.barcodescanner.ScanContract;
import com.journeyapps.barcodescanner.ScanIntentResult;
import com.journeyapps.barcodescanner.ScanOptions;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.RTKRegisterResult;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogRtkRegisterBinding;
import com.qianhe.yct.utils.NetworkDataLoader;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RTKRegisterDialogFragment extends BaseDialogFragment {
    private DialogRtkRegisterBinding binding;
    private DeviceType deviceType;
    private SharedPreferences mSp;
    private final ActivityResultLauncher scanLauncher = registerForActivityResult(new ScanContract(), new ActivityResultCallback() { // from class: com.qianhe.yct.dialog.RTKRegisterDialogFragment$$ExternalSyntheticLambda0
        @Override // androidx.activity.result.ActivityResultCallback
        public final void onActivityResult(Object obj) {
            RTKRegisterDialogFragment.m2134$r8$lambda$fGw_ITSwZBW39Ms0NLEEhzy3c(this.f$0, (ScanIntentResult) obj);
        }
    });

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) throws JSONException {
        String string;
        String string2;
        this.binding = DialogRtkRegisterBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        this.mSp = YCTApplication.getInstance().getSharedPreferences("sp", 0);
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.requestKey = arguments.getString("requestKey", "rtkregister");
            this.deviceType = (DeviceType) arguments.getSerializable("deviceType");
        }
        this.binding.tvRegister.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.RTKRegisterDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strReplace = RTKRegisterDialogFragment.this.binding.edtCode.getText().toString().trim().toUpperCase().replace("-", "");
                if (TextUtils.isEmpty(strReplace)) {
                    Toast.makeText(RTKRegisterDialogFragment.this.requireContext(), RTKRegisterDialogFragment.this.getString(R$string.enter_register_code), 0).show();
                    return;
                }
                EventBus.getDefault().post(new OrderBean(RTKRegisterDialogFragment.this.deviceType, "SET,REGISTER," + strReplace));
            }
        });
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.RTKRegisterDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("close", true);
                RTKRegisterDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) RTKRegisterDialogFragment.this).requestKey, bundle2);
                RTKRegisterDialogFragment.this.close();
            }
        });
        this.binding.fltSaoma.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.RTKRegisterDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) RTKRegisterDialogFragment.this.requireActivity()).hasPermissions("camera")) {
                    ScanOptions scanOptions = new ScanOptions();
                    scanOptions.setDesiredBarcodeFormats("QR_CODE");
                    scanOptions.setPrompt(RTKRegisterDialogFragment.this.getString(R$string.align_with_qr));
                    scanOptions.setCameraId(0);
                    scanOptions.setBeepEnabled(false);
                    scanOptions.setOrientationLocked(true);
                    scanOptions.setBarcodeImageEnabled(true);
                    RTKRegisterDialogFragment.this.scanLauncher.launch(scanOptions);
                    return;
                }
                ((BaseActivity) RTKRegisterDialogFragment.this.requireActivity()).checkPermissions("camera", true);
            }
        });
        DeviceType deviceType = this.deviceType;
        DeviceType deviceType2 = DeviceType.BASE;
        if (deviceType == deviceType2) {
            string = this.mSp.getString("base_deviceSn", "");
            string2 = this.mSp.getString(deviceType2.getType() + "_" + string, "");
        } else {
            string = this.mSp.getString("deviceSn", "");
            string2 = this.mSp.getString(DeviceType.ZPY.getType() + "_" + string, "");
        }
        this.binding.edtCode.setText(formatWithDash(string2));
        if (bundle == null) {
            NetworkDataLoader.getInstance().getRegisterInfo(this.deviceType, string);
        }
        this.binding.edtCode.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.dialog.RTKRegisterDialogFragment.4
            private boolean isFormatting = false;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                try {
                    if (!this.isFormatting && charSequence.length() != 0) {
                        String upperCase = charSequence.toString().replace("-", "").toUpperCase();
                        if (upperCase.length() >= 4) {
                            this.isFormatting = true;
                            StringBuilder sb = new StringBuilder();
                            for (int i4 = 0; i4 < upperCase.length(); i4++) {
                                if (i4 > 0 && i4 % 4 == 0) {
                                    sb.append("-");
                                }
                                sb.append(upperCase.charAt(i4));
                            }
                            if (!sb.toString().equals(charSequence.toString())) {
                                RTKRegisterDialogFragment.this.binding.edtCode.setText(sb.toString());
                                RTKRegisterDialogFragment.this.binding.edtCode.setSelection(sb.length());
                            }
                            this.isFormatting = false;
                        }
                    }
                } catch (Exception e) {
                    LogToFile.e(e.getMessage());
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                try {
                    if (editable.length() < 19) {
                        RTKRegisterDialogFragment.this.binding.tvError.setText("");
                    }
                    if (this.isFormatting || !editable.toString().endsWith("-")) {
                        return;
                    }
                    editable.delete(editable.length() - 1, editable.length());
                } catch (Exception e) {
                    LogToFile.e(e.getMessage());
                }
            }
        });
        if (bundle != null) {
            this.binding.edtCode.setText(bundle.getString("code", string2));
        }
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("code", this.binding.edtCode.getText().toString().trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close() {
        dismiss();
    }

    public String formatWithDash(String str) {
        if (str == null) {
            return "";
        }
        String strReplace = str.replace("-", "");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strReplace.length(); i++) {
            if (i > 0 && i % 4 == 0) {
                sb.append("-");
            }
            sb.append(strReplace.charAt(i));
        }
        return sb.toString().toUpperCase();
    }

    /* renamed from: $r8$lambda$fG-w_ITSwZBW39Ms0NL-EEhzy3c, reason: not valid java name */
    public static /* synthetic */ void m2134$r8$lambda$fGw_ITSwZBW39Ms0NLEEhzy3c(RTKRegisterDialogFragment rTKRegisterDialogFragment, ScanIntentResult scanIntentResult) {
        rTKRegisterDialogFragment.getClass();
        if (scanIntentResult.getContents() != null) {
            rTKRegisterDialogFragment.binding.edtCode.setText(rTKRegisterDialogFragment.formatWithDash(scanIntentResult.getContents()));
            EditText editText = rTKRegisterDialogFragment.binding.edtCode;
            editText.setSelection(editText.getText().toString().length());
            rTKRegisterDialogFragment.binding.tvError.setText("");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RTKRegisterResult rTKRegisterResult) {
        String string;
        boolean zEqualsIgnoreCase = rTKRegisterResult.result.equalsIgnoreCase("OK");
        this.binding.tvError.setText(getString(zEqualsIgnoreCase ? R$string.registered_success : R$string.registered_failed));
        this.binding.tvError.setSelected(zEqualsIgnoreCase);
        if (zEqualsIgnoreCase) {
            this.binding.edtCode.setText(formatWithDash(rTKRegisterResult.code));
            EditText editText = this.binding.edtCode;
            editText.setSelection(editText.getText().toString().length());
            if (rTKRegisterResult.deviceType == DeviceType.BASE) {
                string = this.mSp.getString("base_deviceSn", "");
            } else {
                string = this.mSp.getString("deviceSn", "");
            }
            this.mSp.edit().putString(rTKRegisterResult.deviceType.getType() + "_" + string, rTKRegisterResult.code).apply();
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,EXPIREDATE"));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.9f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.RTKRegisterDialogFragment.5
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (RTKRegisterDialogFragment.this.getFragmentManager() != null) {
                        RTKRegisterDialogFragment.this.getFragmentManager().beginTransaction().remove(RTKRegisterDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
