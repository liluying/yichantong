package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.AppConfigActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentBaseConfigBinding;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.ConfigLayoutHelper;
import com.qianhe.yct.utils.KeyboardUtil;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseConfigFragment extends BaseFragment {
    private FragmentBaseConfigBinding binding;
    private final DeviceType mDeviceType = DeviceType.BASE;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentBaseConfigBinding.inflate(getLayoutInflater());
        initView();
        ConfigLayoutHelper.applyContentDirectionByLanguage(this.binding.getRoot());
        return this.binding.getRoot();
    }

    private void initView() {
        new KeyboardUtil(requireActivity(), new KeyboardUtil.OnKeyboardVisibilityListener() { // from class: com.qianhe.yct.fragment.BaseConfigFragment.1
            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardHidden() {
                BaseConfigFragment.this.binding.edtHeightCutoffAngle.clearFocus();
                BaseConfigFragment.this.binding.edtPDOP.clearFocus();
                BaseConfigFragment.this.binding.edtHost.clearFocus();
                BaseConfigFragment.this.binding.edtPort.clearFocus();
                BaseConfigFragment.this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.BaseConfigFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BaseConfigFragment.this.isAdded()) {
                            ((AppConfigActivity) BaseConfigFragment.this.requireActivity()).keyboardShown = false;
                        }
                    }
                }, 100L);
            }

            @Override // com.qianhe.yct.utils.KeyboardUtil.OnKeyboardVisibilityListener
            public void onKeyboardShown() {
                if (BaseConfigFragment.this.isAdded()) {
                    ((AppConfigActivity) BaseConfigFragment.this.requireActivity()).keyboardShown = true;
                }
            }
        });
        this.binding.edtHeightCutoffAngle.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.BaseConfigFragment.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) BaseConfigFragment.this.binding.edtHeightCutoffAngle.getNumericValue()) >= 0.01f) {
                    BaseConfigFragment.this.binding.edtHeightCutoffAngle.setSelected(false);
                    if (((float) BaseConfigFragment.this.binding.edtHeightCutoffAngle.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.base_height_cutoff_angle) {
                        AppConfigManager.getInstance().setBaseHeightCutoffAngle((float) BaseConfigFragment.this.binding.edtHeightCutoffAngle.getNumericValue());
                        BaseConfigFragment baseConfigFragment = BaseConfigFragment.this;
                        baseConfigFragment.showToastDialog(baseConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                BaseConfigFragment.this.binding.edtHeightCutoffAngle.setSelected(true);
                BaseConfigFragment baseConfigFragment2 = BaseConfigFragment.this;
                baseConfigFragment2.showTipDialog(baseConfigFragment2.getString(R$string.invalid_config), BaseConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtPDOP.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.BaseConfigFragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((float) BaseConfigFragment.this.binding.edtPDOP.getNumericValue()) >= 0.01f) {
                    BaseConfigFragment.this.binding.edtPDOP.setSelected(false);
                    if (((float) BaseConfigFragment.this.binding.edtPDOP.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.base_pdop_limit) {
                        AppConfigManager.getInstance().setBasePDOPLimit((float) BaseConfigFragment.this.binding.edtPDOP.getNumericValue());
                        BaseConfigFragment baseConfigFragment = BaseConfigFragment.this;
                        baseConfigFragment.showToastDialog(baseConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                BaseConfigFragment.this.binding.edtPDOP.setSelected(true);
                BaseConfigFragment baseConfigFragment2 = BaseConfigFragment.this;
                baseConfigFragment2.showTipDialog(baseConfigFragment2.getString(R$string.invalid_config), BaseConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtHost.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.BaseConfigFragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                String strTrim = BaseConfigFragment.this.binding.edtHost.getText().toString().trim();
                if (!TextUtils.isEmpty(strTrim)) {
                    BaseConfigFragment.this.binding.edtHost.setSelected(false);
                    if (strTrim.equals(AppConfigManager.getInstance().getAppConfig().details.base_host)) {
                        return;
                    }
                    AppConfigManager.getInstance().setBaseHost(strTrim);
                    BaseConfigFragment baseConfigFragment = BaseConfigFragment.this;
                    baseConfigFragment.showToastDialog(baseConfigFragment.getString(R$string.config_success));
                    return;
                }
                BaseConfigFragment.this.binding.edtHost.setSelected(true);
                BaseConfigFragment baseConfigFragment2 = BaseConfigFragment.this;
                baseConfigFragment2.showTipDialog(baseConfigFragment2.getString(R$string.invalid_config), BaseConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtPort.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.BaseConfigFragment.5
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) throws JSONException {
                if (z) {
                    return;
                }
                if (((int) BaseConfigFragment.this.binding.edtPort.getNumericValue()) > 0) {
                    BaseConfigFragment.this.binding.edtPort.setSelected(false);
                    if (((int) BaseConfigFragment.this.binding.edtPort.getNumericValue()) != AppConfigManager.getInstance().getAppConfig().details.base_port) {
                        AppConfigManager.getInstance().setBasePort((int) BaseConfigFragment.this.binding.edtPort.getNumericValue());
                        BaseConfigFragment baseConfigFragment = BaseConfigFragment.this;
                        baseConfigFragment.showToastDialog(baseConfigFragment.getString(R$string.config_success));
                        return;
                    }
                    return;
                }
                BaseConfigFragment.this.binding.edtPort.setSelected(true);
                BaseConfigFragment baseConfigFragment2 = BaseConfigFragment.this;
                baseConfigFragment2.showTipDialog(baseConfigFragment2.getString(R$string.invalid_config), BaseConfigFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtHeightCutoffAngle.setText(formatFloat(((BaseActivity) requireActivity()).appConfig.details.base_height_cutoff_angle));
        this.binding.edtPDOP.setText(formatFloat(((BaseActivity) requireActivity()).appConfig.details.base_pdop_limit));
        this.binding.edtHost.setText(((BaseActivity) requireActivity()).appConfig.details.base_host);
        this.binding.edtPort.setText(formatFloat(((BaseActivity) requireActivity()).appConfig.details.base_port));
    }
}
