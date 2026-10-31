package com.qianhe.yct.event;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.utils.LanguagePrefs;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ApkListResponse {
    public List<ApkInfo> apk_list;
    public String base_file_md5;
    public long base_file_size;
    public String err_msg;
    public int state = -1;

    public static class UpdateLogExItem {
        public String content;
        public String lan;
    }

    public static class ApkInfo {
        public String abis;
        public int diff_apk_id;
        public String diff_file_md5;
        public long diff_file_size;
        public boolean forced;
        public int full_apk_id;
        public String full_file_md5;
        public long full_file_size;
        public String pkg_name;
        public String update_log;
        public String update_log_ex;
        public String version;

        public String getLocalizedUpdateLog(Context context) {
            String currentLanguageCode = LanguagePrefs.getCurrentLanguageCode(context);
            if ("zh".equals(currentLanguageCode)) {
                String str = this.update_log;
                return str != null ? str : "";
            }
            if (TextUtils.isEmpty(this.update_log_ex)) {
                String str2 = this.update_log;
                return str2 != null ? str2 : "";
            }
            try {
                List<UpdateLogExItem> list = (List) new Gson().fromJson(this.update_log_ex, new TypeToken<List<UpdateLogExItem>>() { // from class: com.qianhe.yct.event.ApkListResponse.ApkInfo.1
                }.getType());
                if (list != null) {
                    for (UpdateLogExItem updateLogExItem : list) {
                        if (currentLanguageCode.equals(updateLogExItem.lan) && !TextUtils.isEmpty(updateLogExItem.content)) {
                            return updateLogExItem.content;
                        }
                    }
                    for (UpdateLogExItem updateLogExItem2 : list) {
                        if ("en".equals(updateLogExItem2.lan) && !TextUtils.isEmpty(updateLogExItem2.content)) {
                            return updateLogExItem2.content;
                        }
                    }
                }
            } catch (Exception unused) {
            }
            String str3 = this.update_log;
            return str3 != null ? str3 : "";
        }
    }
}
