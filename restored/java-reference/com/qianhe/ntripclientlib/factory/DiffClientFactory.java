package com.qianhe.ntripclientlib.factory;

import android.content.Context;
import android.content.SharedPreferences;
import com.qh.diffclient.DiffClient;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.base.DiffClientImpl;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.ntripclientlib.client.config.NtripClientConfig;
import com.qianhe.ntripclientlib.client.config.SdkClientConfig;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DiffClientFactory {
    private static final SimpleDateFormat dateFormatT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);
    private static boolean isFailReq = false;

    private DiffClientFactory() {
    }

    public static DiffClientImpl getIntance(Context context, final BaseConfig baseConfig, String str) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences("sp", 0);
        final String string = sharedPreferences.getString("deviceSn", "");
        final DiffClient diffClient = new DiffClient();
        DiffClient.setListener(new DiffClient.Listener() { // from class: com.qianhe.ntripclientlib.factory.DiffClientFactory.1
            @Override // com.qh.diffclient.DiffClient.Listener
            public void onStateChanged(int i) {
                if (i == 10) {
                    LogToFile.i("DiffClient ——> 请求Rss账号...");
                    return;
                }
                if (i == 11) {
                    LogToFile.i("DiffClient ——> 请求Rss账号失败");
                    if (DiffClientFactory.isFailReq) {
                        return;
                    }
                    DiffClientFactory.isFailReq = true;
                    AuthResult authResult = new AuthResult(8);
                    authResult.setIsInit(baseConfig.isInit);
                    EventBus.getDefault().post(authResult);
                    return;
                }
                if (i == 100) {
                    LogToFile.i("DiffClient ——> 正在连接...");
                    AuthResult authResult2 = new AuthResult(3);
                    authResult2.setIsInit(baseConfig.isInit);
                    EventBus.getDefault().post(authResult2);
                    return;
                }
                if (i == 101) {
                    LogToFile.i("DiffClient ——> 连接成功");
                    AuthResult authResult3 = new AuthResult(4);
                    authResult3.setIsInit(baseConfig.isInit);
                    EventBus.getDefault().post(authResult3);
                    return;
                }
                if (i == 102) {
                    LogToFile.i("DiffClient ——> 连接断开");
                    AuthResult authResult4 = new AuthResult(5);
                    authResult4.setIsInit(baseConfig.isInit);
                    EventBus.getDefault().post(authResult4);
                    return;
                }
                if (i == 200) {
                    LogToFile.i("DiffClient ——> 认证中...");
                    AuthResult authResult5 = new AuthResult(2);
                    authResult5.setIsInit(baseConfig.isInit);
                    EventBus.getDefault().post(authResult5);
                    return;
                }
                if (i == 201) {
                    LogToFile.i("DiffClient ——> 服务无覆盖");
                    return;
                }
                if (i != 203) {
                    if (i != 202) {
                        if (i == 301) {
                            LogToFile.i("DiffClient ——> 收到差分数据。");
                            AuthResult authResult6 = new AuthResult(7);
                            authResult6.setIsInit(baseConfig.isInit);
                            authResult6.setConfig(baseConfig);
                            EventBus.getDefault().post(authResult6);
                            return;
                        }
                        return;
                    }
                    DiffClientFactory.isFailReq = false;
                    LogToFile.i("DiffClient ——> 认证失败。" + baseConfig.toString());
                    AuthResult authResult7 = new AuthResult(0);
                    authResult7.setIsInit(baseConfig.isInit);
                    authResult7.setConfig(baseConfig);
                    EventBus.getDefault().post(authResult7);
                    return;
                }
                LogToFile.i("DiffClient ——> 认证成功");
                BaseConfig baseConfig2 = baseConfig;
                if (baseConfig2 instanceof SdkClientConfig) {
                    long accountExpireEpoch = DiffClient.getAccountExpireEpoch();
                    long j = 1000 * accountExpireEpoch;
                    sharedPreferences.edit().putLong("corsAccountExpireEpoch", j).apply();
                    LogToFile.i("差分账号过期时间——> expireEpoch：" + accountExpireEpoch + "，" + (DiffClientFactory.dateFormatT.format(Long.valueOf(j)) + " (" + ((int) ((j - System.currentTimeMillis()) / 86400000)) + "天后)"));
                    if (!DiffClientFactory.isFailReq && (DiffClient.getRssConnectSupports(string) & 2) == 2) {
                        LogToFile.i("接入方式: ACC");
                        baseConfig.ntripType = NtripTypeEnum.ACC.getType();
                    } else {
                        LogToFile.i("接入方式: SDK");
                        baseConfig.ntripType = NtripTypeEnum.SDK.getType();
                    }
                    BaseConfig baseConfig3 = baseConfig;
                    baseConfig3.ntrip_host = "rss.rtkiot.cn";
                    int i2 = baseConfig3.ntrip_port;
                    if (i2 == 0) {
                        i2 = 8001;
                    }
                    baseConfig3.ntrip_port = i2;
                    baseConfig3.mount_point = "AUTO";
                } else if (baseConfig2 instanceof NtripClientConfig) {
                    LogToFile.i("接入方式: NTRIP");
                    baseConfig.ntripType = NtripTypeEnum.NTRIP.getType();
                }
                sharedPreferences.edit().putInt(Constant.NTRIPTYPE, baseConfig.ntripType).apply();
                AuthResult authResult8 = new AuthResult(1);
                authResult8.setIsInit(baseConfig.isInit);
                authResult8.setConfig(baseConfig);
                EventBus.getDefault().post(authResult8);
                DiffClientFactory.isFailReq = false;
            }

            @Override // com.qh.diffclient.DiffClient.Listener
            public void onDiffDataReceived(byte[] bArr) {
                AuthResult authResult = new AuthResult(7);
                authResult.setIsInit(baseConfig.isInit);
                authResult.setConfig(baseConfig);
                EventBus.getDefault().post(authResult);
                EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, bArr));
            }
        });
        if (baseConfig instanceof NtripClientConfig) {
            DiffClient.NtripClientDiffParams ntripClientDiffParams = new DiffClient.NtripClientDiffParams();
            ntripClientDiffParams.sn = string;
            ntripClientDiffParams.ggaLine = str;
            ntripClientDiffParams.host = baseConfig.ntrip_host;
            ntripClientDiffParams.port = baseConfig.ntrip_port;
            ntripClientDiffParams.user = baseConfig.username;
            ntripClientDiffParams.password = baseConfig.password;
            ntripClientDiffParams.mountPoint = baseConfig.mount_point;
            ntripClientDiffParams.ggaUploadInterval = baseConfig.updateGGA_period;
            if (!DiffClient.initialize(ntripClientDiffParams)) {
                LogToFile.i("NTRIP连接失败！");
                AuthResult authResult = new AuthResult(6);
                authResult.setIsInit(baseConfig.isInit);
                authResult.setConfig(baseConfig);
                EventBus.getDefault().post(authResult);
                return diffClient;
            }
        } else if (baseConfig instanceof SdkClientConfig) {
            int rssConnectSupports = DiffClient.getRssConnectSupports(string);
            LogToFile.i("<====== RSS支持的类型：======>" + String.format("0x%02X", Integer.valueOf(rssConnectSupports)) + "，sn:" + string);
            if (!isFailReq && (rssConnectSupports & 2) == 2) {
                DiffClient.RssAccDiffParams rssAccDiffParams = new DiffClient.RssAccDiffParams();
                rssAccDiffParams.sn = string;
                rssAccDiffParams.ggaLine = str;
                int i = baseConfig.ntrip_port;
                rssAccDiffParams.coordSys = i != 8002 ? i == 8003 ? 3 : 2 : 1;
                DiffClient.initialize(rssAccDiffParams);
                return diffClient;
            }
            DiffClient.RssSdkDiffParams rssSdkDiffParams = new DiffClient.RssSdkDiffParams();
            rssSdkDiffParams.sn = string;
            rssSdkDiffParams.ggaLine = str;
            rssSdkDiffParams.salt = "ABC";
            int i2 = baseConfig.ntrip_port;
            rssSdkDiffParams.coordSys = i2 != 8002 ? i2 == 8003 ? 3 : 2 : 1;
            if (!DiffClient.initialize(rssSdkDiffParams)) {
                LogToFile.i("NTRIP连接失败！");
                AuthResult authResult2 = new AuthResult(6);
                authResult2.setIsInit(baseConfig.isInit);
                EventBus.getDefault().post(authResult2);
            }
        }
        return diffClient;
    }
}
