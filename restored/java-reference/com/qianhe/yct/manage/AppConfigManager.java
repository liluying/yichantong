package com.qianhe.yct.manage;

import android.text.TextUtils;
import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.baselib.enums.UnitEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.utils.AppConfigUtil;
import com.qianhe.yct.utils.NetworkUserLoader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AppConfigManager {
    private static AppConfigManager instance;
    private AppConfig appConfig;

    private AppConfigManager() {
    }

    public static synchronized AppConfigManager getInstance() {
        try {
            if (instance == null) {
                instance = new AppConfigManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public AppConfig getAppConfig() {
        AppConfig appConfigLoadAppConfig = AppConfigUtil.loadAppConfig();
        this.appConfig = appConfigLoadAppConfig;
        return appConfigLoadAppConfig;
    }

    private boolean saveAppConfig(AppConfig appConfig) {
        appConfig.version++;
        return AppConfigUtil.saveAppConfig(appConfig);
    }

    public void synVersion(int i) {
        this.appConfig.version = i;
        LogToFile.i("同步配置文件版本号");
        saveAppConfig(this.appConfig);
    }

    public boolean resetConfig() {
        AppConfig appConfigCreateDefaultConfig = AppConfigUtil.createDefaultConfig();
        AppConfig appConfig = this.appConfig;
        appConfigCreateDefaultConfig.version = appConfig.version;
        AppConfig.Details details = appConfigCreateDefaultConfig.details;
        AppConfig.Details details2 = appConfig.details;
        details.ntrip_type = details2.ntrip_type;
        details.ntrip_host = details2.ntrip_host;
        details.ntrip_port = details2.ntrip_port;
        details.ntrip_mount_point = details2.ntrip_mount_point;
        details.ntrip_username = details2.ntrip_username;
        details.ntrip_password = details2.ntrip_password;
        return saveAppConfig(appConfigCreateDefaultConfig);
    }

    public void setCors(BaseConfig baseConfig) throws JSONException {
        AppConfig appConfigCreateDefaultConfig = AppConfigUtil.createDefaultConfig();
        AppConfig.Details details = this.appConfig.details;
        int i = baseConfig.ntripType;
        if (i == 0) {
            i = appConfigCreateDefaultConfig.details.ntrip_type;
        }
        details.ntrip_type = i;
        details.ntrip_host = TextUtils.isEmpty(baseConfig.ntrip_host) ? appConfigCreateDefaultConfig.details.ntrip_host : baseConfig.ntrip_host;
        AppConfig.Details details2 = this.appConfig.details;
        int i2 = baseConfig.ntrip_port;
        if (i2 == 0) {
            i2 = appConfigCreateDefaultConfig.details.ntrip_port;
        }
        details2.ntrip_port = i2;
        details2.ntrip_mount_point = TextUtils.isEmpty(baseConfig.mount_point) ? appConfigCreateDefaultConfig.details.ntrip_mount_point : baseConfig.mount_point;
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details3 = appConfig.details;
        details3.ntrip_username = baseConfig.username;
        details3.ntrip_password = baseConfig.password;
        saveAppConfig(appConfig);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ntrip_type", this.appConfig.details.ntrip_type + "");
            jSONObject.put("ntrip_host", this.appConfig.details.ntrip_host);
            jSONObject.put("ntrip_port", this.appConfig.details.ntrip_port + "");
            jSONObject.put("ntrip_mount_point", this.appConfig.details.ntrip_mount_point);
            jSONObject.put("ntrip_username", this.appConfig.details.ntrip_username);
            jSONObject.put("ntrip_password", this.appConfig.details.ntrip_password);
            NetworkUserLoader.getInstance().setConfig(jSONObject);
        } catch (JSONException e) {
            LogToFile.e("配置异常：" + e);
        }
    }

    public void setNtriptype(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.ntrip_type != i) {
            details.ntrip_type = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ntrip_type", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setInsInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.ins_interval != f) {
            details.ins_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ins_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setInsUnavailableCount(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.ins_unavailable_count != i) {
            details.ins_unavailable_count = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ins_unavailable_count", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setExtsensor1(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.extsensor_1 != f) {
            details.extsensor_1 = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("extsensor_1", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setDopInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.dop_interval != f) {
            details.dop_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("dop_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setGstInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.gst_interval != f) {
            details.gst_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("gst_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setSnrInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.snr_interval != f) {
            details.snr_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("snr_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setSavInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.sav_interval != f) {
            details.sav_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("sav_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setSauInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.sau_interval != f) {
            details.sau_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("sau_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setRefstationInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.refstation_interval != f) {
            details.refstation_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("refstation_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setGGaInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.gga_interval != f) {
            details.gga_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("gga_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setBestposInterval(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.bestpos_interval != f) {
            details.bestpos_interval = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("bestpos_interval", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setWorktolerance(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.work_tolerance != f) {
            details.work_tolerance = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("work_tolerance", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setHRMSLimit(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.hrms_limit != f) {
            details.hrms_limit = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("hrms_limit", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setVRMSLimit(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.vrms_limit != f) {
            details.vrms_limit = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("vrms_limit", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setBaseMobilityThreshold(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.base_mobility_threshold != f) {
            details.base_mobility_threshold = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("base_mobility_threshold", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setBaseHost(String str) throws JSONException {
        if (this.appConfig.details.base_host.equals(str)) {
            return;
        }
        AppConfig appConfig = this.appConfig;
        appConfig.details.base_host = str;
        saveAppConfig(appConfig);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("base_host", str);
            NetworkUserLoader.getInstance().setConfig(jSONObject);
        } catch (JSONException e) {
            LogToFile.e("配置异常：" + e);
        }
    }

    public void setBasePort(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.base_port != i) {
            details.base_port = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("base_port", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setBasePDOPLimit(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.base_pdop_limit != f) {
            details.base_pdop_limit = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("base_pdop_limit", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setBaseHeightCutoffAngle(float f) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.base_height_cutoff_angle != f) {
            details.base_height_cutoff_angle = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("base_height_cutoff_angle", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setDataSmoot(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.data_smoot != i) {
            details.data_smoot = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("data_smoot", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setDistanceFromProjectVisibility(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.display_distance_starting_point != i) {
            details.display_distance_starting_point = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("display_distance_starting_point", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setVerifyAccuracyHorizontalErrorVisibility(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.display_verify_horizontal_error != i) {
            details.display_verify_horizontal_error = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("display_verify_horizontal_error", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void setTiltDisplay(int i) throws JSONException {
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.tilt_display != i) {
            details.tilt_display = i;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("tilt_display", i + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public int getUnitPreference() {
        if (this.appConfig == null) {
            this.appConfig = AppConfigUtil.loadAppConfig();
        }
        return UnitEnum.normalize(this.appConfig.details.unit_preference);
    }

    public void setUnitPreference(int i) throws JSONException {
        int iNormalize = UnitEnum.normalize(i);
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.unit_preference != iNormalize) {
            details.unit_preference = iNormalize;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("unit_preference", iNormalize + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public float getPoleHeight() {
        return this.appConfig.details.pole_height;
    }

    public void setPoleHeight(float f) throws JSONException {
        getAppConfig();
        AppConfig appConfig = this.appConfig;
        AppConfig.Details details = appConfig.details;
        if (details.pole_height != f) {
            details.pole_height = f;
            saveAppConfig(appConfig);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pole_height", f + "");
                NetworkUserLoader.getInstance().setConfig(jSONObject);
            } catch (JSONException e) {
                LogToFile.e("配置异常：" + e);
            }
        }
    }

    public void release() {
        instance = null;
        this.appConfig = null;
    }
}
