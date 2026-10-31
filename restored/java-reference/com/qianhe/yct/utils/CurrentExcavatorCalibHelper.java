package com.qianhe.yct.utils;

import android.content.Context;
import android.text.TextUtils;
import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.yct.db.DatabaseManager;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CurrentExcavatorCalibHelper {
    public static ShovelEntity createLocalBucketIfMissing(Context context, GetCalibrateParamEvent getCalibrateParamEvent) {
        return null;
    }

    public static ExcavatorEntity findExcavatorByDeviceCalibParamsId(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        List<ExcavatorEntity> listQueryExcavatorByCalibParamsId = databaseManager.queryExcavatorByCalibParamsId(str);
        if (!listQueryExcavatorByCalibParamsId.isEmpty()) {
            return listQueryExcavatorByCalibParamsId.get(0);
        }
        ExcavatorEntity excavatorEntityMatchExcavatorFromList = CalibParamsIdUtil.matchExcavatorFromList(str, databaseManager.queryExcavatorByUserId(0L));
        if (excavatorEntityMatchExcavatorFromList != null) {
            return excavatorEntityMatchExcavatorFromList;
        }
        String excavatorNameFromCalibParamsId = CalibParamsIdUtil.parseExcavatorNameFromCalibParamsId(str);
        if (TextUtils.isEmpty(excavatorNameFromCalibParamsId)) {
            return null;
        }
        List<ExcavatorEntity> listQueryExcavatorByName = databaseManager.queryExcavatorByName(excavatorNameFromCalibParamsId);
        if (listQueryExcavatorByName.isEmpty()) {
            return null;
        }
        return listQueryExcavatorByName.get(0);
    }

    public static ExcavatorEntity resolveLocalExcavator(Context context, ExcavatorEntity excavatorEntity) {
        if (context == null || excavatorEntity == null) {
            return excavatorEntity;
        }
        if (excavatorEntity.localId > 0) {
            return reloadExcavatorFromDb(context, excavatorEntity);
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId = !TextUtils.isEmpty(excavatorEntity.calibParamsId) ? findExcavatorByDeviceCalibParamsId(context, excavatorEntity.calibParamsId) : null;
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId == null) {
            String excavatorNameFromCalibParamsId = excavatorEntity.name;
            if (TextUtils.isEmpty(excavatorNameFromCalibParamsId) && !TextUtils.isEmpty(excavatorEntity.calibParamsId)) {
                excavatorNameFromCalibParamsId = CalibParamsIdUtil.parseExcavatorNameFromCalibParamsId(excavatorEntity.calibParamsId);
            }
            if (!TextUtils.isEmpty(excavatorNameFromCalibParamsId)) {
                List<ExcavatorEntity> listQueryExcavatorByName = databaseManager.queryExcavatorByName(excavatorNameFromCalibParamsId);
                if (!listQueryExcavatorByName.isEmpty()) {
                    excavatorEntityFindExcavatorByDeviceCalibParamsId = listQueryExcavatorByName.get(0);
                }
            }
        }
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId == null) {
            return excavatorEntity;
        }
        ExcavatorEntity excavatorEntityReloadExcavatorFromDb = reloadExcavatorFromDb(context, excavatorEntityFindExcavatorByDeviceCalibParamsId);
        if (!TextUtils.isEmpty(excavatorEntity.calibParams)) {
            excavatorEntityReloadExcavatorFromDb.calibParams = excavatorEntity.calibParams;
        }
        int i = excavatorEntity.mode;
        if (i > 0) {
            excavatorEntityReloadExcavatorFromDb.mode = i;
        }
        return excavatorEntityReloadExcavatorFromDb;
    }

    public static ExcavatorEntity reloadExcavatorFromDb(Context context, ExcavatorEntity excavatorEntity) {
        if (context == null || excavatorEntity == null || excavatorEntity.localId <= 0) {
            return excavatorEntity;
        }
        List<ExcavatorEntity> listQueryExcavatorByLocalId = DatabaseManager.getInstance(context).queryExcavatorByLocalId(excavatorEntity.localId);
        return listQueryExcavatorByLocalId.isEmpty() ? excavatorEntity : listQueryExcavatorByLocalId.get(0);
    }

    public static String preferCalibParamsId(String str, ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null || TextUtils.isEmpty(excavatorEntity.calibParamsId)) {
            return !TextUtils.isEmpty(str) ? str : "";
        }
        if (TextUtils.isEmpty(str)) {
            return excavatorEntity.calibParamsId;
        }
        if (str.equals(excavatorEntity.calibParamsId)) {
            return str;
        }
        if (CalibParamsIdUtil.parseTimestamp(excavatorEntity.calibParamsId) > CalibParamsIdUtil.parseTimestamp(str)) {
            return excavatorEntity.calibParamsId;
        }
        if (CalibParamsIdUtil.isMode1Excavator(excavatorEntity)) {
            return str;
        }
        return (!CalibParamsIdUtil.supportsBucketCurrentUsage(excavatorEntity.calibParamsId, excavatorEntity) || CalibParamsIdUtil.supportsBucketCurrentUsage(str, excavatorEntity)) ? str : excavatorEntity.calibParamsId;
    }

    public static String applyGetCalibrateParam(Context context, GetCalibrateParamEvent getCalibrateParamEvent) {
        if (context == null || getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
            return "";
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId = findExcavatorByDeviceCalibParamsId(context, getCalibrateParamEvent.calibParamsId);
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId == null) {
            excavatorEntityFindExcavatorByDeviceCalibParamsId = CalibParamsIdUtil.matchExcavatorFromList(getCalibrateParamEvent.calibParamsId, databaseManager.queryExcavatorByUserId(0L));
        }
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId == null) {
            return getCalibrateParamEvent.calibParamsId;
        }
        ExcavatorEntity excavatorEntityReloadExcavatorFromDb = reloadExcavatorFromDb(context, excavatorEntityFindExcavatorByDeviceCalibParamsId);
        String strPreferCalibParamsId = preferCalibParamsId(getCalibrateParamEvent.calibParamsId, excavatorEntityReloadExcavatorFromDb);
        excavatorEntityReloadExcavatorFromDb.calibParamsId = strPreferCalibParamsId;
        if (!TextUtils.isEmpty(getCalibrateParamEvent.calibParams)) {
            excavatorEntityReloadExcavatorFromDb.calibParams = getCalibrateParamEvent.calibParams;
        }
        if (excavatorEntityReloadExcavatorFromDb.localId > 0) {
            databaseManager.updateExcavatorById(excavatorEntityReloadExcavatorFromDb);
        }
        return strPreferCalibParamsId;
    }

    public static boolean shouldPromptAddFromDeviceParam(Context context, GetCalibrateParamEvent getCalibrateParamEvent) {
        if (context == null || getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId) || findExcavatorByDeviceCalibParamsId(context, getCalibrateParamEvent.calibParamsId) != null) {
            return false;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        if (CalibParamsIdUtil.matchExcavatorFromList(getCalibrateParamEvent.calibParamsId, databaseManager.queryExcavatorByUserId(0L)) != null) {
            return false;
        }
        String excavatorNameFromCalibParamsId = CalibParamsIdUtil.parseExcavatorNameFromCalibParamsId(getCalibrateParamEvent.calibParamsId);
        return (TextUtils.isEmpty(excavatorNameFromCalibParamsId) || databaseManager.isExcavatorNameExists(excavatorNameFromCalibParamsId)) ? false : true;
    }

    public static ExcavatorEntity createLocalFromDeviceParam(Context context, GetCalibrateParamEvent getCalibrateParamEvent) {
        if (context == null || getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
            return null;
        }
        String excavatorNameFromCalibParamsId = CalibParamsIdUtil.parseExcavatorNameFromCalibParamsId(getCalibrateParamEvent.calibParamsId);
        if (TextUtils.isEmpty(excavatorNameFromCalibParamsId)) {
            return null;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(context);
        boolean z = false;
        if (databaseManager.isExcavatorNameExists(excavatorNameFromCalibParamsId)) {
            List<ExcavatorEntity> listQueryExcavatorByName = databaseManager.queryExcavatorByName(excavatorNameFromCalibParamsId);
            if (listQueryExcavatorByName.isEmpty()) {
                return null;
            }
            return listQueryExcavatorByName.get(0);
        }
        LibExcavator.Tool toolFromParam = ExcavatorCalibHelper.parseToolFromParam(CalibParamsIdUtil.parseBucketParamFromCalibParamsId(getCalibrateParamEvent.calibParamsId, null));
        if (toolFromParam == null) {
            toolFromParam = ExcavatorCalibHelper.parseToolFromCalibParams(getCalibrateParamEvent.calibParams);
        }
        ShovelAutoGenerateParams shovelAutoGenerateParamsKnownBucketParams = ExcavatorCalibHelper.knownBucketParams(toolFromParam);
        if (shovelAutoGenerateParamsKnownBucketParams != null && !shovelAutoGenerateParamsKnownBucketParams.isEmpty()) {
            z = true;
        }
        int paramsType = ExcavatorCalibHelper.parseParamsType(getCalibrateParamEvent.calibParams);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        ShovelEntity shovelEntityBuildBucketFromDeviceParam = buildBucketFromDeviceParam(databaseManager, getCalibrateParamEvent, null);
        ExcavatorEntity excavatorEntity = new ExcavatorEntity();
        excavatorEntity.name = excavatorNameFromCalibParamsId;
        excavatorEntity.calibParamsId = getCalibrateParamEvent.calibParamsId;
        String str = getCalibrateParamEvent.calibParams;
        if (str == null) {
            str = "";
        }
        excavatorEntity.calibParams = str;
        excavatorEntity.createTime = jCurrentTimeMillis;
        excavatorEntity.updateTime = jCurrentTimeMillis;
        excavatorEntity.version = 1L;
        if (paramsType > 0) {
            excavatorEntity.mode = paramsType;
        }
        if (shovelEntityBuildBucketFromDeviceParam != null) {
            excavatorEntity.syncBucketParamsFrom(shovelEntityBuildBucketFromDeviceParam);
        } else if (z) {
            excavatorEntity.setAutoGenerateParamsObj(shovelAutoGenerateParamsKnownBucketParams);
        }
        long jInsertExcavator = databaseManager.insertExcavator(excavatorEntity);
        excavatorEntity.localId = jInsertExcavator;
        if (jInsertExcavator <= 0) {
            CalibrateLogToFile.e("主机校准参数无匹配挖机，新建挖机失败 name=" + excavatorNameFromCalibParamsId);
            return null;
        }
        CalibrateLogToFile.i("主机校准参数无匹配挖机，已新建 name=" + excavatorNameFromCalibParamsId + "，localId=" + excavatorEntity.localId + "，mode=" + excavatorEntity.mode);
        return excavatorEntity;
    }

    private static ShovelEntity buildBucketFromDeviceParam(DatabaseManager databaseManager, GetCalibrateParamEvent getCalibrateParamEvent, ExcavatorEntity excavatorEntity) {
        int i;
        if (databaseManager != null && getCalibrateParamEvent != null && !TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
            String bucketNameFromCalibParamsId = CalibParamsIdUtil.parseBucketNameFromCalibParamsId(getCalibrateParamEvent.calibParamsId, excavatorEntity);
            String bucketParamFromCalibParamsId = CalibParamsIdUtil.parseBucketParamFromCalibParamsId(getCalibrateParamEvent.calibParamsId, excavatorEntity);
            if (!TextUtils.isEmpty(bucketNameFromCalibParamsId) && !TextUtils.isEmpty(bucketParamFromCalibParamsId) && !databaseManager.isShovelNameExists(bucketNameFromCalibParamsId)) {
                LibExcavator.Tool toolFromParam = ExcavatorCalibHelper.parseToolFromParam(bucketParamFromCalibParamsId);
                if (toolFromParam == null) {
                    toolFromParam = ExcavatorCalibHelper.parseToolFromCalibParams(getCalibrateParamEvent.calibParams);
                }
                ShovelAutoGenerateParams shovelAutoGenerateParamsKnownBucketParams = ExcavatorCalibHelper.knownBucketParams(toolFromParam);
                int paramsType = ExcavatorCalibHelper.parseParamsType(getCalibrateParamEvent.calibParams);
                if (paramsType <= 0 && excavatorEntity != null && (i = excavatorEntity.mode) > 0) {
                    paramsType = i;
                }
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                ShovelEntity shovelEntity = new ShovelEntity();
                shovelEntity.name = bucketNameFromCalibParamsId;
                shovelEntity.param = bucketParamFromCalibParamsId;
                shovelEntity.createTime = jCurrentTimeMillis;
                shovelEntity.updateTime = jCurrentTimeMillis;
                shovelEntity.version = 1L;
                if (paramsType > 0) {
                    shovelEntity.mode = paramsType;
                }
                if (shovelAutoGenerateParamsKnownBucketParams != null && !shovelAutoGenerateParamsKnownBucketParams.isEmpty()) {
                    shovelEntity.setAutoGenerateParamsObj(shovelAutoGenerateParamsKnownBucketParams);
                }
                return shovelEntity;
            }
        }
        return null;
    }
}
