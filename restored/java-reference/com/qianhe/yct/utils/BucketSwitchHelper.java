package com.qianhe.yct.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.yct.db.DatabaseManager;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BucketSwitchHelper {

    public static class SyncResult {
        public ShovelEntity bucket;
        public String calibParamsId;
        public ExcavatorEntity excavator;
    }

    public static ShovelEntity reloadBucketFromDb(Context context, ShovelEntity shovelEntity) {
        ShovelEntity shovelEntityQueryShovelByLocalId;
        return (shovelEntity == null || shovelEntity.localId <= 0 || (shovelEntityQueryShovelByLocalId = DatabaseManager.getInstance(context).queryShovelByLocalId(shovelEntity.localId)) == null) ? shovelEntity : shovelEntityQueryShovelByLocalId;
    }

    public static String buildCalibParamsId(ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity) {
        return CalibParamsIdUtil.buildCalibParamsId(excavatorEntity, shovelEntity);
    }

    public static void refreshCalibParamsIdAfterExcavatorRenamed(Context context, ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        ShovelEntity shovelEntityResolveBucketFromCalibParamsId = excavatorEntity.shovelEntity;
        if (shovelEntityResolveBucketFromCalibParamsId == null || TextUtils.isEmpty(shovelEntityResolveBucketFromCalibParamsId.name)) {
            shovelEntityResolveBucketFromCalibParamsId = resolveBucketFromCalibParamsId(context, excavatorEntity.calibParamsId);
        }
        String strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(excavatorEntity, shovelEntityResolveBucketFromCalibParamsId);
        excavatorEntity.calibParamsId = strBuildCalibParamsId;
        CalibrateLogToFile.i("挖机改名后更新 calibParamsId：name=" + excavatorEntity.name + "，id=" + strBuildCalibParamsId);
    }

    public static void refreshCalibParamsIdAfterBucketRenamed(Context context, ShovelEntity shovelEntity, ShovelEntity shovelEntity2, ExcavatorEntity excavatorEntity) {
        DatabaseManager databaseManager;
        List<ExcavatorEntity> listQueryExcavatorByUserId;
        if (context == null || shovelEntity2 == null || TextUtils.isEmpty(shovelEntity2.name)) {
            return;
        }
        String str = shovelEntity != null ? shovelEntity.name : "";
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, shovelEntity2.name) || (listQueryExcavatorByUserId = (databaseManager = DatabaseManager.getInstance(context)).queryExcavatorByUserId(0L)) == null || listQueryExcavatorByUserId.isEmpty()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        for (ExcavatorEntity excavatorEntity2 : listQueryExcavatorByUserId) {
            if (excavatorEntity2 != null && !CalibParamsIdUtil.isMode1Excavator(excavatorEntity2) && !TextUtils.isEmpty(excavatorEntity2.calibParamsId) && TextUtils.equals(CalibParamsIdUtil.parseBucketNameFromCalibParamsId(excavatorEntity2.calibParamsId, excavatorEntity2), str)) {
                String strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(excavatorEntity2, shovelEntity2);
                excavatorEntity2.calibParamsId = strBuildCalibParamsId;
                excavatorEntity2.updateTime = jCurrentTimeMillis;
                excavatorEntity2.version++;
                if (excavatorEntity2.localId > 0) {
                    databaseManager.updateExcavatorById(excavatorEntity2);
                    NetworkUserLoader.getInstance().modifyExcavator(excavatorEntity2);
                }
                if (excavatorEntity != null) {
                    long j = excavatorEntity.localId;
                    if (j > 0 && j == excavatorEntity2.localId) {
                        excavatorEntity.calibParamsId = strBuildCalibParamsId;
                        excavatorEntity.updateTime = jCurrentTimeMillis;
                        excavatorEntity.version = excavatorEntity2.version;
                    }
                }
                CalibrateLogToFile.i("铲斗改名后更新 calibParamsId：excavator=" + excavatorEntity2.name + "，bucket=" + shovelEntity2.name + "，id=" + strBuildCalibParamsId);
            }
        }
    }

    private static ShovelEntity resolveBucketFromCalibParamsId(Context context, String str) {
        List<ShovelEntity> listQueryShovelByName;
        String bucketNameFromCalibParamsId = CalibParamsIdUtil.parseBucketNameFromCalibParamsId(str, null);
        if (TextUtils.isEmpty(bucketNameFromCalibParamsId)) {
            return null;
        }
        ShovelEntity shovelEntity = new ShovelEntity();
        shovelEntity.name = bucketNameFromCalibParamsId;
        shovelEntity.param = CalibParamsIdUtil.parseBucketParamFromCalibParamsId(str, null);
        if (context != null && (listQueryShovelByName = DatabaseManager.getInstance(context).queryShovelByName(bucketNameFromCalibParamsId)) != null && !listQueryShovelByName.isEmpty() && listQueryShovelByName.get(0) != null) {
            ShovelEntity shovelEntity2 = listQueryShovelByName.get(0);
            if (TextUtils.isEmpty(shovelEntity.param) && !TextUtils.isEmpty(shovelEntity2.param)) {
                shovelEntity.param = shovelEntity2.param;
            }
            shovelEntity.localId = shovelEntity2.localId;
            shovelEntity.mode = shovelEntity2.mode;
        }
        return shovelEntity;
    }

    public static SyncResult refreshExcavatorCalibParamsIdAfterBucketApplied(Context context, ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity, String str, boolean z) {
        SyncResult syncResult = new SyncResult();
        syncResult.excavator = excavatorEntity;
        syncResult.bucket = shovelEntity;
        ExcavatorEntity excavatorEntityResolveLocalExcavator = CurrentExcavatorCalibHelper.resolveLocalExcavator(context, excavatorEntity);
        if (excavatorEntityResolveLocalExcavator == null || shovelEntity == null) {
            CalibrateLogToFile.e("切换铲斗同步失败：挖机或铲斗为空");
            syncResult.excavator = excavatorEntityResolveLocalExcavator;
            return syncResult;
        }
        if (excavatorEntityResolveLocalExcavator.localId <= 0) {
            int paramsType = parseParamsType(excavatorEntityResolveLocalExcavator, str);
            if (paramsType > 0) {
                excavatorEntityResolveLocalExcavator.mode = paramsType;
            }
            if (TextUtils.isEmpty(excavatorEntityResolveLocalExcavator.name) && !TextUtils.isEmpty(excavatorEntityResolveLocalExcavator.calibParamsId)) {
                excavatorEntityResolveLocalExcavator.name = CalibParamsIdUtil.parseExcavatorNameFromCalibParamsId(excavatorEntityResolveLocalExcavator.calibParamsId);
            }
            ExcavatorEntity excavatorEntityResolveLocalExcavator2 = CurrentExcavatorCalibHelper.resolveLocalExcavator(context, excavatorEntityResolveLocalExcavator);
            if (excavatorEntityResolveLocalExcavator2 != null && excavatorEntityResolveLocalExcavator2.localId > 0) {
                CalibrateLogToFile.i("切换铲斗关联到已有挖机 localId=" + excavatorEntityResolveLocalExcavator2.localId + "，name=" + excavatorEntityResolveLocalExcavator2.name);
                excavatorEntityResolveLocalExcavator = excavatorEntityResolveLocalExcavator2;
            } else {
                CalibrateLogToFile.i("挖机未关联本地记录，解析 paramsType=" + excavatorEntityResolveLocalExcavator.mode + "，name=" + excavatorEntityResolveLocalExcavator.name + "，继续同步");
            }
        }
        if (TextUtils.isEmpty(shovelEntity.name)) {
            CalibrateLogToFile.e("切换铲斗同步失败：铲斗信息不完整");
            syncResult.excavator = excavatorEntityResolveLocalExcavator;
            return syncResult;
        }
        if (CalibParamsIdUtil.isMode1Excavator(excavatorEntityResolveLocalExcavator)) {
            CalibrateLogToFile.e("模式1挖机不支持切换铲斗同步 calibParamsId");
            syncResult.excavator = excavatorEntityResolveLocalExcavator;
            return syncResult;
        }
        ShovelEntity shovelEntityMergeBucketForSync = mergeBucketForSync(reloadBucketFromDb(context, shovelEntity), shovelEntity);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        if (!TextUtils.isEmpty(str)) {
            excavatorEntityResolveLocalExcavator.calibParams = str;
        }
        shovelEntityMergeBucketForSync.updateTime = jCurrentTimeMillis;
        excavatorEntityResolveLocalExcavator.updateTime = jCurrentTimeMillis;
        if (excavatorEntityResolveLocalExcavator.localId <= 0) {
            resolveUniqueNameBeforeInsert(context, excavatorEntityResolveLocalExcavator, shovelEntityMergeBucketForSync);
        }
        String strBuildCalibParamsId = buildCalibParamsId(excavatorEntityResolveLocalExcavator, shovelEntityMergeBucketForSync);
        excavatorEntityResolveLocalExcavator.calibParamsId = strBuildCalibParamsId;
        excavatorEntityResolveLocalExcavator.mode = shovelEntityMergeBucketForSync.mode;
        excavatorEntityResolveLocalExcavator.syncBucketParamsFrom(shovelEntityMergeBucketForSync);
        if (shovelEntityMergeBucketForSync.usesAutoGenerateParams()) {
            CalibrateLogToFile.i("切换智能校准铲斗，同步 autoGenerateParams 到挖机：" + excavatorEntityResolveLocalExcavator.autoGenerateParams);
        }
        excavatorEntityResolveLocalExcavator.version++;
        if (excavatorEntityResolveLocalExcavator.localId <= 0) {
            excavatorEntityResolveLocalExcavator.localId = DatabaseManager.getInstance(context).insertExcavator(excavatorEntityResolveLocalExcavator);
            NetworkUserLoader.getInstance().createExcavator(context, excavatorEntityResolveLocalExcavator);
        } else {
            DatabaseManager.getInstance(context).updateExcavatorById(excavatorEntityResolveLocalExcavator);
            NetworkUserLoader.getInstance().modifyExcavator(excavatorEntityResolveLocalExcavator);
        }
        if (z && shovelEntityMergeBucketForSync.localId > 0) {
            shovelEntityMergeBucketForSync.version++;
            DatabaseManager.getInstance(context).updateShovelById(shovelEntityMergeBucketForSync);
            NetworkUserLoader.getInstance().modifyBucket(shovelEntityMergeBucketForSync);
        }
        CalibrateLogToFile.i("切换铲斗后更新 calibParamsId：" + strBuildCalibParamsId);
        syncResult.calibParamsId = strBuildCalibParamsId;
        syncResult.bucket = shovelEntityMergeBucketForSync;
        syncResult.excavator = excavatorEntityResolveLocalExcavator;
        return syncResult;
    }

    public static SyncResult syncExcavatorWithSwitchedBucket(Context context, ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity, String str, boolean z) {
        return refreshExcavatorCalibParamsIdAfterBucketApplied(context, excavatorEntity, shovelEntity, str, z);
    }

    private static void resolveUniqueNameBeforeInsert(Context context, ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity) {
        if (excavatorEntity == null || TextUtils.isEmpty(excavatorEntity.name) || !DatabaseManager.getInstance(context).isExcavatorNameExists(excavatorEntity.name)) {
            return;
        }
        String str = excavatorEntity.name + "(" + ((shovelEntity == null || TextUtils.isEmpty(shovelEntity.name)) ? "" : shovelEntity.name) + ")";
        CalibrateLogToFile.i("挖机名称已存在，重命名为：" + str);
        excavatorEntity.name = str;
    }

    private static int parseParamsType(ExcavatorEntity excavatorEntity, String str) {
        if (TextUtils.isEmpty(str)) {
            str = excavatorEntity != null ? excavatorEntity.calibParams : null;
        }
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode != null && bArrDecode.length > 0) {
                return bArrDecode[0] & 255;
            }
        } catch (Exception e) {
            CalibrateLogToFile.e("解析校准参数类型失败：" + e.getMessage());
        }
        return 0;
    }

    private static ShovelEntity mergeBucketForSync(ShovelEntity shovelEntity, ShovelEntity shovelEntity2) {
        int i;
        if (shovelEntity == null) {
            return shovelEntity2;
        }
        if (shovelEntity2 != null) {
            if (TextUtils.isEmpty(shovelEntity.name) && !TextUtils.isEmpty(shovelEntity2.name)) {
                shovelEntity.name = shovelEntity2.name;
            }
            if (TextUtils.isEmpty(shovelEntity.param) && !TextUtils.isEmpty(shovelEntity2.param)) {
                shovelEntity.param = shovelEntity2.param;
            }
            if (shovelEntity.mode == 0 && (i = shovelEntity2.mode) > 0) {
                shovelEntity.mode = i;
            }
            if (shovelEntity.localId <= 0) {
                long j = shovelEntity2.localId;
                if (j > 0) {
                    shovelEntity.localId = j;
                }
            }
            if (shovelEntity.bucket_id <= 0) {
                long j2 = shovelEntity2.bucket_id;
                if (j2 > 0) {
                    shovelEntity.bucket_id = j2;
                }
            }
            if (TextUtils.isEmpty(shovelEntity.bucket_uuid) && !TextUtils.isEmpty(shovelEntity2.bucket_uuid)) {
                shovelEntity.bucket_uuid = shovelEntity2.bucket_uuid;
            }
        }
        return shovelEntity;
    }
}
