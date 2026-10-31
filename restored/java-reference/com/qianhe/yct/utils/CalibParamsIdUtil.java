package com.qianhe.yct.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CalibParamsIdUtil {
    public static String decode(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String encodeRaw(String str) {
        if (str == null) {
            str = "";
        }
        return Base64.encodeToString(str.getBytes(StandardCharsets.UTF_8), 2);
    }

    public static boolean isMode1Excavator(ExcavatorEntity excavatorEntity) {
        return excavatorEntity != null && excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode();
    }

    public static String buildCalibParamsId(ExcavatorEntity excavatorEntity) {
        return encodeRaw(resolveExcavatorNameForBuild(excavatorEntity) + "_" + System.currentTimeMillis());
    }

    public static String buildCalibParamsId(ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity) {
        return buildCalibParamsId(excavatorEntity);
    }

    public static String parseExcavatorNameFromCalibParamsId(String str) {
        String strDecode = decode(str);
        if (TextUtils.isEmpty(strDecode)) {
            return "";
        }
        int iIndexOf = strDecode.indexOf(95);
        return iIndexOf < 0 ? strDecode : iIndexOf == 0 ? "" : strDecode.substring(0, iIndexOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String parseBucketNameFromCalibParamsId(java.lang.String r4, com.qianhe.baselib.bean.ExcavatorEntity r5) {
        /*
            java.lang.String r0 = decode(r4)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r2 = ""
            if (r1 == 0) goto Ld
            return r2
        Ld:
            if (r5 == 0) goto L1a
            java.lang.String r1 = r5.name
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L1a
            java.lang.String r4 = r5.name
            goto L1e
        L1a:
            java.lang.String r4 = parseExcavatorNameFromCalibParamsId(r4)
        L1e:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            r1 = 95
            if (r5 != 0) goto L48
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            java.lang.String r3 = "_"
            r5.append(r3)
            java.lang.String r5 = r5.toString()
            boolean r5 = r0.startsWith(r5)
            if (r5 == 0) goto L48
            int r4 = r4.length()
            int r4 = r4 + 1
            java.lang.String r4 = r0.substring(r4)
            goto L55
        L48:
            int r4 = r0.indexOf(r1)
            if (r4 >= 0) goto L4f
            return r2
        L4f:
            int r4 = r4 + 1
            java.lang.String r4 = r0.substring(r4)
        L55:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L5c
            return r2
        L5c:
            int r5 = r4.lastIndexOf(r1)
            if (r5 > 0) goto L63
            return r2
        L63:
            r0 = 0
            java.lang.String r4 = r4.substring(r0, r5)
            int r5 = r4.indexOf(r1)
            if (r5 > 0) goto L6f
            return r4
        L6f:
            java.lang.String r4 = r4.substring(r0, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.CalibParamsIdUtil.parseBucketNameFromCalibParamsId(java.lang.String, com.qianhe.baselib.bean.ExcavatorEntity):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String parseBucketParamFromCalibParamsId(java.lang.String r4, com.qianhe.baselib.bean.ExcavatorEntity r5) {
        /*
            java.lang.String r0 = decode(r4)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r2 = ""
            if (r1 == 0) goto Ld
            return r2
        Ld:
            if (r5 == 0) goto L1a
            java.lang.String r1 = r5.name
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L1a
            java.lang.String r4 = r5.name
            goto L1e
        L1a:
            java.lang.String r4 = parseExcavatorNameFromCalibParamsId(r4)
        L1e:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            r1 = 95
            if (r5 != 0) goto L48
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            java.lang.String r3 = "_"
            r5.append(r3)
            java.lang.String r5 = r5.toString()
            boolean r5 = r0.startsWith(r5)
            if (r5 == 0) goto L48
            int r4 = r4.length()
            int r4 = r4 + 1
            java.lang.String r4 = r0.substring(r4)
            goto L55
        L48:
            int r4 = r0.indexOf(r1)
            if (r4 >= 0) goto L4f
            return r2
        L4f:
            int r4 = r4 + 1
            java.lang.String r4 = r0.substring(r4)
        L55:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L5c
            return r2
        L5c:
            int r5 = r4.lastIndexOf(r1)
            if (r5 > 0) goto L63
            return r2
        L63:
            r0 = 0
            java.lang.String r4 = r4.substring(r0, r5)
            int r5 = r4.indexOf(r1)
            if (r5 <= 0) goto L7e
            int r0 = r4.length()
            int r0 = r0 + (-1)
            if (r5 < r0) goto L77
            goto L7e
        L77:
            int r5 = r5 + 1
            java.lang.String r4 = r4.substring(r5)
            return r4
        L7e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.CalibParamsIdUtil.parseBucketParamFromCalibParamsId(java.lang.String, com.qianhe.baselib.bean.ExcavatorEntity):java.lang.String");
    }

    private static String resolveExcavatorNameForBuild(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return "";
        }
        if (!TextUtils.isEmpty(excavatorEntity.name)) {
            return excavatorEntity.name;
        }
        return parseExcavatorNameFromCalibParamsId(excavatorEntity.calibParamsId);
    }

    public static long parseTimestamp(String str) {
        int iLastIndexOf;
        String strDecode = decode(str);
        if (!TextUtils.isEmpty(strDecode) && (iLastIndexOf = strDecode.lastIndexOf(95)) >= 0 && iLastIndexOf < strDecode.length() - 1) {
            try {
                return Long.parseLong(strDecode.substring(iLastIndexOf + 1));
            } catch (Exception unused) {
            }
        }
        return 0L;
    }

    public static boolean isMode1Format(String str, ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return false;
        }
        String strDecode = decode(str);
        if (TextUtils.isEmpty(strDecode)) {
            return false;
        }
        try {
            return isNumericTimestamp(strDecode.substring(excavatorEntity.name.length() + 1));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isBucketFormat(String str, ExcavatorEntity excavatorEntity) {
        if (TextUtils.isEmpty(str) || excavatorEntity == null || TextUtils.isEmpty(decode(str))) {
            return false;
        }
        return !isMode1Format(str, excavatorEntity);
    }

    public static boolean supportsBucketCurrentUsage(String str, ExcavatorEntity excavatorEntity) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (excavatorEntity == null || !isMode1Excavator(excavatorEntity)) {
            return (excavatorEntity == null || TextUtils.isEmpty(excavatorEntity.name) || !isMode1Format(str, excavatorEntity)) && excavatorEntity != null && isBucketFormat(str, excavatorEntity);
        }
        return false;
    }

    public static boolean matchesExcavator(String str, ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return false;
        }
        if (!TextUtils.isEmpty(str) && str.equals(excavatorEntity.calibParamsId)) {
            return true;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(excavatorEntity.name)) {
            return false;
        }
        String strDecode = decode(str);
        if (TextUtils.isEmpty(strDecode)) {
            return false;
        }
        if (strDecode.equals(excavatorEntity.name)) {
            return true;
        }
        return strDecode.startsWith(excavatorEntity.name + "_");
    }

    public static boolean matchesBucket(String str, ShovelEntity shovelEntity, ExcavatorEntity excavatorEntity) {
        if (shovelEntity == null || TextUtils.isEmpty(shovelEntity.name) || TextUtils.isEmpty(str) || !supportsBucketCurrentUsage(str, excavatorEntity)) {
            return false;
        }
        return matchesBucketPayload(extractBucketPayload(decode(str), excavatorEntity), shovelEntity);
    }

    public static ShovelEntity matchBucketFromList(String str, List<ShovelEntity> list, ExcavatorEntity excavatorEntity) {
        String strExtractBucketPayload;
        ShovelEntity shovelEntity = null;
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            if (!supportsBucketCurrentUsage(str, excavatorEntity) || (strExtractBucketPayload = extractBucketPayload(decode(str), excavatorEntity)) == null) {
                return null;
            }
            int i = -1;
            for (ShovelEntity shovelEntity2 : list) {
                if (matchesBucketPayload(strExtractBucketPayload, shovelEntity2)) {
                    int length = shovelEntity2.name.length();
                    if (!TextUtils.isEmpty(shovelEntity2.param)) {
                        length += shovelEntity2.param.length() + 10000;
                    }
                    if (length > i) {
                        shovelEntity = shovelEntity2;
                        i = length;
                    }
                }
            }
        }
        return shovelEntity;
    }

    private static String extractBucketPayload(String str, ExcavatorEntity excavatorEntity) {
        int iLastIndexOf;
        if (TextUtils.isEmpty(str) || (iLastIndexOf = str.lastIndexOf(95)) <= 0 || iLastIndexOf >= str.length() - 1 || !isNumericTimestamp(str.substring(iLastIndexOf + 1))) {
            return null;
        }
        String strSubstring = str.substring(0, iLastIndexOf);
        String str2 = excavatorEntity != null ? excavatorEntity.name : null;
        if (!TextUtils.isEmpty(str2)) {
            if (strSubstring.startsWith(str2 + "_")) {
                return strSubstring.substring(str2.length() + 1);
            }
        }
        int iIndexOf = strSubstring.indexOf(95);
        if (iIndexOf >= 0 && iIndexOf < strSubstring.length() - 1) {
            return strSubstring.substring(iIndexOf + 1);
        }
        return null;
    }

    private static boolean matchesBucketPayload(String str, ShovelEntity shovelEntity) {
        if (str == null || shovelEntity == null || TextUtils.isEmpty(shovelEntity.name)) {
            return false;
        }
        String str2 = shovelEntity.param;
        if (str2 == null) {
            str2 = "";
        }
        return str.equals(shovelEntity.name + "_" + str2);
    }

    public static ExcavatorEntity matchExcavatorFromList(String str, List<ExcavatorEntity> list) {
        ExcavatorEntity excavatorEntity = null;
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            int length = 0;
            for (ExcavatorEntity excavatorEntity2 : list) {
                if (matchesExcavator(str, excavatorEntity2) && !TextUtils.isEmpty(excavatorEntity2.name) && excavatorEntity2.name.length() > length) {
                    length = excavatorEntity2.name.length();
                    excavatorEntity = excavatorEntity2;
                }
            }
        }
        return excavatorEntity;
    }

    public static String resolveExcavatorName(String str, List<ExcavatorEntity> list) {
        ExcavatorEntity excavatorEntityMatchExcavatorFromList = matchExcavatorFromList(str, list);
        if (excavatorEntityMatchExcavatorFromList != null && !TextUtils.isEmpty(excavatorEntityMatchExcavatorFromList.name)) {
            return excavatorEntityMatchExcavatorFromList.name;
        }
        return parseExcavatorNameFromCalibParamsId(str);
    }

    private static boolean isNumericTimestamp(String str) {
        if (!TextUtils.isEmpty(str) && !str.contains("_")) {
            for (int i = 0; i < str.length(); i++) {
                if (!Character.isDigit(str.charAt(i))) {
                    return false;
                }
            }
            if (str.length() >= 10) {
                return true;
            }
        }
        return false;
    }
}
