package com.qianhe.yct.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.event.ReloadAppConfigEvent;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class AppConfigUtil {
    private static String lastLoggedConfigDigest;
    private static boolean loggedMissingStoragePermission;

    public static boolean saveAppConfig(AppConfig appConfig) {
        if (appConfig == null) {
            LogToFile.i("saveAppConfig: appConfig is null");
            return false;
        }
        try {
            YCTApplication yCTApplication = YCTApplication.getInstance();
            if (yCTApplication != null && FileUtil.hasExternalStorageAccess(yCTApplication)) {
                File file = new File(FileUtil.mkConfigDir(YCTApplication.getInstance()), "app_config.json");
                String json = new GsonBuilder().setPrettyPrinting().create().toJson(appConfig);
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                bufferedWriter.write(json);
                bufferedWriter.close();
                EventBus.getDefault().post(new ReloadAppConfigEvent(appConfig));
                YCTApplication.getInstance().setAppConfig(appConfig);
                LogToFile.i("配置文件保存成功，路径：" + file.getAbsolutePath());
                return true;
            }
            LogToFile.i("saveAppConfig: 无存储权限，跳过写入");
            return false;
        } catch (IOException e) {
            LogToFile.i("保存配置文件失败：" + e.getMessage());
            return false;
        }
    }

    public static AppConfig loadAppConfig() {
        YCTApplication yCTApplication = YCTApplication.getInstance();
        if (yCTApplication == null || !FileUtil.hasExternalStorageAccess(yCTApplication)) {
            if (!loggedMissingStoragePermission) {
                loggedMissingStoragePermission = true;
                LogToFile.i("读取配置文件：无存储权限，暂用默认配置，授权后再加载");
            }
            return new AppConfig();
        }
        loggedMissingStoragePermission = false;
        try {
            File file = new File(FileUtil.mkConfigDir(yCTApplication), "app_config.json");
            if (!file.exists()) {
                LogToFile.i("初始化配置文件。");
                AppConfig appConfig = new AppConfig();
                saveAppConfig(appConfig);
                return appConfig;
            }
            if (!file.canRead()) {
                LogToFile.i("配置文件不可读：" + file.getAbsolutePath());
                return new AppConfig();
            }
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            Gson gson = new Gson();
            String string = sb.toString();
            AppConfig appConfig2 = (AppConfig) gson.fromJson(string, AppConfig.class);
            if (appConfig2 == null) {
                return new AppConfig();
            }
            logConfigDetailsIfChanged(string);
            return appConfig2;
        } catch (IOException e) {
            LogToFile.i("读取配置文件失败：" + e.getMessage());
            return new AppConfig();
        } catch (Exception e2) {
            LogToFile.i("解析配置文件失败：" + e2.getMessage());
            return new AppConfig();
        }
    }

    private static void logConfigDetailsIfChanged(String str) {
        if (str == null) {
            return;
        }
        String str2 = Integer.toHexString(str.hashCode()) + "_" + str.length();
        if (str2.equals(lastLoggedConfigDigest)) {
            return;
        }
        lastLoggedConfigDigest = str2;
        LogToFile.i("配置详情 -> " + str);
    }

    public static AppConfig createDefaultConfig() {
        return new AppConfig();
    }
}
