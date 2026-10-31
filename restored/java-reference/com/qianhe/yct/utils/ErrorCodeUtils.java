package com.qianhe.yct.utils;

import android.content.Context;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$string;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ErrorCodeUtils {
    public static String getErrorMsg(Context context, int i) {
        Context contextWrapContext = LanguagePrefs.wrapContext(context);
        String string = contextWrapContext.getString(R$string.request_failed);
        if (i != 9033) {
            switch (i) {
                case 8000:
                    return contextWrapContext.getString(R$string.param_error);
                case 8001:
                    return contextWrapContext.getString(R$string.system_error);
                case 8002:
                    return contextWrapContext.getString(R$string.permission_error);
                case 8003:
                    return contextWrapContext.getString(R$string.target_exists);
                case 8004:
                    return contextWrapContext.getString(R$string.target_not_exist);
                case 8005:
                    return contextWrapContext.getString(R$string.service_busy);
                default:
                    switch (i) {
                        case 9000:
                            return contextWrapContext.getString(R$string.account_format_error);
                        case 9001:
                            return contextWrapContext.getString(R$string.password_format_error);
                        case 9002:
                            return contextWrapContext.getString(R$string.user_name_format_error);
                        case 9003:
                            return contextWrapContext.getString(R$string.phone_format_error);
                        case 9004:
                            return contextWrapContext.getString(R$string.email_format_error);
                        case 9005:
                            return contextWrapContext.getString(R$string.account_exists);
                        case 9006:
                            return contextWrapContext.getString(R$string.phone_exists);
                        case 9007:
                            return contextWrapContext.getString(R$string.user_not_exist);
                        case 9008:
                            return contextWrapContext.getString(R$string.send_limit_reached);
                        case 9009:
                            return contextWrapContext.getString(R$string.sending_failed);
                        case 9010:
                            return contextWrapContext.getString(R$string.captcha_error);
                        case 9011:
                            return contextWrapContext.getString(R$string.password_error);
                        case 9012:
                            return contextWrapContext.getString(R$string.username_or_password_error);
                        case 9013:
                            return contextWrapContext.getString(R$string.operation_too_frequent);
                        case 9014:
                            return contextWrapContext.getString(R$string.name_exists);
                        case 9015:
                            return contextWrapContext.getString(R$string.project_not_exist);
                        case 9016:
                            return contextWrapContext.getString(R$string.project_details_format_error);
                        case 9017:
                            return contextWrapContext.getString(R$string.project_name_format_error);
                        case 9018:
                            return contextWrapContext.getString(R$string.project_type_error);
                        case 9019:
                            return contextWrapContext.getString(R$string.share_name_exists);
                        case 9020:
                            return contextWrapContext.getString(R$string.share_name_not_exist);
                        case 9021:
                            return contextWrapContext.getString(R$string.share_name_format_error);
                        case 9022:
                            return contextWrapContext.getString(R$string.project_empty);
                        default:
                            return string;
                    }
            }
        }
        return contextWrapContext.getString(R$string.cannot_get_own_share);
    }
}
