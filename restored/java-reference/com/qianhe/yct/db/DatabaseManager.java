package com.qianhe.yct.db;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.bean.PolyLineEntity;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.event.QueryGnssEngineeringResponse;
import com.qianhe.yct.event.QueryGnssTransParamResponse;
import com.qianhe.yct.utils.PointLibCoordUtils;
import com.qianhe.yct.utils.SyncNameHelper;
import com.tencent.smtt.sdk.TbsListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DatabaseManager {
    private static DatabaseManager instance;
    private static final SharedPreferences mSp = YCTApplication.getInstance().getSharedPreferences("sp", 0);
    private final Context context;
    private final SQLiteDatabase database;
    private final DatabaseHelper dbHelper;
    private final Gson gson = new GsonBuilder().setPrettyPrinting().create();

    public static long effectiveCreateTime(long j) {
        if (j > 0) {
            return j;
        }
        return 0L;
    }

    public static long effectiveTime(long j, long j2) {
        return j > 0 ? j : j2;
    }

    public static boolean entityUsesServerBinding(long j) {
        return j > 0;
    }

    public boolean serverHasAnyEngineering(int i) {
        return i > 0;
    }

    private DatabaseManager(Context context) {
        DatabaseHelper databaseHelper = new DatabaseHelper(context);
        this.dbHelper = databaseHelper;
        this.context = context;
        SQLiteDatabase writableDatabase = databaseHelper.getWritableDatabase();
        this.database = writableDatabase;
        UserSession.attach(writableDatabase);
    }

    public static synchronized DatabaseManager getInstance(Context context) {
        try {
            if (instance == null) {
                if (context == null) {
                    throw new IllegalStateException("DatabaseManager context is null");
                }
                Context applicationContext = context.getApplicationContext();
                if (!FileUtil.hasExternalStorageAccess(applicationContext)) {
                    throw new IllegalStateException("Database requires external storage access");
                }
                instance = new DatabaseManager(applicationContext);
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public SQLiteDatabase getDatabase() {
        return this.database;
    }

    public boolean hasLocalDefaultEngineering() {
        return queryDefaultEngineering() != null;
    }

    public boolean hasLocalEngineering() {
        return !queryAllEngineering().isEmpty();
    }

    private boolean isUserLoggedIn() {
        return UserSession.get().isLoggedIn();
    }

    public long currentBelongUid() {
        return UserSession.get().getUserId();
    }

    private boolean isBelongUidTable(String str) {
        return this.dbHelper.getBelongUidTableNames().contains(str);
    }

    private String scopedSelection(String str, String str2) {
        if (!isBelongUidTable(str)) {
            return str2;
        }
        String str3 = "belong_uid = " + currentBelongUid();
        if (TextUtils.isEmpty(str2)) {
            return str3;
        }
        return "(" + str2 + ") AND " + str3;
    }

    private void putBelongUid(ContentValues contentValues) {
        contentValues.put("belong_uid", Long.valueOf(currentBelongUid()));
    }

    public boolean isLoginSyncBelongUid(long j) {
        long jCurrentBelongUid = currentBelongUid();
        if (j != 0) {
            return jCurrentBelongUid != 0 && j == jCurrentBelongUid;
        }
        return true;
    }

    private Cursor queryScoped(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        return queryScoped(str, strArr, str2, strArr2, str3, str4, str5, null);
    }

    private Cursor queryScoped(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return this.database.query(str, strArr, scopedSelection(str, str2), strArr2, str3, str4, str5, str6);
    }

    private String loginSyncSelection(String str) {
        String str2 = "(belong_uid = 0 OR belong_uid = " + currentBelongUid() + ")";
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return "(" + str + ") AND " + str2;
    }

    private Cursor queryLoginSync(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        return this.database.query(str, strArr, loginSyncSelection(str2), strArr2, str3, str4, str5, null);
    }

    private Cursor rawQueryScoped(String str, String str2, String[] strArr) {
        return this.database.rawQuery(sqlWithBelongUid(str, str2), strArr);
    }

    private String sqlWithBelongUid(String str, String str2) {
        if (!isBelongUidTable(str)) {
            return str2;
        }
        String str3 = " AND belong_uid = " + currentBelongUid();
        int iLastIndexOf = str2.toUpperCase(Locale.US).lastIndexOf(" LIMIT ");
        if (iLastIndexOf >= 0) {
            return str2.substring(0, iLastIndexOf) + str3 + str2.substring(iLastIndexOf);
        }
        return str2 + str3;
    }

    public void claimUnassignedDataToCurrentUser() {
        long jCurrentBelongUid = currentBelongUid();
        if (jCurrentBelongUid == 0) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("belong_uid", Long.valueOf(jCurrentBelongUid));
        String strValueOf = String.valueOf(jCurrentBelongUid);
        for (String str : this.dbHelper.getBelongUidTableNames()) {
            if (this.dbHelper.isTableExists(this.database, str)) {
                String strEditStateColumnOfBelongUidTable = editStateColumnOfBelongUidTable(str);
                if (TextUtils.isEmpty(strEditStateColumnOfBelongUidTable)) {
                    this.database.update(str, contentValues, "belong_uid = 0", null);
                } else {
                    this.database.update(str, contentValues, "belong_uid = 0 AND (" + strEditStateColumnOfBelongUidTable + " IS NULL OR " + strEditStateColumnOfBelongUidTable + " != 1)", null);
                    claimUnassignedSharedRows(str, strEditStateColumnOfBelongUidTable, strValueOf, contentValues);
                }
            }
        }
    }

    private void claimUnassignedSharedRows(String str, String str2, String str3, ContentValues contentValues) {
        String strUuidColumnOfBelongUidTable = uuidColumnOfBelongUidTable(str);
        Cursor cursorRawQuery = null;
        try {
            if (TextUtils.isEmpty(strUuidColumnOfBelongUidTable)) {
                this.database.update(str, contentValues, "belong_uid = 0 AND " + str2 + " = 1", null);
                return;
            }
            try {
                cursorRawQuery = this.database.rawQuery("SELECT a.rowid FROM " + str + " a WHERE a.belong_uid = 0 AND a." + str2 + " = 1 AND (a." + strUuidColumnOfBelongUidTable + " IS NULL OR a." + strUuidColumnOfBelongUidTable + " = '' OR NOT EXISTS (SELECT 1 FROM " + str + " b WHERE b." + strUuidColumnOfBelongUidTable + " = a." + strUuidColumnOfBelongUidTable + " AND b.belong_uid = ?))", new String[]{str3});
                ArrayList arrayList = new ArrayList();
                if (cursorRawQuery != null) {
                    while (cursorRawQuery.moveToNext()) {
                        arrayList.add(Long.valueOf(cursorRawQuery.getLong(0)));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.database.update(str, contentValues, "rowid = ?", new String[]{String.valueOf((Long) it.next())});
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (Exception e) {
                LogToFile.e("claimUnassignedSharedRows " + str + ": " + e);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public void removeUnassignedDuplicatesAlreadyOwnedByCurrentUser() {
        long jCurrentBelongUid = currentBelongUid();
        if (jCurrentBelongUid == 0) {
            return;
        }
        String strValueOf = String.valueOf(jCurrentBelongUid);
        for (String str : this.dbHelper.getBelongUidTableNames()) {
            if (this.dbHelper.isTableExists(this.database, str)) {
                String strUuidColumnOfBelongUidTable = uuidColumnOfBelongUidTable(str);
                if (!TextUtils.isEmpty(strUuidColumnOfBelongUidTable)) {
                    Cursor cursorRawQuery = null;
                    try {
                        try {
                            String strEditStateColumnOfBelongUidTable = editStateColumnOfBelongUidTable(str);
                            cursorRawQuery = this.database.rawQuery("SELECT a.rowid FROM " + str + " a INNER JOIN " + str + " b ON a." + strUuidColumnOfBelongUidTable + " = b." + strUuidColumnOfBelongUidTable + " WHERE a.belong_uid = 0 AND b.belong_uid = ? AND a." + strUuidColumnOfBelongUidTable + " IS NOT NULL AND a." + strUuidColumnOfBelongUidTable + " != ''" + (TextUtils.isEmpty(strEditStateColumnOfBelongUidTable) ? "" : " AND (a." + strEditStateColumnOfBelongUidTable + " IS NULL OR a." + strEditStateColumnOfBelongUidTable + " != 1)"), new String[]{strValueOf});
                            ArrayList arrayList = new ArrayList();
                            if (cursorRawQuery != null) {
                                while (cursorRawQuery.moveToNext()) {
                                    arrayList.add(Long.valueOf(cursorRawQuery.getLong(0)));
                                }
                            }
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                this.database.delete(str, "rowid = ?", new String[]{String.valueOf((Long) it.next())});
                            }
                            if (!arrayList.isEmpty()) {
                                LogToFile.i("已删除 belong_uid=0 且当前用户已有同 uuid 的重复数据 table=" + str + " count=" + arrayList.size());
                            }
                        } catch (Exception e) {
                            LogToFile.e("removeUnassignedDuplicates " + str + ": " + e);
                            if (0 != 0) {
                            }
                        }
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            cursorRawQuery.close();
                        }
                        throw th;
                    }
                }
            }
        }
    }

    private String uuidColumnOfBelongUidTable(String str) {
        if ("engineering".equals(str)) {
            return "engineering_uuid";
        }
        if ("excavator".equals(str)) {
            return "calibrateUUid";
        }
        if ("shovel".equals(str)) {
            return "bucket_uuid";
        }
        if ("gnss_trans_param".equals(str)) {
            return "trans_param_uuid";
        }
        if ("pointGroup".equals(str)) {
            return "group_uuid";
        }
        if ("share".equals(str)) {
            return "shareUUid";
        }
        if (this.dbHelper.getProjectTableList().contains(str)) {
            return "projectUUid";
        }
        return null;
    }

    private String editStateColumnOfBelongUidTable(String str) {
        if ("engineering".equals(str)) {
            return "edit_state";
        }
        if ("share".equals(str) || "pointGroup".equals(str) || this.dbHelper.getProjectTableList().contains(str)) {
            return "editState";
        }
        return null;
    }

    public boolean createDefaultEngineeringIfAbsentLocally() {
        if (hasLocalDefaultEngineering() || hasLocalEngineering() || isUserLoggedIn()) {
            return false;
        }
        return createDefaultEngineeringInternal("本地无正在使用的工程，已创建本地默认工程");
    }

    public boolean createDefaultEngineeringIfAbsent(int i) {
        if (hasLocalDefaultEngineering() || hasLocalEngineering() || serverHasAnyEngineering(i)) {
            return false;
        }
        return createDefaultEngineeringInternal("接口与本地均无工程，已创建本地默认工程");
    }

    public boolean ensureLocalDefaultEngineering() {
        if (hasLocalDefaultEngineering() || hasLocalEngineering()) {
            return false;
        }
        return createDefaultEngineeringInternal("本地无工程，已创建本地默认工程");
    }

    private boolean createDefaultEngineeringInternal(String str) {
        EngineeringEntity engineeringEntityInitDefaultEngineeringParams = initDefaultEngineeringParams();
        long jInsertEngineering = insertEngineering(engineeringEntityInitDefaultEngineeringParams);
        if (jInsertEngineering > 0) {
            engineeringEntityInitDefaultEngineeringParams.id = jInsertEngineering;
            setCurrentEngineering(jInsertEngineering);
        }
        bindOrphanDataToEngineering(engineeringEntityInitDefaultEngineeringParams);
        repairEngineeringBindings();
        LogToFile.i(str + " localId=" + jInsertEngineering);
        return true;
    }

    private void bindOrphanPointGroupsToEngineering(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null) {
            return;
        }
        this.database.update("pointGroup", buildEngineeringBindingValues(engineeringEntity), orphanEngineeringWhere(null), null);
    }

    @SuppressLint({"Range"})
    public EngineeringEntity queryEngineeringByName(String str) {
        Cursor cursorQueryScoped = queryScoped("engineering", null, "name = ? AND (edit_state IS NULL OR edit_state != 1)", new String[]{str}, null, null, null, "1");
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            EngineeringEntity engineeringEntityMapCursorToEngineeringEntity = mapCursorToEngineeringEntity(cursorQueryScoped);
            cursorQueryScoped.close();
            return engineeringEntityMapCursorToEngineeringEntity;
        }
        if (cursorQueryScoped == null) {
            return null;
        }
        cursorQueryScoped.close();
        return null;
    }

    public EngineeringEntity queryEngineeringByLocalId(long j) {
        if (j <= 0) {
            return null;
        }
        Cursor cursorQueryScoped = queryScoped("engineering", null, "id = ?", new String[]{String.valueOf(j)}, null, null, null, "1");
        if (cursorQueryScoped == null || !cursorQueryScoped.moveToFirst()) {
            if (cursorQueryScoped != null) {
                cursorQueryScoped.close();
            }
            return null;
        }
        EngineeringEntity engineeringEntityMapCursorToEngineeringEntity = mapCursorToEngineeringEntity(cursorQueryScoped);
        cursorQueryScoped.close();
        return engineeringEntityMapCursorToEngineeringEntity;
    }

    public GnssTransParamEntity resolveGnssTransParamForEngineering(EngineeringEntity engineeringEntity) {
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByTransParamId;
        GnssTransParamEntity gnssTransParamEntityLoadEmbeddedTransParamSnapshot;
        if (engineeringEntity != null && engineeringEntity.conversionParamsType > 0) {
            GnssTransParamEntity gnssTransParamEntity = engineeringEntity.transParam;
            if (gnssTransParamEntity != null && gnssTransParamEntity.hasParamsDetail()) {
                return engineeringEntity.transParam;
            }
            long j = engineeringEntity.transParamLocalId;
            GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId = j > 0 ? queryGnssTransParamByLocalId(j) : null;
            if (gnssTransParamEntityQueryGnssTransParamByLocalId == null || !gnssTransParamEntityQueryGnssTransParamByLocalId.hasParamsDetail()) {
                long j2 = engineeringEntity.transParamId;
                if (j2 > 0 && (gnssTransParamEntityQueryGnssTransParamByTransParamId = queryGnssTransParamByTransParamId(j2)) != null && gnssTransParamEntityQueryGnssTransParamByTransParamId.hasParamsDetail()) {
                    engineeringEntity.transParamLocalId = gnssTransParamEntityQueryGnssTransParamByTransParamId.localId;
                    gnssTransParamEntityQueryGnssTransParamByLocalId = gnssTransParamEntityQueryGnssTransParamByTransParamId;
                }
            }
            if ((gnssTransParamEntityQueryGnssTransParamByLocalId == null || !gnssTransParamEntityQueryGnssTransParamByLocalId.hasParamsDetail()) && (gnssTransParamEntityLoadEmbeddedTransParamSnapshot = loadEmbeddedTransParamSnapshot(engineeringEntity)) != null) {
                gnssTransParamEntityQueryGnssTransParamByLocalId = gnssTransParamEntityLoadEmbeddedTransParamSnapshot;
            }
            if (gnssTransParamEntityQueryGnssTransParamByLocalId != null && gnssTransParamEntityQueryGnssTransParamByLocalId.hasParamsDetail()) {
                engineeringEntity.transParam = gnssTransParamEntityQueryGnssTransParamByLocalId;
            }
            if (gnssTransParamEntityQueryGnssTransParamByLocalId != null && gnssTransParamEntityQueryGnssTransParamByLocalId.hasParamsDetail()) {
                return gnssTransParamEntityQueryGnssTransParamByLocalId;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    @android.annotation.SuppressLint({"Range"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.qianhe.baselib.bean.GnssTransParamEntity loadEmbeddedTransParamSnapshot(com.qianhe.baselib.bean.EngineeringEntity r19) throws java.lang.Throwable {
        /*
            r18 = this;
            r0 = r19
            java.lang.String r1 = "seven_parameter"
            java.lang.String r2 = "four_parameter"
            r3 = 0
            if (r0 == 0) goto Ld
            int r4 = r0.conversionParamsType
            if (r4 > 0) goto L10
        Ld:
            r9 = r18
            goto L67
        L10:
            long r4 = r0.id
            r6 = 0
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 <= 0) goto L60
            java.lang.String r10 = "engineering"
            java.lang.String[] r11 = new java.lang.String[]{r2, r1}     // Catch: java.lang.Throwable -> L59
            java.lang.String r12 = "id = ?"
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L59
            java.lang.String[] r13 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L59
            java.lang.String r17 = "1"
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r18
            android.database.Cursor r4 = r9.queryScoped(r10, r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L59
            if (r4 == 0) goto L50
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L4d
            if (r5 == 0) goto L50
            int r2 = r4.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r3 = r4.getString(r2)     // Catch: java.lang.Throwable -> L4d
            int r1 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = r4.getString(r1)     // Catch: java.lang.Throwable -> L4d
            goto L51
        L4d:
            r0 = move-exception
            r3 = r4
            goto L5a
        L50:
            r1 = r3
        L51:
            if (r4 == 0) goto L56
            r4.close()
        L56:
            r9 = r18
            goto L62
        L59:
            r0 = move-exception
        L5a:
            if (r3 == 0) goto L5f
            r3.close()
        L5f:
            throw r0
        L60:
            r1 = r3
            goto L56
        L62:
            com.qianhe.baselib.bean.GnssTransParamEntity r0 = r9.snapshotTransParamFromEmbeddedJson(r0, r3, r1)
            return r0
        L67:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.DatabaseManager.loadEmbeddedTransParamSnapshot(com.qianhe.baselib.bean.EngineeringEntity):com.qianhe.baselib.bean.GnssTransParamEntity");
    }

    private GnssTransParamEntity snapshotTransParamFromEmbeddedJson(EngineeringEntity engineeringEntity, String str, String str2) {
        int i;
        if (engineeringEntity != null && (i = engineeringEntity.conversionParamsType) > 0) {
            if (i != 1 || TextUtils.isEmpty(str)) {
                str = (engineeringEntity.conversionParamsType != 2 || TextUtils.isEmpty(str2)) ? null : str2;
            }
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            GnssTransParamEntity gnssTransParamEntity = new GnssTransParamEntity();
            gnssTransParamEntity.paramType = engineeringEntity.conversionParamsType;
            gnssTransParamEntity.transParamId = engineeringEntity.transParamId;
            gnssTransParamEntity.localId = engineeringEntity.transParamLocalId;
            gnssTransParamEntity.paramsDetail = str;
            gnssTransParamEntity.normalizeParamsDetailScaleToK();
            if (gnssTransParamEntity.hasParamsDetail()) {
                return gnssTransParamEntity;
            }
        }
        return null;
    }

    private void attachTransParamToEngineering(EngineeringEntity engineeringEntity, String str, String str2) {
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByTransParamId;
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId;
        long j = engineeringEntity.transParamLocalId;
        if (j > 0 && (gnssTransParamEntityQueryGnssTransParamByLocalId = queryGnssTransParamByLocalId(j)) != null && gnssTransParamEntityQueryGnssTransParamByLocalId.hasParamsDetail()) {
            engineeringEntity.transParam = gnssTransParamEntityQueryGnssTransParamByLocalId;
            return;
        }
        long j2 = engineeringEntity.transParamId;
        if (j2 > 0 && (gnssTransParamEntityQueryGnssTransParamByTransParamId = queryGnssTransParamByTransParamId(j2)) != null && gnssTransParamEntityQueryGnssTransParamByTransParamId.hasParamsDetail()) {
            engineeringEntity.transParam = gnssTransParamEntityQueryGnssTransParamByTransParamId;
            engineeringEntity.transParamLocalId = gnssTransParamEntityQueryGnssTransParamByTransParamId.localId;
        } else {
            GnssTransParamEntity gnssTransParamEntitySnapshotTransParamFromEmbeddedJson = snapshotTransParamFromEmbeddedJson(engineeringEntity, str, str2);
            if (gnssTransParamEntitySnapshotTransParamFromEmbeddedJson != null) {
                engineeringEntity.transParam = gnssTransParamEntitySnapshotTransParamFromEmbeddedJson;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void putEngineeringTransParamColumns(android.content.ContentValues r5, com.qianhe.baselib.bean.EngineeringEntity r6) {
        /*
            r4 = this;
            com.qianhe.baselib.bean.GnssTransParamEntity r0 = r6.transParam
            r1 = 0
            if (r0 == 0) goto L1e
            boolean r0 = r0.hasParamsDetail()
            if (r0 == 0) goto L1e
            com.qianhe.baselib.bean.GnssTransParamEntity r6 = r6.transParam
            int r0 = r6.paramType
            r2 = 1
            if (r0 != r2) goto L18
            java.lang.String r6 = r6.paramsDetail
            r3 = r1
            r1 = r6
            r6 = r3
            goto L1f
        L18:
            r2 = 2
            if (r0 != r2) goto L1e
            java.lang.String r6 = r6.paramsDetail
            goto L1f
        L1e:
            r6 = r1
        L1f:
            java.lang.String r0 = "four_parameter"
            r5.put(r0, r1)
            java.lang.String r0 = "seven_parameter"
            r5.put(r0, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.DatabaseManager.putEngineeringTransParamColumns(android.content.ContentValues, com.qianhe.baselib.bean.EngineeringEntity):void");
    }

    public GnssTransParamEntity fromEngineeringTransParam(QueryGnssEngineeringResponse.TransParam transParam) {
        if (transParam == null) {
            return null;
        }
        GnssTransParamEntity gnssTransParamEntity = new GnssTransParamEntity();
        gnssTransParamEntity.transParamId = transParam.id;
        gnssTransParamEntity.transParamUuid = transParam.uuid;
        gnssTransParamEntity.name = transParam.name;
        gnssTransParamEntity.paramType = transParam.paramType;
        gnssTransParamEntity.paramsDetail = transParam.paramsDetail;
        gnssTransParamEntity.controlPointsJson = transParam.controlPoints;
        gnssTransParamEntity.getControlPointList();
        gnssTransParamEntity.normalizeParamsDetailScaleToK();
        return gnssTransParamEntity;
    }

    public void bindTransParamLocalId(EngineeringEntity engineeringEntity, String str) {
        if (engineeringEntity == null || engineeringEntity.conversionParamsType <= 0) {
            return;
        }
        long j = engineeringEntity.transParamLocalId;
        if (j <= 0 || queryGnssTransParamByLocalId(j) == null) {
            long j2 = engineeringEntity.transParamId;
            GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByTransParamId = j2 > 0 ? queryGnssTransParamByTransParamId(j2) : null;
            if (gnssTransParamEntityQueryGnssTransParamByTransParamId == null && !TextUtils.isEmpty(str)) {
                gnssTransParamEntityQueryGnssTransParamByTransParamId = queryGnssTransParamByName(str);
            }
            if (gnssTransParamEntityQueryGnssTransParamByTransParamId != null) {
                engineeringEntity.transParamLocalId = gnssTransParamEntityQueryGnssTransParamByTransParamId.localId;
            }
        }
    }

    @SuppressLint({"Range"})
    private EngineeringEntity mapCursorToEngineeringEntity(Cursor cursor) {
        EngineeringEntity engineeringEntity = new EngineeringEntity();
        engineeringEntity.id = cursor.getLong(cursor.getColumnIndex("id"));
        engineeringEntity.engineeringId = cursor.getLong(cursor.getColumnIndex("engineering_id"));
        engineeringEntity.engineeringUuid = cursor.getString(cursor.getColumnIndex("engineering_uuid"));
        engineeringEntity.createTime = cursor.getLong(cursor.getColumnIndex("create_time"));
        engineeringEntity.updateTime = cursor.getLong(cursor.getColumnIndex("update_time"));
        engineeringEntity.name = cursor.getString(cursor.getColumnIndex("name"));
        engineeringEntity.ellipsoidType = cursor.getInt(cursor.getColumnIndex("ellipsoid_type"));
        int columnIndex = cursor.getColumnIndex("custom_ellipsoid_params");
        if (columnIndex >= 0) {
            String string = cursor.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                engineeringEntity.customEllipsoidParams = (EngineeringEntity.CustomEllipsoidParams) this.gson.fromJson(string, EngineeringEntity.CustomEllipsoidParams.class);
            }
        }
        engineeringEntity.projectionType = cursor.getInt(cursor.getColumnIndex("projection_type"));
        String string2 = cursor.getString(cursor.getColumnIndex("gauss_kruger_params"));
        if (!TextUtils.isEmpty(string2)) {
            engineeringEntity.gaussKrugerParams = (EngineeringEntity.GaussKrugerParams) this.gson.fromJson(string2, EngineeringEntity.GaussKrugerParams.class);
        }
        String string3 = cursor.getString(cursor.getColumnIndex("utm_params"));
        if (!TextUtils.isEmpty(string3)) {
            engineeringEntity.utmParams = (EngineeringEntity.UTMParams) this.gson.fromJson(string3, EngineeringEntity.UTMParams.class);
        }
        String string4 = cursor.getString(cursor.getColumnIndex("transverse_mercator_params"));
        if (!TextUtils.isEmpty(string4)) {
            engineeringEntity.transverseMercatorParams = (EngineeringEntity.TransverseMercatorParams) this.gson.fromJson(string4, EngineeringEntity.TransverseMercatorParams.class);
        }
        engineeringEntity.conversionParamsType = cursor.getInt(cursor.getColumnIndex("conversion_params_type"));
        int columnIndex2 = cursor.getColumnIndex("trans_param_id");
        if (columnIndex2 >= 0) {
            engineeringEntity.transParamId = cursor.getLong(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex("trans_param_local_id");
        if (columnIndex3 >= 0) {
            engineeringEntity.transParamLocalId = cursor.getLong(columnIndex3);
        }
        attachTransParamToEngineering(engineeringEntity, cursor.getString(cursor.getColumnIndex("four_parameter")), cursor.getString(cursor.getColumnIndex("seven_parameter")));
        engineeringEntity.editState = cursor.getInt(cursor.getColumnIndex("edit_state"));
        engineeringEntity.currentUsage = cursor.getInt(cursor.getColumnIndex("current_usage"));
        engineeringEntity.version = cursor.getLong(cursor.getColumnIndex("version"));
        int columnIndex4 = cursor.getColumnIndex("belong_uid");
        if (columnIndex4 >= 0) {
            engineeringEntity.belongUid = cursor.getLong(columnIndex4);
        }
        return engineeringEntity;
    }

    private EngineeringEntity initDefaultEngineeringParams() {
        EngineeringEntity engineeringEntity = new EngineeringEntity();
        engineeringEntity.name = LanguagePrefs.getString(this.context, R$string.Default);
        engineeringEntity.currentUsage = 1;
        engineeringEntity.createTime = System.currentTimeMillis() / 1000;
        engineeringEntity.ellipsoidType = 2;
        engineeringEntity.projectionType = 1;
        EngineeringEntity.GaussKrugerParams gaussKrugerParams = new EngineeringEntity.GaussKrugerParams();
        gaussKrugerParams.lon0 = resolveDefaultCentralMeridianFromSp();
        gaussKrugerParams.lat0 = 0.0d;
        gaussKrugerParams.fe = 500000.0d;
        gaussKrugerParams.fn = 0.0d;
        gaussKrugerParams.k0 = 1.0d;
        gaussKrugerParams.projectionHeight = 0.0d;
        gaussKrugerParams.deformationMethod = 0;
        engineeringEntity.gaussKrugerParams = gaussKrugerParams;
        engineeringEntity.conversionParamsType = 0;
        return engineeringEntity;
    }

    private int resolveDefaultCentralMeridianFromSp() throws NumberFormatException {
        String string = mSp.getString("current_coords", "");
        if (TextUtils.isEmpty(string)) {
            return 0;
        }
        try {
            double d = Double.parseDouble(string.split(",")[0].trim());
            if (d == 0.0d) {
                return 0;
            }
            return (((int) ((d - 1.5d) / 3.0d)) + 1) * 3;
        } catch (Exception unused) {
            return 0;
        }
    }

    @SuppressLint({"Range"})
    public EngineeringEntity queryDefaultEngineering() {
        Cursor cursorQueryScoped = queryScoped("engineering", null, "current_usage = 1", null, null, null, null, "1");
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            EngineeringEntity engineeringEntityMapCursorToEngineeringEntity = mapCursorToEngineeringEntity(cursorQueryScoped);
            cursorQueryScoped.close();
            return engineeringEntityMapCursorToEngineeringEntity;
        }
        if (cursorQueryScoped == null) {
            return null;
        }
        cursorQueryScoped.close();
        return null;
    }

    public long insert(BaseProEntity baseProEntity) {
        return insert(baseProEntity, null);
    }

    public long insert(BaseProEntity baseProEntity, Long l) {
        String str;
        if (TextUtils.isEmpty(baseProEntity.corsName)) {
            if (((YCTApplication) this.context.getApplicationContext()).getAppConfig().details.ntrip_type == NtripTypeEnum.NTRIP.getType()) {
                List<CorsEntity> listQueryCORS = queryCORS(null);
                if (!listQueryCORS.isEmpty()) {
                    CorsEntity corsEntity = listQueryCORS.get(0);
                    baseProEntity.coordinateSystem = "";
                    baseProEntity.corsName = corsEntity.corsName;
                    baseProEntity.corsHost = corsEntity.host;
                    baseProEntity.corsPort = corsEntity.port;
                    baseProEntity.corsUserName = corsEntity.userName;
                    baseProEntity.corsPassword = corsEntity.password;
                    baseProEntity.corsMount = corsEntity.mount;
                }
            } else {
                baseProEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
                baseProEntity.corsName = LanguagePrefs.getString(this.context, R$string.x_fixed);
                baseProEntity.corsHost = "rss.rtkiot.cn";
                baseProEntity.corsPort = 8001;
                baseProEntity.corsMount = "AUTO";
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("createTime", Long.valueOf(l == null ? System.currentTimeMillis() / 1000 : l.longValue()));
        contentValues.put("updateTime", Long.valueOf(baseProEntity.updateTime));
        bindCurrentEngineering(baseProEntity);
        createContentValue(baseProEntity, contentValues);
        baseProEntity.belongUid = currentBelongUid();
        putBelongUid(contentValues);
        int i = baseProEntity.type;
        if (i <= 0) {
            return -1L;
        }
        long jInsert = this.database.insert(getTableName(i), null, contentValues);
        if (jInsert == -1) {
            str = "数据插入失败。";
        } else {
            str = "数据插入成功。" + baseProEntity.name;
        }
        LogToFile.i(str);
        return jInsert;
    }

    public long insertCORS(CorsEntity corsEntity) {
        return insertCORS(corsEntity, true);
    }

    public long insertCORS(CorsEntity corsEntity, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("createTime", Long.valueOf(z ? System.currentTimeMillis() / 1000 : 0L));
        contentValues.put("ntripType", Integer.valueOf(corsEntity.ntripType));
        contentValues.put("name", corsEntity.corsName);
        contentValues.put("host", corsEntity.host);
        contentValues.put("port", Integer.valueOf(corsEntity.port));
        contentValues.put("userName", corsEntity.userName);
        contentValues.put("password", corsEntity.password);
        contentValues.put("mount", corsEntity.mount);
        return this.database.insert("cors", null, contentValues);
    }

    public long insertPoint(PointlibEntity pointlibEntity) {
        PointLibCoordUtils.normalizeGeodetic(pointlibEntity);
        if (((YCTApplication) this.context.getApplicationContext()).getAppConfig().details.ntrip_type == NtripTypeEnum.NTRIP.getType()) {
            List<CorsEntity> listQueryCORS = queryCORS(null);
            if (!listQueryCORS.isEmpty()) {
                CorsEntity corsEntity = listQueryCORS.get(0);
                pointlibEntity.coordinateSystem = "";
                pointlibEntity.corsName = corsEntity.corsName;
                pointlibEntity.corsHost = corsEntity.host;
                pointlibEntity.corsPort = corsEntity.port;
                pointlibEntity.corsUserName = corsEntity.userName;
                pointlibEntity.corsPassword = corsEntity.password;
                pointlibEntity.corsMount = corsEntity.mount;
            }
        } else {
            pointlibEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            pointlibEntity.corsName = LanguagePrefs.getString(this.context, R$string.x_fixed);
            pointlibEntity.corsHost = "rss.rtkiot.cn";
            pointlibEntity.corsPort = 8001;
            pointlibEntity.corsMount = "AUTO";
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("pointType", Integer.valueOf(pointlibEntity.pointType));
        long jCurrentTimeMillis = pointlibEntity.createTime;
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("createTime", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("name", pointlibEntity.name);
        contentValues.put("systemType", pointlibEntity.systemType);
        contentValues.put("lon", Double.valueOf(pointlibEntity.lon));
        contentValues.put("lat", Double.valueOf(pointlibEntity.lat));
        contentValues.put("alt", Double.valueOf(pointlibEntity.alt));
        contentValues.put("elev", Double.valueOf(pointlibEntity.elev));
        contentValues.put("east", Double.valueOf(pointlibEntity.east));
        contentValues.put("north", Double.valueOf(pointlibEntity.north));
        contentValues.put("quality", Integer.valueOf(pointlibEntity.quality));
        contentValues.put("encod", Integer.valueOf(pointlibEntity.encod));
        contentValues.put("coordinateSystem", pointlibEntity.coordinateSystem);
        contentValues.put("corsName", pointlibEntity.corsName);
        contentValues.put("corsHost", pointlibEntity.corsHost);
        contentValues.put("corsPort", Integer.valueOf(pointlibEntity.corsPort));
        contentValues.put("corsUserName", pointlibEntity.corsUserName);
        contentValues.put("corsPassword", pointlibEntity.corsPassword);
        contentValues.put("corsMount", pointlibEntity.corsMount);
        contentValues.put("group_id", Long.valueOf(pointlibEntity.groupId));
        contentValues.put("group_local_id", Long.valueOf(pointlibEntity.groupLocalId));
        contentValues.put("point_id", Long.valueOf(pointlibEntity.pointId));
        contentValues.put("geodeticLon", Double.valueOf(pointlibEntity.geodeticLon));
        contentValues.put("geodeticLat", Double.valueOf(pointlibEntity.geodeticLat));
        contentValues.put("geodeticElev", Double.valueOf(pointlibEntity.geodeticElev));
        contentValues.put("hdop", Double.valueOf(pointlibEntity.hdop));
        contentValues.put("vdop", Double.valueOf(pointlibEntity.vdop));
        long jInsert = this.database.insert("pointLib", null, contentValues);
        if (jInsert > 0) {
            pointlibEntity.id = jInsert;
            appendPointToGroupLocalIds(pointlibEntity.groupLocalId, jInsert);
        }
        return jInsert;
    }

    public long insertShare(ShareEntity shareEntity) {
        if (isShareCodeExists(shareEntity.shareCode)) {
            return -1L;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("createTime", Long.valueOf(shareEntity.createTime));
        contentValues.put("updateTime", Long.valueOf(shareEntity.updateTime));
        contentValues.put("shareId", Long.valueOf(shareEntity.shareId));
        contentValues.put("shareCode", shareEntity.shareCode);
        contentValues.put("editState", Integer.valueOf(shareEntity.editState));
        contentValues.put("name", shareEntity.name);
        contentValues.put("projectUUids", shareEntity.projectUUids);
        contentValues.put("expireTime", Long.valueOf(shareEntity.expireTime));
        contentValues.put("shareUUid", shareEntity.shareUUid);
        shareEntity.belongUid = currentBelongUid();
        putBelongUid(contentValues);
        return this.database.insert("share", null, contentValues);
    }

    public long insertExcavator(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity.userId == 0) {
            excavatorEntity.userId = currentBelongUid();
        }
        return this.database.insert("excavator", null, getContentExcavetorValues(excavatorEntity));
    }

    public long insertEngineering(EngineeringEntity engineeringEntity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("engineering_id", Long.valueOf(engineeringEntity.engineeringId));
        contentValues.put("engineering_uuid", engineeringEntity.engineeringUuid);
        long jCurrentTimeMillis = engineeringEntity.createTime;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("create_time", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("update_time", Long.valueOf(engineeringEntity.updateTime));
        contentValues.put("name", engineeringEntity.name);
        putEngineeringEllipsoidColumns(contentValues, engineeringEntity);
        contentValues.put("projection_type", Integer.valueOf(engineeringEntity.projectionType));
        EngineeringEntity.GaussKrugerParams gaussKrugerParams = engineeringEntity.gaussKrugerParams;
        contentValues.put("gauss_kruger_params", gaussKrugerParams != null ? this.gson.toJson(gaussKrugerParams) : null);
        EngineeringEntity.UTMParams uTMParams = engineeringEntity.utmParams;
        contentValues.put("utm_params", uTMParams != null ? this.gson.toJson(uTMParams) : null);
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams = engineeringEntity.transverseMercatorParams;
        contentValues.put("transverse_mercator_params", transverseMercatorParams != null ? this.gson.toJson(transverseMercatorParams) : null);
        contentValues.put("conversion_params_type", Integer.valueOf(engineeringEntity.conversionParamsType));
        contentValues.put("trans_param_id", Long.valueOf(engineeringEntity.transParamId));
        contentValues.put("trans_param_local_id", Long.valueOf(engineeringEntity.transParamLocalId));
        putEngineeringTransParamColumns(contentValues, engineeringEntity);
        contentValues.put("edit_state", Integer.valueOf(engineeringEntity.editState));
        contentValues.put("current_usage", Integer.valueOf(engineeringEntity.currentUsage));
        contentValues.put("version", Long.valueOf(engineeringEntity.version));
        engineeringEntity.belongUid = currentBelongUid();
        putBelongUid(contentValues);
        return this.database.insert("engineering", null, contentValues);
    }

    private void putEngineeringEllipsoidColumns(ContentValues contentValues, EngineeringEntity engineeringEntity) {
        contentValues.put("ellipsoid_type", Integer.valueOf(engineeringEntity.ellipsoidType));
        EngineeringEntity.CustomEllipsoidParams customEllipsoidParams = engineeringEntity.customEllipsoidParams;
        contentValues.put("custom_ellipsoid_params", customEllipsoidParams != null ? this.gson.toJson(customEllipsoidParams) : null);
    }

    public static boolean isSharedProject(BaseProEntity baseProEntity) {
        return baseProEntity != null && baseProEntity.editState == 1;
    }

    public static boolean isEngineeringBound(long j, long j2, String str) {
        return j > 0 || j2 > 0 || !TextUtils.isEmpty(str);
    }

    public static boolean hasAllEngineeringBindingFields(long j, long j2, String str) {
        return j > 0 && j2 > 0 && !TextUtils.isEmpty(str);
    }

    public static boolean isProjectBound(BaseProEntity baseProEntity) {
        return baseProEntity != null && isEngineeringBound(baseProEntity.engineeringLocalId, baseProEntity.belongEngineeringId, baseProEntity.engineeringUuid);
    }

    public static boolean isSharedPointGroup(PointGroupEntity pointGroupEntity) {
        return pointGroupEntity != null && pointGroupEntity.editState == 1;
    }

    public static boolean isPointGroupBound(PointGroupEntity pointGroupEntity) {
        return pointGroupEntity != null && isEngineeringBound(pointGroupEntity.engineeringLocalId, pointGroupEntity.belongEngineeringId, pointGroupEntity.engineeringUuid);
    }

    public static void applyEngineeringBinding(BaseProEntity baseProEntity, EngineeringEntity engineeringEntity) {
        if (baseProEntity == null || engineeringEntity == null) {
            return;
        }
        long j = engineeringEntity.id;
        if (j > 0) {
            baseProEntity.engineeringLocalId = j;
        }
        if (usesServerEngineeringBinding(engineeringEntity)) {
            baseProEntity.belongEngineeringId = engineeringEntity.engineeringId;
            String str = engineeringEntity.engineeringUuid;
            if (str == null) {
                str = "";
            }
            baseProEntity.engineeringUuid = str;
        }
    }

    public static void applyEngineeringBinding(PointGroupEntity pointGroupEntity, EngineeringEntity engineeringEntity) {
        if (pointGroupEntity == null || engineeringEntity == null) {
            return;
        }
        long j = engineeringEntity.id;
        if (j > 0) {
            pointGroupEntity.engineeringLocalId = j;
        }
        if (usesServerEngineeringBinding(engineeringEntity)) {
            pointGroupEntity.belongEngineeringId = engineeringEntity.engineeringId;
            String str = engineeringEntity.engineeringUuid;
            if (str == null) {
                str = "";
            }
            pointGroupEntity.engineeringUuid = str;
        }
    }

    private ContentValues buildEngineeringBindingValues(EngineeringEntity engineeringEntity) {
        ContentValues contentValues = new ContentValues();
        if (engineeringEntity != null) {
            long j = engineeringEntity.id;
            if (j > 0) {
                contentValues.put("engineering_local_id", Long.valueOf(j));
            }
            if (usesServerEngineeringBinding(engineeringEntity)) {
                contentValues.put("belong_engineering_id", Long.valueOf(engineeringEntity.engineeringId));
                String str = engineeringEntity.engineeringUuid;
                if (str == null) {
                    str = "";
                }
                contentValues.put("engineering_uuid", str);
            }
        }
        return contentValues;
    }

    private String orphanEngineeringWhere(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = str + ".";
        }
        String str3 = "(" + str2 + "engineering_local_id IS NULL OR " + str2 + "engineering_local_id = 0) AND (" + str2 + "belong_engineering_id IS NULL OR " + str2 + "belong_engineering_id = 0) AND (" + str2 + "engineering_uuid IS NULL OR " + str2 + "engineering_uuid = '')";
        if (!TextUtils.isEmpty(str)) {
            return str3;
        }
        return str3 + " AND (editState IS NULL OR editState != 1)";
    }

    public EngineeringEntity ensureDefaultEngineering() {
        EngineeringEntity engineeringEntityEnsureCurrentEngineeringInUse = ensureCurrentEngineeringInUse();
        if (engineeringEntityEnsureCurrentEngineeringInUse != null) {
            return engineeringEntityEnsureCurrentEngineeringInUse;
        }
        if (isUserLoggedIn()) {
            return null;
        }
        createDefaultEngineeringIfAbsentLocally();
        return queryCurrentEngineering();
    }

    public EngineeringEntity ensureCurrentEngineeringInUse() {
        EngineeringEntity engineeringEntityQueryCurrentEngineering = queryCurrentEngineering();
        if (engineeringEntityQueryCurrentEngineering != null) {
            return engineeringEntityQueryCurrentEngineering;
        }
        List<EngineeringEntity> listQueryAllEngineering = queryAllEngineering();
        if (!listQueryAllEngineering.isEmpty()) {
            reconcileCurrentUsage();
            EngineeringEntity engineeringEntityQueryCurrentEngineering2 = queryCurrentEngineering();
            if (engineeringEntityQueryCurrentEngineering2 != null) {
                return engineeringEntityQueryCurrentEngineering2;
            }
            setCurrentEngineering(listQueryAllEngineering.get(0).id);
            return queryCurrentEngineering();
        }
        ensureLocalDefaultEngineering();
        return queryCurrentEngineering();
    }

    public static void prepareCurrentEngineeringForCoordConvert(Context context) {
        getInstance(context).applyLatestCurrentEngineeringParams();
    }

    public void bindOrphanDataToDefaultEngineering() {
        EngineeringEntity engineeringEntityEnsureDefaultEngineering = ensureDefaultEngineering();
        if (engineeringEntityEnsureDefaultEngineering != null) {
            bindOrphanDataToEngineering(engineeringEntityEnsureDefaultEngineering);
        }
        repairEngineeringBindings();
    }

    public void repairEngineeringBindings() {
        List<EngineeringEntity> listQueryAllEngineering = queryAllEngineering();
        if (listQueryAllEngineering.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        HashSet hashSet2 = new HashSet();
        for (EngineeringEntity engineeringEntity : listQueryAllEngineering) {
            long j = engineeringEntity.id;
            if (j > 0) {
                hashSet.add(Long.valueOf(j));
            }
            long j2 = engineeringEntity.engineeringId;
            if (j2 > 0) {
                hashSet2.add(Long.valueOf(j2));
                map.put(Long.valueOf(engineeringEntity.id), Long.valueOf(engineeringEntity.engineeringId));
                map2.put(Long.valueOf(engineeringEntity.engineeringId), engineeringEntity);
            }
            if (!TextUtils.isEmpty(engineeringEntity.engineeringUuid)) {
                map3.put(engineeringEntity.engineeringUuid, engineeringEntity);
            }
        }
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        while (it.hasNext()) {
            HashMap map4 = map3;
            HashMap map5 = map2;
            HashMap map6 = map;
            HashSet hashSet3 = hashSet2;
            HashSet hashSet4 = hashSet;
            repairEngineeringBindingsInTable(it.next(), hashSet4, hashSet3, map6, map5, map4);
            hashSet = hashSet4;
            hashSet2 = hashSet3;
            map = map6;
            map2 = map5;
            map3 = map4;
        }
        repairPointGroupEngineeringBindings(hashSet, hashSet2, map, map2, map3);
    }

    private void repairEngineeringBindingsInTable(String str, Set<Long> set, Set<Long> set2, Map<Long, Long> map, Map<Long, EngineeringEntity> map2, Map<String, EngineeringEntity> map3) {
        EngineeringEntity engineeringEntityResolveRepairTarget;
        Cursor cursor = null;
        try {
            Cursor cursorQueryScoped = queryScoped(str, new String[]{"id", "engineering_local_id", "belong_engineering_id", "engineering_uuid", "editState"}, null, null, null, null, null);
            if (cursorQueryScoped == null) {
                if (cursorQueryScoped != null) {
                    cursorQueryScoped.close();
                    return;
                }
                return;
            }
            while (cursorQueryScoped.moveToNext()) {
                long j = cursorQueryScoped.getLong(0);
                long j2 = cursorQueryScoped.getLong(1);
                long j3 = cursorQueryScoped.getLong(2);
                String string = cursorQueryScoped.isNull(3) ? "" : cursorQueryScoped.getString(3);
                if (cursorQueryScoped.getInt(4) != 1 && (engineeringEntityResolveRepairTarget = resolveRepairTarget(j2, j3, string, set, set2, map, map2, map3)) != null) {
                    ContentValues contentValuesBuildEngineeringBindingValues = buildEngineeringBindingValues(engineeringEntityResolveRepairTarget);
                    if (contentValuesBuildEngineeringBindingValues.size() != 0) {
                        this.database.update(str, contentValuesBuildEngineeringBindingValues, "id = ?", new String[]{String.valueOf(j)});
                    }
                }
            }
            cursorQueryScoped.close();
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private void repairPointGroupEngineeringBindings(Set<Long> set, Set<Long> set2, Map<Long, Long> map, Map<Long, EngineeringEntity> map2, Map<String, EngineeringEntity> map3) {
        EngineeringEntity engineeringEntityResolveRepairTarget;
        Cursor cursor = null;
        try {
            Cursor cursorQueryScoped = queryScoped("pointGroup", new String[]{"group_local_id", "engineering_local_id", "belong_engineering_id", "engineering_uuid", "editState"}, null, null, null, null, null);
            if (cursorQueryScoped == null) {
                if (cursorQueryScoped != null) {
                    cursorQueryScoped.close();
                    return;
                }
                return;
            }
            while (cursorQueryScoped.moveToNext()) {
                long j = cursorQueryScoped.getLong(0);
                long j2 = cursorQueryScoped.getLong(1);
                long j3 = cursorQueryScoped.getLong(2);
                String string = cursorQueryScoped.isNull(3) ? "" : cursorQueryScoped.getString(3);
                if (cursorQueryScoped.getInt(4) != 1 && (engineeringEntityResolveRepairTarget = resolveRepairTarget(j2, j3, string, set, set2, map, map2, map3)) != null) {
                    ContentValues contentValuesBuildEngineeringBindingValues = buildEngineeringBindingValues(engineeringEntityResolveRepairTarget);
                    if (contentValuesBuildEngineeringBindingValues.size() != 0) {
                        this.database.update("pointGroup", contentValuesBuildEngineeringBindingValues, "group_local_id = ?", new String[]{String.valueOf(j)});
                    }
                }
            }
            cursorQueryScoped.close();
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private EngineeringEntity resolveRepairTarget(long j, long j2, String str, Set<Long> set, Set<Long> set2, Map<Long, Long> map, Map<Long, EngineeringEntity> map2, Map<String, EngineeringEntity> map3) {
        EngineeringEntity engineeringEntity;
        if (!isEngineeringBound(j, j2, str)) {
            return null;
        }
        if (hasAllEngineeringBindingFields(j, j2, str)) {
            EngineeringEntity engineeringEntity2 = map3.get(str);
            if (engineeringEntity2 != null && needsEngineeringBindingSync(j, j2, str, engineeringEntity2)) {
                return engineeringEntity2;
            }
            return null;
        }
        boolean z = false;
        boolean z2 = j > 0 && set.contains(Long.valueOf(j));
        if (j2 > 0 && set2.contains(Long.valueOf(j2))) {
            z = true;
        }
        if (!z2) {
            if (z) {
                EngineeringEntity engineeringEntity3 = map2.get(Long.valueOf(j2));
                if (engineeringEntity3 == null || !needsEngineeringBindingSync(j, j2, str, engineeringEntity3)) {
                    return null;
                }
                return engineeringEntity3;
            }
            if (TextUtils.isEmpty(str) || (engineeringEntity = map3.get(str)) == null || !needsEngineeringBindingSync(j, j2, str, engineeringEntity)) {
                return null;
            }
            return engineeringEntity;
        }
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId = queryEngineeringByLocalId(j);
        Long l = map.get(Long.valueOf(j));
        if (j2 <= 0 || !(l == null || l.longValue() <= 0 || j2 == l.longValue())) {
            return engineeringEntityQueryEngineeringByLocalId;
        }
        if (engineeringEntityQueryEngineeringByLocalId != null && usesServerEngineeringBinding(engineeringEntityQueryEngineeringByLocalId) && !TextUtils.isEmpty(engineeringEntityQueryEngineeringByLocalId.engineeringUuid)) {
            if (!engineeringEntityQueryEngineeringByLocalId.engineeringUuid.equals(str != null ? str : "")) {
                return engineeringEntityQueryEngineeringByLocalId;
            }
        }
        return null;
    }

    private boolean needsEngineeringBindingSync(long j, long j2, String str, EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null) {
            return false;
        }
        if (!usesServerEngineeringBinding(engineeringEntity)) {
            long j3 = engineeringEntity.id;
            return j3 > 0 && j != j3;
        }
        if (j2 != engineeringEntity.engineeringId) {
            return true;
        }
        String str2 = engineeringEntity.engineeringUuid;
        if (str2 == null) {
            str2 = "";
        }
        return TextUtils.isEmpty(str) || !str2.equals(str);
    }

    public long deleteEngineeringRecordOnly(long j) {
        if (j <= 0) {
            return -1L;
        }
        return this.database.delete("engineering", "id = ?", new String[]{String.valueOf(j)});
    }

    private void bindOrphanDataToEngineering(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null) {
            return;
        }
        ContentValues contentValuesBuildEngineeringBindingValues = buildEngineeringBindingValues(engineeringEntity);
        if (contentValuesBuildEngineeringBindingValues.size() == 0) {
            return;
        }
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        while (it.hasNext()) {
            this.database.update(it.next(), contentValuesBuildEngineeringBindingValues, orphanEngineeringWhere(null), null);
        }
        bindOrphanPointGroupsToEngineering(engineeringEntity);
    }

    private void bindEngineeringIfNeeded(BaseProEntity baseProEntity, EngineeringEntity engineeringEntity) {
        if (baseProEntity == null || isSharedProject(baseProEntity) || isProjectBound(baseProEntity)) {
            return;
        }
        if (engineeringEntity == null) {
            engineeringEntity = ensureDefaultEngineering();
        }
        if (engineeringEntity == null) {
            return;
        }
        applyEngineeringBinding(baseProEntity, engineeringEntity);
    }

    private void bindPointGroupEngineeringIfNeeded(PointGroupEntity pointGroupEntity, EngineeringEntity engineeringEntity) {
        if (pointGroupEntity == null || isSharedPointGroup(pointGroupEntity) || isPointGroupBound(pointGroupEntity)) {
            return;
        }
        if (engineeringEntity == null) {
            engineeringEntity = ensureDefaultEngineering();
        }
        if (engineeringEntity == null) {
            return;
        }
        applyEngineeringBinding(pointGroupEntity, engineeringEntity);
    }

    public static boolean usesServerEngineeringBinding(EngineeringEntity engineeringEntity) {
        return engineeringEntity != null && engineeringEntity.engineeringId > 0;
    }

    public boolean belongsToEngineering(EngineeringEntity engineeringEntity, BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return false;
        }
        return belongsToEngineering(engineeringEntity, baseProEntity.engineeringLocalId, baseProEntity.belongEngineeringId, baseProEntity.engineeringUuid);
    }

    public boolean belongsToEngineering(EngineeringEntity engineeringEntity, PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return false;
        }
        return belongsToEngineering(engineeringEntity, pointGroupEntity.engineeringLocalId, pointGroupEntity.belongEngineeringId, pointGroupEntity.engineeringUuid);
    }

    public boolean belongsToEngineering(EngineeringEntity engineeringEntity, long j, long j2, String str) {
        if (engineeringEntity != null && isEngineeringBound(j, j2, str)) {
            return hasAllEngineeringBindingFields(j, j2, str) ? !TextUtils.isEmpty(engineeringEntity.engineeringUuid) && engineeringEntity.engineeringUuid.equals(str) : entityUsesServerBinding(j2) ? usesServerEngineeringBinding(engineeringEntity) && j2 == engineeringEntity.engineeringId : !TextUtils.isEmpty(str) ? !TextUtils.isEmpty(engineeringEntity.engineeringUuid) && engineeringEntity.engineeringUuid.equals(str) : j > 0 && j == engineeringEntity.id;
        }
        return false;
    }

    private String buildEngineeringScopeClause(EngineeringEntity engineeringEntity, List<String> list) {
        if (engineeringEntity == null) {
            return null;
        }
        if (engineeringEntity.engineeringId <= 0 && engineeringEntity.id <= 0 && TextUtils.isEmpty(engineeringEntity.engineeringUuid)) {
            return null;
        }
        String str = engineeringEntity.engineeringUuid;
        if (str == null) {
            str = "";
        }
        list.add(str);
        list.add(String.valueOf(engineeringEntity.engineeringId));
        list.add(str);
        list.add(String.valueOf(engineeringEntity.id));
        return "(CASE WHEN engineering_local_id > 0 AND belong_engineering_id > 0 AND engineering_uuid IS NOT NULL AND engineering_uuid != '' THEN engineering_uuid = ? WHEN belong_engineering_id > 0 THEN belong_engineering_id = ? WHEN engineering_uuid IS NOT NULL AND engineering_uuid != '' THEN engineering_uuid = ? ELSE engineering_local_id = ? END)";
    }

    private void appendEngineeringScopeFilter(StringBuilder sb, List<String> list, EngineeringEntity engineeringEntity) {
        String strBuildEngineeringScopeClause = buildEngineeringScopeClause(engineeringEntity, list);
        if (strBuildEngineeringScopeClause == null) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(" AND ");
        }
        sb.append(strBuildEngineeringScopeClause);
    }

    private void appendCurrentEngineeringScopeFilter(StringBuilder sb, List<String> list) {
        appendEngineeringScopeFilter(sb, list, queryCurrentEngineering());
    }

    public EngineeringEntity resolveEngineeringByBinding(long j, long j2, String str) {
        EngineeringEntity engineeringEntityFindEngineeringByServerIdentity;
        EngineeringEntity engineeringEntityFindEngineeringByServerIdentity2;
        if (!TextUtils.isEmpty(str) && (engineeringEntityFindEngineeringByServerIdentity2 = findEngineeringByServerIdentity(str, 0L)) != null) {
            return engineeringEntityFindEngineeringByServerIdentity2;
        }
        if (j2 > 0 && (engineeringEntityFindEngineeringByServerIdentity = findEngineeringByServerIdentity(null, j2)) != null) {
            return engineeringEntityFindEngineeringByServerIdentity;
        }
        if (j > 0) {
            return queryEngineeringByLocalId(j);
        }
        return null;
    }

    public EngineeringEntity resolveEngineeringByBinding(BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return null;
        }
        return resolveEngineeringByBinding(baseProEntity.engineeringLocalId, baseProEntity.belongEngineeringId, baseProEntity.engineeringUuid);
    }

    public boolean shouldSyncInsertProject(BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return false;
        }
        if ((TextUtils.isEmpty(baseProEntity.projectUUid) || !isEntityUUidExists(baseProEntity)) && isProjectBound(baseProEntity)) {
            EngineeringEntity engineeringEntityResolveEngineeringByBinding = resolveEngineeringByBinding(baseProEntity);
            if (engineeringEntityResolveEngineeringByBinding != null) {
                return engineeringEntityResolveEngineeringByBinding.editState != 1;
            }
            if (baseProEntity.editState != 1) {
                return true;
            }
        }
        return false;
    }

    public void applyPlatformEngineeringLocalId(BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return;
        }
        if (!isProjectBound(baseProEntity)) {
            baseProEntity.engineeringLocalId = 0L;
        } else {
            EngineeringEntity engineeringEntityResolveEngineeringByBinding = resolveEngineeringByBinding(baseProEntity);
            baseProEntity.engineeringLocalId = engineeringEntityResolveEngineeringByBinding != null ? engineeringEntityResolveEngineeringByBinding.id : 0L;
        }
    }

    public void applyPlatformEngineeringLocalId(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return;
        }
        if (!isPointGroupBound(pointGroupEntity)) {
            pointGroupEntity.engineeringLocalId = 0L;
        } else {
            EngineeringEntity engineeringEntityResolveEngineeringByBinding = resolveEngineeringByBinding(pointGroupEntity.engineeringLocalId, pointGroupEntity.belongEngineeringId, pointGroupEntity.engineeringUuid);
            pointGroupEntity.engineeringLocalId = engineeringEntityResolveEngineeringByBinding != null ? engineeringEntityResolveEngineeringByBinding.id : 0L;
        }
    }

    public boolean syncInsertOrReconcileProject(BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return false;
        }
        applyPlatformEngineeringLocalId(baseProEntity);
        if (shouldSyncInsertProject(baseProEntity)) {
            return insert(baseProEntity, Long.valueOf(baseProEntity.createTime)) != -1;
        }
        return reconcileProjectBindingFromServer(baseProEntity);
    }

    public boolean reconcileProjectBindingFromServer(BaseProEntity baseProEntity) {
        if (baseProEntity == null || TextUtils.isEmpty(baseProEntity.projectUUid) || baseProEntity.type <= 0 || !isProjectBound(baseProEntity)) {
            return false;
        }
        EngineeringEntity engineeringEntityResolveEngineeringByBinding = resolveEngineeringByBinding(baseProEntity);
        if (engineeringEntityResolveEngineeringByBinding != null && engineeringEntityResolveEngineeringByBinding.editState == 1) {
            return false;
        }
        if (engineeringEntityResolveEngineeringByBinding == null && baseProEntity.editState == 1) {
            return false;
        }
        List<BaseProEntity> listQueryEntityByUUId = queryEntityByUUId(baseProEntity.type, baseProEntity.projectUUid);
        if (listQueryEntityByUUId.isEmpty()) {
            return false;
        }
        BaseProEntity baseProEntity2 = listQueryEntityByUUId.get(0);
        applyPlatformEngineeringLocalId(baseProEntity);
        if (!needsEngineeringBindingReconcile(baseProEntity2, baseProEntity)) {
            return false;
        }
        baseProEntity.name = SyncNameHelper.resolve(baseProEntity2.name, baseProEntity.name);
        int iUpdateEntityByUUid = updateEntityByUUid(baseProEntity, Long.valueOf(baseProEntity.createTime));
        if (iUpdateEntityByUUid > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("同步纠正工程归属——>type:");
            sb.append(baseProEntity.type);
            sb.append("，name:");
            sb.append(baseProEntity.name);
            sb.append("，uuid:");
            sb.append(baseProEntity.projectUUid);
            sb.append("，belong:");
            sb.append(baseProEntity2.belongEngineeringId);
            sb.append("->");
            sb.append(baseProEntity.belongEngineeringId);
            sb.append("，engUuid:");
            String str = baseProEntity2.engineeringUuid;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("->");
            String str2 = baseProEntity.engineeringUuid;
            sb.append(str2 != null ? str2 : "");
            sb.append("，localId:");
            sb.append(baseProEntity2.engineeringLocalId);
            sb.append("->");
            sb.append(baseProEntity.engineeringLocalId);
            LogToFile.i(sb.toString());
        }
        return iUpdateEntityByUUid > 0;
    }

    public boolean syncPullUpdateProjectFromServer(BaseProEntity baseProEntity, BaseProEntity baseProEntity2) {
        if (baseProEntity != null && baseProEntity2 != null) {
            applyPlatformEngineeringLocalId(baseProEntity2);
            baseProEntity2.name = SyncNameHelper.resolve(baseProEntity.name, baseProEntity2.name);
            boolean zEquals = baseProEntity2.equals(baseProEntity);
            boolean zNeedsEngineeringBindingReconcile = needsEngineeringBindingReconcile(baseProEntity, baseProEntity2);
            if ((!zEquals || zNeedsEngineeringBindingReconcile) && updateEntityByUUid(baseProEntity2, Long.valueOf(baseProEntity2.createTime)) > 0) {
                return true;
            }
        }
        return false;
    }

    public boolean needsEngineeringBindingReconcile(BaseProEntity baseProEntity, BaseProEntity baseProEntity2) {
        if (baseProEntity != null && baseProEntity2 != null) {
            if (!isSameEngineeringBinding(baseProEntity, baseProEntity2)) {
                return true;
            }
            applyPlatformEngineeringLocalId(baseProEntity2);
            if (baseProEntity.engineeringLocalId != baseProEntity2.engineeringLocalId) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSameEngineeringBinding(BaseProEntity baseProEntity, BaseProEntity baseProEntity2) {
        if (baseProEntity == null || baseProEntity2 == null) {
            return false;
        }
        String str = baseProEntity.engineeringUuid;
        if (str == null) {
            str = "";
        }
        String str2 = baseProEntity2.engineeringUuid;
        String str3 = str2 != null ? str2 : "";
        if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str3)) {
            return str.equals(str3);
        }
        long j = baseProEntity.belongEngineeringId;
        return (j > 0 || baseProEntity2.belongEngineeringId > 0) ? j == baseProEntity2.belongEngineeringId : baseProEntity.engineeringLocalId == baseProEntity2.engineeringLocalId;
    }

    public List<BaseProEntity> queryEntityByEditStateAndExactName(int i, int i2, String str, EngineeringEntity engineeringEntity) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            String tableName = getTableName(i);
            if (!TextUtils.isEmpty(tableName)) {
                StringBuilder sb = new StringBuilder("editState = ? AND name = ?");
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(String.valueOf(i2));
                arrayList2.add(str);
                if (engineeringEntity == null) {
                    engineeringEntity = queryCurrentEngineering();
                }
                appendEngineeringScopeFilter(sb, arrayList2, engineeringEntity);
                listEntityCursor(queryScoped(tableName, null, sb.toString(), (String[]) arrayList2.toArray(new String[0]), null, null, "createTime DESC"), tableName, arrayList);
                return arrayList;
            }
        }
        return arrayList;
    }

    public List<BaseProEntity> querySyncLocalByExactName(int i, BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return new ArrayList();
        }
        if (isProjectBound(baseProEntity)) {
            EngineeringEntity engineeringEntityResolveEngineeringByBinding = resolveEngineeringByBinding(baseProEntity);
            if (engineeringEntityResolveEngineeringByBinding == null) {
                return new ArrayList();
            }
            return queryEntityByEditStateAndExactName(i, 0, baseProEntity.name, engineeringEntityResolveEngineeringByBinding);
        }
        return queryEntityByEditStateAndExactName(i, 0, baseProEntity.name, null);
    }

    public void resolveSameNameOnSync(BaseProEntity baseProEntity, List<BaseProEntity> list) {
        if (baseProEntity == null) {
            return;
        }
        EngineeringEntity engineeringEntityResolveConflictEngineeringScope = resolveConflictEngineeringScope(baseProEntity);
        if (engineeringEntityResolveConflictEngineeringScope != null && engineeringEntityResolveConflictEngineeringScope.editState != 1 && !TextUtils.isEmpty(baseProEntity.name)) {
            renameUnsyncedLocals(queryEntityByEditStateAndExactName(baseProEntity.type, 0, baseProEntity.name, engineeringEntityResolveConflictEngineeringScope));
        }
        if (shouldSyncInsertProject(baseProEntity)) {
            insert(baseProEntity, Long.valueOf(baseProEntity.createTime));
        }
    }

    public void renameUnsyncedConflictsWithServer(List<BaseProEntity> list) {
        EngineeringEntity engineeringEntityResolveConflictEngineeringScope;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (BaseProEntity baseProEntity : list) {
            if (baseProEntity != null && !TextUtils.isEmpty(baseProEntity.name) && baseProEntity.type > 0 && (engineeringEntityResolveConflictEngineeringScope = resolveConflictEngineeringScope(baseProEntity)) != null && engineeringEntityResolveConflictEngineeringScope.editState != 1) {
                renameUnsyncedLocals(queryEntityByEditStateAndExactName(baseProEntity.type, 0, baseProEntity.name, engineeringEntityResolveConflictEngineeringScope));
            }
        }
    }

    private EngineeringEntity resolveConflictEngineeringScope(BaseProEntity baseProEntity) {
        if (baseProEntity == null) {
            return null;
        }
        if (isProjectBound(baseProEntity)) {
            return resolveEngineeringByBinding(baseProEntity);
        }
        return queryCurrentEngineering();
    }

    public void renameUnsyncedLocals(List<BaseProEntity> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (BaseProEntity baseProEntity : list) {
            if (baseProEntity != null && TextUtils.isEmpty(baseProEntity.projectUUid) && !TextUtils.isEmpty(baseProEntity.name)) {
                String strWithCreateTimeSuffix = SyncNameHelper.withCreateTimeSuffix(baseProEntity.name, baseProEntity.createTime);
                if (!TextUtils.equals(baseProEntity.name, strWithCreateTimeSuffix)) {
                    baseProEntity.name = strWithCreateTimeSuffix;
                    baseProEntity.updateTime = System.currentTimeMillis() / 1000;
                    updateEntityById(baseProEntity);
                }
            }
        }
    }

    public void renameUnsyncedIfConflictsWithSynced(BaseProEntity baseProEntity) {
        if (baseProEntity == null || !TextUtils.isEmpty(baseProEntity.projectUUid) || TextUtils.isEmpty(baseProEntity.name)) {
            return;
        }
        EngineeringEntity engineeringEntityResolveEngineeringByBinding = resolveEngineeringByBinding(baseProEntity);
        if (engineeringEntityResolveEngineeringByBinding == null) {
            engineeringEntityResolveEngineeringByBinding = queryCurrentEngineering();
        }
        if (engineeringEntityResolveEngineeringByBinding == null || engineeringEntityResolveEngineeringByBinding.editState == 1) {
            return;
        }
        for (BaseProEntity baseProEntity2 : queryEntityByEditStateAndExactName(baseProEntity.type, 0, baseProEntity.name, engineeringEntityResolveEngineeringByBinding)) {
            if (baseProEntity2 != null && baseProEntity2.id != baseProEntity.id && !TextUtils.isEmpty(baseProEntity2.projectUUid) && belongsToEngineering(engineeringEntityResolveEngineeringByBinding, baseProEntity2)) {
                String strWithCreateTimeSuffix = SyncNameHelper.withCreateTimeSuffix(baseProEntity.name, baseProEntity.createTime);
                if (TextUtils.equals(baseProEntity.name, strWithCreateTimeSuffix)) {
                    return;
                }
                baseProEntity.name = strWithCreateTimeSuffix;
                baseProEntity.updateTime = System.currentTimeMillis() / 1000;
                updateEntityById(baseProEntity);
                return;
            }
        }
    }

    public void renameUnsyncedLocalDuplicatesInEngineering(EngineeringEntity engineeringEntity) throws Throwable {
        if (engineeringEntity == null || engineeringEntity.editState == 1) {
            return;
        }
        List<BaseProEntity> listCollectProjectsForEngineering = collectProjectsForEngineering(engineeringEntity);
        if (listCollectProjectsForEngineering.isEmpty()) {
            return;
        }
        HashMap map = new HashMap();
        for (BaseProEntity baseProEntity : listCollectProjectsForEngineering) {
            if (baseProEntity != null && TextUtils.isEmpty(baseProEntity.projectUUid) && !TextUtils.isEmpty(baseProEntity.name) && baseProEntity.editState != 1) {
                String str = baseProEntity.type + "\u0000" + baseProEntity.name;
                List arrayList = (List) map.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(str, arrayList);
                }
                arrayList.add(baseProEntity);
            }
        }
        for (List list : map.values()) {
            if (list != null && list.size() >= 2) {
                Collections.sort(list, new Comparator() { // from class: com.qianhe.yct.db.DatabaseManager$$ExternalSyntheticLambda0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        BaseProEntity baseProEntity2 = (BaseProEntity) obj;
                        BaseProEntity baseProEntity3 = (BaseProEntity) obj2;
                        return Long.compare(DatabaseManager.effectiveCreateTime(baseProEntity2 != null ? baseProEntity2.createTime : 0L), DatabaseManager.effectiveCreateTime(baseProEntity3 != null ? baseProEntity3.createTime : 0L));
                    }
                });
                for (int i = 1; i < list.size(); i++) {
                    BaseProEntity baseProEntity2 = (BaseProEntity) list.get(i);
                    if (baseProEntity2 != null) {
                        String strWithCreateTimeSuffix = SyncNameHelper.withCreateTimeSuffix(baseProEntity2.name, baseProEntity2.createTime);
                        if (!TextUtils.equals(baseProEntity2.name, strWithCreateTimeSuffix)) {
                            baseProEntity2.name = strWithCreateTimeSuffix;
                            baseProEntity2.updateTime = System.currentTimeMillis() / 1000;
                            updateEntityById(baseProEntity2);
                        }
                    }
                }
            }
        }
    }

    public void renameUnsyncedLocalDuplicatesForAllEngineerings() throws Throwable {
        List<EngineeringEntity> listQueryAllEngineering = queryAllEngineering();
        if (listQueryAllEngineering == null) {
            return;
        }
        for (EngineeringEntity engineeringEntity : listQueryAllEngineering) {
            if (engineeringEntity != null && engineeringEntity.editState != 1) {
                renameUnsyncedLocalDuplicatesInEngineering(engineeringEntity);
            }
        }
    }

    public List<BaseProEntity> queryEntityById(int i, Long l) {
        return queryEntityById(i, l, null);
    }

    public List<BaseProEntity> queryEntityById(int i, Long l, EngineeringEntity engineeringEntity) {
        String tableName = getTableName(i);
        Cursor cursorQueryScoped = null;
        String str = l != null ? "id = ?" : null;
        String[] strArr = l != null ? new String[]{String.valueOf(l)} : null;
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder(str);
        ArrayList arrayList = strArr != null ? new ArrayList(Arrays.asList(strArr)) : new ArrayList();
        if (l == null) {
            if (engineeringEntity == null) {
                engineeringEntity = queryCurrentEngineering();
            }
            appendEngineeringScopeFilter(sb, arrayList, engineeringEntity);
        }
        String string = sb.length() > 0 ? sb.toString() : null;
        if (!arrayList.isEmpty()) {
            strArr = (String[]) arrayList.toArray(new String[0]);
        }
        String[] strArr2 = strArr;
        if (!TextUtils.isEmpty(tableName)) {
            cursorQueryScoped = queryScoped(tableName, null, string, strArr2, null, null, "createTime DESC");
        }
        List<BaseProEntity> arrayList2 = new ArrayList<>();
        listEntityCursor(cursorQueryScoped, tableName, arrayList2);
        return arrayList2;
    }

    public List<BaseProEntity> queryEntityByEditStateAndName(int i, int i2, String str) {
        String tableName = getTableName(i);
        String[] strArr = {String.valueOf(i2), "%" + str.toLowerCase() + "%"};
        StringBuilder sb = new StringBuilder("editState = ? AND LOWER(name) LIKE ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        appendCurrentEngineeringScopeFilter(sb, arrayList);
        Cursor cursorQueryScoped = !TextUtils.isEmpty(tableName) ? queryScoped(tableName, null, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, "createTime DESC") : null;
        ArrayList arrayList2 = new ArrayList();
        listEntityCursor(cursorQueryScoped, tableName, arrayList2);
        return arrayList2;
    }

    public List<BaseProEntity> queryEntityByUUId(int i, String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        String tableName = getTableName(i);
        listEntityCursor(!TextUtils.isEmpty(tableName) ? queryScoped(tableName, null, "projectUUid = ?", new String[]{str}, null, null, "createTime DESC") : null, tableName, arrayList);
        return arrayList;
    }

    public List<BaseProEntity> queryEntityByProjectIds(int i, List<String> list) {
        List<BaseProEntity> arrayList = new ArrayList<>();
        if (list != null && !list.isEmpty()) {
            String tableName = getTableName(i);
            if (!TextUtils.isEmpty(tableName)) {
                ArrayList arrayList2 = new ArrayList();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (String str : list) {
                    if (!TextUtils.isEmpty(str) && linkedHashSet.add(str)) {
                        arrayList2.add(str);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    int i2 = 0;
                    while (i2 < arrayList2.size()) {
                        int i3 = i2 + TbsListener.ErrorCode.INFO_CODE_BASE;
                        List listSubList = arrayList2.subList(i2, Math.min(i3, arrayList2.size()));
                        StringBuilder sb = new StringBuilder();
                        for (int i4 = 0; i4 < listSubList.size(); i4++) {
                            if (i4 > 0) {
                                sb.append(',');
                            }
                            sb.append('?');
                        }
                        StringBuilder sb2 = new StringBuilder("projectId IN (");
                        sb2.append((CharSequence) sb);
                        sb2.append(')');
                        List<String> arrayList3 = new ArrayList<>(listSubList);
                        appendCurrentEngineeringScopeFilter(sb2, arrayList3);
                        Cursor cursorQueryScoped = queryScoped(tableName, null, sb2.toString(), (String[]) arrayList3.toArray(new String[0]), null, null, "createTime DESC");
                        listEntityCursor(cursorQueryScoped, tableName, arrayList);
                        if (cursorQueryScoped != null && !cursorQueryScoped.isClosed()) {
                            cursorQueryScoped.close();
                        }
                        i2 = i3;
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"Range"})
    private void listEntityCursor(Cursor cursor, String str, List<BaseProEntity> list) {
        long j;
        String str2;
        int i;
        long j2;
        long j3;
        long j4;
        MultiPointAreaEntity multiPointAreaEntity;
        DatabaseManager databaseManager = this;
        String str3 = str;
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        while (true) {
            long j5 = cursor.getLong(cursor.getColumnIndex("id"));
            long j6 = cursor.getLong(cursor.getColumnIndex("createTime"));
            long j7 = cursor.getLong(cursor.getColumnIndex("updateTime"));
            int i2 = cursor.getInt(cursor.getColumnIndex("type"));
            String string = cursor.getString(cursor.getColumnIndex("name"));
            String string2 = cursor.getString(cursor.getColumnIndex("projectUUid"));
            long j8 = cursor.getLong(cursor.getColumnIndex("version"));
            long j9 = cursor.getLong(cursor.getColumnIndex("projectId"));
            String string3 = cursor.getString(cursor.getColumnIndex("coordinateSystem"));
            String string4 = cursor.getString(cursor.getColumnIndex("corsName"));
            String string5 = cursor.getString(cursor.getColumnIndex("corsHost"));
            int i3 = cursor.getInt(cursor.getColumnIndex("corsPort"));
            String string6 = cursor.getString(cursor.getColumnIndex("corsUserName"));
            String string7 = cursor.getString(cursor.getColumnIndex("corsPassword"));
            String string8 = cursor.getString(cursor.getColumnIndex("corsMount"));
            int i4 = cursor.getInt(cursor.getColumnIndex("editState"));
            int i5 = cursor.getInt(cursor.getColumnIndex("subType"));
            int i6 = cursor.getInt(cursor.getColumnIndex("shovelTipType"));
            long j10 = databaseManager.hasColumn(cursor, "engineering_local_id") ? cursor.getLong(cursor.getColumnIndex("engineering_local_id")) : 0L;
            long j11 = cursor.getLong(cursor.getColumnIndex("belong_engineering_id"));
            String cursorString = databaseManager.hasColumn(cursor, "engineering_uuid") ? databaseManager.getCursorString(cursor, "engineering_uuid") : "";
            int i7 = cursor.getInt(cursor.getColumnIndex("showUnit"));
            double d = cursor.getDouble(cursor.getColumnIndex("baseStationLon"));
            double d2 = cursor.getDouble(cursor.getColumnIndex("baseStationLat"));
            double d3 = cursor.getDouble(cursor.getColumnIndex("baseStationElev"));
            String cursorString2 = databaseManager.getCursorString(cursor, "cadPath");
            if (TextUtils.isEmpty(cursorString2)) {
                cursorString2 = databaseManager.getCursorString(cursor, "path");
            }
            String str4 = cursorString2;
            if (str3.equals("zhaoping")) {
                ZhaoPingEntity zhaoPingEntity = new ZhaoPingEntity();
                j = j10;
                zhaoPingEntity.targetLon = cursor.getDouble(cursor.getColumnIndex("targetLon"));
                zhaoPingEntity.targetLat = cursor.getDouble(cursor.getColumnIndex("targetLat"));
                zhaoPingEntity.east = cursor.getDouble(cursor.getColumnIndex("east"));
                zhaoPingEntity.north = cursor.getDouble(cursor.getColumnIndex("north"));
                zhaoPingEntity.targetElevation = cursor.getDouble(cursor.getColumnIndex("targetElevation"));
                zhaoPingEntity.depth = cursor.getDouble(cursor.getColumnIndex("depth"));
                zhaoPingEntity.height = cursor.getDouble(cursor.getColumnIndex("height"));
                zhaoPingEntity.quality = cursor.getInt(cursor.getColumnIndex("quality"));
                j4 = j5;
                j3 = j6;
                j2 = j7;
                i = i2;
                str2 = string;
                multiPointAreaEntity = zhaoPingEntity;
            } else {
                j = j10;
                str2 = string;
                i = i2;
                j2 = j7;
                j3 = j6;
                j4 = j5;
                if (str3.equals("shuapo")) {
                    ShuaPoEntity shuaPoEntity = new ShuaPoEntity();
                    shuaPoEntity.targetLon1 = cursor.getDouble(cursor.getColumnIndex("targetLon1"));
                    shuaPoEntity.targetLat1 = cursor.getDouble(cursor.getColumnIndex("targetLat1"));
                    shuaPoEntity.east1 = cursor.getDouble(cursor.getColumnIndex("east1"));
                    shuaPoEntity.north1 = cursor.getDouble(cursor.getColumnIndex("north1"));
                    shuaPoEntity.targetElevation1 = cursor.getDouble(cursor.getColumnIndex("targetElevation1"));
                    shuaPoEntity.quality1 = cursor.getInt(cursor.getColumnIndex("quality1"));
                    shuaPoEntity.targetLon2 = cursor.getDouble(cursor.getColumnIndex("targetLon2"));
                    shuaPoEntity.targetLat2 = cursor.getDouble(cursor.getColumnIndex("targetLat2"));
                    shuaPoEntity.east2 = cursor.getDouble(cursor.getColumnIndex("east2"));
                    shuaPoEntity.north2 = cursor.getDouble(cursor.getColumnIndex("north2"));
                    shuaPoEntity.targetElevation2 = cursor.getDouble(cursor.getColumnIndex("targetElevation2"));
                    shuaPoEntity.quality2 = cursor.getInt(cursor.getColumnIndex("quality2"));
                    shuaPoEntity.targetLon3 = cursor.getDouble(cursor.getColumnIndex("targetLon3"));
                    shuaPoEntity.targetLat3 = cursor.getDouble(cursor.getColumnIndex("targetLat3"));
                    shuaPoEntity.east3 = cursor.getDouble(cursor.getColumnIndex("east3"));
                    shuaPoEntity.north3 = cursor.getDouble(cursor.getColumnIndex("north3"));
                    shuaPoEntity.targetElevation3 = cursor.getDouble(cursor.getColumnIndex("targetElevation3"));
                    shuaPoEntity.quality3 = cursor.getInt(cursor.getColumnIndex("quality3"));
                    shuaPoEntity.targetLonBenchmark = cursor.getDouble(cursor.getColumnIndex("targetLonBenchmark"));
                    shuaPoEntity.targetLatBenchmark = cursor.getDouble(cursor.getColumnIndex("targetLatBenchmark"));
                    shuaPoEntity.targetElevationBenchmark = cursor.getDouble(cursor.getColumnIndex("targetElevationBenchmark"));
                    shuaPoEntity.tickA = cursor.getInt(cursor.getColumnIndex("tickA"));
                    shuaPoEntity.tickB = cursor.getInt(cursor.getColumnIndex("tickB"));
                    shuaPoEntity.tickC = cursor.getInt(cursor.getColumnIndex("tickC"));
                    shuaPoEntity.ditchC = cursor.getInt(cursor.getColumnIndex("ditchC"));
                    shuaPoEntity.width = cursor.getDouble(cursor.getColumnIndex("width"));
                    shuaPoEntity.heigth = cursor.getDouble(cursor.getColumnIndex("heigth"));
                    shuaPoEntity.flatDistance = cursor.getDouble(cursor.getColumnIndex("flatDistance"));
                    shuaPoEntity.ratio = cursor.getDouble(cursor.getColumnIndex("ratio"));
                    multiPointAreaEntity = shuaPoEntity;
                    str3 = str;
                } else if (str.equals("wagou")) {
                    WaGouEntity waGouEntity = new WaGouEntity();
                    waGouEntity.targetLon1 = cursor.getDouble(cursor.getColumnIndex("targetLon1"));
                    waGouEntity.targetLat1 = cursor.getDouble(cursor.getColumnIndex("targetLat1"));
                    waGouEntity.east1 = cursor.getDouble(cursor.getColumnIndex("east1"));
                    waGouEntity.north1 = cursor.getDouble(cursor.getColumnIndex("north1"));
                    waGouEntity.targetElevation1 = cursor.getDouble(cursor.getColumnIndex("targetElevation1"));
                    waGouEntity.quality1 = cursor.getInt(cursor.getColumnIndex("quality1"));
                    waGouEntity.targetLon2 = cursor.getDouble(cursor.getColumnIndex("targetLon2"));
                    waGouEntity.targetLat2 = cursor.getDouble(cursor.getColumnIndex("targetLat2"));
                    waGouEntity.east2 = cursor.getDouble(cursor.getColumnIndex("east2"));
                    waGouEntity.north2 = cursor.getDouble(cursor.getColumnIndex("north2"));
                    waGouEntity.targetElevation2 = cursor.getDouble(cursor.getColumnIndex("targetElevation2"));
                    waGouEntity.quality2 = cursor.getInt(cursor.getColumnIndex("quality2"));
                    waGouEntity.targetLonH = cursor.getDouble(cursor.getColumnIndex("targetLonH"));
                    waGouEntity.targetLatH = cursor.getDouble(cursor.getColumnIndex("targetLatH"));
                    waGouEntity.eastH = cursor.getDouble(cursor.getColumnIndex("eastH"));
                    waGouEntity.northH = cursor.getDouble(cursor.getColumnIndex("northH"));
                    waGouEntity.targetElevationH = cursor.getDouble(cursor.getColumnIndex("targetElevationH"));
                    waGouEntity.qualityH = cursor.getInt(cursor.getColumnIndex("qualityH"));
                    waGouEntity.collectType = cursor.getInt(cursor.getColumnIndex("collectType"));
                    waGouEntity.targetLonBenchmark = cursor.getDouble(cursor.getColumnIndex("targetLonBenchmark"));
                    waGouEntity.targetLatBenchmark = cursor.getDouble(cursor.getColumnIndex("targetLatBenchmark"));
                    waGouEntity.targetElevationBenchmark = cursor.getDouble(cursor.getColumnIndex("targetElevationBenchmark"));
                    waGouEntity.depth = cursor.getDouble(cursor.getColumnIndex("depth"));
                    waGouEntity.width = cursor.getDouble(cursor.getColumnIndex("width"));
                    waGouEntity.ratio = cursor.getDouble(cursor.getColumnIndex("ratio"));
                    waGouEntity.tickA = cursor.getInt(cursor.getColumnIndex("tickA"));
                    waGouEntity.tickB = cursor.getInt(cursor.getColumnIndex("tickB"));
                    waGouEntity.length = cursor.getDouble(cursor.getColumnIndex("length"));
                    waGouEntity.depthA = cursor.getDouble(cursor.getColumnIndex("depthA"));
                    waGouEntity.depthB = cursor.getDouble(cursor.getColumnIndex("depthB"));
                    waGouEntity.leftSlopeRatio = cursor.getDouble(cursor.getColumnIndex("leftSlopeRatio"));
                    waGouEntity.rightSlopeRatio = cursor.getDouble(cursor.getColumnIndex("rightSlopeRatio"));
                    waGouEntity.leftBottomWidth = cursor.getDouble(cursor.getColumnIndex("leftBottomWidth"));
                    waGouEntity.rightBottomWidth = cursor.getDouble(cursor.getColumnIndex("rightBottomWidth"));
                    waGouEntity.advancedType = cursor.getInt(cursor.getColumnIndex("advancedType"));
                    str3 = str;
                    multiPointAreaEntity = waGouEntity;
                } else {
                    str3 = str;
                    if (str3.equals("dike")) {
                        DikeEntity dikeEntity = new DikeEntity();
                        dikeEntity.targetLon1 = cursor.getDouble(cursor.getColumnIndex("targetLon1"));
                        dikeEntity.targetLat1 = cursor.getDouble(cursor.getColumnIndex("targetLat1"));
                        dikeEntity.east1 = cursor.getDouble(cursor.getColumnIndex("east1"));
                        dikeEntity.north1 = cursor.getDouble(cursor.getColumnIndex("north1"));
                        dikeEntity.targetElevation1 = cursor.getDouble(cursor.getColumnIndex("targetElevation1"));
                        dikeEntity.targetLon2 = cursor.getDouble(cursor.getColumnIndex("targetLon2"));
                        dikeEntity.targetLat2 = cursor.getDouble(cursor.getColumnIndex("targetLat2"));
                        dikeEntity.east2 = cursor.getDouble(cursor.getColumnIndex("east2"));
                        dikeEntity.north2 = cursor.getDouble(cursor.getColumnIndex("north2"));
                        dikeEntity.targetElevation2 = cursor.getDouble(cursor.getColumnIndex("targetElevation2"));
                        dikeEntity.width = cursor.getDouble(cursor.getColumnIndex("width"));
                        dikeEntity.tickA = cursor.getInt(cursor.getColumnIndex("tickA"));
                        dikeEntity.tickB = cursor.getInt(cursor.getColumnIndex("tickB"));
                        dikeEntity.length = cursor.getDouble(cursor.getColumnIndex("length"));
                        dikeEntity.depthA = cursor.getDouble(cursor.getColumnIndex("depthA"));
                        dikeEntity.depthB = cursor.getDouble(cursor.getColumnIndex("depthB"));
                        multiPointAreaEntity = dikeEntity;
                    } else if (str3.equals("line")) {
                        LineEntity lineEntity = new LineEntity();
                        lineEntity.targetLon1 = cursor.getDouble(cursor.getColumnIndex("targetLon1"));
                        lineEntity.targetLat1 = cursor.getDouble(cursor.getColumnIndex("targetLat1"));
                        lineEntity.east1 = cursor.getDouble(cursor.getColumnIndex("east1"));
                        lineEntity.north1 = cursor.getDouble(cursor.getColumnIndex("north1"));
                        lineEntity.targetElevation1 = cursor.getDouble(cursor.getColumnIndex("targetElevation1"));
                        lineEntity.targetLon2 = cursor.getDouble(cursor.getColumnIndex("targetLon2"));
                        lineEntity.targetLat2 = cursor.getDouble(cursor.getColumnIndex("targetLat2"));
                        lineEntity.east2 = cursor.getDouble(cursor.getColumnIndex("east2"));
                        lineEntity.north2 = cursor.getDouble(cursor.getColumnIndex("north2"));
                        lineEntity.targetElevation2 = cursor.getDouble(cursor.getColumnIndex("targetElevation2"));
                        lineEntity.width = cursor.getDouble(cursor.getColumnIndex("width"));
                        lineEntity.ratio = cursor.getDouble(cursor.getColumnIndex("ratio"));
                        lineEntity.length = cursor.getDouble(cursor.getColumnIndex("length"));
                        lineEntity.depthA = cursor.getDouble(cursor.getColumnIndex("depthA"));
                        lineEntity.depthB = cursor.getDouble(cursor.getColumnIndex("depthB"));
                        lineEntity.spacing = cursor.getDouble(cursor.getColumnIndex("spacing"));
                        lineEntity.pileSpacing = cursor.getDouble(cursor.getColumnIndex("pileSpacing"));
                        lineEntity.rigthItems = cursor.getInt(cursor.getColumnIndex("rigthItems"));
                        lineEntity.leftItems = cursor.getInt(cursor.getColumnIndex("leftItems"));
                        multiPointAreaEntity = lineEntity;
                    } else if (str3.equals("polyline")) {
                        PolyLineEntity polyLineEntity = new PolyLineEntity();
                        polyLineEntity.width = cursor.getDouble(cursor.getColumnIndex("width"));
                        polyLineEntity.tickA = cursor.getInt(cursor.getColumnIndex("tickA"));
                        polyLineEntity.tickB = cursor.getInt(cursor.getColumnIndex("tickB"));
                        polyLineEntity.depthA = cursor.getDouble(cursor.getColumnIndex("depthA"));
                        polyLineEntity.depthB = cursor.getDouble(cursor.getColumnIndex("depthB"));
                        polyLineEntity.ratio = cursor.getDouble(cursor.getColumnIndex("ratio"));
                        polyLineEntity.heightDiff = cursor.getDouble(cursor.getColumnIndex("heightDiff"));
                        polyLineEntity.width = cursor.getDouble(cursor.getColumnIndex("width"));
                        polyLineEntity.coordsListJson = cursor.getString(cursor.getColumnIndex("coordsListJson"));
                        multiPointAreaEntity = polyLineEntity;
                    } else if (str3.equals("onePointArea")) {
                        OnePointAreaEntity onePointAreaEntity = new OnePointAreaEntity();
                        onePointAreaEntity.lon = cursor.getDouble(cursor.getColumnIndex("lon"));
                        onePointAreaEntity.lat = cursor.getDouble(cursor.getColumnIndex("lat"));
                        onePointAreaEntity.elev = cursor.getDouble(cursor.getColumnIndex("elev"));
                        onePointAreaEntity.east = cursor.getDouble(cursor.getColumnIndex("east"));
                        onePointAreaEntity.north = cursor.getDouble(cursor.getColumnIndex("north"));
                        onePointAreaEntity.ratioN = cursor.getDouble(cursor.getColumnIndex("ratioN"));
                        onePointAreaEntity.ratioE = cursor.getDouble(cursor.getColumnIndex("ratioE"));
                        onePointAreaEntity.depth = cursor.getDouble(cursor.getColumnIndex("depth"));
                        multiPointAreaEntity = onePointAreaEntity;
                    } else if (str3.equals("threePointArea")) {
                        ThreePointAreaEntity threePointAreaEntity = new ThreePointAreaEntity();
                        threePointAreaEntity.lon1 = cursor.getDouble(cursor.getColumnIndex("lon1"));
                        threePointAreaEntity.lat1 = cursor.getDouble(cursor.getColumnIndex("lat1"));
                        threePointAreaEntity.elev1 = cursor.getDouble(cursor.getColumnIndex("elev1"));
                        threePointAreaEntity.east1 = cursor.getDouble(cursor.getColumnIndex("east1"));
                        threePointAreaEntity.north1 = cursor.getDouble(cursor.getColumnIndex("north1"));
                        threePointAreaEntity.lon2 = cursor.getDouble(cursor.getColumnIndex("lon2"));
                        threePointAreaEntity.lat2 = cursor.getDouble(cursor.getColumnIndex("lat2"));
                        threePointAreaEntity.elev2 = cursor.getDouble(cursor.getColumnIndex("elev2"));
                        threePointAreaEntity.east2 = cursor.getDouble(cursor.getColumnIndex("east2"));
                        threePointAreaEntity.north2 = cursor.getDouble(cursor.getColumnIndex("north2"));
                        threePointAreaEntity.lon3 = cursor.getDouble(cursor.getColumnIndex("lon3"));
                        threePointAreaEntity.lat3 = cursor.getDouble(cursor.getColumnIndex("lat3"));
                        threePointAreaEntity.elev3 = cursor.getDouble(cursor.getColumnIndex("elev3"));
                        threePointAreaEntity.east3 = cursor.getDouble(cursor.getColumnIndex("east3"));
                        threePointAreaEntity.north3 = cursor.getDouble(cursor.getColumnIndex("north3"));
                        threePointAreaEntity.depthA = cursor.getDouble(cursor.getColumnIndex("depthA"));
                        threePointAreaEntity.depthB = cursor.getDouble(cursor.getColumnIndex("depthB"));
                        threePointAreaEntity.depthC = cursor.getDouble(cursor.getColumnIndex("depthC"));
                        multiPointAreaEntity = threePointAreaEntity;
                    } else if (str3.equals("siteleveling")) {
                        SiteLevelingEntity siteLevelingEntity = new SiteLevelingEntity();
                        siteLevelingEntity.coordsListJson = cursor.getString(cursor.getColumnIndex("coordsListJson"));
                        siteLevelingEntity.ratio = cursor.getDouble(cursor.getColumnIndex("ratio"));
                        siteLevelingEntity.compactionCoeff = cursor.getDouble(cursor.getColumnIndex("compactionCoeff"));
                        multiPointAreaEntity = siteLevelingEntity;
                    } else if (str3.equals("arbitraryline")) {
                        ArbitraryLineEntity arbitraryLineEntity = new ArbitraryLineEntity();
                        arbitraryLineEntity.lon = cursor.getDouble(cursor.getColumnIndex("lon"));
                        arbitraryLineEntity.lat = cursor.getDouble(cursor.getColumnIndex("lat"));
                        arbitraryLineEntity.elev = cursor.getDouble(cursor.getColumnIndex("elev"));
                        arbitraryLineEntity.east = cursor.getDouble(cursor.getColumnIndex("east"));
                        arbitraryLineEntity.north = cursor.getDouble(cursor.getColumnIndex("north"));
                        arbitraryLineEntity.depth = cursor.getDouble(cursor.getColumnIndex("depth"));
                        arbitraryLineEntity.ratio = cursor.getDouble(cursor.getColumnIndex("ratio"));
                        multiPointAreaEntity = arbitraryLineEntity;
                    } else if (str3.equals("curvedSlope")) {
                        CurvedSlopeEntity curvedSlopeEntity = new CurvedSlopeEntity();
                        curvedSlopeEntity.lon1 = cursor.getDouble(cursor.getColumnIndex("lon1"));
                        curvedSlopeEntity.lat1 = cursor.getDouble(cursor.getColumnIndex("lat1"));
                        curvedSlopeEntity.elev1 = cursor.getDouble(cursor.getColumnIndex("elev1"));
                        curvedSlopeEntity.east1 = cursor.getDouble(cursor.getColumnIndex("east1"));
                        curvedSlopeEntity.north1 = cursor.getDouble(cursor.getColumnIndex("north1"));
                        curvedSlopeEntity.depthA = cursor.getDouble(cursor.getColumnIndex("depthA"));
                        curvedSlopeEntity.lon2 = cursor.getDouble(cursor.getColumnIndex("lon2"));
                        curvedSlopeEntity.lat2 = cursor.getDouble(cursor.getColumnIndex("lat2"));
                        curvedSlopeEntity.elev2 = cursor.getDouble(cursor.getColumnIndex("elev2"));
                        curvedSlopeEntity.east2 = cursor.getDouble(cursor.getColumnIndex("east2"));
                        curvedSlopeEntity.north2 = cursor.getDouble(cursor.getColumnIndex("north2"));
                        curvedSlopeEntity.depthB = cursor.getDouble(cursor.getColumnIndex("depthB"));
                        curvedSlopeEntity.coordsListJson = cursor.getString(cursor.getColumnIndex("coordsListJson"));
                        multiPointAreaEntity = curvedSlopeEntity;
                    } else if (str3.equals("multiPointArea")) {
                        MultiPointAreaEntity multiPointAreaEntity2 = new MultiPointAreaEntity();
                        multiPointAreaEntity2.coordsListJson = cursor.getString(cursor.getColumnIndex("coordsListJson"));
                        multiPointAreaEntity = multiPointAreaEntity2;
                    } else {
                        multiPointAreaEntity = null;
                    }
                }
            }
            if (multiPointAreaEntity != null) {
                multiPointAreaEntity.id = j4;
                multiPointAreaEntity.createTime = j3;
                multiPointAreaEntity.updateTime = j2;
                multiPointAreaEntity.type = i;
                multiPointAreaEntity.name = str2;
                multiPointAreaEntity.engineeringLocalId = j;
                multiPointAreaEntity.belongEngineeringId = j11;
                multiPointAreaEntity.engineeringUuid = cursorString != null ? cursorString : "";
                multiPointAreaEntity.projectUUid = string2;
                multiPointAreaEntity.version = j8;
                multiPointAreaEntity.projectId = j9;
                multiPointAreaEntity.editState = i4;
                multiPointAreaEntity.coordinateSystem = string3;
                multiPointAreaEntity.corsName = string4;
                multiPointAreaEntity.corsHost = string5;
                multiPointAreaEntity.corsPort = i3;
                multiPointAreaEntity.corsUserName = string6;
                multiPointAreaEntity.corsPassword = string7;
                multiPointAreaEntity.corsMount = string8;
                multiPointAreaEntity.subType = i5;
                multiPointAreaEntity.shovelTipType = i6;
                multiPointAreaEntity.showUnit = i7;
                multiPointAreaEntity.baseStationLon = d;
                multiPointAreaEntity.baseStationLat = d2;
                multiPointAreaEntity.baseStationElev = d3;
                multiPointAreaEntity.cadPath = str4 != null ? str4 : "";
                int columnIndex = cursor.getColumnIndex("belong_uid");
                if (columnIndex >= 0) {
                    multiPointAreaEntity.belongUid = cursor.getLong(columnIndex);
                }
                list.add(multiPointAreaEntity);
            }
            if (!cursor.moveToNext()) {
                cursor.close();
                return;
            }
            databaseManager = this;
        }
    }

    @SuppressLint({"Range"})
    public List<CorsEntity> queryCORS(Long l) {
        Cursor cursorQueryScoped = queryScoped("cors", null, l != null ? "id = ?" : null, l != null ? new String[]{String.valueOf(l)} : null, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                CorsEntity corsEntity = new CorsEntity();
                corsEntity.id = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("id"));
                corsEntity.timeStamp = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("createTime"));
                corsEntity.ntripType = cursorQueryScoped.getInt(cursorQueryScoped.getColumnIndex("ntripType"));
                corsEntity.corsName = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("name"));
                corsEntity.host = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("host"));
                corsEntity.port = cursorQueryScoped.getInt(cursorQueryScoped.getColumnIndex("port"));
                corsEntity.userName = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("userName"));
                corsEntity.password = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("password"));
                corsEntity.mount = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("mount"));
                arrayList.add(corsEntity);
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public List<CorsEntity> queryCORSByName(String str) {
        Cursor cursorQueryScoped = queryScoped("cors", null, !TextUtils.isEmpty(str) ? "name = ?" : null, TextUtils.isEmpty(str) ? null : new String[]{str}, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                CorsEntity corsEntity = new CorsEntity();
                corsEntity.id = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("id"));
                corsEntity.timeStamp = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("createTime"));
                corsEntity.ntripType = cursorQueryScoped.getInt(cursorQueryScoped.getColumnIndex("ntripType"));
                corsEntity.corsName = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("name"));
                corsEntity.host = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("host"));
                corsEntity.port = cursorQueryScoped.getInt(cursorQueryScoped.getColumnIndex("port"));
                corsEntity.userName = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("userName"));
                corsEntity.password = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("password"));
                corsEntity.mount = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("mount"));
                arrayList.add(corsEntity);
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public List<PointlibEntity> queryPoint(Long l) {
        return queryPoint(l, null, false);
    }

    @SuppressLint({"Range"})
    public List<PointlibEntity> queryPoint(Long l, Long l2, boolean z) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        if (l != null) {
            sb.append("id = ?");
            arrayList.add(String.valueOf(l));
        }
        if (l2 != null) {
            if (sb.length() > 0) {
                sb.append(" AND ");
            }
            sb.append("group_local_id = ?");
            arrayList.add(String.valueOf(l2));
        }
        if (z) {
            if (sb.length() > 0) {
                sb.append(" AND ");
            }
            sb.append("(geodeticLon != 0 OR geodeticLat != 0 OR geodeticElev != 0)");
        }
        Cursor cursorQueryScoped = queryScoped("pointLib", null, sb.length() > 0 ? sb.toString() : null, arrayList.isEmpty() ? null : (String[]) arrayList.toArray(new String[0]), null, null, "createTime DESC");
        ArrayList arrayList2 = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList2.add(mapCursorToPointlib(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList2;
    }

    @SuppressLint({"Range"})
    private PointlibEntity mapCursorToPointlib(Cursor cursor) {
        PointlibEntity pointlibEntity = new PointlibEntity();
        pointlibEntity.id = cursor.getLong(cursor.getColumnIndex("id"));
        pointlibEntity.pointId = cursor.getColumnIndex("point_id") >= 0 ? cursor.getLong(cursor.getColumnIndex("point_id")) : 0L;
        pointlibEntity.groupId = cursor.getColumnIndex("group_id") >= 0 ? cursor.getLong(cursor.getColumnIndex("group_id")) : 0L;
        pointlibEntity.groupLocalId = cursor.getColumnIndex("group_local_id") >= 0 ? cursor.getLong(cursor.getColumnIndex("group_local_id")) : 0L;
        pointlibEntity.createTime = cursor.getLong(cursor.getColumnIndex("createTime"));
        pointlibEntity.pointType = cursor.getInt(cursor.getColumnIndex("pointType"));
        pointlibEntity.name = cursor.getString(cursor.getColumnIndex("name"));
        pointlibEntity.systemType = cursor.getString(cursor.getColumnIndex("systemType"));
        pointlibEntity.lon = cursor.getDouble(cursor.getColumnIndex("lon"));
        pointlibEntity.lat = cursor.getDouble(cursor.getColumnIndex("lat"));
        pointlibEntity.alt = cursor.getColumnIndex("alt") >= 0 ? cursor.getDouble(cursor.getColumnIndex("alt")) : 0.0d;
        pointlibEntity.elev = cursor.getDouble(cursor.getColumnIndex("elev"));
        pointlibEntity.geodeticLon = cursor.getColumnIndex("geodeticLon") >= 0 ? cursor.getDouble(cursor.getColumnIndex("geodeticLon")) : 0.0d;
        pointlibEntity.geodeticLat = cursor.getColumnIndex("geodeticLat") >= 0 ? cursor.getDouble(cursor.getColumnIndex("geodeticLat")) : 0.0d;
        pointlibEntity.geodeticElev = cursor.getColumnIndex("geodeticElev") >= 0 ? cursor.getDouble(cursor.getColumnIndex("geodeticElev")) : 0.0d;
        pointlibEntity.east = cursor.getDouble(cursor.getColumnIndex("east"));
        pointlibEntity.north = cursor.getDouble(cursor.getColumnIndex("north"));
        pointlibEntity.quality = cursor.getInt(cursor.getColumnIndex("quality"));
        pointlibEntity.hdop = cursor.getColumnIndex("hdop") >= 0 ? cursor.getDouble(cursor.getColumnIndex("hdop")) : 0.0d;
        pointlibEntity.vdop = cursor.getColumnIndex("vdop") >= 0 ? cursor.getDouble(cursor.getColumnIndex("vdop")) : 0.0d;
        pointlibEntity.encod = cursor.getInt(cursor.getColumnIndex("encod"));
        pointlibEntity.coordinateSystem = cursor.getString(cursor.getColumnIndex("coordinateSystem"));
        pointlibEntity.corsName = cursor.getString(cursor.getColumnIndex("corsName"));
        pointlibEntity.corsHost = cursor.getString(cursor.getColumnIndex("corsHost"));
        pointlibEntity.corsPort = cursor.getInt(cursor.getColumnIndex("corsPort"));
        pointlibEntity.corsUserName = cursor.getString(cursor.getColumnIndex("corsUserName"));
        pointlibEntity.corsPassword = cursor.getString(cursor.getColumnIndex("corsPassword"));
        pointlibEntity.corsMount = cursor.getString(cursor.getColumnIndex("corsMount"));
        return pointlibEntity;
    }

    @SuppressLint({"Range"})
    public List<ShareEntity> queryShareByShareId(Long l) {
        Cursor cursorQueryScoped = queryScoped("share", null, l != null ? "shareId = ?" : null, l != null ? new String[]{String.valueOf(l)} : null, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                ShareEntity shareEntity = new ShareEntity();
                shareEntity.shareId = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("shareId"));
                shareEntity.createTime = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("createTime"));
                shareEntity.updateTime = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("updateTime"));
                shareEntity.expireTime = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("expireTime"));
                shareEntity.shareCode = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("shareCode"));
                shareEntity.editState = cursorQueryScoped.getInt(cursorQueryScoped.getColumnIndex("editState"));
                shareEntity.name = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("name"));
                shareEntity.projectUUids = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("projectUUids"));
                shareEntity.shareUUid = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("shareUUid"));
                int columnIndex = cursorQueryScoped.getColumnIndex("belong_uid");
                if (columnIndex >= 0) {
                    shareEntity.belongUid = cursorQueryScoped.getLong(columnIndex);
                }
                arrayList.add(shareEntity);
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public List<ShareEntity> queryShareByShareCode(String str) {
        Cursor cursorQueryScoped = queryScoped("share", null, str != null ? "shareCode = ?" : null, str != null ? new String[]{str} : null, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                ShareEntity shareEntity = new ShareEntity();
                shareEntity.shareId = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("shareId"));
                shareEntity.createTime = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("createTime"));
                shareEntity.updateTime = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("updateTime"));
                shareEntity.expireTime = cursorQueryScoped.getLong(cursorQueryScoped.getColumnIndex("expireTime"));
                shareEntity.shareCode = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("shareCode"));
                shareEntity.editState = cursorQueryScoped.getInt(cursorQueryScoped.getColumnIndex("editState"));
                shareEntity.name = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("name"));
                shareEntity.projectUUids = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("projectUUids"));
                shareEntity.shareUUid = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("shareUUid"));
                int columnIndex = cursorQueryScoped.getColumnIndex("belong_uid");
                if (columnIndex >= 0) {
                    shareEntity.belongUid = cursorQueryScoped.getLong(columnIndex);
                }
                arrayList.add(shareEntity);
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public List<ExcavatorEntity> queryExcavatorByUserId(long j) {
        Cursor cursorQueryScoped = queryScoped("excavator", null, j != 0 ? "userId = ?" : null, j != 0 ? new String[]{String.valueOf(j)} : null, null, null, "createTime DESC, name DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList.add(createExcavatorEntity(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public List<ExcavatorEntity> queryExcavatorByCalibParamsId(String str) {
        Cursor cursorQueryScoped = queryScoped("excavator", null, !TextUtils.isEmpty(str) ? "calibParamsId = ?" : null, TextUtils.isEmpty(str) ? null : new String[]{str}, null, null, "createTime DESC, name DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList.add(createExcavatorEntity(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    public List<ExcavatorEntity> queryExcavatorByLocalId(long j) {
        if (j == 0) {
            return new ArrayList();
        }
        Cursor cursorQueryScoped = queryScoped("excavator", null, "localId = ?", new String[]{String.valueOf(j)}, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList.add(createExcavatorEntity(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    public List<ExcavatorEntity> queryExcavatorByName(String str) {
        if (TextUtils.isEmpty(str)) {
            return new ArrayList();
        }
        Cursor cursorQueryScoped = queryScoped("excavator", null, "name = ?", new String[]{str}, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList.add(createExcavatorEntity(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    private ExcavatorEntity createExcavatorEntity(Cursor cursor) {
        ExcavatorEntity excavatorEntity;
        double d;
        ExcavatorEntity excavatorEntity2 = new ExcavatorEntity();
        excavatorEntity2.localId = getCursorLong(cursor, "localId", 0L);
        excavatorEntity2.userId = getCursorLong(cursor, "userId", 0L);
        if (hasColumn(cursor, "belong_uid")) {
            long cursorLong = getCursorLong(cursor, "belong_uid", 0L);
            if (excavatorEntity2.userId == 0) {
                excavatorEntity2.userId = cursorLong;
            }
        }
        excavatorEntity2.calibrateId = getCursorLong(cursor, "calibrateId", 0L);
        excavatorEntity2.calibrateUUid = getCursorString(cursor, "calibrateUUid");
        excavatorEntity2.createTime = getCursorLong(cursor, "createTime", 0L);
        excavatorEntity2.updateTime = getCursorLong(cursor, "updateTime", 0L);
        excavatorEntity2.name = getCursorString(cursor, "name");
        excavatorEntity2.calibParamsId = getCursorString(cursor, "calibParamsId");
        excavatorEntity2.calibParams = getCursorString(cursor, "calibParams");
        excavatorEntity2.leftDist = getCursorDouble(cursor, "leftDist", 0.0d);
        excavatorEntity2.rigthDist = getCursorDouble(cursor, "rigthDist", 0.0d);
        excavatorEntity2.spanDist = getCursorDouble(cursor, "spanDist", 0.0d);
        excavatorEntity2.deviceHeight = getCursorDouble(cursor, "deviceHeight", 0.0d);
        excavatorEntity2.mode = getCursorInt(cursor, "mode", 0);
        if (hasColumn(cursor, "excavatorParams")) {
            excavatorEntity2.excavatorParams = cursor.getString(cursor.getColumnIndex("excavatorParams"));
            excavatorEntity2.loadExcavatorParamsFromJson();
        }
        if (hasColumn(cursor, "HA") && excavatorEntity2.HA == 0.0d && excavatorEntity2.pq == 0.0d && excavatorEntity2.Ay == 0.0d) {
            double cursorDouble = getCursorDouble(cursor, "HA", 0.0d);
            double cursorDouble2 = getCursorDouble(cursor, "pq", getCursorDouble(cursor, "Hy", 0.0d));
            double cursorDouble3 = getCursorDouble(cursor, "Ay", 0.0d);
            if (cursorDouble != 0.0d || cursorDouble2 != 0.0d || cursorDouble3 != 0.0d) {
                excavatorEntity2.HA = cursorDouble;
                excavatorEntity2.pq = cursorDouble2;
                excavatorEntity2.Ay = cursorDouble3;
                excavatorEntity2.Ax = getCursorDouble(cursor, "Ax", 0.0d);
                excavatorEntity2.Dx = getCursorDouble(cursor, "Dx", 0.0d);
                excavatorEntity2.AD = getCursorDouble(cursor, "AD", 0.0d);
                excavatorEntity2.BD = getCursorDouble(cursor, "BD", 0.0d);
                excavatorEntity2.CD = getCursorDouble(cursor, "CD", 0.0d);
                excavatorEntity2.BC = getCursorDouble(cursor, "BC", 0.0d);
            }
        }
        excavatorEntity2.showUnit = getCursorInt(cursor, "showUnit", 0);
        excavatorEntity2.version = getCursorLong(cursor, "version", 0L);
        if (hasColumn(cursor, "measureParams")) {
            excavatorEntity2.measureParams = cursor.getString(cursor.getColumnIndex("measureParams"));
        }
        if (hasColumn(cursor, "autoGenerateParams")) {
            excavatorEntity2.autoGenerateParams = cursor.getString(cursor.getColumnIndex("autoGenerateParams"));
        }
        if (hasColumn(cursor, "calibSoInputs")) {
            try {
                excavatorEntity2.calibSoInputs = cursor.getString(cursor.getColumnIndex("calibSoInputs"));
                excavatorEntity2.loadCalibSoInputsFromJson();
                excavatorEntity2.discardInvalidCalibSoInputs();
            } catch (Exception unused) {
                excavatorEntity2.calibSoInputs = null;
            }
        }
        if (!excavatorEntity2.usesAutoGenerateParams() && hasColumn(cursor, "NT") && (getCursorDouble(cursor, "NT", 0.0d) != 0.0d || getCursorDouble(cursor, "AT", 0.0d) != 0.0d || getCursorDouble(cursor, "NA", 0.0d) != 0.0d)) {
            double cursorDouble4 = getCursorDouble(cursor, "LR", 0.0d);
            double cursorDouble5 = getCursorDouble(cursor, "Ly", 0.0d);
            double cursorDouble6 = getCursorDouble(cursor, "Ry", 0.0d);
            if (cursorDouble4 != 0.0d && cursorDouble5 == 0.0d && cursorDouble6 == 0.0d) {
                d = cursorDouble4 / 2.0d;
                cursorDouble6 = d;
            } else {
                d = cursorDouble5;
            }
            excavatorEntity = excavatorEntity2;
            excavatorEntity.setDistanceMeasureValues(getCursorDouble(cursor, "NT", 0.0d), getCursorDouble(cursor, "AT", 0.0d), getCursorDouble(cursor, "NA", 0.0d), d, cursorDouble6, getCursorDouble(cursor, "AB", 0.0d));
        } else {
            String str = excavatorEntity2.measureParams;
            if ((str == null || str.isEmpty()) && !excavatorEntity2.usesAutoGenerateParams() && hasColumn(cursor, "G1")) {
                excavatorEntity = excavatorEntity2;
                excavatorEntity.setMeasureValues(getCursorDouble(cursor, "G1", 0.0d), getCursorDouble(cursor, "G2", 0.0d), getCursorDouble(cursor, "G3", 0.0d), getCursorDouble(cursor, "Ly", 0.0d), getCursorDouble(cursor, "Ry", 0.0d), getCursorDouble(cursor, "AB", 0.0d));
            } else {
                excavatorEntity = excavatorEntity2;
            }
        }
        if (excavatorEntity.usesAutoGenerateParams()) {
            excavatorEntity.clearMeasureParams();
        } else {
            String str2 = excavatorEntity.measureParams;
            if (str2 != null && !str2.isEmpty()) {
                excavatorEntity.clearAutoGenerateParams();
            }
        }
        return excavatorEntity;
    }

    public long deleteShovelById(ShovelEntity shovelEntity) {
        return this.database.delete("shovel", "localId = ?", new String[]{String.valueOf(shovelEntity.localId)});
    }

    public List<ShovelEntity> queryShovelByName(String str) {
        Cursor cursorQueryScoped = queryScoped("shovel", null, !TextUtils.isEmpty(str) ? "name = ?" : null, TextUtils.isEmpty(str) ? null : new String[]{str}, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList.add(createShovelEntity(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    public ShovelEntity queryShovelByLocalId(long j) {
        Cursor cursorQueryScoped;
        if (j <= 0 || (cursorQueryScoped = queryScoped("shovel", null, "localId = ?", new String[]{String.valueOf(j)}, null, null, null)) == null || !cursorQueryScoped.moveToFirst()) {
            return null;
        }
        ShovelEntity shovelEntityCreateShovelEntity = createShovelEntity(cursorQueryScoped);
        cursorQueryScoped.close();
        return shovelEntityCreateShovelEntity;
    }

    public long insertShovel(ShovelEntity shovelEntity) {
        return this.database.insert("shovel", null, getContentShovelValues(shovelEntity));
    }

    public int updateShovelById(ShovelEntity shovelEntity) {
        int iUpdate = this.database.update("shovel", getContentShovelValues(shovelEntity), "localId = ?", new String[]{String.valueOf(shovelEntity.localId)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "铲斗更新成功。" : "铲斗更新失败。");
        sb.append("——>");
        sb.append(shovelEntity.toString());
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    @SuppressLint({"Range"})
    private ShovelEntity createShovelEntity(Cursor cursor) {
        double d;
        ShovelEntity shovelEntity = new ShovelEntity();
        shovelEntity.localId = cursor.getLong(cursor.getColumnIndex("localId"));
        shovelEntity.createTime = cursor.getLong(cursor.getColumnIndex("createTime"));
        shovelEntity.updateTime = cursor.getLong(cursor.getColumnIndex("updateTime"));
        shovelEntity.name = cursor.getString(cursor.getColumnIndex("name"));
        shovelEntity.bucket_id = cursor.getLong(cursor.getColumnIndex("bucket_id"));
        shovelEntity.bucket_uuid = cursor.getString(cursor.getColumnIndex("bucket_uuid"));
        shovelEntity.mode = cursor.getInt(cursor.getColumnIndex("mode"));
        if (hasColumn(cursor, "measureParams")) {
            shovelEntity.measureParams = cursor.getString(cursor.getColumnIndex("measureParams"));
        }
        if (hasColumn(cursor, "autoGenerateParams")) {
            shovelEntity.autoGenerateParams = cursor.getString(cursor.getColumnIndex("autoGenerateParams"));
        }
        if (!shovelEntity.usesAutoGenerateParams() && hasColumn(cursor, "NT") && (getCursorDouble(cursor, "NT", 0.0d) != 0.0d || getCursorDouble(cursor, "AT", 0.0d) != 0.0d || getCursorDouble(cursor, "NA", 0.0d) != 0.0d)) {
            double cursorDouble = getCursorDouble(cursor, "LR", 0.0d);
            double cursorDouble2 = getCursorDouble(cursor, "Ly", 0.0d);
            double cursorDouble3 = getCursorDouble(cursor, "Ry", 0.0d);
            if (cursorDouble != 0.0d && cursorDouble2 == 0.0d && cursorDouble3 == 0.0d) {
                cursorDouble3 = cursorDouble / 2.0d;
                d = cursorDouble3;
            } else {
                d = cursorDouble2;
            }
            shovelEntity.setDistanceMeasureValues(getCursorDouble(cursor, "NT", 0.0d), getCursorDouble(cursor, "AT", 0.0d), getCursorDouble(cursor, "NA", 0.0d), d, cursorDouble3, getCursorDouble(cursor, "AB", 0.0d));
        } else {
            String str = shovelEntity.measureParams;
            if ((str == null || str.isEmpty()) && !shovelEntity.usesAutoGenerateParams() && hasColumn(cursor, "G1")) {
                shovelEntity.setMeasureValues(cursor.getDouble(cursor.getColumnIndex("G1")), cursor.getDouble(cursor.getColumnIndex("G2")), cursor.getDouble(cursor.getColumnIndex("G3")), cursor.getDouble(cursor.getColumnIndex("Ly")), cursor.getDouble(cursor.getColumnIndex("Ry")), cursor.getDouble(cursor.getColumnIndex("AB")));
            }
        }
        if (shovelEntity.usesAutoGenerateParams()) {
            shovelEntity.clearMeasureParams();
        } else {
            String str2 = shovelEntity.measureParams;
            if (str2 != null && !str2.isEmpty()) {
                shovelEntity.clearAutoGenerateParams();
            }
        }
        shovelEntity.param = cursor.getString(cursor.getColumnIndex("param"));
        shovelEntity.showUnit = cursor.getInt(cursor.getColumnIndex("showUnit"));
        shovelEntity.version = cursor.getLong(cursor.getColumnIndex("version"));
        if (hasColumn(cursor, "belong_uid")) {
            shovelEntity.belong_uid = cursor.getLong(cursor.getColumnIndex("belong_uid"));
        }
        return shovelEntity;
    }

    private ContentValues getContentShovelValues(ShovelEntity shovelEntity) {
        shovelEntity.ensureParamsSerialized();
        ContentValues contentValues = new ContentValues();
        long jCurrentTimeMillis = shovelEntity.createTime;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("createTime", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("updateTime", Long.valueOf(shovelEntity.updateTime));
        contentValues.put("name", shovelEntity.name);
        contentValues.put("bucket_id", Long.valueOf(shovelEntity.bucket_id));
        contentValues.put("bucket_uuid", shovelEntity.bucket_uuid);
        contentValues.put("mode", Integer.valueOf(shovelEntity.mode));
        contentValues.put("measureParams", shovelEntity.measureParams);
        contentValues.put("autoGenerateParams", shovelEntity.autoGenerateParams);
        contentValues.put("G1", Double.valueOf(round3(shovelEntity.getG1())));
        contentValues.put("G2", Double.valueOf(round3(shovelEntity.getG2())));
        contentValues.put("G3", Double.valueOf(round3(shovelEntity.getG3())));
        contentValues.put("Ly", Double.valueOf(round3(shovelEntity.getLy())));
        contentValues.put("Ry", Double.valueOf(round3(shovelEntity.getRy())));
        contentValues.put("AB", Double.valueOf(round3(shovelEntity.getAB())));
        contentValues.put("NT", Double.valueOf(round3(shovelEntity.getNT())));
        contentValues.put("AT", Double.valueOf(round3(shovelEntity.getAT())));
        contentValues.put("NA", Double.valueOf(round3(shovelEntity.getNA())));
        contentValues.put("LR", Double.valueOf(round3(shovelEntity.getLR())));
        contentValues.put("param", shovelEntity.param);
        contentValues.put("showUnit", Integer.valueOf(shovelEntity.showUnit));
        contentValues.put("version", Long.valueOf(shovelEntity.version));
        if (shovelEntity.belong_uid == 0) {
            shovelEntity.belong_uid = currentBelongUid();
        }
        putBelongUid(contentValues);
        return contentValues;
    }

    private boolean hasColumn(Cursor cursor, String str) {
        return cursor.getColumnIndex(str) >= 0;
    }

    private long getCursorLong(Cursor cursor, String str, long j) {
        int columnIndex = cursor.getColumnIndex(str);
        return columnIndex >= 0 ? cursor.getLong(columnIndex) : j;
    }

    private int getCursorInt(Cursor cursor, String str, int i) {
        int columnIndex = cursor.getColumnIndex(str);
        return columnIndex >= 0 ? cursor.getInt(columnIndex) : i;
    }

    private double getCursorDouble(Cursor cursor, String str, double d) {
        int columnIndex = cursor.getColumnIndex(str);
        return columnIndex >= 0 ? cursor.getDouble(columnIndex) : d;
    }

    private static double round3(double d) {
        return Math.round(d * 1000.0d) / 1000.0d;
    }

    private String getCursorString(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return cursor.getString(columnIndex);
        }
        return null;
    }

    public boolean isShovelNameExists(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursorRawQueryScoped = null;
        try {
            cursorRawQueryScoped = rawQueryScoped("shovel", "SELECT 1 FROM shovel WHERE name = ? LIMIT 1", new String[]{str});
            if (cursorRawQueryScoped != null) {
                if (cursorRawQueryScoped.moveToFirst()) {
                    cursorRawQueryScoped.close();
                    return true;
                }
            }
        } catch (Exception unused) {
            if (cursorRawQueryScoped != null) {
            }
        } catch (Throwable th) {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
            throw th;
        }
        if (cursorRawQueryScoped != null) {
            cursorRawQueryScoped.close();
        }
        return false;
    }

    public int updateEntityById(BaseProEntity baseProEntity) {
        bindCurrentEngineering(baseProEntity);
        ContentValues contentValues = new ContentValues();
        contentValues.put("createTime", Long.valueOf(baseProEntity.createTime));
        contentValues.put("updateTime", Long.valueOf(baseProEntity.updateTime));
        createContentValue(baseProEntity, contentValues);
        putBelongUid(contentValues);
        int iUpdate = this.database.update(getTableName(baseProEntity.type), contentValues, "id = ?", new String[]{String.valueOf(baseProEntity.id)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "更新成功。" : "更新失败。");
        sb.append("——>type:");
        sb.append(baseProEntity.type);
        sb.append("，name:");
        sb.append(baseProEntity.name);
        sb.append("，line:");
        sb.append(iUpdate);
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    public int updateEntityByUUid(BaseProEntity baseProEntity) {
        return updateEntityByUUid(baseProEntity, null);
    }

    public int updateEntityByUUid(BaseProEntity baseProEntity, Long l) {
        preserveEngineeringBindingIfMissing(baseProEntity);
        bindCurrentEngineering(baseProEntity);
        ContentValues contentValues = new ContentValues();
        if (l != null) {
            contentValues.put("createTime", Long.valueOf(baseProEntity.createTime));
        }
        contentValues.put("updateTime", Long.valueOf(baseProEntity.updateTime));
        createContentValue(baseProEntity, contentValues);
        putBelongUid(contentValues);
        String tableName = getTableName(baseProEntity.type);
        int iUpdate = this.database.update(tableName, contentValues, scopedSelection(tableName, "projectUUid = ?"), new String[]{String.valueOf(baseProEntity.projectUUid)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "更新成功。" : "更新失败。");
        sb.append("——>type:");
        sb.append(baseProEntity.type);
        sb.append("，name:");
        sb.append(baseProEntity.name);
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    private void preserveEngineeringBindingIfMissing(BaseProEntity baseProEntity) {
        int i;
        if (baseProEntity == null || isProjectBound(baseProEntity) || TextUtils.isEmpty(baseProEntity.projectUUid) || (i = baseProEntity.type) <= 0) {
            return;
        }
        List<BaseProEntity> listQueryEntityByUUId = queryEntityByUUId(i, baseProEntity.projectUUid);
        if (listQueryEntityByUUId.isEmpty() || !isProjectBound(listQueryEntityByUUId.get(0))) {
            return;
        }
        BaseProEntity baseProEntity2 = listQueryEntityByUUId.get(0);
        baseProEntity.belongEngineeringId = baseProEntity2.belongEngineeringId;
        String str = baseProEntity2.engineeringUuid;
        if (str == null) {
            str = "";
        }
        baseProEntity.engineeringUuid = str;
        baseProEntity.engineeringLocalId = baseProEntity2.engineeringLocalId;
    }

    public boolean isEntityNameExists(String str, String str2) {
        boolean z = false;
        Cursor cursorRawQueryScoped = null;
        try {
            try {
                cursorRawQueryScoped = rawQueryScoped(str, "SELECT 1 FROM " + str + " WHERE name = ? LIMIT 1", new String[]{str2});
                if (cursorRawQueryScoped != null) {
                    if (cursorRawQueryScoped.moveToFirst()) {
                        z = true;
                    }
                }
                if (cursorRawQueryScoped != null) {
                    cursorRawQueryScoped.close();
                }
                return z;
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQueryScoped != null) {
                    cursorRawQueryScoped.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
            throw th;
        }
    }

    public boolean isEntityNameExistsInEngineering(String str, String str2) {
        StringBuilder sb = new StringBuilder("SELECT 1 FROM " + str + " WHERE name = ?");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        appendCurrentEngineeringScopeFilter(sb, arrayList);
        sb.append(" LIMIT 1");
        boolean z = false;
        Cursor cursorRawQueryScoped = null;
        try {
            try {
                cursorRawQueryScoped = rawQueryScoped(str, sb.toString(), (String[]) arrayList.toArray(new String[0]));
                if (cursorRawQueryScoped != null) {
                    if (cursorRawQueryScoped.moveToFirst()) {
                        z = true;
                    }
                }
                if (cursorRawQueryScoped != null) {
                    cursorRawQueryScoped.close();
                }
                return z;
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQueryScoped != null) {
                    cursorRawQueryScoped.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
            throw th;
        }
    }

    public boolean isEntityUUidExists(BaseProEntity baseProEntity) {
        if (baseProEntity != null && !TextUtils.isEmpty(baseProEntity.projectUUid)) {
            for (String str : this.dbHelper.getProjectTableList()) {
                Cursor cursorRawQueryScoped = null;
                try {
                    cursorRawQueryScoped = rawQueryScoped(str, "SELECT 1 FROM " + str + " WHERE projectUUid = ? LIMIT 1", new String[]{baseProEntity.projectUUid});
                    if (cursorRawQueryScoped != null && cursorRawQueryScoped.moveToFirst()) {
                        cursorRawQueryScoped.close();
                        return true;
                    }
                    if (cursorRawQueryScoped != null) {
                        cursorRawQueryScoped.close();
                    }
                } catch (Throwable th) {
                    if (cursorRawQueryScoped != null) {
                        cursorRawQueryScoped.close();
                    }
                    throw th;
                }
            }
        }
        return false;
    }

    public int cleanupDuplicateProjectsByUuid() {
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        int iCleanupDuplicateProjectsInTable = 0;
        while (it.hasNext()) {
            iCleanupDuplicateProjectsInTable += cleanupDuplicateProjectsInTable(it.next());
        }
        if (iCleanupDuplicateProjectsInTable > 0) {
            LogToFile.i("cleanupDuplicateProjectsByUuid deleted=" + iCleanupDuplicateProjectsInTable);
        }
        return iCleanupDuplicateProjectsInTable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"Range"})
    private int cleanupDuplicateProjectsInTable(String str) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        int iDelete = 0;
        if (TextUtils.isEmpty(str) || (sQLiteDatabase = this.database) == null || !sQLiteDatabase.isOpen()) {
            return 0;
        }
        ArrayList<Long> arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = this.database.rawQuery("SELECT id, projectUUid, createTime FROM " + str + " WHERE projectUUid IS NOT NULL AND projectUUid != '' AND belong_uid = " + currentBelongUid() + " ORDER BY projectUUid ASC, createTime ASC, id ASC", null);
                if (cursorRawQuery == null) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return 0;
                }
                while (cursorRawQuery.moveToNext()) {
                    try {
                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("projectUUid"));
                        long j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("id"));
                        if (!TextUtils.isEmpty(string)) {
                            if (string.equals(cursor)) {
                                arrayList.add(Long.valueOf(j));
                            } else {
                                cursor = string;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        cursor = cursorRawQuery;
                        LogToFile.e("cleanupDuplicateProjectsInTable " + str + ": " + e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return 0;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                cursorRawQuery.close();
                for (Long l : arrayList) {
                    if (l != null) {
                        iDelete += this.database.delete(str, "id = ?", new String[]{String.valueOf(l)});
                    }
                }
                return iDelete;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public boolean isShareCodeExists(String str) {
        Cursor cursorRawQueryScoped = null;
        try {
            cursorRawQueryScoped = rawQueryScoped("share", "SELECT 1 FROM share WHERE shareCode = ? LIMIT 1", new String[]{str});
            if (cursorRawQueryScoped != null) {
                if (cursorRawQueryScoped.moveToFirst()) {
                    cursorRawQueryScoped.close();
                    return true;
                }
            }
        } finally {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
        }
    }

    public boolean isCorsNameExist(String str, Long l) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strTrim = str.trim();
        Cursor cursorRawQueryScoped = null;
        try {
            cursorRawQueryScoped = rawQueryScoped("cors", l != null ? "SELECT 1 FROM cors WHERE TRIM(name) = ? AND id != ? LIMIT 1" : "SELECT 1 FROM cors WHERE TRIM(name) = ? LIMIT 1", l != null ? new String[]{strTrim, String.valueOf(l)} : new String[]{strTrim});
            if (cursorRawQueryScoped != null) {
                if (cursorRawQueryScoped.moveToFirst()) {
                    z = true;
                }
            }
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
            return z;
        } catch (Throwable th) {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
            throw th;
        }
    }

    public boolean isExcavatorNameExists(String str) {
        Cursor cursorRawQueryScoped = null;
        try {
            cursorRawQueryScoped = rawQueryScoped("excavator", "SELECT 1 FROM excavator WHERE name = ? LIMIT 1", new String[]{str});
            if (cursorRawQueryScoped != null) {
                if (cursorRawQueryScoped.moveToFirst()) {
                    cursorRawQueryScoped.close();
                    return true;
                }
            }
        } finally {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isEngineeringNameExists(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            java.lang.String r1 = "SELECT 1 FROM engineering WHERE name = ? LIMIT 1"
            java.lang.String r2 = "engineering"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L17
            android.database.Cursor r0 = r3.rawQueryScoped(r2, r1, r4)     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L19
            boolean r4 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L17
            if (r4 == 0) goto L19
            r4 = 1
            goto L1a
        L17:
            r4 = move-exception
            goto L20
        L19:
            r4 = 0
        L1a:
            if (r0 == 0) goto L1f
            r0.close()
        L1f:
            return r4
        L20:
            if (r0 == 0) goto L25
            r0.close()
        L25:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.DatabaseManager.isEngineeringNameExists(java.lang.String):boolean");
    }

    @SuppressLint({"Range"})
    public List<EngineeringEntity> queryAllEngineering() {
        Cursor cursorQueryScoped = queryScoped("engineering", null, null, null, null, null, "create_time DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList.add(mapCursorToEngineeringEntity(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList;
    }

    public List<EngineeringEntity> queryUnassignedEngineering() {
        Cursor cursorQueryLoginSync = queryLoginSync("engineering", null, null, null, null, null, "create_time DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryLoginSync != null && cursorQueryLoginSync.moveToFirst()) {
            do {
                arrayList.add(mapCursorToEngineeringEntity(cursorQueryLoginSync));
            } while (cursorQueryLoginSync.moveToNext());
            cursorQueryLoginSync.close();
        }
        return arrayList;
    }

    public List<BaseProEntity> queryUnassignedProjectsAcrossEngineerings() throws Throwable {
        Cursor cursorQueryLoginSync;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (String str : this.dbHelper.getProjectTableList()) {
            try {
                cursorQueryLoginSync = queryLoginSync(str, null, null, null, null, null, null);
                try {
                    ArrayList arrayList2 = new ArrayList();
                    listEntityCursor(cursorQueryLoginSync, str, arrayList2);
                    for (BaseProEntity baseProEntity : arrayList2) {
                        if (hashSet.add(str + "_" + baseProEntity.id)) {
                            arrayList.add(baseProEntity);
                        }
                    }
                    if (cursorQueryLoginSync != null) {
                        cursorQueryLoginSync.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorQueryLoginSync != null) {
                        cursorQueryLoginSync.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursorQueryLoginSync = null;
            }
        }
        return arrayList;
    }

    public List<ExcavatorEntity> queryUnassignedExcavators() {
        Cursor cursorQueryLoginSync = queryLoginSync("excavator", null, null, null, null, null, "createTime DESC, name DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryLoginSync != null && cursorQueryLoginSync.moveToFirst()) {
            do {
                arrayList.add(createExcavatorEntity(cursorQueryLoginSync));
            } while (cursorQueryLoginSync.moveToNext());
            cursorQueryLoginSync.close();
        }
        return arrayList;
    }

    public List<ShovelEntity> queryUnassignedShovels() {
        Cursor cursorQueryLoginSync = queryLoginSync("shovel", null, null, null, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryLoginSync != null && cursorQueryLoginSync.moveToFirst()) {
            do {
                arrayList.add(createShovelEntity(cursorQueryLoginSync));
            } while (cursorQueryLoginSync.moveToNext());
            cursorQueryLoginSync.close();
        }
        return arrayList;
    }

    public List<GnssTransParamEntity> queryUnassignedGnssTransParams() {
        Cursor cursorQueryLoginSync = queryLoginSync("gnss_trans_param", null, "state = 0", null, null, null, "create_time DESC");
        List<GnssTransParamEntity> gnssTransParamList = readGnssTransParamList(cursorQueryLoginSync);
        if (cursorQueryLoginSync != null) {
            cursorQueryLoginSync.close();
        }
        return gnssTransParamList;
    }

    public List<PointGroupEntity> queryUnassignedPointGroups() {
        Cursor cursorQueryLoginSync = queryLoginSync("pointGroup", null, null, null, null, null, "create_time DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryLoginSync != null && cursorQueryLoginSync.moveToFirst()) {
            do {
                arrayList.add(mapCursorToPointGroup(cursorQueryLoginSync));
            } while (cursorQueryLoginSync.moveToNext());
            cursorQueryLoginSync.close();
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public EngineeringEntity queryCurrentEngineering() {
        Cursor cursorQueryScoped = queryScoped("engineering", null, "current_usage = 1", null, null, null, "update_time DESC, id DESC", "1");
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            EngineeringEntity engineeringEntityMapCursorToEngineeringEntity = mapCursorToEngineeringEntity(cursorQueryScoped);
            cursorQueryScoped.close();
            return engineeringEntityMapCursorToEngineeringEntity;
        }
        if (cursorQueryScoped == null) {
            return null;
        }
        cursorQueryScoped.close();
        return null;
    }

    public void setCurrentEngineering(long j) {
        if (j <= 0) {
            return;
        }
        EngineeringEntity engineeringEntityQueryCurrentEngineering = queryCurrentEngineering();
        boolean z = engineeringEntityQueryCurrentEngineering != null && engineeringEntityQueryCurrentEngineering.id == j;
        ContentValues contentValues = new ContentValues();
        contentValues.put("current_usage", (Integer) 0);
        this.database.update("engineering", contentValues, scopedSelection("engineering", null), null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("current_usage", (Integer) 1);
        if (!z) {
            removeForeignSyncedPointGroups(j);
        }
        this.database.update("engineering", contentValues2, "id = ?", new String[]{String.valueOf(j)});
        GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
    }

    public void applyLatestCurrentEngineeringParams() {
        ensureCurrentEngineeringInUse();
        GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        GnssCoordConvertManager.getInstance().ensureCurrentEngineering();
    }

    public int updateEngineering(EngineeringEntity engineeringEntity) {
        return updateEngineeringInternal(engineeringEntity, System.currentTimeMillis() / 1000);
    }

    public int updateEngineeringFromServer(EngineeringEntity engineeringEntity) {
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId;
        EngineeringEntity.CustomEllipsoidParams customEllipsoidParams;
        if (engineeringEntity != null) {
            long j = engineeringEntity.id;
            if (j > 0 && (engineeringEntityQueryEngineeringByLocalId = queryEngineeringByLocalId(j)) != null) {
                engineeringEntity.name = SyncNameHelper.resolve(engineeringEntityQueryEngineeringByLocalId.name, engineeringEntity.name);
                if (engineeringEntity.customEllipsoidParams == null && (customEllipsoidParams = engineeringEntityQueryEngineeringByLocalId.customEllipsoidParams) != null) {
                    engineeringEntity.customEllipsoidParams = customEllipsoidParams;
                }
            }
        }
        long jCurrentTimeMillis = engineeringEntity.updateTime;
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        return updateEngineeringInternal(engineeringEntity, jCurrentTimeMillis);
    }

    private int updateEngineeringInternal(EngineeringEntity engineeringEntity, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("engineering_id", Long.valueOf(engineeringEntity.engineeringId));
        contentValues.put("engineering_uuid", engineeringEntity.engineeringUuid);
        long jCurrentTimeMillis = engineeringEntity.createTime;
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("create_time", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("update_time", Long.valueOf(j));
        contentValues.put("name", engineeringEntity.name);
        putEngineeringEllipsoidColumns(contentValues, engineeringEntity);
        contentValues.put("projection_type", Integer.valueOf(engineeringEntity.projectionType));
        EngineeringEntity.GaussKrugerParams gaussKrugerParams = engineeringEntity.gaussKrugerParams;
        contentValues.put("gauss_kruger_params", gaussKrugerParams != null ? this.gson.toJson(gaussKrugerParams) : null);
        EngineeringEntity.UTMParams uTMParams = engineeringEntity.utmParams;
        contentValues.put("utm_params", uTMParams != null ? this.gson.toJson(uTMParams) : null);
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams = engineeringEntity.transverseMercatorParams;
        contentValues.put("transverse_mercator_params", transverseMercatorParams != null ? this.gson.toJson(transverseMercatorParams) : null);
        contentValues.put("conversion_params_type", Integer.valueOf(engineeringEntity.conversionParamsType));
        contentValues.put("trans_param_id", Long.valueOf(engineeringEntity.transParamId));
        contentValues.put("trans_param_local_id", Long.valueOf(engineeringEntity.transParamLocalId));
        putEngineeringTransParamColumns(contentValues, engineeringEntity);
        contentValues.put("edit_state", Integer.valueOf(engineeringEntity.editState));
        contentValues.put("current_usage", Integer.valueOf(engineeringEntity.currentUsage));
        contentValues.put("version", Long.valueOf(engineeringEntity.version));
        putBelongUid(contentValues);
        int iUpdate = this.database.update("engineering", contentValues, "id = ?", new String[]{String.valueOf(engineeringEntity.id)});
        if (iUpdate > 0) {
            GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        }
        return iUpdate;
    }

    public void updateEngineeringCurrentUsageOnly(long j, int i) {
        if (j <= 0) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("current_usage", Integer.valueOf(i));
        if (this.database.update("engineering", contentValues, "id = ?", new String[]{String.valueOf(j)}) > 0) {
            GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        }
    }

    public void updateEngineeringServerIds(long j, long j2, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("engineering_id", Long.valueOf(j2));
        contentValues.put("engineering_uuid", str);
        contentValues.put("update_time", Long.valueOf(System.currentTimeMillis() / 1000));
        putBelongUid(contentValues);
        this.database.update("engineering", contentValues, "id = ?", new String[]{String.valueOf(j)});
    }

    public List<BaseProEntity> updateProjectsBelongEngineeringId(long j, long j2) throws Throwable {
        if (j <= 0 || j2 <= 0) {
            return new ArrayList();
        }
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId = queryEngineeringByLocalId(j);
        String str = (engineeringEntityQueryEngineeringByLocalId == null || TextUtils.isEmpty(engineeringEntityQueryEngineeringByLocalId.engineeringUuid)) ? "" : engineeringEntityQueryEngineeringByLocalId.engineeringUuid;
        List<BaseProEntity> listQueryProjectsWithUUidByEngineeringLocalId = queryProjectsWithUUidByEngineeringLocalId(j);
        for (String str2 : this.dbHelper.getProjectTableList()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("belong_engineering_id", Long.valueOf(j2));
            contentValues.put("engineering_uuid", str);
            this.database.update(str2, contentValues, "engineering_local_id = ?", new String[]{String.valueOf(j)});
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("belong_engineering_id", Long.valueOf(j2));
        contentValues2.put("engineering_uuid", str);
        this.database.update("pointGroup", contentValues2, "engineering_local_id = ?", new String[]{String.valueOf(j)});
        for (BaseProEntity baseProEntity : listQueryProjectsWithUUidByEngineeringLocalId) {
            baseProEntity.belongEngineeringId = j2;
            baseProEntity.engineeringUuid = str;
        }
        return listQueryProjectsWithUUidByEngineeringLocalId;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.qianhe.baselib.base.BaseProEntity queryProjectByLocalId(int r13, long r14) throws java.lang.Throwable {
        /*
            r12 = this;
            r0 = 0
            r2 = 0
            int r3 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r3 <= 0) goto L9
            if (r13 > 0) goto Lb
        L9:
            r4 = r12
            goto L56
        Lb:
            java.lang.String r5 = r12.getTableName(r13)
            boolean r13 = android.text.TextUtils.isEmpty(r5)
            if (r13 == 0) goto L16
            return r2
        L16:
            java.lang.String r7 = "id = ?"
            java.lang.String r13 = java.lang.String.valueOf(r14)     // Catch: java.lang.Throwable -> L4d
            java.lang.String[] r8 = new java.lang.String[]{r13}     // Catch: java.lang.Throwable -> L4d
            r10 = 0
            r11 = 0
            r6 = 0
            r9 = 0
            r4 = r12
            android.database.Cursor r13 = r4.queryScoped(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L4a
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L46
            r14.<init>()     // Catch: java.lang.Throwable -> L46
            r12.listEntityCursor(r13, r5, r14)     // Catch: java.lang.Throwable -> L46
            boolean r15 = r14.isEmpty()     // Catch: java.lang.Throwable -> L46
            if (r15 == 0) goto L38
            goto L40
        L38:
            r15 = 0
            java.lang.Object r14 = r14.get(r15)     // Catch: java.lang.Throwable -> L46
            r2 = r14
            com.qianhe.baselib.base.BaseProEntity r2 = (com.qianhe.baselib.base.BaseProEntity) r2     // Catch: java.lang.Throwable -> L46
        L40:
            if (r13 == 0) goto L45
            r13.close()
        L45:
            return r2
        L46:
            r0 = move-exception
            r14 = r0
            r2 = r13
            goto L50
        L4a:
            r0 = move-exception
        L4b:
            r14 = r0
            goto L50
        L4d:
            r0 = move-exception
            r4 = r12
            goto L4b
        L50:
            if (r2 == 0) goto L55
            r2.close()
        L55:
            throw r14
        L56:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.DatabaseManager.queryProjectByLocalId(int, long):com.qianhe.baselib.base.BaseProEntity");
    }

    public BaseProEntity refreshProjectForUpload(BaseProEntity baseProEntity) {
        int i;
        BaseProEntity baseProEntityQueryProjectByLocalId;
        if (baseProEntity != null) {
            long j = baseProEntity.id;
            if (j > 0 && (i = baseProEntity.type) > 0 && (baseProEntityQueryProjectByLocalId = queryProjectByLocalId(i, j)) != null) {
                baseProEntity.belongEngineeringId = baseProEntityQueryProjectByLocalId.belongEngineeringId;
                String str = baseProEntityQueryProjectByLocalId.engineeringUuid;
                if (str == null) {
                    str = "";
                }
                baseProEntity.engineeringUuid = str;
                baseProEntity.engineeringLocalId = baseProEntityQueryProjectByLocalId.engineeringLocalId;
                if (!TextUtils.isEmpty(baseProEntityQueryProjectByLocalId.name)) {
                    baseProEntity.name = baseProEntityQueryProjectByLocalId.name;
                }
                long j2 = baseProEntityQueryProjectByLocalId.createTime;
                if (j2 > 0) {
                    baseProEntity.createTime = j2;
                }
                if (!TextUtils.isEmpty(baseProEntityQueryProjectByLocalId.projectUUid)) {
                    baseProEntity.projectUUid = baseProEntityQueryProjectByLocalId.projectUUid;
                }
                long j3 = baseProEntityQueryProjectByLocalId.projectId;
                if (j3 > 0) {
                    baseProEntity.projectId = j3;
                }
                if (TextUtils.isEmpty(baseProEntity.projectUUid)) {
                    renameUnsyncedIfConflictsWithSynced(baseProEntity);
                }
            }
        }
        return baseProEntity;
    }

    private List<BaseProEntity> queryProjectsWithUUidByEngineeringLocalId(long j) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (j > 0) {
            for (String str : this.dbHelper.getProjectTableList()) {
                Cursor cursorQueryScoped = null;
                try {
                    try {
                        cursorQueryScoped = queryScoped(str, null, "engineering_local_id = ? AND projectUUid IS NOT NULL AND projectUUid != ''", new String[]{String.valueOf(j)}, null, null, null);
                        listEntityCursor(cursorQueryScoped, str, arrayList);
                        if (cursorQueryScoped != null) {
                            cursorQueryScoped.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        Throwable th2 = th;
                        if (cursorQueryScoped != null) {
                            cursorQueryScoped.close();
                            throw th2;
                        }
                        throw th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
        return arrayList;
    }

    public List<BaseProEntity> queryAllProjectsAcrossEngineerings() throws Throwable {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        while (it.hasNext()) {
            appendProjectsFromTable(it.next(), null, null, arrayList, hashSet);
        }
        return arrayList;
    }

    private void bindCurrentEngineering(BaseProEntity baseProEntity) {
        bindEngineeringIfNeeded(baseProEntity, queryCurrentEngineering());
    }

    public List<BaseProEntity> collectProjectsForEngineering(EngineeringEntity engineeringEntity) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (engineeringEntity != null) {
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            String strBuildEngineeringScopeClause = buildEngineeringScopeClause(engineeringEntity, arrayList2);
            if (strBuildEngineeringScopeClause != null) {
                String[] strArr = (String[]) arrayList2.toArray(new String[0]);
                Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
                while (it.hasNext()) {
                    appendProjectsFromTable(it.next(), strBuildEngineeringScopeClause, strArr, arrayList, hashSet);
                }
            }
        }
        return arrayList;
    }

    private void appendProjectsFromTable(String str, String str2, String[] strArr, List<BaseProEntity> list, Set<String> set) throws Throwable {
        Throwable th;
        Cursor cursorQueryScoped;
        try {
            cursorQueryScoped = queryScoped(str, null, str2, strArr, null, null, null);
            try {
                ArrayList arrayList = new ArrayList();
                listEntityCursor(cursorQueryScoped, str, arrayList);
                for (BaseProEntity baseProEntity : arrayList) {
                    if (set.add(str + "_" + baseProEntity.id)) {
                        list.add(baseProEntity);
                    }
                }
                if (cursorQueryScoped != null) {
                    cursorQueryScoped.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursorQueryScoped != null) {
                    cursorQueryScoped.close();
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQueryScoped = null;
        }
    }

    private void deleteBoundProjectsForEngineering(EngineeringEntity engineeringEntity) {
        ArrayList arrayList;
        String strBuildEngineeringScopeClause;
        if (engineeringEntity == null || (strBuildEngineeringScopeClause = buildEngineeringScopeClause(engineeringEntity, (arrayList = new ArrayList()))) == null) {
            return;
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        while (it.hasNext()) {
            this.database.delete(it.next(), strBuildEngineeringScopeClause, strArr);
        }
    }

    private void deletePointGroupsForEngineering(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null) {
            return;
        }
        Iterator<PointGroupEntity> it = queryPointGroupsForEngineering(engineeringEntity).iterator();
        while (it.hasNext()) {
            deletePointGroup(it.next());
        }
    }

    public List<PointGroupEntity> collectPointGroupsForEngineering(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null) {
            return new ArrayList();
        }
        return queryPointGroupsForEngineering(engineeringEntity);
    }

    private void deleteBoundTransParamForEngineering(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null || engineeringEntity.conversionParamsType <= 0) {
            return;
        }
        resolveGnssTransParamForEngineering(engineeringEntity);
        long j = engineeringEntity.transParamLocalId;
        if (j > 0) {
            deleteGnssTransParamByLocalId(j);
        }
    }

    public long deleteEngineeringById(long j) {
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId = queryEngineeringByLocalId(j);
        if (engineeringEntityQueryEngineeringByLocalId == null) {
            return -1L;
        }
        deleteBoundProjectsForEngineering(engineeringEntityQueryEngineeringByLocalId);
        deleteBoundTransParamForEngineering(engineeringEntityQueryEngineeringByLocalId);
        deletePointGroupsForEngineering(engineeringEntityQueryEngineeringByLocalId);
        return this.database.delete("engineering", "id = ?", new String[]{String.valueOf(j)});
    }

    public static EngineeringEntity findCurrentUsageEngineering(List<EngineeringEntity> list) {
        EngineeringEntity engineeringEntity = null;
        if (list != null && !list.isEmpty()) {
            long j = -1;
            for (EngineeringEntity engineeringEntity2 : list) {
                if (engineeringEntity2 != null && engineeringEntity2.currentUsage == 1 && engineeringEntity2.editState != 1) {
                    long jEffectiveCreateTime = effectiveCreateTime(engineeringEntity2.createTime);
                    if (engineeringEntity == null || jEffectiveCreateTime >= j) {
                        engineeringEntity = engineeringEntity2;
                        j = jEffectiveCreateTime;
                    }
                }
            }
        }
        return engineeringEntity;
    }

    public void reconcileCurrentUsage() {
        List<EngineeringEntity> listQueryAllEngineering = queryAllEngineering();
        if (listQueryAllEngineering.isEmpty()) {
            return;
        }
        EngineeringEntity engineeringEntity = null;
        long j = -1;
        int i = 0;
        for (EngineeringEntity engineeringEntity2 : listQueryAllEngineering) {
            if (engineeringEntity2.currentUsage == 1 && engineeringEntity2.editState != 1) {
                i++;
                long jEffectiveCreateTime = effectiveCreateTime(engineeringEntity2.createTime);
                if (engineeringEntity == null || jEffectiveCreateTime > j) {
                    engineeringEntity = engineeringEntity2;
                    j = jEffectiveCreateTime;
                }
            }
        }
        if (i == 0) {
            for (EngineeringEntity engineeringEntity3 : listQueryAllEngineering) {
                if (engineeringEntity3.editState != 1) {
                    setCurrentEngineering(engineeringEntity3.id);
                    return;
                }
            }
            setCurrentEngineering(listQueryAllEngineering.get(0).id);
            return;
        }
        if (i != 1) {
            if (engineeringEntity != null) {
                setCurrentEngineering(engineeringEntity.id);
            }
        } else {
            if (queryCurrentEngineering() != null || engineeringEntity == null) {
                return;
            }
            setCurrentEngineering(engineeringEntity.id);
        }
    }

    public EngineeringEntity findEngineeringByServerIdentity(String str, long j) {
        if (!TextUtils.isEmpty(str)) {
            for (EngineeringEntity engineeringEntity : queryAllEngineering()) {
                if (str.equals(engineeringEntity.engineeringUuid)) {
                    return engineeringEntity;
                }
            }
        }
        if (j <= 0) {
            return null;
        }
        for (EngineeringEntity engineeringEntity2 : queryAllEngineering()) {
            if (engineeringEntity2.engineeringId == j) {
                return engineeringEntity2;
            }
        }
        return null;
    }

    public static boolean isSameServerEngineering(EngineeringEntity engineeringEntity, String str, long j) {
        if (engineeringEntity == null) {
            return false;
        }
        if (TextUtils.isEmpty(str) || !str.equals(engineeringEntity.engineeringUuid)) {
            return j > 0 && engineeringEntity.engineeringId == j;
        }
        return true;
    }

    public boolean applyServerCurrentEngineering(String str, long j) {
        EngineeringEntity engineeringEntityFindEngineeringByServerIdentity = findEngineeringByServerIdentity(str, j);
        if (engineeringEntityFindEngineeringByServerIdentity == null) {
            return false;
        }
        setCurrentEngineering(engineeringEntityFindEngineeringByServerIdentity.id);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.qianhe.baselib.bean.EngineeringEntity finalizeEngineeringSyncAfterServerPull(int r5, java.lang.String r6, long r7, long r9, com.qianhe.baselib.bean.EngineeringEntity r11) throws android.content.res.Resources.NotFoundException {
        /*
            r4 = this;
            r4.createDefaultEngineeringIfAbsent(r5)
            r4.deduplicateDefaultEngineeringsAfterSync()
            r9 = 1
            r0 = 0
            r10 = 0
            if (r11 == 0) goto L1c
            long r2 = r11.id
            int r11 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r11 <= 0) goto L1c
            com.qianhe.baselib.bean.EngineeringEntity r11 = r4.queryEngineeringByLocalId(r2)
            if (r11 == 0) goto L1d
            int r2 = r11.editState
            if (r2 != r9) goto L1d
        L1c:
            r11 = r10
        L1d:
            if (r11 != 0) goto L2a
            com.qianhe.baselib.bean.EngineeringEntity r2 = r4.queryCurrentEngineering()
            if (r2 == 0) goto L2a
            int r3 = r2.editState
            if (r3 == r9) goto L2a
            r11 = r2
        L2a:
            com.qianhe.baselib.bean.EngineeringEntity r6 = r4.findEngineeringByServerIdentity(r6, r7)
            if (r11 == 0) goto L4b
            long r7 = r11.engineeringId
            int r9 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r9 > 0) goto L4b
            if (r6 != 0) goto L4b
            long r5 = r11.id
            r4.setCurrentEngineering(r5)
            r4.bindOrphanDataToDefaultEngineering()
            r4.ensureCurrentEngineeringInUse()
            r4.applyLatestCurrentEngineeringParams()
            com.qianhe.baselib.bean.EngineeringEntity r5 = r4.queryCurrentEngineering()
            return r5
        L4b:
            if (r6 == 0) goto L57
            boolean r7 = r4.isUserLoggedIn()
            if (r7 == 0) goto L57
            if (r5 <= 0) goto L57
        L55:
            r10 = r6
            goto L67
        L57:
            if (r11 == 0) goto L64
            if (r6 == 0) goto L64
            long r7 = r11.id
            long r9 = r6.id
            int r5 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r5 != 0) goto L55
            goto L66
        L64:
            if (r11 == 0) goto L67
        L66:
            r10 = r11
        L67:
            if (r10 == 0) goto L6f
            long r5 = r10.id
            r4.setCurrentEngineering(r5)
            goto L75
        L6f:
            r4.reconcileCurrentUsage()
            r4.ensureCurrentEngineeringInUse()
        L75:
            r4.bindOrphanDataToDefaultEngineering()
            r4.ensureCurrentEngineeringInUse()
            r4.applyLatestCurrentEngineeringParams()
            com.qianhe.baselib.bean.EngineeringEntity r5 = r4.queryCurrentEngineering()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.DatabaseManager.finalizeEngineeringSyncAfterServerPull(int, java.lang.String, long, long, com.qianhe.baselib.bean.EngineeringEntity):com.qianhe.baselib.bean.EngineeringEntity");
    }

    public void deduplicateDefaultEngineeringsAfterSync() throws Resources.NotFoundException {
        EngineeringEntity engineeringEntityPickDefaultEngineeringToKeep;
        List<EngineeringEntity> listQueryAutoCreatedDefaultEngineerings = queryAutoCreatedDefaultEngineerings();
        if (listQueryAutoCreatedDefaultEngineerings.size() > 1 && (engineeringEntityPickDefaultEngineeringToKeep = pickDefaultEngineeringToKeep(listQueryAutoCreatedDefaultEngineerings)) != null) {
            for (EngineeringEntity engineeringEntity : listQueryAutoCreatedDefaultEngineerings) {
                if (engineeringEntity != null && engineeringEntity.id != engineeringEntityPickDefaultEngineeringToKeep.id && engineeringEntity.engineeringId <= 0) {
                    rebindEngineeringData(engineeringEntity, engineeringEntityPickDefaultEngineeringToKeep);
                    deleteBoundTransParamForEngineering(engineeringEntity);
                    LogToFile.i("同步去重默认工程: 删除 localId=" + engineeringEntity.id + ", engineeringId=" + engineeringEntity.engineeringId + ", createTime=" + engineeringEntity.createTime + ", name=" + engineeringEntity.name + ", 保留 localId=" + engineeringEntityPickDefaultEngineeringToKeep.id + ", 结果=" + deleteEngineeringRecordOnly(engineeringEntity.id));
                }
            }
        }
    }

    private List<EngineeringEntity> queryAutoCreatedDefaultEngineerings() throws Resources.NotFoundException {
        ArrayList arrayList = new ArrayList();
        Set<String> setCollectDefaultEngineeringNames = collectDefaultEngineeringNames();
        for (EngineeringEntity engineeringEntity : queryAllEngineering()) {
            if (engineeringEntity != null && engineeringEntity.editState != 1 && setCollectDefaultEngineeringNames.contains(engineeringEntity.name)) {
                arrayList.add(engineeringEntity);
            }
        }
        return arrayList;
    }

    private Set<String> collectDefaultEngineeringNames() throws Resources.NotFoundException {
        HashSet hashSet = new HashSet();
        String string = LanguagePrefs.getString(this.context, R$string.Default);
        if (!TextUtils.isEmpty(string)) {
            hashSet.add(string);
        }
        String[] strArr = {"zh", "zh-TW", "en", "ja", "ko", "de", "fr", Proj4Keyword.es, "pt", "it", "ru", "nl", "tr", "vi", "hi", "ar", "fa"};
        for (int i = 0; i < 17; i++) {
            String str = strArr[i];
            try {
                Configuration configuration = new Configuration(this.context.getResources().getConfiguration());
                configuration.setLocale(Locale.forLanguageTag(str));
                String string2 = this.context.createConfigurationContext(configuration).getResources().getString(R$string.Default);
                if (!TextUtils.isEmpty(string2)) {
                    hashSet.add(string2);
                }
            } catch (Exception unused) {
            }
        }
        return hashSet;
    }

    private EngineeringEntity pickDefaultEngineeringToKeep(List<EngineeringEntity> list) {
        EngineeringEntity engineeringEntity = null;
        boolean z = false;
        for (EngineeringEntity engineeringEntity2 : list) {
            if (engineeringEntity2 != null) {
                boolean z2 = engineeringEntity2.engineeringId > 0;
                if (engineeringEntity == null) {
                    engineeringEntity = engineeringEntity2;
                    z = z2;
                } else if (z2 && !z) {
                    engineeringEntity = engineeringEntity2;
                    z = true;
                } else if (z2 == z && compareEngineeringCreateOrder(engineeringEntity2, engineeringEntity) < 0) {
                    engineeringEntity = engineeringEntity2;
                }
            }
        }
        return engineeringEntity;
    }

    private static int compareEngineeringCreateOrder(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2) {
        long jEffectiveCreateTime = effectiveCreateTime(engineeringEntity.createTime);
        long jEffectiveCreateTime2 = effectiveCreateTime(engineeringEntity2.createTime);
        if (jEffectiveCreateTime != jEffectiveCreateTime2) {
            return Long.compare(jEffectiveCreateTime, jEffectiveCreateTime2);
        }
        return Long.compare(engineeringEntity.id, engineeringEntity2.id);
    }

    private void rebindEngineeringData(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2) {
        if (engineeringEntity == null || engineeringEntity2 == null) {
            return;
        }
        long j = engineeringEntity.id;
        if (j <= 0 || j == engineeringEntity2.id) {
            return;
        }
        ContentValues contentValuesBuildEngineeringBindingValues = buildEngineeringBindingValues(engineeringEntity2);
        if (contentValuesBuildEngineeringBindingValues.size() == 0) {
            return;
        }
        String[] strArr = {String.valueOf(engineeringEntity.id)};
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        while (it.hasNext()) {
            this.database.update(it.next(), contentValuesBuildEngineeringBindingValues, "engineering_local_id = ?", strArr);
        }
        this.database.update("pointGroup", contentValuesBuildEngineeringBindingValues, "engineering_local_id = ?", strArr);
    }

    private void createContentValue(BaseProEntity baseProEntity, ContentValues contentValues) {
        BaseProEntity baseProEntity2;
        if (baseProEntity.type == ProjectEnum.ZHAOPING.getType()) {
            ZhaoPingEntity zhaoPingEntity = (ZhaoPingEntity) baseProEntity;
            contentValues.put("targetLon", Double.valueOf(zhaoPingEntity.targetLon));
            contentValues.put("targetLat", Double.valueOf(zhaoPingEntity.targetLat));
            contentValues.put("east", Double.valueOf(zhaoPingEntity.east));
            contentValues.put("north", Double.valueOf(zhaoPingEntity.north));
            contentValues.put("targetElevation", Double.valueOf(zhaoPingEntity.targetElevation));
            contentValues.put("depth", Double.valueOf(zhaoPingEntity.depth));
            contentValues.put("height", Double.valueOf(zhaoPingEntity.height));
            contentValues.put("quality", Integer.valueOf(zhaoPingEntity.quality));
            baseProEntity2 = baseProEntity;
        } else {
            if (baseProEntity.type == ProjectEnum.SHUAPO.getType()) {
                ShuaPoEntity shuaPoEntity = (ShuaPoEntity) baseProEntity;
                contentValues.put("targetLon1", Double.valueOf(shuaPoEntity.targetLon1));
                contentValues.put("targetLat1", Double.valueOf(shuaPoEntity.targetLat1));
                contentValues.put("east1", Double.valueOf(shuaPoEntity.east1));
                contentValues.put("north1", Double.valueOf(shuaPoEntity.north1));
                contentValues.put("targetElevation1", Double.valueOf(shuaPoEntity.targetElevation1));
                contentValues.put("quality1", Integer.valueOf(shuaPoEntity.quality1));
                contentValues.put("targetLon2", Double.valueOf(shuaPoEntity.targetLon2));
                contentValues.put("targetLat2", Double.valueOf(shuaPoEntity.targetLat2));
                contentValues.put("east2", Double.valueOf(shuaPoEntity.east2));
                contentValues.put("north2", Double.valueOf(shuaPoEntity.north2));
                contentValues.put("targetElevation2", Double.valueOf(shuaPoEntity.targetElevation2));
                contentValues.put("quality2", Integer.valueOf(shuaPoEntity.quality2));
                contentValues.put("targetLon3", Double.valueOf(shuaPoEntity.targetLon3));
                contentValues.put("targetLat3", Double.valueOf(shuaPoEntity.targetLat3));
                contentValues.put("east3", Double.valueOf(shuaPoEntity.east3));
                contentValues.put("north3", Double.valueOf(shuaPoEntity.north3));
                contentValues.put("targetElevation3", Double.valueOf(shuaPoEntity.targetElevation3));
                contentValues.put("quality3", Integer.valueOf(shuaPoEntity.quality3));
                contentValues.put("targetLonBenchmark", Double.valueOf(shuaPoEntity.targetLonBenchmark));
                contentValues.put("targetLatBenchmark", Double.valueOf(shuaPoEntity.targetLatBenchmark));
                contentValues.put("targetElevationBenchmark", Double.valueOf(shuaPoEntity.targetElevationBenchmark));
                contentValues.put("tickA", Integer.valueOf(shuaPoEntity.tickA));
                contentValues.put("tickB", Integer.valueOf(shuaPoEntity.tickB));
                contentValues.put("tickC", Integer.valueOf(shuaPoEntity.tickC));
                contentValues.put("ditchC", Double.valueOf(shuaPoEntity.ditchC));
                contentValues.put("width", Double.valueOf(shuaPoEntity.width));
                contentValues.put("heigth", Double.valueOf(shuaPoEntity.heigth));
                contentValues.put("flatDistance", Double.valueOf(shuaPoEntity.flatDistance));
                contentValues.put("ratio", Double.valueOf(shuaPoEntity.ratio));
            } else if (baseProEntity.type == ProjectEnum.WAGOU.getType()) {
                WaGouEntity waGouEntity = (WaGouEntity) baseProEntity;
                contentValues.put("targetLon1", Double.valueOf(waGouEntity.targetLon1));
                contentValues.put("targetLat1", Double.valueOf(waGouEntity.targetLat1));
                contentValues.put("east1", Double.valueOf(waGouEntity.east1));
                contentValues.put("north1", Double.valueOf(waGouEntity.north1));
                contentValues.put("targetElevation1", Double.valueOf(waGouEntity.targetElevation1));
                contentValues.put("quality1", Integer.valueOf(waGouEntity.quality1));
                contentValues.put("targetLon2", Double.valueOf(waGouEntity.targetLon2));
                contentValues.put("targetLat2", Double.valueOf(waGouEntity.targetLat2));
                contentValues.put("east2", Double.valueOf(waGouEntity.east2));
                contentValues.put("north2", Double.valueOf(waGouEntity.north2));
                contentValues.put("targetElevation2", Double.valueOf(waGouEntity.targetElevation2));
                contentValues.put("quality2", Integer.valueOf(waGouEntity.quality2));
                contentValues.put("targetLonH", Double.valueOf(waGouEntity.targetLonH));
                contentValues.put("targetLatH", Double.valueOf(waGouEntity.targetLatH));
                contentValues.put("eastH", Double.valueOf(waGouEntity.eastH));
                contentValues.put("northH", Double.valueOf(waGouEntity.northH));
                contentValues.put("targetElevationH", Double.valueOf(waGouEntity.targetElevationH));
                contentValues.put("qualityH", Integer.valueOf(waGouEntity.qualityH));
                contentValues.put("collectType", Integer.valueOf(waGouEntity.collectType));
                contentValues.put("targetLonBenchmark", Double.valueOf(waGouEntity.targetLonBenchmark));
                contentValues.put("targetLatBenchmark", Double.valueOf(waGouEntity.targetLatBenchmark));
                contentValues.put("targetElevationBenchmark", Double.valueOf(waGouEntity.targetElevationBenchmark));
                contentValues.put("depth", Double.valueOf(waGouEntity.depth));
                contentValues.put("width", Double.valueOf(waGouEntity.width));
                contentValues.put("ratio", Double.valueOf(waGouEntity.ratio));
                contentValues.put("tickA", Integer.valueOf(waGouEntity.tickA));
                contentValues.put("tickB", Integer.valueOf(waGouEntity.tickB));
                contentValues.put("length", Double.valueOf(waGouEntity.length));
                contentValues.put("depthA", Double.valueOf(waGouEntity.depthA));
                contentValues.put("depthB", Double.valueOf(waGouEntity.depthB));
                contentValues.put("leftSlopeRatio", Double.valueOf(waGouEntity.leftSlopeRatio));
                contentValues.put("rightSlopeRatio", Double.valueOf(waGouEntity.rightSlopeRatio));
                contentValues.put("leftBottomWidth", Double.valueOf(waGouEntity.leftBottomWidth));
                contentValues.put("rightBottomWidth", Double.valueOf(waGouEntity.rightBottomWidth));
                contentValues.put("advancedType", Integer.valueOf(waGouEntity.advancedType));
            } else if (baseProEntity.type == ProjectEnum.DIKE.getType()) {
                DikeEntity dikeEntity = (DikeEntity) baseProEntity;
                contentValues.put("targetLon1", Double.valueOf(dikeEntity.targetLon1));
                contentValues.put("targetLat1", Double.valueOf(dikeEntity.targetLat1));
                contentValues.put("east1", Double.valueOf(dikeEntity.east1));
                contentValues.put("north1", Double.valueOf(dikeEntity.north1));
                contentValues.put("targetElevation1", Double.valueOf(dikeEntity.targetElevation1));
                contentValues.put("targetLon2", Double.valueOf(dikeEntity.targetLon2));
                contentValues.put("targetLat2", Double.valueOf(dikeEntity.targetLat2));
                contentValues.put("east2", Double.valueOf(dikeEntity.east2));
                contentValues.put("north2", Double.valueOf(dikeEntity.north2));
                contentValues.put("targetElevation2", Double.valueOf(dikeEntity.targetElevation2));
                contentValues.put("width", Double.valueOf(dikeEntity.width));
                contentValues.put("tickA", Integer.valueOf(dikeEntity.tickA));
                contentValues.put("tickB", Integer.valueOf(dikeEntity.tickB));
                contentValues.put("length", Double.valueOf(dikeEntity.length));
                contentValues.put("depthA", Double.valueOf(dikeEntity.depthA));
                contentValues.put("depthB", Double.valueOf(dikeEntity.depthB));
            } else if (baseProEntity.type == ProjectEnum.LINE.getType()) {
                LineEntity lineEntity = (LineEntity) baseProEntity;
                contentValues.put("targetLon1", Double.valueOf(lineEntity.targetLon1));
                contentValues.put("targetLat1", Double.valueOf(lineEntity.targetLat1));
                contentValues.put("east1", Double.valueOf(lineEntity.east1));
                contentValues.put("north1", Double.valueOf(lineEntity.north1));
                contentValues.put("targetElevation1", Double.valueOf(lineEntity.targetElevation1));
                contentValues.put("targetLon2", Double.valueOf(lineEntity.targetLon2));
                contentValues.put("targetLat2", Double.valueOf(lineEntity.targetLat2));
                contentValues.put("east2", Double.valueOf(lineEntity.east2));
                contentValues.put("north2", Double.valueOf(lineEntity.north2));
                contentValues.put("targetElevation2", Double.valueOf(lineEntity.targetElevation2));
                contentValues.put("width", Double.valueOf(lineEntity.width));
                contentValues.put("ratio", Double.valueOf(lineEntity.ratio));
                contentValues.put("length", Double.valueOf(lineEntity.length));
                contentValues.put("depthA", Double.valueOf(lineEntity.depthA));
                contentValues.put("depthB", Double.valueOf(lineEntity.depthB));
                contentValues.put("spacing", Double.valueOf(lineEntity.spacing));
                contentValues.put("pileSpacing", Double.valueOf(lineEntity.pileSpacing));
                contentValues.put("rigthItems", Integer.valueOf(lineEntity.rigthItems));
                contentValues.put("leftItems", Integer.valueOf(lineEntity.leftItems));
            } else {
                baseProEntity2 = baseProEntity;
                if (baseProEntity2.type == ProjectEnum.POLY_LINE.getType()) {
                    PolyLineEntity polyLineEntity = (PolyLineEntity) baseProEntity2;
                    contentValues.put("width", Double.valueOf(polyLineEntity.width));
                    contentValues.put("ratio", Double.valueOf(polyLineEntity.ratio));
                    contentValues.put("heightDiff", Double.valueOf(polyLineEntity.heightDiff));
                    contentValues.put("width", Double.valueOf(polyLineEntity.width));
                    contentValues.put("depthA", Double.valueOf(polyLineEntity.depthA));
                    contentValues.put("depthB", Double.valueOf(polyLineEntity.depthB));
                    contentValues.put("ratio", Double.valueOf(polyLineEntity.ratio));
                    contentValues.put("coordsListJson", polyLineEntity.coordsListJson);
                } else if (baseProEntity2.type == ProjectEnum.ONEPOINTAREA.getType()) {
                    OnePointAreaEntity onePointAreaEntity = (OnePointAreaEntity) baseProEntity2;
                    contentValues.put("lon", Double.valueOf(onePointAreaEntity.lon));
                    contentValues.put("lat", Double.valueOf(onePointAreaEntity.lat));
                    contentValues.put("elev", Double.valueOf(onePointAreaEntity.elev));
                    contentValues.put("east", Double.valueOf(onePointAreaEntity.east));
                    contentValues.put("north", Double.valueOf(onePointAreaEntity.north));
                    contentValues.put("depth", Double.valueOf(onePointAreaEntity.depth));
                    contentValues.put("ratioN", Double.valueOf(onePointAreaEntity.ratioN));
                    contentValues.put("ratioE", Double.valueOf(onePointAreaEntity.ratioE));
                } else if (baseProEntity2.type == ProjectEnum.THREEPOINTAREA.getType()) {
                    ThreePointAreaEntity threePointAreaEntity = (ThreePointAreaEntity) baseProEntity2;
                    contentValues.put("lon1", Double.valueOf(threePointAreaEntity.lon1));
                    contentValues.put("lat1", Double.valueOf(threePointAreaEntity.lat1));
                    contentValues.put("elev1", Double.valueOf(threePointAreaEntity.elev1));
                    contentValues.put("east1", Double.valueOf(threePointAreaEntity.east1));
                    contentValues.put("north1", Double.valueOf(threePointAreaEntity.north1));
                    contentValues.put("lon2", Double.valueOf(threePointAreaEntity.lon2));
                    contentValues.put("lat2", Double.valueOf(threePointAreaEntity.lat2));
                    contentValues.put("elev2", Double.valueOf(threePointAreaEntity.elev2));
                    contentValues.put("east2", Double.valueOf(threePointAreaEntity.east2));
                    contentValues.put("north2", Double.valueOf(threePointAreaEntity.north2));
                    contentValues.put("lon3", Double.valueOf(threePointAreaEntity.lon3));
                    contentValues.put("lat3", Double.valueOf(threePointAreaEntity.lat3));
                    contentValues.put("elev3", Double.valueOf(threePointAreaEntity.elev3));
                    contentValues.put("east3", Double.valueOf(threePointAreaEntity.east3));
                    contentValues.put("north3", Double.valueOf(threePointAreaEntity.north3));
                    contentValues.put("depthA", Double.valueOf(threePointAreaEntity.depthA));
                    contentValues.put("depthB", Double.valueOf(threePointAreaEntity.depthB));
                    contentValues.put("depthC", Double.valueOf(threePointAreaEntity.depthC));
                } else if (baseProEntity2.type == ProjectEnum.SITELEVELING.getType()) {
                    SiteLevelingEntity siteLevelingEntity = (SiteLevelingEntity) baseProEntity2;
                    contentValues.put("coordsListJson", siteLevelingEntity.coordsListJson);
                    contentValues.put("ratio", Double.valueOf(siteLevelingEntity.ratio));
                    contentValues.put("compactionCoeff", Double.valueOf(siteLevelingEntity.compactionCoeff));
                } else if (baseProEntity2.type == ProjectEnum.ARBITRARYLINE.getType()) {
                    ArbitraryLineEntity arbitraryLineEntity = (ArbitraryLineEntity) baseProEntity2;
                    contentValues.put("lon", Double.valueOf(arbitraryLineEntity.lon));
                    contentValues.put("lat", Double.valueOf(arbitraryLineEntity.lat));
                    contentValues.put("elev", Double.valueOf(arbitraryLineEntity.elev));
                    contentValues.put("east", Double.valueOf(arbitraryLineEntity.east));
                    contentValues.put("north", Double.valueOf(arbitraryLineEntity.north));
                    contentValues.put("depth", Double.valueOf(arbitraryLineEntity.depth));
                    contentValues.put("ratio", Double.valueOf(arbitraryLineEntity.ratio));
                } else if (baseProEntity2.type == ProjectEnum.CURVEDSLOPE.getType()) {
                    CurvedSlopeEntity curvedSlopeEntity = (CurvedSlopeEntity) baseProEntity2;
                    contentValues.put("lon1", Double.valueOf(curvedSlopeEntity.lon1));
                    contentValues.put("lat1", Double.valueOf(curvedSlopeEntity.lat1));
                    contentValues.put("elev1", Double.valueOf(curvedSlopeEntity.elev1));
                    contentValues.put("east1", Double.valueOf(curvedSlopeEntity.east1));
                    contentValues.put("north1", Double.valueOf(curvedSlopeEntity.north1));
                    contentValues.put("depthA", Double.valueOf(curvedSlopeEntity.depthA));
                    contentValues.put("lon2", Double.valueOf(curvedSlopeEntity.lon2));
                    contentValues.put("lat2", Double.valueOf(curvedSlopeEntity.lat2));
                    contentValues.put("elev2", Double.valueOf(curvedSlopeEntity.elev2));
                    contentValues.put("east2", Double.valueOf(curvedSlopeEntity.east2));
                    contentValues.put("north2", Double.valueOf(curvedSlopeEntity.north2));
                    contentValues.put("depthB", Double.valueOf(curvedSlopeEntity.depthB));
                    contentValues.put("coordsListJson", curvedSlopeEntity.coordsListJson);
                } else if (baseProEntity2.type == ProjectEnum.MULTI_POINT_AREA.getType()) {
                    MultiPointAreaEntity multiPointAreaEntity = (MultiPointAreaEntity) baseProEntity2;
                    contentValues.put("shovelTipType", Integer.valueOf(multiPointAreaEntity.shovelTipType));
                    contentValues.put("coordsListJson", multiPointAreaEntity.coordsListJson);
                }
            }
            baseProEntity2 = baseProEntity;
        }
        contentValues.put("type", Integer.valueOf(baseProEntity2.type));
        contentValues.put("name", baseProEntity2.name);
        contentValues.put("cadPath", baseProEntity2.cadPath);
        contentValues.put("belong_engineering_id", Long.valueOf(baseProEntity2.belongEngineeringId));
        String str = baseProEntity2.engineeringUuid;
        if (str == null) {
            str = "";
        }
        contentValues.put("engineering_uuid", str);
        contentValues.put("engineering_local_id", Long.valueOf(baseProEntity2.engineeringLocalId));
        contentValues.put("projectUUid", baseProEntity2.projectUUid);
        contentValues.put("version", Long.valueOf(baseProEntity2.version));
        contentValues.put("projectId", Long.valueOf(baseProEntity2.projectId));
        contentValues.put("coordinateSystem", baseProEntity2.coordinateSystem);
        contentValues.put("corsName", baseProEntity2.corsName);
        contentValues.put("corsHost", baseProEntity2.corsHost);
        contentValues.put("corsPort", Integer.valueOf(baseProEntity2.corsPort));
        contentValues.put("corsUserName", baseProEntity2.corsUserName);
        contentValues.put("corsPassword", baseProEntity2.corsPassword);
        contentValues.put("corsMount", baseProEntity2.corsMount);
        contentValues.put("editState", Integer.valueOf(baseProEntity2.editState));
        contentValues.put("subType", Integer.valueOf(baseProEntity2.subType));
        contentValues.put("shovelTipType", Integer.valueOf(baseProEntity2.shovelTipType));
        contentValues.put("showUnit", Integer.valueOf(baseProEntity2.showUnit));
        contentValues.put("baseStationLon", Double.valueOf(baseProEntity2.baseStationLon));
        contentValues.put("baseStationLat", Double.valueOf(baseProEntity2.baseStationLat));
        contentValues.put("baseStationElev", Double.valueOf(baseProEntity2.baseStationElev));
    }

    public int updateCORS(CorsEntity corsEntity) {
        return updateCORS(corsEntity, true);
    }

    public int updateCORS(CorsEntity corsEntity, boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("createTime", Long.valueOf(System.currentTimeMillis() / 1000));
        }
        contentValues.put("ntripType", Integer.valueOf(corsEntity.ntripType));
        contentValues.put("name", corsEntity.corsName);
        contentValues.put("host", corsEntity.host);
        contentValues.put("port", Integer.valueOf(corsEntity.port));
        contentValues.put("userName", corsEntity.userName);
        contentValues.put("password", corsEntity.password);
        contentValues.put("mount", corsEntity.mount);
        return this.database.update("cors", contentValues, "id = ?", new String[]{String.valueOf(corsEntity.id)});
    }

    public int updatePoint(PointlibEntity pointlibEntity) {
        PointLibCoordUtils.normalizeGeodetic(pointlibEntity);
        ContentValues contentValues = new ContentValues();
        contentValues.put("pointType", Integer.valueOf(pointlibEntity.pointType));
        long jCurrentTimeMillis = pointlibEntity.createTime;
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("createTime", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("name", pointlibEntity.name);
        contentValues.put("systemType", pointlibEntity.systemType);
        contentValues.put("lon", Double.valueOf(pointlibEntity.lon));
        contentValues.put("lat", Double.valueOf(pointlibEntity.lat));
        contentValues.put("alt", Double.valueOf(pointlibEntity.alt));
        contentValues.put("elev", Double.valueOf(pointlibEntity.elev));
        contentValues.put("east", Double.valueOf(pointlibEntity.east));
        contentValues.put("north", Double.valueOf(pointlibEntity.north));
        contentValues.put("quality", Integer.valueOf(pointlibEntity.quality));
        contentValues.put("encod", Integer.valueOf(pointlibEntity.encod));
        contentValues.put("group_id", Long.valueOf(pointlibEntity.groupId));
        contentValues.put("group_local_id", Long.valueOf(pointlibEntity.groupLocalId));
        contentValues.put("point_id", Long.valueOf(pointlibEntity.pointId));
        contentValues.put("geodeticLon", Double.valueOf(pointlibEntity.geodeticLon));
        contentValues.put("geodeticLat", Double.valueOf(pointlibEntity.geodeticLat));
        contentValues.put("geodeticElev", Double.valueOf(pointlibEntity.geodeticElev));
        contentValues.put("hdop", Double.valueOf(pointlibEntity.hdop));
        contentValues.put("vdop", Double.valueOf(pointlibEntity.vdop));
        int iUpdate = this.database.update("pointLib", contentValues, "id = ?", new String[]{String.valueOf(pointlibEntity.id)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "更新成功。" : "更新失败。");
        sb.append("——>name:");
        sb.append(pointlibEntity.name);
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    public int updateShare(ShareEntity shareEntity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("createTime", Long.valueOf(shareEntity.createTime));
        contentValues.put("updateTime", Long.valueOf(shareEntity.updateTime));
        contentValues.put("expireTime", Long.valueOf(shareEntity.expireTime));
        contentValues.put("shareId", Long.valueOf(shareEntity.shareId));
        contentValues.put("shareCode", shareEntity.shareCode);
        contentValues.put("editState", Integer.valueOf(shareEntity.editState));
        contentValues.put("name", shareEntity.name);
        contentValues.put("projectUUids", shareEntity.projectUUids);
        contentValues.put("shareUUid", shareEntity.shareUUid);
        int iUpdate = this.database.update("share", contentValues, scopedSelection("share", "shareId = ?"), new String[]{String.valueOf(shareEntity.shareId)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "更新成功。" : "更新失败。");
        sb.append("——>name:");
        sb.append(shareEntity.name);
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    public int updateExcavatorById(ExcavatorEntity excavatorEntity) {
        int iUpdate = this.database.update("excavator", getContentExcavetorValues(excavatorEntity), "localId = ?", new String[]{String.valueOf(excavatorEntity.localId)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "更新成功。" : "更新失败。");
        sb.append("——>name:");
        sb.append(excavatorEntity.name);
        sb.append("，line:");
        sb.append(iUpdate);
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    private ContentValues getContentExcavetorValues(ExcavatorEntity excavatorEntity) {
        excavatorEntity.syncParamsToJson();
        excavatorEntity.syncExcavatorParamsToJson();
        ContentValues contentValues = new ContentValues();
        if (excavatorEntity.userId == 0) {
            excavatorEntity.userId = currentBelongUid();
        }
        contentValues.put("userId", Long.valueOf(excavatorEntity.userId));
        putBelongUid(contentValues);
        long jCurrentTimeMillis = excavatorEntity.createTime;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("createTime", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("updateTime", Long.valueOf(excavatorEntity.updateTime));
        contentValues.put("calibrateId", Long.valueOf(excavatorEntity.calibrateId));
        contentValues.put("calibrateUUid", excavatorEntity.calibrateUUid);
        contentValues.put("name", excavatorEntity.name);
        contentValues.put("calibParamsId", excavatorEntity.calibParamsId);
        contentValues.put("calibParams", excavatorEntity.calibParams);
        contentValues.put("leftDist", Double.valueOf(Math.round(excavatorEntity.leftDist * 1000.0d) / 1000.0d));
        contentValues.put("rigthDist", Double.valueOf(Math.round(excavatorEntity.rigthDist * 1000.0d) / 1000.0d));
        contentValues.put("spanDist", Double.valueOf(Math.round(excavatorEntity.spanDist * 1000.0d) / 1000.0d));
        contentValues.put("deviceHeight", Double.valueOf(Math.round(excavatorEntity.deviceHeight * 1000.0d) / 1000.0d));
        contentValues.put("mode", Integer.valueOf(excavatorEntity.mode));
        contentValues.put("excavatorParams", excavatorEntity.excavatorParams);
        contentValues.put("HA", Double.valueOf(round3(excavatorEntity.HA)));
        contentValues.put("pq", Double.valueOf(round3(excavatorEntity.pq)));
        contentValues.put("Ay", Double.valueOf(round3(excavatorEntity.Ay)));
        contentValues.put("Ax", Double.valueOf(round3(excavatorEntity.Ax)));
        contentValues.put("Dx", Double.valueOf(round3(excavatorEntity.Dx)));
        contentValues.put("AD", Double.valueOf(round3(excavatorEntity.AD)));
        contentValues.put("BD", Double.valueOf(round3(excavatorEntity.BD)));
        contentValues.put("CD", Double.valueOf(round3(excavatorEntity.CD)));
        contentValues.put("BC", Double.valueOf(round3(excavatorEntity.BC)));
        contentValues.put("G1", Double.valueOf(round3(excavatorEntity.getG1())));
        contentValues.put("G2", Double.valueOf(round3(excavatorEntity.getG2())));
        contentValues.put("G3", Double.valueOf(round3(excavatorEntity.getG3())));
        contentValues.put("Ly", Double.valueOf(round3(excavatorEntity.getLy())));
        contentValues.put("Ry", Double.valueOf(round3(excavatorEntity.getRy())));
        contentValues.put("AB", Double.valueOf(round3(excavatorEntity.getAB())));
        contentValues.put("NT", Double.valueOf(round3(excavatorEntity.getNT())));
        contentValues.put("AT", Double.valueOf(round3(excavatorEntity.getAT())));
        contentValues.put("NA", Double.valueOf(round3(excavatorEntity.getNA())));
        contentValues.put("LR", Double.valueOf(round3(excavatorEntity.getLR())));
        contentValues.put("showUnit", Integer.valueOf(excavatorEntity.showUnit));
        contentValues.put("version", Long.valueOf(excavatorEntity.version));
        contentValues.put("measureParams", excavatorEntity.measureParams);
        contentValues.put("autoGenerateParams", excavatorEntity.autoGenerateParams);
        excavatorEntity.syncCalibSoInputsToJson();
        contentValues.put("calibSoInputs", excavatorEntity.calibSoInputs);
        return contentValues;
    }

    public long deleteById(BaseProEntity baseProEntity) {
        String tableName = getTableName(baseProEntity.type);
        long jDelete = this.database.delete(tableName, "id = ?", new String[]{String.valueOf(baseProEntity.id)});
        if (!TextUtils.isEmpty(tableName)) {
            StringBuilder sb = new StringBuilder();
            sb.append(jDelete > 0 ? "删除成功。" : "删除失败。");
            sb.append("——>table:");
            sb.append(tableName);
            sb.append("，id:");
            sb.append(baseProEntity.id);
            LogToFile.i(sb.toString());
        }
        return jDelete;
    }

    public String getTableName(int i) {
        if (i == ProjectEnum.ZHAOPING.getType()) {
            return "zhaoping";
        }
        if (i == ProjectEnum.SHUAPO.getType()) {
            return "shuapo";
        }
        if (i == ProjectEnum.WAGOU.getType()) {
            return "wagou";
        }
        if (i == ProjectEnum.DIKE.getType()) {
            return "dike";
        }
        if (i == ProjectEnum.LINE.getType()) {
            return "line";
        }
        if (i == ProjectEnum.POLY_LINE.getType()) {
            return "polyline";
        }
        if (i == ProjectEnum.ONEPOINTAREA.getType()) {
            return "onePointArea";
        }
        if (i == ProjectEnum.THREEPOINTAREA.getType()) {
            return "threePointArea";
        }
        if (i == ProjectEnum.SITELEVELING.getType()) {
            return "siteleveling";
        }
        if (i == ProjectEnum.ARBITRARYLINE.getType()) {
            return "arbitraryline";
        }
        if (i == ProjectEnum.CURVEDSLOPE.getType()) {
            return "curvedSlope";
        }
        if (i == ProjectEnum.MULTI_POINT_AREA.getType()) {
            return "multiPointArea";
        }
        return "";
    }

    public long deleteCORS(CorsEntity corsEntity) {
        long jDelete = this.database.delete("cors", "id = ?", new String[]{String.valueOf(corsEntity.id)});
        StringBuilder sb = new StringBuilder();
        sb.append(jDelete > 0 ? "删除成功。" : "删除失败。");
        sb.append("——>name:");
        sb.append(corsEntity.corsName);
        LogToFile.i(sb.toString());
        return jDelete;
    }

    public long deletePoint(PointlibEntity pointlibEntity) {
        long j = pointlibEntity.groupLocalId;
        long jDelete = this.database.delete("pointLib", "id = ?", new String[]{String.valueOf(pointlibEntity.id)});
        if (jDelete > 0 && j > 0) {
            removePointFromGroupLocalIds(j, pointlibEntity.id);
        }
        return jDelete;
    }

    public long deleteShare(ShareEntity shareEntity) {
        return this.database.delete("share", scopedSelection("share", "shareId = ?"), new String[]{String.valueOf(shareEntity.shareId)});
    }

    public void deleteForeignSharedProjectsAndEngineering(ShareEntity shareEntity) {
        if (shareEntity == null || TextUtils.isEmpty(shareEntity.projectUUids)) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : shareEntity.projectUUids.split(",")) {
            if (!TextUtils.isEmpty(str)) {
                for (ProjectEnum projectEnum : ProjectEnum.values()) {
                    for (BaseProEntity baseProEntity : queryEntityByUUId(projectEnum.getType(), str.trim())) {
                        if (baseProEntity != null && baseProEntity.editState == 1) {
                            if (!TextUtils.isEmpty(baseProEntity.engineeringUuid)) {
                                linkedHashSet.add(baseProEntity.engineeringUuid);
                            }
                            deleteById(baseProEntity);
                        }
                    }
                }
            }
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            deleteSharedEngineeringIfOrphaned((String) it.next());
        }
    }

    private void deleteSharedEngineeringIfOrphaned(String str) {
        EngineeringEntity engineeringEntityFindEngineeringByServerIdentity;
        if (TextUtils.isEmpty(str) || (engineeringEntityFindEngineeringByServerIdentity = findEngineeringByServerIdentity(str, 0L)) == null || engineeringEntityFindEngineeringByServerIdentity.editState != 1 || isEngineeringReferencedByAnyProject(str)) {
            return;
        }
        deleteEngineeringRecordOnly(engineeringEntityFindEngineeringByServerIdentity.id);
        LogToFile.i("已删除分享专用工程 uuid=" + str + ", localId=" + engineeringEntityFindEngineeringByServerIdentity.id);
    }

    private boolean isEngineeringReferencedByAnyProject(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<String> it = this.dbHelper.getProjectTableList().iterator();
        while (it.hasNext()) {
            Cursor cursorQueryScoped = null;
            try {
                cursorQueryScoped = queryScoped(it.next(), new String[]{"id"}, "engineering_uuid = ?", new String[]{str}, null, null, null, "1");
                if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
                    cursorQueryScoped.close();
                    return true;
                }
                if (cursorQueryScoped != null) {
                    cursorQueryScoped.close();
                }
            } finally {
            }
        }
        return false;
    }

    public long deleteExcavatorById(ExcavatorEntity excavatorEntity) {
        return this.database.delete("excavator", "localId = ?", new String[]{String.valueOf(excavatorEntity.localId)});
    }

    public long insertDeviceInfo(DeviceInfo deviceInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("createTime", Long.valueOf(System.currentTimeMillis() / 1000));
        contentValues.put("updateTime", (Integer) 0);
        contentValues.put("sn", deviceInfo.sn);
        contentValues.put("type", deviceInfo.type);
        contentValues.put("pnVersion", deviceInfo.pnVersion);
        contentValues.put("fmwVersion", deviceInfo.fmwVersion);
        contentValues.put("gnssVersion", deviceInfo.gnssVersion);
        return this.database.insert("deviceInfo", null, contentValues);
    }

    public int updateDeviceInfo(DeviceInfo deviceInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("updateTime", Long.valueOf(deviceInfo.updateTime));
        contentValues.put("sn", deviceInfo.sn);
        contentValues.put("type", deviceInfo.type);
        contentValues.put("pnVersion", deviceInfo.pnVersion);
        contentValues.put("fmwVersion", deviceInfo.fmwVersion);
        contentValues.put("gnssVersion", deviceInfo.gnssVersion);
        int iUpdate = this.database.update("deviceInfo", contentValues, "sn = ?", new String[]{String.valueOf(deviceInfo.sn)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "更新成功。" : "更新失败。");
        sb.append("——>name:");
        sb.append(deviceInfo.sn);
        sb.append("，line:");
        sb.append(iUpdate);
        LogToFile.i(sb.toString());
        return iUpdate;
    }

    @SuppressLint({"Range"})
    public DeviceInfo queryDeviceInfo(String str) {
        Cursor cursorQueryScoped = queryScoped("deviceInfo", null, "sn = ?", new String[]{String.valueOf(str)}, null, null, "createTime DESC");
        ArrayList arrayList = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                DeviceInfo deviceInfo = new DeviceInfo();
                deviceInfo.sn = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("sn"));
                deviceInfo.type = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("type"));
                deviceInfo.pnVersion = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("pnVersion"));
                deviceInfo.fmwVersion = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("fmwVersion"));
                deviceInfo.gnssVersion = cursorQueryScoped.getString(cursorQueryScoped.getColumnIndex("gnssVersion"));
                arrayList.add(deviceInfo);
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (DeviceInfo) arrayList.get(0);
    }

    public boolean isDeviceSnExists(String str) {
        Cursor cursorRawQueryScoped = null;
        try {
            cursorRawQueryScoped = rawQueryScoped("deviceInfo", "SELECT 1 FROM deviceInfo WHERE sn = ? LIMIT 1", new String[]{str});
            if (cursorRawQueryScoped != null) {
                if (cursorRawQueryScoped.moveToFirst()) {
                    cursorRawQueryScoped.close();
                    return true;
                }
            }
        } finally {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
        }
    }

    public long insertGnssTransParam(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity.createTime == 0) {
            gnssTransParamEntity.createTime = System.currentTimeMillis() / 1000;
        }
        if (gnssTransParamEntity.updateTime == 0) {
            gnssTransParamEntity.updateTime = gnssTransParamEntity.createTime;
        }
        gnssTransParamEntity.setControlPointList(gnssTransParamEntity.getControlPointList());
        gnssTransParamEntity.normalizeParamsDetailScaleToK();
        long jInsert = this.database.insert("gnss_trans_param", null, buildGnssTransParamContentValues(gnssTransParamEntity));
        if (jInsert > 0) {
            gnssTransParamEntity.localId = jInsert;
            LogToFile.i("GNSS转换参数插入成功：" + gnssTransParamEntity.name);
            return jInsert;
        }
        LogToFile.i("GNSS转换参数插入失败：" + gnssTransParamEntity.name);
        return jInsert;
    }

    public int updateGnssTransParam(GnssTransParamEntity gnssTransParamEntity) {
        gnssTransParamEntity.updateTime = System.currentTimeMillis() / 1000;
        gnssTransParamEntity.setControlPointList(gnssTransParamEntity.getControlPointList());
        gnssTransParamEntity.normalizeParamsDetailScaleToK();
        int iUpdate = this.database.update("gnss_trans_param", buildGnssTransParamContentValues(gnssTransParamEntity), "localId = ?", new String[]{String.valueOf(gnssTransParamEntity.localId)});
        StringBuilder sb = new StringBuilder();
        sb.append(iUpdate > 0 ? "GNSS转换参数更新成功。" : "GNSS转换参数更新失败。");
        sb.append(gnssTransParamEntity.name);
        LogToFile.i(sb.toString());
        if (iUpdate > 0) {
            GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        }
        return iUpdate;
    }

    public void updateGnssTransParamServerIds(long j, long j2, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("trans_param_id", Long.valueOf(j2));
        contentValues.put("trans_param_uuid", str);
        contentValues.put("update_time", Long.valueOf(System.currentTimeMillis() / 1000));
        putBelongUid(contentValues);
        this.database.update("gnss_trans_param", contentValues, "localId = ?", new String[]{String.valueOf(j)});
    }

    @SuppressLint({"Range"})
    public EngineeringEntity queryEngineeringReferencingTransParam(long j, long j2) throws Throwable {
        Cursor cursorQueryScoped;
        Cursor cursor = null;
        if (j <= 0 && j2 <= 0) {
            return null;
        }
        if (j > 0) {
            try {
                cursorQueryScoped = queryScoped("engineering", null, "trans_param_local_id = ?", new String[]{String.valueOf(j)}, null, null, null, "1");
                if (cursorQueryScoped != null) {
                    try {
                        if (cursorQueryScoped.moveToFirst()) {
                            EngineeringEntity engineeringEntityMapCursorToEngineeringEntity = mapCursorToEngineeringEntity(cursorQueryScoped);
                            cursorQueryScoped.close();
                            return engineeringEntityMapCursorToEngineeringEntity;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQueryScoped;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursorQueryScoped != null) {
                    cursorQueryScoped.close();
                    cursorQueryScoped = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            cursorQueryScoped = null;
        }
        if (j2 <= 0 || (cursorQueryScoped = queryScoped("engineering", null, "trans_param_id = ?", new String[]{String.valueOf(j2)}, null, null, null, "1")) == null || !cursorQueryScoped.moveToFirst()) {
            if (cursorQueryScoped != null) {
                cursorQueryScoped.close();
            }
            return null;
        }
        EngineeringEntity engineeringEntityMapCursorToEngineeringEntity2 = mapCursorToEngineeringEntity(cursorQueryScoped);
        cursorQueryScoped.close();
        return engineeringEntityMapCursorToEngineeringEntity2;
    }

    public int softDeleteGnssTransParamByLocalId(long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", (Integer) 1);
        contentValues.put("update_time", Long.valueOf(System.currentTimeMillis() / 1000));
        return this.database.update("gnss_trans_param", contentValues, "localId = ?", new String[]{String.valueOf(j)});
    }

    public long deleteGnssTransParamByLocalId(long j) {
        return this.database.delete("gnss_trans_param", "localId = ?", new String[]{String.valueOf(j)});
    }

    public boolean isGnssTransParamNameExists(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursorRawQueryScoped = null;
        try {
            cursorRawQueryScoped = rawQueryScoped("gnss_trans_param", "SELECT 1 FROM gnss_trans_param WHERE name = ? AND state = 0 LIMIT 1", new String[]{str});
            if (cursorRawQueryScoped != null) {
                if (cursorRawQueryScoped.moveToFirst()) {
                    z = true;
                }
            }
            return z;
        } finally {
            if (cursorRawQueryScoped != null) {
                cursorRawQueryScoped.close();
            }
        }
    }

    @SuppressLint({"Range"})
    public GnssTransParamEntity queryGnssTransParamByLocalId(long j) {
        if (j <= 0) {
            return null;
        }
        Cursor cursorQueryScoped = queryScoped("gnss_trans_param", null, "localId = ?", new String[]{String.valueOf(j)}, null, null, null, "1");
        GnssTransParamEntity singleGnssTransParam = readSingleGnssTransParam(cursorQueryScoped);
        if (cursorQueryScoped != null) {
            cursorQueryScoped.close();
        }
        return singleGnssTransParam;
    }

    @SuppressLint({"Range"})
    public GnssTransParamEntity queryGnssTransParamByTransParamId(long j) {
        if (j <= 0) {
            return null;
        }
        Cursor cursorQueryScoped = queryScoped("gnss_trans_param", null, "trans_param_id = ?", new String[]{String.valueOf(j)}, null, null, null, "1");
        GnssTransParamEntity singleGnssTransParam = readSingleGnssTransParam(cursorQueryScoped);
        if (cursorQueryScoped != null) {
            cursorQueryScoped.close();
        }
        return singleGnssTransParam;
    }

    public GnssTransParamEntity queryGnssTransParamByName(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Cursor cursorQueryScoped = queryScoped("gnss_trans_param", null, "name = ? AND state = 0", new String[]{str}, null, null, null, "1");
        GnssTransParamEntity singleGnssTransParam = readSingleGnssTransParam(cursorQueryScoped);
        if (cursorQueryScoped != null) {
            cursorQueryScoped.close();
        }
        return singleGnssTransParam;
    }

    public List<GnssTransParamEntity> queryAllGnssTransParams() {
        return queryGnssTransParams(null, null, null, null, false);
    }

    public List<GnssTransParamEntity> queryGnssTransParams(Long l, String str, String str2, Integer num, boolean z) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        if (!z) {
            sb.append("state = 0");
        }
        if (l != null && l.longValue() > 0) {
            appendAnd(sb);
            sb.append("trans_param_id = ?");
            arrayList.add(String.valueOf(l));
        }
        if (!TextUtils.isEmpty(str)) {
            appendAnd(sb);
            sb.append("trans_param_uuid = ?");
            arrayList.add(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            appendAnd(sb);
            sb.append("LOWER(name) LIKE ?");
            arrayList.add("%" + str2.toLowerCase() + "%");
        }
        if (num != null && num.intValue() > 0) {
            appendAnd(sb);
            sb.append("param_type = ?");
            arrayList.add(String.valueOf(num));
        }
        Cursor cursorQueryScoped = queryScoped("gnss_trans_param", null, sb.length() > 0 ? sb.toString() : null, arrayList.isEmpty() ? null : (String[]) arrayList.toArray(new String[0]), null, null, "create_time DESC");
        List<GnssTransParamEntity> gnssTransParamList = readGnssTransParamList(cursorQueryScoped);
        if (cursorQueryScoped != null) {
            cursorQueryScoped.close();
        }
        return gnssTransParamList;
    }

    private void appendAnd(StringBuilder sb) {
        if (sb.length() > 0) {
            sb.append(" AND ");
        }
    }

    private ContentValues buildGnssTransParamContentValues(GnssTransParamEntity gnssTransParamEntity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("trans_param_id", Long.valueOf(gnssTransParamEntity.transParamId));
        contentValues.put("trans_param_uuid", gnssTransParamEntity.transParamUuid);
        contentValues.put("create_time", Long.valueOf(gnssTransParamEntity.createTime));
        contentValues.put("update_time", Long.valueOf(gnssTransParamEntity.updateTime));
        contentValues.put("version", Long.valueOf(gnssTransParamEntity.version));
        if (gnssTransParamEntity.belongUid == 0) {
            gnssTransParamEntity.belongUid = currentBelongUid();
        }
        contentValues.put("belong_uid", Long.valueOf(gnssTransParamEntity.belongUid));
        contentValues.put("state", Integer.valueOf(gnssTransParamEntity.state));
        contentValues.put("name", gnssTransParamEntity.name);
        contentValues.put("param_type", Integer.valueOf(gnssTransParamEntity.paramType));
        String str = gnssTransParamEntity.paramsDetail;
        if (str == null) {
            contentValues.putNull("params_detail");
        } else {
            contentValues.put("params_detail", str);
        }
        String str2 = gnssTransParamEntity.controlPointsJson;
        if (str2 == null) {
            contentValues.putNull("control_points");
            return contentValues;
        }
        contentValues.put("control_points", str2);
        return contentValues;
    }

    @SuppressLint({"Range"})
    private GnssTransParamEntity mapCursorToGnssTransParamEntity(Cursor cursor) {
        GnssTransParamEntity gnssTransParamEntity = new GnssTransParamEntity();
        gnssTransParamEntity.localId = cursor.getLong(cursor.getColumnIndex("localId"));
        gnssTransParamEntity.transParamId = cursor.getLong(cursor.getColumnIndex("trans_param_id"));
        gnssTransParamEntity.transParamUuid = cursor.getString(cursor.getColumnIndex("trans_param_uuid"));
        gnssTransParamEntity.createTime = cursor.getLong(cursor.getColumnIndex("create_time"));
        gnssTransParamEntity.updateTime = cursor.getLong(cursor.getColumnIndex("update_time"));
        gnssTransParamEntity.version = cursor.getLong(cursor.getColumnIndex("version"));
        gnssTransParamEntity.belongUid = cursor.getLong(cursor.getColumnIndex("belong_uid"));
        gnssTransParamEntity.state = cursor.getInt(cursor.getColumnIndex("state"));
        gnssTransParamEntity.name = cursor.getString(cursor.getColumnIndex("name"));
        gnssTransParamEntity.paramType = cursor.getInt(cursor.getColumnIndex("param_type"));
        gnssTransParamEntity.paramsDetail = cursor.getString(cursor.getColumnIndex("params_detail"));
        gnssTransParamEntity.controlPointsJson = cursor.getString(cursor.getColumnIndex("control_points"));
        return gnssTransParamEntity;
    }

    @SuppressLint({"Range"})
    private GnssTransParamEntity readSingleGnssTransParam(Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return null;
        }
        GnssTransParamEntity gnssTransParamEntityMapCursorToGnssTransParamEntity = mapCursorToGnssTransParamEntity(cursor);
        attachControlPoints(gnssTransParamEntityMapCursorToGnssTransParamEntity);
        return gnssTransParamEntityMapCursorToGnssTransParamEntity;
    }

    @SuppressLint({"Range"})
    private List<GnssTransParamEntity> readGnssTransParamList(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        if (cursor != null && cursor.moveToFirst()) {
            do {
                GnssTransParamEntity gnssTransParamEntityMapCursorToGnssTransParamEntity = mapCursorToGnssTransParamEntity(cursor);
                attachControlPoints(gnssTransParamEntityMapCursorToGnssTransParamEntity);
                arrayList.add(gnssTransParamEntityMapCursorToGnssTransParamEntity);
            } while (cursor.moveToNext());
        }
        return arrayList;
    }

    private void attachControlPoints(GnssTransParamEntity gnssTransParamEntity) {
        gnssTransParamEntity.getControlPointList();
        gnssTransParamEntity.normalizeParamsDetailScaleToK();
    }

    public GnssTransParamEntity fromQueryItem(QueryGnssTransParamResponse.GnssTransParamItem gnssTransParamItem) {
        if (gnssTransParamItem == null) {
            return null;
        }
        GnssTransParamEntity gnssTransParamEntity = new GnssTransParamEntity();
        gnssTransParamEntity.transParamId = gnssTransParamItem.id;
        gnssTransParamEntity.transParamUuid = gnssTransParamItem.uuid;
        gnssTransParamEntity.createTime = gnssTransParamItem.createEpoch;
        gnssTransParamEntity.updateTime = gnssTransParamItem.updateEpoch;
        gnssTransParamEntity.version = gnssTransParamItem.version;
        gnssTransParamEntity.belongUid = gnssTransParamItem.belongUid;
        gnssTransParamEntity.state = gnssTransParamItem.state;
        gnssTransParamEntity.name = gnssTransParamItem.name;
        gnssTransParamEntity.paramType = gnssTransParamItem.paramType;
        gnssTransParamEntity.paramsDetail = gnssTransParamItem.paramsDetail;
        gnssTransParamEntity.controlPointsJson = gnssTransParamItem.controlPoints;
        gnssTransParamEntity.getControlPointList();
        gnssTransParamEntity.normalizeParamsDetailScaleToK();
        return gnssTransParamEntity;
    }

    public long insertPointGroup(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return -1L;
        }
        bindCurrentEngineeringToPointGroup(pointGroupEntity);
        long jInsert = this.database.insert("pointGroup", null, buildPointGroupContentValues(pointGroupEntity));
        if (jInsert > 0) {
            pointGroupEntity.groupLocalId = jInsert;
        }
        return jInsert;
    }

    private void bindCurrentEngineeringToPointGroup(PointGroupEntity pointGroupEntity) {
        bindPointGroupEngineeringIfNeeded(pointGroupEntity, queryCurrentEngineering());
    }

    public int updatePointGroup(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null || pointGroupEntity.groupLocalId <= 0) {
            return -1;
        }
        return this.database.update("pointGroup", buildPointGroupContentValues(pointGroupEntity), "group_local_id = ?", new String[]{String.valueOf(pointGroupEntity.groupLocalId)});
    }

    public long deletePointGroup(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return -1L;
        }
        long j = pointGroupEntity.groupLocalId;
        if (j <= 0) {
            return -1L;
        }
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId = queryPointGroupByLocalId(j);
        if (pointGroupEntityQueryPointGroupByLocalId != null) {
            pointGroupEntity = pointGroupEntityQueryPointGroupByLocalId;
        }
        deletePointsInGroup(pointGroupEntity);
        return this.database.delete("pointGroup", "group_local_id = ?", new String[]{String.valueOf(pointGroupEntity.groupLocalId)});
    }

    public List<Long> collectServerPointIdsInGroup(long j) {
        ArrayList arrayList = new ArrayList();
        if (j > 0) {
            Iterator<PointlibEntity> it = queryPoint(null, Long.valueOf(j), false).iterator();
            while (it.hasNext()) {
                long j2 = it.next().pointId;
                if (j2 > 0) {
                    arrayList.add(Long.valueOf(j2));
                }
            }
        }
        return arrayList;
    }

    private void deletePointsInGroup(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return;
        }
        long j = pointGroupEntity.groupLocalId;
        Iterator<PointlibEntity> it = queryPoint(null, Long.valueOf(j), false).iterator();
        while (it.hasNext()) {
            this.database.delete("pointLib", "id = ?", new String[]{String.valueOf(it.next().id)});
        }
        if (!TextUtils.isEmpty(pointGroupEntity.localIds)) {
            try {
                JSONArray jSONArray = new JSONArray(pointGroupEntity.localIds);
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.database.delete("pointLib", "id = ?", new String[]{String.valueOf(jSONArray.getLong(i))});
                }
            } catch (Exception e) {
                LogToFile.e("deletePointsInGroup local_ids: " + e);
            }
        }
        long j2 = pointGroupEntity.groupId;
        if (j2 > 0) {
            this.database.delete("pointLib", "group_id = ?", new String[]{String.valueOf(j2)});
        }
        this.database.delete("pointLib", "group_local_id = ?", new String[]{String.valueOf(j)});
    }

    public void updatePointGroupServerIds(long j, long j2, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("group_id", Long.valueOf(j2));
        contentValues.put("group_uuid", str);
        putBelongUid(contentValues);
        this.database.update("pointGroup", contentValues, "group_local_id = ?", new String[]{String.valueOf(j)});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("group_id", Long.valueOf(j2));
        this.database.update("pointLib", contentValues2, "group_local_id = ?", new String[]{String.valueOf(j)});
    }

    public void updatePointServerId(long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("point_id", Long.valueOf(j2));
        this.database.update("pointLib", contentValues, "id = ?", new String[]{String.valueOf(j)});
    }

    @SuppressLint({"Range"})
    public List<PointGroupEntity> queryAllPointGroups() {
        return queryPointGroupsForEngineering(queryCurrentEngineering());
    }

    @SuppressLint({"Range"})
    public List<PointGroupEntity> queryPointGroupsForEngineering(EngineeringEntity engineeringEntity) {
        String str;
        String[] strArr;
        if (engineeringEntity != null) {
            ArrayList arrayList = new ArrayList();
            String strBuildEngineeringScopeClause = buildEngineeringScopeClause(engineeringEntity, arrayList);
            str = strBuildEngineeringScopeClause;
            strArr = strBuildEngineeringScopeClause != null ? (String[]) arrayList.toArray(new String[0]) : null;
        } else {
            str = null;
            strArr = null;
        }
        Cursor cursorQueryScoped = queryScoped("pointGroup", null, str, strArr, null, null, "create_time DESC");
        ArrayList arrayList2 = new ArrayList();
        if (cursorQueryScoped != null && cursorQueryScoped.moveToFirst()) {
            do {
                arrayList2.add(mapCursorToPointGroup(cursorQueryScoped));
            } while (cursorQueryScoped.moveToNext());
            cursorQueryScoped.close();
        }
        return arrayList2;
    }

    @SuppressLint({"Range"})
    public PointGroupEntity queryPointGroupByLocalId(long j) {
        if (j <= 0) {
            return null;
        }
        Cursor cursorQueryScoped = queryScoped("pointGroup", null, "group_local_id = ?", new String[]{String.valueOf(j)}, null, null, null, "1");
        if (cursorQueryScoped == null || !cursorQueryScoped.moveToFirst()) {
            if (cursorQueryScoped != null) {
                cursorQueryScoped.close();
            }
            return null;
        }
        PointGroupEntity pointGroupEntityMapCursorToPointGroup = mapCursorToPointGroup(cursorQueryScoped);
        cursorQueryScoped.close();
        return pointGroupEntityMapCursorToPointGroup;
    }

    @SuppressLint({"Range"})
    public List<PointGroupEntity> queryPointGroupsByServerId(long j, String str) {
        ArrayList arrayList = new ArrayList();
        if (j > 0) {
            appendPointGroupsFromCursor(arrayList, queryScoped("pointGroup", null, "group_id = ?", new String[]{String.valueOf(j)}, null, null, "group_local_id ASC"));
            return arrayList;
        }
        if (!TextUtils.isEmpty(str)) {
            appendPointGroupsFromCursor(arrayList, queryScoped("pointGroup", null, "group_uuid = ?", new String[]{str}, null, null, "group_local_id ASC"));
        }
        return arrayList;
    }

    private void appendPointGroupsFromCursor(List<PointGroupEntity> list, Cursor cursor) {
        if (cursor == null) {
            return;
        }
        try {
            if (cursor.moveToFirst()) {
                do {
                    list.add(mapCursorToPointGroup(cursor));
                } while (cursor.moveToNext());
            }
        } finally {
            cursor.close();
        }
    }

    private void removeForeignSyncedPointGroups(long j) {
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId = queryEngineeringByLocalId(j);
        if (engineeringEntityQueryEngineeringByLocalId == null) {
            return;
        }
        for (PointGroupEntity pointGroupEntity : new ArrayList(queryPointGroupsForEngineering(engineeringEntityQueryEngineeringByLocalId))) {
            if (pointGroupEntity.groupId > 0 || !TextUtils.isEmpty(pointGroupEntity.groupUuid)) {
                List<PointGroupEntity> listQueryPointGroupsByServerId = queryPointGroupsByServerId(pointGroupEntity.groupId, pointGroupEntity.groupUuid);
                if (!listQueryPointGroupsByServerId.isEmpty()) {
                    PointGroupEntity pointGroupEntity2 = listQueryPointGroupsByServerId.get(0);
                    for (PointGroupEntity pointGroupEntity3 : listQueryPointGroupsByServerId) {
                        if (pointGroupEntity3.groupLocalId < pointGroupEntity2.groupLocalId) {
                            pointGroupEntity2 = pointGroupEntity3;
                        }
                    }
                    if (!belongsToEngineering(engineeringEntityQueryEngineeringByLocalId, pointGroupEntity2)) {
                        deletePointGroup(pointGroupEntity);
                    }
                }
            }
        }
    }

    @SuppressLint({"Range"})
    public PointGroupEntity queryPointGroupByName(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder("name = ?");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        appendCurrentEngineeringScopeFilter(sb, arrayList);
        Cursor cursorQueryScoped = queryScoped("pointGroup", null, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null, "1");
        if (cursorQueryScoped == null || !cursorQueryScoped.moveToFirst()) {
            if (cursorQueryScoped != null) {
                cursorQueryScoped.close();
            }
            return null;
        }
        PointGroupEntity pointGroupEntityMapCursorToPointGroup = mapCursorToPointGroup(cursorQueryScoped);
        cursorQueryScoped.close();
        return pointGroupEntityMapCursorToPointGroup;
    }

    public boolean isPointGroupNameExists(String str) {
        return isEntityNameExistsInEngineering("pointGroup", str);
    }

    public boolean isPointNameExistsInGroup(long j, String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.database.rawQuery("SELECT 1 FROM pointLib WHERE group_local_id = ? AND name = ? LIMIT 1", new String[]{String.valueOf(j), str});
            if (cursorRawQuery != null) {
                if (cursorRawQuery.moveToFirst()) {
                    z = true;
                }
            }
            return z;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    private ContentValues buildPointGroupContentValues(PointGroupEntity pointGroupEntity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("group_id", Long.valueOf(pointGroupEntity.groupId));
        contentValues.put("group_uuid", pointGroupEntity.groupUuid);
        long jCurrentTimeMillis = pointGroupEntity.createTime;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        }
        contentValues.put("create_time", Long.valueOf(jCurrentTimeMillis));
        long jCurrentTimeMillis2 = pointGroupEntity.updateTime;
        if (jCurrentTimeMillis2 == 0) {
            jCurrentTimeMillis2 = System.currentTimeMillis() / 1000;
        }
        contentValues.put("update_time", Long.valueOf(jCurrentTimeMillis2));
        contentValues.put("version", Integer.valueOf(pointGroupEntity.version));
        contentValues.put("name", pointGroupEntity.name);
        contentValues.put("remark", pointGroupEntity.remark);
        String str = pointGroupEntity.localIds;
        if (str == null) {
            str = "[]";
        }
        contentValues.put("local_ids", str);
        contentValues.put("engineering_local_id", Long.valueOf(pointGroupEntity.engineeringLocalId));
        contentValues.put("belong_engineering_id", Long.valueOf(pointGroupEntity.belongEngineeringId));
        String str2 = pointGroupEntity.engineeringUuid;
        if (str2 == null) {
            str2 = "";
        }
        contentValues.put("engineering_uuid", str2);
        contentValues.put("editState", Integer.valueOf(pointGroupEntity.editState));
        if (pointGroupEntity.belongUid == 0) {
            pointGroupEntity.belongUid = currentBelongUid();
        }
        putBelongUid(contentValues);
        return contentValues;
    }

    @SuppressLint({"Range"})
    private PointGroupEntity mapCursorToPointGroup(Cursor cursor) {
        PointGroupEntity pointGroupEntity = new PointGroupEntity();
        pointGroupEntity.groupLocalId = cursor.getLong(cursor.getColumnIndex("group_local_id"));
        pointGroupEntity.groupId = cursor.getColumnIndex("group_id") >= 0 ? cursor.getLong(cursor.getColumnIndex("group_id")) : 0L;
        pointGroupEntity.groupUuid = cursor.getColumnIndex("group_uuid") >= 0 ? cursor.getString(cursor.getColumnIndex("group_uuid")) : "";
        pointGroupEntity.createTime = cursor.getLong(cursor.getColumnIndex("create_time"));
        pointGroupEntity.updateTime = cursor.getColumnIndex("update_time") >= 0 ? cursor.getLong(cursor.getColumnIndex("update_time")) : 0L;
        pointGroupEntity.version = cursor.getColumnIndex("version") >= 0 ? cursor.getInt(cursor.getColumnIndex("version")) : 0;
        pointGroupEntity.name = cursor.getString(cursor.getColumnIndex("name"));
        pointGroupEntity.remark = cursor.getColumnIndex("remark") >= 0 ? cursor.getString(cursor.getColumnIndex("remark")) : "";
        pointGroupEntity.localIds = cursor.getColumnIndex("local_ids") >= 0 ? cursor.getString(cursor.getColumnIndex("local_ids")) : "[]";
        pointGroupEntity.engineeringLocalId = cursor.getColumnIndex("engineering_local_id") >= 0 ? cursor.getLong(cursor.getColumnIndex("engineering_local_id")) : 0L;
        pointGroupEntity.belongEngineeringId = cursor.getColumnIndex("belong_engineering_id") >= 0 ? cursor.getLong(cursor.getColumnIndex("belong_engineering_id")) : 0L;
        String string = cursor.getColumnIndex("engineering_uuid") >= 0 ? cursor.getString(cursor.getColumnIndex("engineering_uuid")) : "";
        pointGroupEntity.engineeringUuid = string;
        if (string == null) {
            pointGroupEntity.engineeringUuid = "";
        }
        pointGroupEntity.editState = cursor.getColumnIndex("editState") >= 0 ? cursor.getInt(cursor.getColumnIndex("editState")) : 0;
        int columnIndex = cursor.getColumnIndex("belong_uid");
        if (columnIndex >= 0) {
            pointGroupEntity.belongUid = cursor.getLong(columnIndex);
        }
        return pointGroupEntity;
    }

    private void appendPointToGroupLocalIds(long j, long j2) {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId;
        if (j <= 0 || j2 <= 0 || (pointGroupEntityQueryPointGroupByLocalId = queryPointGroupByLocalId(j)) == null) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(TextUtils.isEmpty(pointGroupEntityQueryPointGroupByLocalId.localIds) ? "[]" : pointGroupEntityQueryPointGroupByLocalId.localIds);
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getLong(i) == j2) {
                    return;
                }
            }
            jSONArray.put(j2);
            pointGroupEntityQueryPointGroupByLocalId.localIds = jSONArray.toString();
            updatePointGroup(pointGroupEntityQueryPointGroupByLocalId);
        } catch (Exception e) {
            LogToFile.e("appendPointToGroupLocalIds: " + e);
        }
    }

    private void removePointFromGroupLocalIds(long j, long j2) {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId;
        if (j <= 0 || j2 <= 0 || (pointGroupEntityQueryPointGroupByLocalId = queryPointGroupByLocalId(j)) == null) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(TextUtils.isEmpty(pointGroupEntityQueryPointGroupByLocalId.localIds) ? "[]" : pointGroupEntityQueryPointGroupByLocalId.localIds);
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getLong(i) != j2) {
                    jSONArray2.put(jSONArray.getLong(i));
                }
            }
            pointGroupEntityQueryPointGroupByLocalId.localIds = jSONArray2.toString();
            updatePointGroup(pointGroupEntityQueryPointGroupByLocalId);
        } catch (Exception e) {
            LogToFile.e("removePointFromGroupLocalIds: " + e);
        }
    }

    public String generateDefaultPointGroupName() {
        List<PointGroupEntity> listQueryAllPointGroups = queryAllPointGroups();
        String string = LanguagePrefs.getString(this.context, R$string.point_group_default_name, Integer.valueOf(listQueryAllPointGroups != null ? listQueryAllPointGroups.size() + 1 : 1));
        String str = string;
        int i = 1;
        while (isPointGroupNameExists(str)) {
            str = string + "_" + i;
            i++;
        }
        return str;
    }

    public String generateDefaultPointName(long j) {
        List<PointlibEntity> listQueryPoint = queryPoint(null, Long.valueOf(j), false);
        int size = listQueryPoint != null ? listQueryPoint.size() + 1 : 1;
        String str = String.format(Locale.getDefault(), "Pt%d", Integer.valueOf(size));
        while (isPointNameExistsInGroup(j, str)) {
            size++;
            str = String.format(Locale.getDefault(), "Pt%d", Integer.valueOf(size));
        }
        return str;
    }

    public void close() {
        instance = null;
        SQLiteDatabase sQLiteDatabase = this.database;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            this.database.close();
        }
        DatabaseHelper databaseHelper = this.dbHelper;
        if (databaseHelper != null) {
            databaseHelper.close();
        }
    }

    public void clearAllUserData() {
        SQLiteDatabase sQLiteDatabase = this.database;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return;
        }
        this.database.beginTransaction();
        try {
            Iterator<String> it = this.dbHelper.getAllUserDataTableNames().iterator();
            while (it.hasNext()) {
                this.database.delete(it.next(), null, null);
            }
            this.database.setTransactionSuccessful();
            LogToFile.i("注销账号：本地数据库已清空");
            this.database.endTransaction();
            GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        } catch (Throwable th) {
            this.database.endTransaction();
            throw th;
        }
    }
}
