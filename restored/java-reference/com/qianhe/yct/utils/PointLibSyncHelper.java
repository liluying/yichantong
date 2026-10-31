package com.qianhe.yct.utils;

import android.text.TextUtils;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.event.QueryPointGroupResponse;
import com.qianhe.yct.event.QueryPointResponse;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class PointLibSyncHelper {
    public static void mergePointGroupsFromServer(DatabaseManager databaseManager, List<QueryPointGroupResponse.PointGroupItem> list) {
        mergePointGroupsFromServer(databaseManager, list, null);
    }

    public static void mergePointGroupsFromServer(DatabaseManager databaseManager, List<QueryPointGroupResponse.PointGroupItem> list, List<PointGroupEntity> list2) {
        if (databaseManager == null) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        databaseManager.applyLatestCurrentEngineeringParams();
        HashSet hashSet = new HashSet();
        for (QueryPointGroupResponse.PointGroupItem pointGroupItem : list) {
            if (pointGroupItem != null) {
                if (!TextUtils.isEmpty(pointGroupItem.uuid)) {
                    hashSet.add(pointGroupItem.uuid);
                }
                EngineeringEntity engineeringEntityResolveOwnerEngineering = resolveOwnerEngineering(databaseManager, pointGroupItem);
                if (engineeringEntityResolveOwnerEngineering == null || engineeringEntityResolveOwnerEngineering.editState != 1) {
                    PointGroupEntity pointGroupEntityResolveLocalGroupForSync = resolveLocalGroupForSync(databaseManager, engineeringEntityResolveOwnerEngineering, pointGroupItem);
                    if (pointGroupEntityResolveLocalGroupForSync == null) {
                        if (shouldInsertGroupFromServer(pointGroupItem)) {
                            insertGroupFromServer(databaseManager, pointGroupItem, engineeringEntityResolveOwnerEngineering);
                        }
                    } else if (shouldApplyServerGroup(pointGroupEntityResolveLocalGroupForSync, pointGroupItem)) {
                        applyServerGroupToLocal(databaseManager, pointGroupEntityResolveLocalGroupForSync, pointGroupItem, engineeringEntityResolveOwnerEngineering);
                    } else {
                        reconcilePointGroupBindingFromServer(databaseManager, pointGroupEntityResolveLocalGroupForSync, pointGroupItem, engineeringEntityResolveOwnerEngineering);
                        uploadLocalGroup(pointGroupEntityResolveLocalGroupForSync);
                    }
                }
            }
        }
        for (PointGroupEntity pointGroupEntity : databaseManager.queryAllPointGroups()) {
            if (pointGroupEntity.editState != 1 && !TextUtils.isEmpty(pointGroupEntity.groupUuid) && !hashSet.contains(pointGroupEntity.groupUuid)) {
                databaseManager.deletePointGroup(pointGroupEntity);
            }
        }
        uploadPendingGroups(databaseManager, list2);
        databaseManager.bindOrphanDataToDefaultEngineering();
    }

    public static void mergePointsFromServer(DatabaseManager databaseManager, PointGroupEntity pointGroupEntity, List<QueryPointResponse.PointItem> list) {
        boolean zIsSamePointName;
        if (databaseManager == null || pointGroupEntity == null) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        List<PointlibEntity> listQueryPoint = databaseManager.queryPoint(null, Long.valueOf(pointGroupEntity.groupLocalId), false);
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (QueryPointResponse.PointItem pointItem : list) {
            if (pointItem != null) {
                long j = pointItem.id;
                if (j > 0) {
                    hashSet.add(Long.valueOf(j));
                    PointlibEntity pointlibEntityFindLocalPoint = findLocalPoint(listQueryPoint, pointItem.id, hashSet2);
                    if (pointlibEntityFindLocalPoint == null) {
                        pointlibEntityFindLocalPoint = findLocalPointByName(listQueryPoint, pointItem.name, hashSet2);
                        zIsSamePointName = pointlibEntityFindLocalPoint != null;
                    } else {
                        zIsSamePointName = isSamePointName(pointlibEntityFindLocalPoint.name, pointItem.name);
                    }
                    if (pointlibEntityFindLocalPoint != null) {
                        long j2 = pointlibEntityFindLocalPoint.id;
                        if (j2 > 0) {
                            hashSet2.add(Long.valueOf(j2));
                        }
                    }
                    if (pointlibEntityFindLocalPoint == null) {
                        long jInsertPoint = databaseManager.insertPoint(buildPointFromServer(pointGroupEntity, pointItem));
                        if (jInsertPoint > 0) {
                            hashSet2.add(Long.valueOf(jInsertPoint));
                        }
                    } else if (zIsSamePointName || shouldApplyServerPoint(pointlibEntityFindLocalPoint, pointItem)) {
                        applyServerPointToLocal(databaseManager, pointlibEntityFindLocalPoint, pointGroupEntity, pointItem);
                    } else {
                        NetworkUserLoader.getInstance().modifyPoint(pointlibEntityFindLocalPoint);
                    }
                }
            }
        }
        Iterator it = new ArrayList(listQueryPoint).iterator();
        while (it.hasNext()) {
            PointlibEntity pointlibEntity = (PointlibEntity) it.next();
            long j3 = pointlibEntity.pointId;
            if (j3 > 0 && !hashSet.contains(Long.valueOf(j3))) {
                databaseManager.deletePoint(pointlibEntity);
            }
        }
        uploadPendingPoints(databaseManager, pointGroupEntity);
    }

    private static boolean shouldApplyServerGroup(PointGroupEntity pointGroupEntity, QueryPointGroupResponse.PointGroupItem pointGroupItem) {
        if (pointGroupEntity.groupId <= 0) {
            return true;
        }
        long j = pointGroupItem.version;
        int i = pointGroupEntity.version;
        if (j > i) {
            return true;
        }
        if (j < i) {
            return false;
        }
        return DatabaseManager.effectiveTime(pointGroupItem.updateEpoch, pointGroupItem.createEpoch) >= DatabaseManager.effectiveTime(pointGroupEntity.updateTime, pointGroupEntity.createTime);
    }

    private static boolean shouldApplyServerPoint(PointlibEntity pointlibEntity, QueryPointResponse.PointItem pointItem) {
        if (pointlibEntity.pointId <= 0) {
            return true;
        }
        long j = pointItem.collectedAt;
        return (j > 0 ? j : 0L) >= pointlibEntity.createTime;
    }

    private static boolean isSamePointName(String str, String str2) {
        return !TextUtils.isEmpty(str2) && str2.equals(str);
    }

    static boolean shouldInsertGroupFromServer(QueryPointGroupResponse.PointGroupItem pointGroupItem) {
        if (pointGroupItem == null) {
            return false;
        }
        if (pointGroupItem.belongEngineeringId > 0) {
            return true;
        }
        String str = pointGroupItem.engineeringUuid;
        return str != null && str.length() > 0;
    }

    static boolean needsPointGroupBindingReconcile(PointGroupEntity pointGroupEntity, String str, long j, long j2) {
        if (pointGroupEntity == null) {
            return false;
        }
        String str2 = pointGroupEntity.engineeringUuid;
        if (str2 == null) {
            str2 = "";
        }
        if (str == null) {
            str = "";
        }
        if (str2.length() > 0 || str.length() > 0) {
            if (!str2.equals(str)) {
                return true;
            }
        } else if (pointGroupEntity.belongEngineeringId != j) {
            return true;
        }
        return pointGroupEntity.engineeringLocalId != j2;
    }

    private static EngineeringEntity resolveOwnerEngineering(DatabaseManager databaseManager, QueryPointGroupResponse.PointGroupItem pointGroupItem) {
        if (databaseManager == null || pointGroupItem == null) {
            return null;
        }
        return databaseManager.resolveEngineeringByBinding(0L, pointGroupItem.belongEngineeringId, pointGroupItem.engineeringUuid);
    }

    private static PointGroupEntity resolveLocalGroupForSync(DatabaseManager databaseManager, EngineeringEntity engineeringEntity, QueryPointGroupResponse.PointGroupItem pointGroupItem) {
        List<PointGroupEntity> listFindGlobalMatches = findGlobalMatches(databaseManager, pointGroupItem);
        if (!listFindGlobalMatches.isEmpty()) {
            PointGroupEntity pointGroupEntityPickCanonicalGroup = pickCanonicalGroup(databaseManager, listFindGlobalMatches, engineeringEntity);
            for (PointGroupEntity pointGroupEntity : listFindGlobalMatches) {
                if (pointGroupEntity != null && pointGroupEntityPickCanonicalGroup != null && pointGroupEntity.groupLocalId != pointGroupEntityPickCanonicalGroup.groupLocalId) {
                    databaseManager.deletePointGroup(pointGroupEntity);
                }
            }
            return pointGroupEntityPickCanonicalGroup;
        }
        return findUnsyncedLocalGroupByName(databaseManager, engineeringEntity, pointGroupItem);
    }

    private static List<PointGroupEntity> findGlobalMatches(DatabaseManager databaseManager, QueryPointGroupResponse.PointGroupItem pointGroupItem) {
        ArrayList arrayList = new ArrayList();
        if (databaseManager != null && pointGroupItem != null) {
            HashSet hashSet = new HashSet();
            long j = pointGroupItem.id;
            if (j > 0) {
                for (PointGroupEntity pointGroupEntity : databaseManager.queryPointGroupsByServerId(j, null)) {
                    if (pointGroupEntity != null && hashSet.add(Long.valueOf(pointGroupEntity.groupLocalId))) {
                        arrayList.add(pointGroupEntity);
                    }
                }
            }
            if (!TextUtils.isEmpty(pointGroupItem.uuid)) {
                for (PointGroupEntity pointGroupEntity2 : databaseManager.queryPointGroupsByServerId(0L, pointGroupItem.uuid)) {
                    if (pointGroupEntity2 != null && hashSet.add(Long.valueOf(pointGroupEntity2.groupLocalId))) {
                        arrayList.add(pointGroupEntity2);
                    }
                }
            }
        }
        return arrayList;
    }

    private static PointGroupEntity pickCanonicalGroup(DatabaseManager databaseManager, List<PointGroupEntity> list, EngineeringEntity engineeringEntity) {
        PointGroupEntity pointGroupEntity = null;
        if (list != null && !list.isEmpty()) {
            if (engineeringEntity != null) {
                for (PointGroupEntity pointGroupEntity2 : list) {
                    if (pointGroupEntity2 != null && databaseManager.belongsToEngineering(engineeringEntity, pointGroupEntity2) && (pointGroupEntity == null || pointGroupEntity2.groupLocalId < pointGroupEntity.groupLocalId)) {
                        pointGroupEntity = pointGroupEntity2;
                    }
                }
            }
            if (pointGroupEntity != null) {
                return pointGroupEntity;
            }
            for (PointGroupEntity pointGroupEntity3 : list) {
                if (pointGroupEntity3 != null && (pointGroupEntity == null || pointGroupEntity3.groupLocalId < pointGroupEntity.groupLocalId)) {
                    pointGroupEntity = pointGroupEntity3;
                }
            }
        }
        return pointGroupEntity;
    }

    private static PointGroupEntity findUnsyncedLocalGroupByName(DatabaseManager databaseManager, EngineeringEntity engineeringEntity, QueryPointGroupResponse.PointGroupItem pointGroupItem) {
        if (databaseManager != null && engineeringEntity != null && pointGroupItem != null && !TextUtils.isEmpty(pointGroupItem.name)) {
            for (PointGroupEntity pointGroupEntity : databaseManager.queryPointGroupsForEngineering(engineeringEntity)) {
                if (pointGroupEntity != null && pointGroupEntity.editState != 1 && TextUtils.isEmpty(pointGroupEntity.groupUuid) && pointGroupItem.name.equals(pointGroupEntity.name)) {
                    return pointGroupEntity;
                }
            }
        }
        return null;
    }

    private static PointlibEntity findLocalPoint(List<PointlibEntity> list, long j, Set<Long> set) {
        if (list == null) {
            return null;
        }
        for (PointlibEntity pointlibEntity : list) {
            if (pointlibEntity.pointId == j && !isClaimed(pointlibEntity, set)) {
                return pointlibEntity;
            }
        }
        return null;
    }

    private static PointlibEntity findLocalPointByName(List<PointlibEntity> list, String str, Set<Long> set) {
        PointlibEntity pointlibEntity = null;
        if (list != null && !TextUtils.isEmpty(str)) {
            for (PointlibEntity pointlibEntity2 : list) {
                if (!isClaimed(pointlibEntity2, set) && str.equals(pointlibEntity2.name)) {
                    if (pointlibEntity2.pointId <= 0) {
                        return pointlibEntity2;
                    }
                    if (pointlibEntity == null) {
                        pointlibEntity = pointlibEntity2;
                    }
                }
            }
        }
        return pointlibEntity;
    }

    private static boolean isClaimed(PointlibEntity pointlibEntity, Set<Long> set) {
        if (pointlibEntity == null) {
            return false;
        }
        long j = pointlibEntity.id;
        return j > 0 && set != null && set.contains(Long.valueOf(j));
    }

    private static void insertGroupFromServer(DatabaseManager databaseManager, QueryPointGroupResponse.PointGroupItem pointGroupItem, EngineeringEntity engineeringEntity) {
        PointGroupEntity pointGroupEntity = new PointGroupEntity();
        pointGroupEntity.name = pointGroupItem.name;
        pointGroupEntity.remark = pointGroupItem.remark;
        pointGroupEntity.groupId = pointGroupItem.id;
        pointGroupEntity.groupUuid = pointGroupItem.uuid;
        pointGroupEntity.version = (int) pointGroupItem.version;
        pointGroupEntity.createTime = pointGroupItem.createEpoch;
        pointGroupEntity.updateTime = pointGroupItem.updateEpoch;
        applyPlatformEngineeringBinding(databaseManager, pointGroupEntity, pointGroupItem, engineeringEntity);
        databaseManager.insertPointGroup(pointGroupEntity);
    }

    private static void applyServerGroupToLocal(DatabaseManager databaseManager, PointGroupEntity pointGroupEntity, QueryPointGroupResponse.PointGroupItem pointGroupItem, EngineeringEntity engineeringEntity) {
        long j = pointGroupEntity.belongEngineeringId;
        long j2 = pointGroupEntity.engineeringLocalId;
        String str = pointGroupEntity.engineeringUuid;
        if (str == null) {
            str = "";
        }
        String str2 = str;
        pointGroupEntity.groupId = pointGroupItem.id;
        pointGroupEntity.groupUuid = pointGroupItem.uuid;
        pointGroupEntity.name = SyncNameHelper.resolve(pointGroupEntity.name, pointGroupItem.name);
        pointGroupEntity.remark = pointGroupItem.remark;
        pointGroupEntity.version = (int) pointGroupItem.version;
        long j3 = pointGroupItem.createEpoch;
        if (j3 > 0) {
            pointGroupEntity.createTime = j3;
        }
        pointGroupEntity.updateTime = pointGroupItem.updateEpoch;
        applyPlatformEngineeringBinding(databaseManager, pointGroupEntity, pointGroupItem, engineeringEntity);
        databaseManager.updatePointGroup(pointGroupEntity);
        logPointGroupBindingCorrection(pointGroupEntity, j, str2, j2);
    }

    private static void reconcilePointGroupBindingFromServer(DatabaseManager databaseManager, PointGroupEntity pointGroupEntity, QueryPointGroupResponse.PointGroupItem pointGroupItem, EngineeringEntity engineeringEntity) {
        if (databaseManager == null || pointGroupEntity == null || pointGroupItem == null) {
            return;
        }
        if (DatabaseManager.isEngineeringBound(0L, pointGroupItem.belongEngineeringId, pointGroupItem.engineeringUuid)) {
            if (needsPointGroupBindingReconcile(pointGroupEntity, pointGroupItem.engineeringUuid, pointGroupItem.belongEngineeringId, engineeringEntity != null ? engineeringEntity.id : 0L)) {
                long j = pointGroupEntity.belongEngineeringId;
                long j2 = pointGroupEntity.engineeringLocalId;
                String str = pointGroupEntity.engineeringUuid;
                if (str == null) {
                    str = "";
                }
                String str2 = str;
                applyPlatformEngineeringBinding(databaseManager, pointGroupEntity, pointGroupItem, engineeringEntity);
                databaseManager.updatePointGroup(pointGroupEntity);
                logPointGroupBindingCorrection(pointGroupEntity, j, str2, j2);
            }
        }
    }

    private static void logPointGroupBindingCorrection(PointGroupEntity pointGroupEntity, long j, String str, long j2) {
        if (pointGroupEntity == null) {
            return;
        }
        String str2 = pointGroupEntity.engineeringUuid;
        if (str2 == null) {
            str2 = "";
        }
        if (str == null) {
            str = "";
        }
        if (j == pointGroupEntity.belongEngineeringId && j2 == pointGroupEntity.engineeringLocalId && str.equals(str2)) {
            return;
        }
        LogToFile.i("同步纠正点库组工程归属——>name:" + pointGroupEntity.name + "，uuid:" + pointGroupEntity.groupUuid + "，belong:" + j + "->" + pointGroupEntity.belongEngineeringId + "，engUuid:" + str + "->" + str2 + "，localId:" + j2 + "->" + pointGroupEntity.engineeringLocalId);
    }

    private static void applyPlatformEngineeringBinding(DatabaseManager databaseManager, PointGroupEntity pointGroupEntity, QueryPointGroupResponse.PointGroupItem pointGroupItem, EngineeringEntity engineeringEntity) {
        if (pointGroupEntity == null || pointGroupItem == null) {
            return;
        }
        if (engineeringEntity != null) {
            DatabaseManager.applyEngineeringBinding(pointGroupEntity, engineeringEntity);
            return;
        }
        long j = pointGroupItem.belongEngineeringId;
        if (j > 0) {
            pointGroupEntity.belongEngineeringId = j;
        }
        if (!TextUtils.isEmpty(pointGroupItem.engineeringUuid)) {
            pointGroupEntity.engineeringUuid = pointGroupItem.engineeringUuid;
        }
        if (databaseManager != null) {
            databaseManager.applyPlatformEngineeringLocalId(pointGroupEntity);
        } else {
            pointGroupEntity.engineeringLocalId = 0L;
        }
    }

    private static PointlibEntity buildPointFromServer(PointGroupEntity pointGroupEntity, QueryPointResponse.PointItem pointItem) {
        PointlibEntity pointlibEntity = new PointlibEntity();
        pointlibEntity.pointId = pointItem.id;
        pointlibEntity.groupId = pointItem.groupId;
        pointlibEntity.groupLocalId = pointGroupEntity.groupLocalId;
        fillPointFromServerItem(pointlibEntity, pointItem);
        return pointlibEntity;
    }

    private static void applyServerPointToLocal(DatabaseManager databaseManager, PointlibEntity pointlibEntity, PointGroupEntity pointGroupEntity, QueryPointResponse.PointItem pointItem) {
        String str = pointlibEntity.name;
        pointlibEntity.pointId = pointItem.id;
        long j = pointItem.groupId;
        if (j <= 0) {
            j = pointGroupEntity.groupId;
        }
        pointlibEntity.groupId = j;
        pointlibEntity.groupLocalId = pointGroupEntity.groupLocalId;
        fillPointFromServerItem(pointlibEntity, pointItem);
        pointlibEntity.name = SyncNameHelper.resolve(str, pointItem.name);
        databaseManager.updatePoint(pointlibEntity);
    }

    private static void fillPointFromServerItem(PointlibEntity pointlibEntity, QueryPointResponse.PointItem pointItem) {
        pointlibEntity.name = pointItem.name;
        long j = pointItem.collectedAt;
        if (j <= 0) {
            j = pointlibEntity.createTime;
        }
        pointlibEntity.createTime = j;
        double d = pointItem.longitude;
        pointlibEntity.geodeticLon = d;
        double d2 = pointItem.latitude;
        pointlibEntity.geodeticLat = d2;
        double d3 = pointItem.altitude;
        pointlibEntity.geodeticElev = d3;
        pointlibEntity.lon = d;
        pointlibEntity.lat = d2;
        pointlibEntity.alt = d3;
        pointlibEntity.east = pointItem.x;
        pointlibEntity.north = pointItem.y;
        pointlibEntity.elev = pointItem.z;
        pointlibEntity.quality = pointItem.solution;
        pointlibEntity.hdop = pointItem.hdop;
        pointlibEntity.vdop = pointItem.vdop;
        PointLibCoordUtils.normalizeGeodetic(pointlibEntity);
    }

    private static void uploadLocalGroup(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return;
        }
        if (pointGroupEntity.groupId > 0) {
            NetworkUserLoader.getInstance().modifyPointGroup(pointGroupEntity);
        } else {
            NetworkUserLoader.getInstance().createPointGroup(pointGroupEntity);
        }
    }

    private static void uploadPendingGroups(DatabaseManager databaseManager, List<PointGroupEntity> list) {
        for (PointGroupEntity pointGroupEntity : list != null ? list : databaseManager.queryAllPointGroups()) {
            if (pointGroupEntity != null && TextUtils.isEmpty(pointGroupEntity.groupUuid) && (list == null || databaseManager.isLoginSyncBelongUid(pointGroupEntity.belongUid))) {
                NetworkUserLoader.getInstance().createPointGroup(pointGroupEntity);
            }
        }
    }

    private static void uploadPendingPoints(DatabaseManager databaseManager, PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null || pointGroupEntity.groupId <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (PointlibEntity pointlibEntity : databaseManager.queryPoint(null, Long.valueOf(pointGroupEntity.groupLocalId), false)) {
            if (pointlibEntity.pointId <= 0 && !NetworkUserLoader.getInstance().isPointUploading(pointlibEntity.id)) {
                arrayList.add(pointlibEntity);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        NetworkUserLoader.getInstance().addPoints(pointGroupEntity, arrayList);
    }
}
