package com.qianhe.yct.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.ExcavatorParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$string;
import com.qianhe.yct.db.DatabaseManager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class FineTuneExcavatorHelper {

    /* JADX INFO: Access modifiers changed from: private */
    interface NameExistsChecker {
        boolean exists(String str);
    }

    public interface SaveCallback {
        void onFailed();

        void onSaved(ExcavatorEntity excavatorEntity);
    }

    public static String fineTuneNameMark(Context context) {
        return "(" + LanguagePrefs.getString(context, R$string.bucket_fine_tune) + ")";
    }

    public static boolean alreadyHasFineTuneMark(String str, String str2) {
        int iLastIndexOf;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (iLastIndexOf = str.lastIndexOf(str2)) < 0) {
            return false;
        }
        String strSubstring = str.substring(iLastIndexOf + str2.length());
        return strSubstring.isEmpty() || strSubstring.matches("-?\\d+");
    }

    public static String generateFineTuneExcavatorName(Context context, String str) {
        String strFineTuneNameMark = fineTuneNameMark(context);
        String string = LanguagePrefs.getString(context, R$string.excavator);
        final DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        ArrayList arrayList = new ArrayList();
        List<ExcavatorEntity> listQueryExcavatorByUserId = databaseManager.queryExcavatorByUserId(0L);
        if (listQueryExcavatorByUserId != null) {
            for (ExcavatorEntity excavatorEntity : listQueryExcavatorByUserId) {
                if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.name)) {
                    arrayList.add(excavatorEntity.name);
                }
            }
        }
        return generateMarkedSerialName(str, strFineTuneNameMark, string, arrayList, new NameExistsChecker() { // from class: com.qianhe.yct.utils.FineTuneExcavatorHelper$$ExternalSyntheticLambda3
            @Override // com.qianhe.yct.utils.FineTuneExcavatorHelper.NameExistsChecker
            public final boolean exists(String str2) {
                return databaseManager.isExcavatorNameExists(str2);
            }
        });
    }

    public static String generateFineTuneBucketName(Context context, String str) {
        String strFineTuneNameMark = fineTuneNameMark(context);
        String string = LanguagePrefs.getString(context, R$string.shovel);
        final DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        ArrayList arrayList = new ArrayList();
        List<ShovelEntity> listQueryShovelByName = databaseManager.queryShovelByName(null);
        if (listQueryShovelByName != null) {
            for (ShovelEntity shovelEntity : listQueryShovelByName) {
                if (shovelEntity != null && !TextUtils.isEmpty(shovelEntity.name)) {
                    arrayList.add(shovelEntity.name);
                }
            }
        }
        return generateMarkedSerialName(str, strFineTuneNameMark, string, arrayList, new NameExistsChecker() { // from class: com.qianhe.yct.utils.FineTuneExcavatorHelper$$ExternalSyntheticLambda2
            @Override // com.qianhe.yct.utils.FineTuneExcavatorHelper.NameExistsChecker
            public final boolean exists(String str2) {
                return databaseManager.isShovelNameExists(str2);
            }
        });
    }

    private static String generateMarkedSerialName(String str, String str2, String str3, List<String> list, NameExistsChecker nameExistsChecker) {
        int fineTuneSerial;
        if (TextUtils.isEmpty(str)) {
            str = str3;
        }
        if (TextUtils.isEmpty(str)) {
            str = str3;
        }
        String strStripFineTuneNameMark = stripFineTuneNameMark(str, str2);
        if (!TextUtils.isEmpty(strStripFineTuneNameMark)) {
            str3 = strStripFineTuneNameMark;
        }
        if (str3 == null) {
            str3 = "";
        }
        String strReplace = (str3.replace("_", "-") + str2).replace("_", "-");
        int i = 1;
        if (list != null) {
            for (String str4 : list) {
                if (!TextUtils.isEmpty(str4) && (fineTuneSerial = parseFineTuneSerial(str4, strReplace)) >= i) {
                    i = fineTuneSerial + 1;
                }
            }
        }
        String str5 = strReplace + i;
        for (int i2 = 0; nameExistsChecker != null && nameExistsChecker.exists(str5) && i2 < 50; i2++) {
            i++;
            str5 = strReplace + i;
        }
        if (nameExistsChecker == null || !nameExistsChecker.exists(str5)) {
            return str5;
        }
        return strReplace + i + "-" + (System.currentTimeMillis() / 1000);
    }

    private static String stripFineTuneNameMark(String str, String str2) {
        int iLastIndexOf;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            loop0: while (true) {
                for (boolean z = true; z; z = false) {
                    iLastIndexOf = str.lastIndexOf(str2);
                    if (iLastIndexOf < 0) {
                        break loop0;
                    }
                    String strSubstring = str.substring(str2.length() + iLastIndexOf);
                    if (strSubstring.isEmpty() || strSubstring.matches("-?\\d+")) {
                        break;
                    }
                }
                str = str.substring(0, iLastIndexOf);
            }
        }
        return str;
    }

    private static int parseFineTuneSerial(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str.startsWith(str2)) {
            String strSubstring = str.substring(str2.length());
            if (strSubstring.isEmpty()) {
                return 0;
            }
            for (int i = 0; i < strSubstring.length(); i++) {
                if (!Character.isDigit(strSubstring.charAt(i))) {
                    return -1;
                }
            }
            try {
                return Integer.parseInt(strSubstring);
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static ExcavatorEntity buildFineTuneExcavator(Context context, ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity, String str) {
        int i;
        ExcavatorEntity excavatorEntity2 = new ExcavatorEntity();
        excavatorEntity2.name = generateFineTuneExcavatorName(context, excavatorEntity != null ? excavatorEntity.name : "");
        if (str == null) {
            str = "";
        }
        excavatorEntity2.calibParams = str;
        if (excavatorEntity == null || (i = excavatorEntity.mode) <= 0) {
            i = shovelEntity != null ? shovelEntity.mode : 0;
        }
        excavatorEntity2.mode = i;
        excavatorEntity2.userId = excavatorEntity != null ? excavatorEntity.userId : 0L;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        excavatorEntity2.createTime = jCurrentTimeMillis;
        excavatorEntity2.updateTime = jCurrentTimeMillis;
        excavatorEntity2.version = 1L;
        excavatorEntity2.leftDist = 0.0d;
        excavatorEntity2.rigthDist = 0.0d;
        excavatorEntity2.spanDist = 0.0d;
        excavatorEntity2.deviceHeight = 0.0d;
        excavatorEntity2.setExcavatorParamsObj(new ExcavatorParams());
        excavatorEntity2.clearMeasureParams();
        excavatorEntity2.clearAutoGenerateParams();
        if (shovelEntity != null) {
            excavatorEntity2.syncBucketParamsFrom(shovelEntity);
        }
        excavatorEntity2.calibParamsId = CalibParamsIdUtil.buildCalibParamsId(excavatorEntity2);
        return excavatorEntity2;
    }

    public static void saveFineTuneExcavatorAsync(final Context context, final ExcavatorEntity excavatorEntity, final SaveCallback saveCallback) {
        new Thread(new Runnable() { // from class: com.qianhe.yct.utils.FineTuneExcavatorHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FineTuneExcavatorHelper.$r8$lambda$HTnhJRAyZyTq2IPgroDZKeAevGQ(context, excavatorEntity, saveCallback);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$HTnhJRAyZyTq2IPgroDZKeAevGQ(Context context, final ExcavatorEntity excavatorEntity, final SaveCallback saveCallback) {
        try {
            long jInsertExcavator = DatabaseManager.getInstance(context).insertExcavator(excavatorEntity);
            if (jInsertExcavator <= 0) {
                postFailure(context, saveCallback);
                return;
            }
            excavatorEntity.localId = jInsertExcavator;
            NetworkUserLoader.getInstance().createExcavator(context, excavatorEntity);
            runOnMain(context, new Runnable() { // from class: com.qianhe.yct.utils.FineTuneExcavatorHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FineTuneExcavatorHelper.$r8$lambda$AzVkpKBoQECZznlTcwq1BtpC83o(saveCallback, excavatorEntity);
                }
            });
        } catch (Exception e) {
            CalibrateLogToFile.e("智能校准新建挖机失败：" + e);
            postFailure(context, saveCallback);
        }
    }

    public static /* synthetic */ void $r8$lambda$AzVkpKBoQECZznlTcwq1BtpC83o(SaveCallback saveCallback, ExcavatorEntity excavatorEntity) {
        if (saveCallback != null) {
            saveCallback.onSaved(excavatorEntity);
        }
    }

    private static void postFailure(Context context, final SaveCallback saveCallback) {
        runOnMain(context, new Runnable() { // from class: com.qianhe.yct.utils.FineTuneExcavatorHelper$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FineTuneExcavatorHelper.$r8$lambda$RYQmSyXYhpulVF6dkEnwsKCw6YM(saveCallback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$RYQmSyXYhpulVF6dkEnwsKCw6YM(SaveCallback saveCallback) {
        if (saveCallback != null) {
            saveCallback.onFailed();
        }
    }

    private static void runOnMain(Context context, Runnable runnable) {
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }
}
