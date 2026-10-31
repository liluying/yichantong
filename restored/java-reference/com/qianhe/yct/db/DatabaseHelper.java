package com.qianhe.yct.db;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.qianhe.baselib.bean.CalibSoInputParams;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.lingala.zip4j.util.InternalZipConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DatabaseHelper extends SQLiteOpenHelper {
    private static final Gson GSON = new Gson();
    public static String dbPath;
    private final Context mContext;
    private final List<String> projectTableList;

    public List<String> getProjectTableList() {
        return this.projectTableList;
    }

    public List<String> getAllUserDataTableNames() {
        return BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new String[]{"zhaoping", "shuapo", "wagou", "dike", "line", "polyline", "onePointArea", "threePointArea", "siteleveling", "arbitraryline", "curvedSlope", "multiPointArea", "engineering", "gnss_trans_param", "pointGroup", "pointLib", "cors", "share", "excavator", "shovel"});
    }

    public DatabaseHelper(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(FileUtil.mkDbDir(context));
        sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR);
        sb.append(context.getPackageName().equals("com.qianhe.xfix") ? "xfix.db" : "yct.db");
        String string = sb.toString();
        dbPath = string;
        super(context, string, (SQLiteDatabase.CursorFactory) null, 36);
        this.projectTableList = BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new String[]{"zhaoping", "shuapo", "wagou", "dike", "line", "polyline", "onePointArea", "threePointArea", "siteleveling", "arbitraryline", "curvedSlope", "multiPointArea"});
        this.mContext = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        LogToFile.i("DatabaseHelper -> onCreate()");
        if (!isTableExists(sQLiteDatabase, "cors")) {
            createCors(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "engineering")) {
            createEngineering(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "gnss_trans_param")) {
            createGnssTransParam(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "pointGroup")) {
            createPointGroup(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "pointLib")) {
            createPointLib(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "share")) {
            createShare(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "excavator")) {
            createExcavator(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "shovel")) {
            createShovel(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "deviceInfo")) {
            createDeviceInfo(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "zhaoping")) {
            createZhaoPing(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "shuapo")) {
            createShuaPo(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "wagou")) {
            createWaGou(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "dike")) {
            createDike(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "line")) {
            createLine(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "polyline")) {
            createPolyLine(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "onePointArea")) {
            createOnePointArea(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "threePointArea")) {
            createThreePointArea(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "siteleveling")) {
            createSiteLeveling(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "arbitraryline")) {
            createArbitraryLine(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "curvedSlope")) {
            createCurvedSlope(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "multiPointArea")) {
            createMultiPointArea(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "user")) {
            createUser(sQLiteDatabase);
        }
        ensureBelongUidColumns(sQLiteDatabase);
    }

    public List<String> getBelongUidTableNames() {
        return BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new String[]{"zhaoping", "shuapo", "wagou", "dike", "line", "polyline", "onePointArea", "threePointArea", "siteleveling", "arbitraryline", "curvedSlope", "multiPointArea", "engineering", "gnss_trans_param", "pointGroup", "share", "excavator", "shovel"});
    }

    private void createGnssTransParam(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE gnss_trans_param (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, trans_param_id INTEGER, trans_param_uuid TEXT, create_time INTEGER, update_time INTEGER, version INTEGER, belong_uid INTEGER, state INTEGER DEFAULT 0, name TEXT, param_type INTEGER, params_detail TEXT, control_points TEXT)");
    }

    private void createEngineering(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE engineering (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, engineering_id INTEGER, engineering_uuid TEXT, create_time INTEGER, update_time INTEGER, name TEXT, ellipsoid_type INTEGER, custom_ellipsoid_params TEXT, projection_type INTEGER, gauss_kruger_params TEXT, utm_params TEXT, transverse_mercator_params TEXT, conversion_params_type INTEGER, trans_param_id INTEGER DEFAULT 0, trans_param_local_id INTEGER DEFAULT 0, four_parameter TEXT, seven_parameter TEXT, edit_state INTEGER, current_usage INTEGER DEFAULT 0, version INTEGER, belong_uid INTEGER DEFAULT 0)");
    }

    private void createMultiPointArea(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE multiPointArea (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, coordsListJson TEXT, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createCurvedSlope(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE curvedSlope (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, lon1 REAL, lat1 REAL, elev1 REAL, east1 REAL, north1 REAL, depthA REAL, lon2 REAL, lat2 REAL, elev2 REAL, east2 REAL, north2 REAL, depthB REAL, coordsListJson TEXT, ratio REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createArbitraryLine(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE arbitraryline (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, lon REAL, lat REAL, elev REAL, east REAL, north REAL, depth REAL, ratio REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createSiteLeveling(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE siteleveling (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, coordsListJson TEXT, ratio REAL, compactionCoeff REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createWaGou(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE wagou (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, openlineType INTEGER, ratio REAL, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, quality1 INTEGER, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, quality2 INTEGER, targetLonH REAL, targetLatH REAL, targetElevationH REAL, qualityH INTEGER,east1 REAL, north1 REAL, east2 REAL, north2 REAL, eastH REAL, northH REAL, collectType INTEGER,targetLonBenchmark REAL, targetLatBenchmark REAL, targetElevationBenchmark REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, width REAL, depth REAL,depthA REAL,depthB REAL,length REAL, tickA INTEGER, tickB INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL,leftSlopeRatio REAL, rightSlopeRatio REAL, leftBottomWidth REAL, rightBottomWidth REAL, advancedType INTEGER, belong_uid INTEGER DEFAULT 0)");
    }

    private void createShuaPo(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE shuapo (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, subType INTEGER, shovelTipType INTEGER, cadPath TEXT, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, quality1 INTEGER, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, quality2 INTEGER, targetLon3 REAL, targetLat3 REAL, targetElevation3 REAL, quality3 INTEGER, east1 REAL, north1 REAL, east2 REAL, north2 REAL, east3 REAL, north3 REAL, targetLonBenchmark REAL, targetLatBenchmark REAL, targetElevationBenchmark REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, tickA INTEGER, tickB INTEGER, tickC INTEGER, ditchC REAL, width REAL, heigth REAL, flatDistance REAL, ratio REAL, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createZhaoPing(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE zhaoping (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, targetLon REAL, targetLat REAL, targetElevation REAL, east REAL, north REAL, depth REAL, height REAL, quality INTEGER, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createOnePointArea(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE onePointArea (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, subType INTEGER, shovelTipType INTEGER, cadPath TEXT, lon REAL, lat REAL, elev REAL, east REAL, north REAL, depth REAL, ratioN REAL, ratioE REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createThreePointArea(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE threePointArea (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, subType INTEGER, shovelTipType INTEGER, cadPath TEXT, lon1 REAL, lat1 REAL, elev1 REAL, north1 REAL, east1 REAL, lon2 REAL, lat2 REAL, elev2 REAL, east2 REAL, north2 REAL, lon3 REAL, lat3 REAL, elev3 REAL, east3 REAL, north3 REAL, depthA REAL, depthB REAL, depthC REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createDeviceInfo(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE deviceInfo (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, sn TEXT, type TEXT, pnVersion TEXT, fmwVersion TEXT, gnssVersion TEXT)");
    }

    private void createPolyLine(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE polyline (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, depthA REAL,depthB REAL,tickA INTEGER, tickB INTEGER, ratio REAL, heightDiff REAL, width REAL, coordsListJson TEXT, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createLine(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE line (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, ratio REAL, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, east1 REAL, north1 REAL, east2 REAL, north2 REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, width REAL, depthA REAL,depthB REAL,length REAL, tickA INTEGER, tickB INTEGER, spacing REAL, pileSpacing REAL, rigthItems INTEGER, leftItems INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createDike(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE dike (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, east1 REAL, north1 REAL, east2 REAL, north2 REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, width REAL, depthA REAL,depthB REAL,length REAL, tickA INTEGER, tickB INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)");
    }

    private void createExcavator(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE excavator (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, userId INTEGER, calibrateId INTEGER, calibrateUUid TEXT, createTime INTEGER, updateTime INTEGER, name TEXT, calibParamsId TEXT, calibParams TEXT, leftDist REAL, rigthDist REAL, spanDist REAL, deviceHeight REAL, mode INTEGER, excavatorParams TEXT, version INTEGER, showUnit INTEGER, measureParams TEXT, autoGenerateParams TEXT, calibSoInputs TEXT, belong_uid INTEGER DEFAULT 0)");
    }

    private void createShovel(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE shovel (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, name TEXT, bucket_id INTEGER, bucket_uuid TEXT, mode INTEGER, measureParams TEXT, autoGenerateParams TEXT, param TEXT, showUnit INTEGER, version INTEGER, belong_uid INTEGER DEFAULT 0)");
    }

    private void createShare(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE share (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, expireTime INTEGER, shareId INTEGER, shareCode TEXT, editState INTEGER, name TEXT, projectUUids TEXT, shareUUid TEXT, belong_uid INTEGER DEFAULT 0)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) throws SQLException {
        super.onOpen(sQLiteDatabase);
        ensureExcavatorSchemaV26(sQLiteDatabase);
        ensureExcavatorFlatCalibrationColumns(sQLiteDatabase);
        ensureExcavatorFlatMeasureColumns(sQLiteDatabase);
        ensureShovelFlatMeasureColumns(sQLiteDatabase);
        ensureExcavatorCalibSoInputsColumn(sQLiteDatabase);
        clearPlaceholderCalibSoInputs(sQLiteDatabase);
        syncExcavatorFlatColumnsFromJson(sQLiteDatabase);
        syncShovelFlatColumnsFromJson(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        LogToFile.i("数据库降级  oldVersion:" + i + "，newVersion:" + i2);
        try {
            repairExcavatorOnDowngrade(sQLiteDatabase, i, i2);
            sQLiteDatabase.execSQL("PRAGMA user_version = " + i2);
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("数据库降级处理：" + e);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        LogToFile.i("数据库升级  oldVersion：" + i + ",newVersion：" + i2);
        if (i < 2) {
            less2(sQLiteDatabase);
        }
        if (i < 3) {
            less3(sQLiteDatabase);
        }
        if (i < 4) {
            less4(sQLiteDatabase);
        }
        if (i < 5) {
            less5(sQLiteDatabase);
        }
        if (i < 6) {
            less6(sQLiteDatabase);
        }
        if (i < 7) {
            less7(sQLiteDatabase);
        }
        if (i < 8) {
            less8(sQLiteDatabase);
        }
        if (i < 9) {
            less9(sQLiteDatabase);
        }
        if (i < 10) {
            less10(sQLiteDatabase);
        }
        if (i < 11) {
            less11(sQLiteDatabase);
        }
        if (i < 12) {
            less12(sQLiteDatabase);
        }
        if (i < 13) {
            less13(sQLiteDatabase);
        }
        if (i < 14) {
            less14(sQLiteDatabase);
        }
        if (i < 15) {
            less15(sQLiteDatabase);
        }
        if (i < 16) {
            less16(sQLiteDatabase);
        }
        if (i < 17) {
            less17(sQLiteDatabase);
        }
        if (i < 18) {
            less18(sQLiteDatabase);
        }
        if (i < 19) {
            less19(sQLiteDatabase);
        }
        if (i < 20) {
            less20(sQLiteDatabase);
        }
        if (i < 21) {
            less21(sQLiteDatabase);
        }
        if (i < 22) {
            less22(sQLiteDatabase);
        }
        if (i < 23) {
            less23(sQLiteDatabase);
        }
        if (i < 24) {
            less24(sQLiteDatabase);
        }
        if (i < 25) {
            less25(sQLiteDatabase);
        }
        if (i < 26) {
            less26(sQLiteDatabase);
        }
        if (i < 27) {
            less27(sQLiteDatabase);
        }
        if (i < 28) {
            less28(sQLiteDatabase);
        }
        if (i < 29) {
            less29(sQLiteDatabase);
        }
        if (i < 30) {
            less30(sQLiteDatabase);
        }
        if (i < 31) {
            less31(sQLiteDatabase);
        }
        if (i < 32) {
            less32(sQLiteDatabase);
        }
        if (i < 33) {
            less33(sQLiteDatabase);
        }
        if (i < 34) {
            less34(sQLiteDatabase);
        }
        if (i < 35) {
            less35(sQLiteDatabase);
        }
        if (i < 36) {
            less36(sQLiteDatabase);
        }
    }

    private void less33(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ensureExcavatorCalibSoInputsColumn(sQLiteDatabase);
    }

    private void less34(SQLiteDatabase sQLiteDatabase) {
        clearPlaceholderCalibSoInputs(sQLiteDatabase);
    }

    private void less35(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isTableExists(sQLiteDatabase, "user")) {
            createUser(sQLiteDatabase);
        }
        ensureBelongUidColumns(sQLiteDatabase);
        migrateUserFromSharedPreferences(sQLiteDatabase);
    }

    private void less36(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ensurePointGroupEditStateColumn(sQLiteDatabase);
    }

    void ensurePointGroupEditStateColumn(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isTableExists(sQLiteDatabase, "pointGroup") || isColumnExists(sQLiteDatabase, "pointGroup", "editState")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE pointGroup ADD COLUMN editState INTEGER DEFAULT 0");
    }

    private void createUser(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE user (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, deviceId TEXT, user_token TEXT, user_account TEXT, user_name TEXT, user_id INTEGER DEFAULT 0)");
    }

    void ensureBelongUidColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        for (String str : getBelongUidTableNames()) {
            if (isTableExists(sQLiteDatabase, str) && !isColumnExists(sQLiteDatabase, str, "belong_uid")) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN belong_uid INTEGER DEFAULT 0");
            }
        }
    }

    private void migrateUserFromSharedPreferences(SQLiteDatabase sQLiteDatabase) {
        long j;
        String string;
        long j2;
        if (isTableExists(sQLiteDatabase, "user")) {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM user", null);
            boolean z = true;
            if (cursorRawQuery != null) {
                if (cursorRawQuery.moveToFirst() && cursorRawQuery.getInt(0) > 0) {
                    z = false;
                }
                cursorRawQuery.close();
            }
            if (z) {
                SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("sp", 0);
                String string2 = sharedPreferences.getString("deviceId", "");
                String string3 = sharedPreferences.getString("user_token", "");
                String string4 = sharedPreferences.getString("user_account", "");
                String string5 = sharedPreferences.getString("user_name", "");
                try {
                    j = 0;
                    j2 = sharedPreferences.getLong("user_id", 0L);
                } catch (Exception unused) {
                    j = 0;
                    try {
                        string = sharedPreferences.getString("user_id", "0");
                    } catch (Exception unused2) {
                    }
                    j2 = !TextUtils.isEmpty(string) ? Long.parseLong(string) : 0L;
                }
                if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3) && TextUtils.isEmpty(string4) && TextUtils.isEmpty(string5) && j2 == j) {
                    return;
                }
                ContentValues contentValues = new ContentValues();
                if (string2 == null) {
                    string2 = "";
                }
                contentValues.put("deviceId", string2);
                if (string3 == null) {
                    string3 = "";
                }
                contentValues.put("user_token", string3);
                if (string4 == null) {
                    string4 = "";
                }
                contentValues.put("user_account", string4);
                contentValues.put("user_name", string5 != null ? string5 : "");
                contentValues.put("user_id", Long.valueOf(j2));
                sQLiteDatabase.insert("user", null, contentValues);
                sharedPreferences.edit().remove("deviceId").remove("user_token").remove("user_account").remove("user_name").remove("user_id").apply();
                LogToFile.i("已从 SharedPreferences 迁移最近登录用户到 user 表, user_id=" + j2);
            }
        }
    }

    private void clearPlaceholderCalibSoInputs(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery;
        if (isTableExists(sQLiteDatabase, "excavator") && isColumnExists(sQLiteDatabase, "excavator", "calibSoInputs") && (cursorQuery = sQLiteDatabase.query("excavator", new String[]{"localId", "calibSoInputs"}, "calibSoInputs IS NOT NULL AND calibSoInputs != ''", null, null, null, null)) != null) {
            int i = 0;
            while (cursorQuery.moveToNext()) {
                try {
                    long j = cursorQuery.getLong(0);
                    String string = cursorQuery.getString(1);
                    if (string != null && !string.isEmpty()) {
                        try {
                            CalibSoInputParams calibSoInputParams = (CalibSoInputParams) GSON.fromJson(string, CalibSoInputParams.class);
                            if (calibSoInputParams != null && calibSoInputParams.isPlaceholder()) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.putNull("calibSoInputs");
                                sQLiteDatabase.update("excavator", contentValues, "localId = ?", new String[]{String.valueOf(j)});
                                i++;
                            }
                        } catch (Exception unused) {
                        }
                    }
                } finally {
                    cursorQuery.close();
                }
            }
            if (i > 0) {
                LogToFile.i("已清除挖机占位 calibSoInputs：" + i);
            }
        }
    }

    private void less32(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ensureExcavatorFlatMeasureColumns(sQLiteDatabase);
        ensureShovelFlatMeasureColumns(sQLiteDatabase);
        if (isTableExists(sQLiteDatabase, "excavator")) {
            restoreExcavatorFlatMeasureColumns(sQLiteDatabase);
        }
        if (isTableExists(sQLiteDatabase, "shovel")) {
            restoreShovelFlatMeasureColumns(sQLiteDatabase);
        }
    }

    private void less31(SQLiteDatabase sQLiteDatabase) throws SQLException {
        Iterator<String> it = this.projectTableList.iterator();
        while (it.hasNext()) {
            addEngineeringUuidColumnAndBackfill(sQLiteDatabase, it.next());
        }
        addEngineeringUuidColumnAndBackfill(sQLiteDatabase, "pointGroup");
    }

    private void addEngineeringUuidColumnAndBackfill(SQLiteDatabase sQLiteDatabase, String str) throws SQLException {
        if (isTableExists(sQLiteDatabase, str)) {
            if (!isColumnExists(sQLiteDatabase, str, "engineering_uuid")) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN engineering_uuid TEXT");
            }
            if (isTableExists(sQLiteDatabase, "engineering")) {
                sQLiteDatabase.execSQL("UPDATE " + str + " SET engineering_uuid = (SELECT e.engineering_uuid FROM engineering e WHERE (( " + str + ".belong_engineering_id > 0 AND e.engineering_id = " + str + ".belong_engineering_id) OR (( " + str + ".belong_engineering_id IS NULL OR " + str + ".belong_engineering_id = 0) AND " + str + ".engineering_local_id > 0 AND e.id = " + str + ".engineering_local_id)) AND e.engineering_uuid IS NOT NULL AND e.engineering_uuid != '' LIMIT 1) WHERE (engineering_uuid IS NULL OR engineering_uuid = '') AND ((belong_engineering_id IS NOT NULL AND belong_engineering_id > 0) OR (engineering_local_id IS NOT NULL AND engineering_local_id > 0))");
            }
        }
    }

    private void less30(SQLiteDatabase sQLiteDatabase) throws SQLException {
        long j;
        long j2;
        long j3;
        SQLiteDatabase sQLiteDatabase2;
        if (!isTableExists(sQLiteDatabase, "pointGroup")) {
            createPointGroup(sQLiteDatabase);
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "group_id")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN group_id INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "group_local_id")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN group_local_id INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "point_id")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN point_id INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "geodeticLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN geodeticLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "geodeticLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN geodeticLat REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "geodeticElev")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN geodeticElev REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "hdop")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN hdop REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "vdop")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN vdop REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "alt")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN alt REAL DEFAULT 0");
        }
        if (isTableExists(sQLiteDatabase, "engineering")) {
            j = 0;
            Cursor cursorQuery = sQLiteDatabase.query("engineering", new String[]{"id", "engineering_id"}, "current_usage = 1", null, null, null, null, "1");
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                j2 = 0;
                j3 = 0;
            } else {
                j2 = cursorQuery.getLong(0);
                j3 = cursorQuery.getLong(1);
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            if (j2 <= 0) {
                Cursor cursorQuery2 = sQLiteDatabase.query("engineering", new String[]{"id", "engineering_id"}, null, null, null, null, "id ASC", "1");
                if (cursorQuery2 != null && cursorQuery2.moveToFirst()) {
                    j2 = cursorQuery2.getLong(0);
                    j3 = cursorQuery2.getLong(1);
                }
                if (cursorQuery2 != null) {
                    cursorQuery2.close();
                }
            }
        } else {
            j = 0;
            j2 = 0;
            j3 = 0;
        }
        if (hasPointsInPointLibrary(sQLiteDatabase)) {
            sQLiteDatabase2 = sQLiteDatabase;
            Cursor cursorQuery3 = sQLiteDatabase2.query("pointGroup", new String[]{"group_local_id"}, "name = ?", new String[]{PointGroupEntity.DEFAULT_GROUP_NAME}, null, null, null, "1");
            long jInsert = (cursorQuery3 == null || !cursorQuery3.moveToFirst()) ? j : cursorQuery3.getLong(0);
            if (cursorQuery3 != null) {
                cursorQuery3.close();
            }
            if (jInsert <= j) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("name", PointGroupEntity.DEFAULT_GROUP_NAME);
                contentValues.put("create_time", Long.valueOf(System.currentTimeMillis() / 1000));
                contentValues.put("update_time", Long.valueOf(System.currentTimeMillis() / 1000));
                contentValues.put("local_ids", "[]");
                contentValues.put("engineering_local_id", Long.valueOf(j2));
                contentValues.put("belong_engineering_id", Long.valueOf(j3));
                jInsert = sQLiteDatabase2.insert("pointGroup", null, contentValues);
            } else if (j2 > j) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("engineering_local_id", Long.valueOf(j2));
                contentValues2.put("belong_engineering_id", Long.valueOf(j3));
                sQLiteDatabase2.update("pointGroup", contentValues2, "group_local_id = ? AND (engineering_local_id IS NULL OR engineering_local_id = 0) AND (belong_engineering_id IS NULL OR belong_engineering_id = 0) AND (engineering_uuid IS NULL OR engineering_uuid = '')", new String[]{String.valueOf(jInsert)});
            }
            if (jInsert > j) {
                sQLiteDatabase2.execSQL("UPDATE pointLib SET group_local_id = " + jInsert + " WHERE group_local_id IS NULL OR group_local_id = 0");
                rebuildGroupLocalIds(sQLiteDatabase2, jInsert);
            }
        } else {
            sQLiteDatabase2 = sQLiteDatabase;
        }
        bindOrphanPointGroupsToDefaultEngineering(sQLiteDatabase);
        for (String str : this.projectTableList) {
            if (isTableExists(sQLiteDatabase2, str)) {
                if (isColumnExists(sQLiteDatabase2, str, "path")) {
                    SQLiteColumnRenameUtil.renameColumn(sQLiteDatabase2, str, "path", "cadPath");
                } else if (!isColumnExists(sQLiteDatabase2, str, "cadPath")) {
                    sQLiteDatabase2.execSQL("ALTER TABLE " + str + " ADD COLUMN cadPath TEXT");
                }
            }
        }
        ensurePointGroupEditStateColumn(sQLiteDatabase);
    }

    private boolean hasPointsInPointLibrary(SQLiteDatabase sQLiteDatabase) {
        boolean z = false;
        if (!isTableExists(sQLiteDatabase, "pointLib")) {
            return false;
        }
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM pointLib", null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst() && cursorRawQuery.getInt(0) > 0) {
            z = true;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return z;
    }

    private void rebuildGroupLocalIds(SQLiteDatabase sQLiteDatabase, long j) {
        Cursor cursorQuery = sQLiteDatabase.query("pointLib", new String[]{"id"}, "group_local_id = ?", new String[]{String.valueOf(j)}, null, null, "id ASC");
        if (cursorQuery == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (cursorQuery.moveToNext()) {
            if (!z) {
                sb.append(",");
            }
            z = false;
            sb.append(cursorQuery.getLong(0));
        }
        cursorQuery.close();
        sb.append("]");
        ContentValues contentValues = new ContentValues();
        contentValues.put("local_ids", sb.toString());
        sQLiteDatabase.update("pointGroup", contentValues, "group_local_id = ?", new String[]{String.valueOf(j)});
    }

    private void bindOrphanPointGroupsToDefaultEngineering(SQLiteDatabase sQLiteDatabase) {
        long j;
        String string;
        long j2;
        long j3;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        if (isTableExists(sQLiteDatabase2, "pointGroup")) {
            if (isTableExists(sQLiteDatabase2, "engineering")) {
                j = 0;
                Cursor cursorQuery = sQLiteDatabase2.query("engineering", new String[]{"id", "engineering_id", "engineering_uuid"}, "current_usage = 1", null, null, null, null, "1");
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    string = "";
                    j2 = 0;
                    j3 = 0;
                } else {
                    j2 = cursorQuery.getLong(0);
                    j3 = cursorQuery.getLong(1);
                    string = cursorQuery.isNull(2) ? "" : cursorQuery.getString(2);
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (j2 <= 0) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    Cursor cursorQuery2 = sQLiteDatabase2.query("engineering", new String[]{"id", "engineering_id", "engineering_uuid"}, null, null, null, null, "id ASC", "1");
                    if (cursorQuery2 != null && cursorQuery2.moveToFirst()) {
                        j2 = cursorQuery2.getLong(0);
                        j3 = cursorQuery2.getLong(1);
                        string = cursorQuery2.isNull(2) ? "" : cursorQuery2.getString(2);
                    }
                    if (cursorQuery2 != null) {
                        cursorQuery2.close();
                    }
                } else {
                    sQLiteDatabase2 = sQLiteDatabase;
                }
            } else {
                j = 0;
                string = "";
                j2 = 0;
                j3 = 0;
            }
            if (j2 <= j) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("engineering_local_id", Long.valueOf(j2));
            contentValues.put("belong_engineering_id", Long.valueOf(j3));
            contentValues.put("engineering_uuid", string != null ? string : "");
            sQLiteDatabase2.update("pointGroup", contentValues, "(engineering_local_id IS NULL OR engineering_local_id = 0) AND (belong_engineering_id IS NULL OR belong_engineering_id = 0) AND (engineering_uuid IS NULL OR engineering_uuid = '')", null);
        }
    }

    private void createPointGroup(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE pointGroup (group_local_id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, group_id INTEGER DEFAULT 0, group_uuid TEXT, create_time INTEGER, update_time INTEGER, version INTEGER DEFAULT 0, name TEXT, remark TEXT, local_ids TEXT, engineering_local_id INTEGER DEFAULT 0, belong_engineering_id INTEGER DEFAULT 0, engineering_uuid TEXT, editState INTEGER DEFAULT 0, belong_uid INTEGER DEFAULT 0)");
    }

    private void less29(SQLiteDatabase sQLiteDatabase) throws SQLException {
        SQLiteDatabase sQLiteDatabase2;
        for (String str : this.projectTableList) {
            if (!isColumnExists(sQLiteDatabase, str, "engineering_local_id")) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN engineering_local_id INTEGER DEFAULT 0");
            }
            if (isTableExists(sQLiteDatabase, "engineering")) {
                sQLiteDatabase.execSQL("UPDATE " + str + " SET engineering_local_id = (SELECT e.id FROM engineering e WHERE e.engineering_id = " + str + ".belong_engineering_id LIMIT 1) WHERE (engineering_local_id IS NULL OR engineering_local_id = 0) AND belong_engineering_id > 0");
            }
            if (isColumnExists(sQLiteDatabase, str, "engineering_params")) {
                sQLiteDatabase2 = sQLiteDatabase;
                Cursor cursorQuery = sQLiteDatabase2.query(str, new String[]{"id", "engineering_params"}, "engineering_params IS NOT NULL AND engineering_params != '' AND (engineering_local_id IS NULL OR engineering_local_id = 0)", null, null, null, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(0);
                        long engineeringLocalIdFromParams = parseEngineeringLocalIdFromParams(cursorQuery.getString(1));
                        if (engineeringLocalIdFromParams > 0) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("engineering_local_id", Long.valueOf(engineeringLocalIdFromParams));
                            sQLiteDatabase2.update(str, contentValues, "id = ?", new String[]{String.valueOf(j)});
                        }
                    }
                    cursorQuery.close();
                }
            } else {
                sQLiteDatabase2 = sQLiteDatabase;
            }
            if (isTableExists(sQLiteDatabase2, "engineering")) {
                sQLiteDatabase2.execSQL("UPDATE " + str + " SET engineering_local_id = (SELECT e.id FROM engineering e WHERE e.current_usage = 1 LIMIT 1) WHERE engineering_local_id IS NULL OR engineering_local_id = 0");
            }
            sQLiteDatabase = sQLiteDatabase2;
        }
    }

    private long parseEngineeringLocalIdFromParams(String str) {
        try {
            return new JSONObject(str).optLong("id", 0L);
        } catch (Exception unused) {
            return 0L;
        }
    }

    private void less28(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "engineering")) {
            if (!isColumnExists(sQLiteDatabase, "engineering", "trans_param_id")) {
                sQLiteDatabase.execSQL("ALTER TABLE engineering ADD COLUMN trans_param_id INTEGER DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "engineering", "trans_param_local_id")) {
                sQLiteDatabase.execSQL("ALTER TABLE engineering ADD COLUMN trans_param_local_id INTEGER DEFAULT 0");
            }
        }
        for (String str : this.projectTableList) {
            if (!isColumnExists(sQLiteDatabase, str, "belong_engineering_id")) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN belong_engineering_id TEXT");
            }
        }
    }

    private void less27(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "engineering") && isColumnExists(sQLiteDatabase, "engineering", "gauss_kruger_params") && isColumnExists(sQLiteDatabase, "engineering", "conversion_params_type")) {
            if (!isTableExists(sQLiteDatabase, "gnss_trans_param")) {
                createGnssTransParam(sQLiteDatabase);
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS gnss_trans_param_control_point");
        } else {
            if (isTableExists(sQLiteDatabase, "engineering")) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS engineering");
            }
            createEngineering(sQLiteDatabase);
            if (!isTableExists(sQLiteDatabase, "gnss_trans_param")) {
                createGnssTransParam(sQLiteDatabase);
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS gnss_trans_param_control_point");
        }
        for (String str : this.projectTableList) {
            if (!isColumnExists(sQLiteDatabase, str, "engineering_params")) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN engineering_params TEXT");
            }
        }
    }

    private void less26(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator")) {
            ensureExcavatorSchemaV26(sQLiteDatabase);
            if (isColumnExists(sQLiteDatabase, "excavator", "HA")) {
                sQLiteDatabase.beginTransaction();
                try {
                    sQLiteDatabase.execSQL("CREATE TABLE excavator_new (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, userId INTEGER, calibrateId INTEGER, calibrateUUid TEXT, createTime INTEGER, updateTime INTEGER, name TEXT, calibParamsId TEXT, calibParams TEXT, leftDist REAL, rigthDist REAL, spanDist REAL, deviceHeight REAL, mode INTEGER, excavatorParams TEXT, version INTEGER, showUnit INTEGER, measureParams TEXT, autoGenerateParams TEXT)");
                    sQLiteDatabase.execSQL("INSERT INTO excavator_new (localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, excavatorParams, version, showUnit, measureParams, autoGenerateParams) SELECT localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, '{\"HA\":' || HA || ',\"pq\":' || pq || ',\"Ay\":' || Ay || ',\"Ax\":' || Ax || ',\"Dx\":' || Dx || ',\"AD\":' || AD || ',\"BD\":' || BD || ',\"CD\":' || CD || ',\"BC\":' || BC || '}', version, showUnit, measureParams, autoGenerateParams FROM excavator");
                    sQLiteDatabase.execSQL("DROP TABLE excavator");
                    sQLiteDatabase.execSQL("ALTER TABLE excavator_new RENAME TO excavator");
                    sQLiteDatabase.setTransactionSuccessful();
                } finally {
                    sQLiteDatabase.endTransaction();
                }
            }
        }
    }

    private void less25(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator") && isColumnExists(sQLiteDatabase, "excavator", "G1")) {
            less24(sQLiteDatabase);
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL("CREATE TABLE excavator_new (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, userId INTEGER, calibrateId INTEGER, calibrateUUid TEXT, createTime INTEGER, updateTime INTEGER, name TEXT, calibParamsId TEXT, calibParams TEXT, leftDist REAL, rigthDist REAL, spanDist REAL, deviceHeight REAL, mode INTEGER, HA REAL, pq REAL, Ay REAL, Ax REAL, Dx REAL, AD REAL, BD REAL, CD REAL, BC REAL, version INTEGER, showUnit INTEGER, measureParams TEXT, autoGenerateParams TEXT)");
                sQLiteDatabase.execSQL("INSERT INTO excavator_new (localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, HA, pq, Ay, Ax, Dx, AD, BD, CD, BC, version, showUnit, measureParams, autoGenerateParams) SELECT localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, HA, pq, Ay, Ax, Dx, AD, BD, CD, BC, version, showUnit, measureParams, autoGenerateParams FROM excavator");
                sQLiteDatabase.execSQL("DROP TABLE excavator");
                sQLiteDatabase.execSQL("ALTER TABLE excavator_new RENAME TO excavator");
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }
    }

    @SuppressLint({"Range"})
    private void less24(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator")) {
            if (!isColumnExists(sQLiteDatabase, "excavator", "measureParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN measureParams TEXT");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "autoGenerateParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN autoGenerateParams TEXT");
            }
            if (isColumnExists(sQLiteDatabase, "excavator", "G1")) {
                Cursor cursorQuery = null;
                try {
                    cursorQuery = sQLiteDatabase.query("excavator", new String[]{"localId", "G1", "G2", "G3", "Ly", "Ry", "AB", "measureParams"}, null, null, null, null, null);
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex("measureParams"));
                            if (string == null || string.isEmpty()) {
                                long j = cursorQuery.getLong(cursorQuery.getColumnIndex("localId"));
                                String str = String.format(Locale.ROOT, "{\"G1\":%s,\"G2\":%s,\"G3\":%s,\"Ly\":%s,\"Ry\":%s,\"AB\":%s}", Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("G1"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("G2"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("G3"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("Ly"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("Ry"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("AB"))));
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("measureParams", str);
                                sQLiteDatabase.update("excavator", contentValues, "localId = ?", new String[]{String.valueOf(j)});
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
        }
    }

    @SuppressLint({"Range"})
    private void less23(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "shovel")) {
            if (!isColumnExists(sQLiteDatabase, "shovel", "measureParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN measureParams TEXT");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "autoGenerateParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN autoGenerateParams TEXT");
            }
            if (isColumnExists(sQLiteDatabase, "shovel", "G1")) {
                Cursor cursorQuery = null;
                try {
                    cursorQuery = sQLiteDatabase.query("shovel", new String[]{"localId", "G1", "G2", "G3", "Ly", "Ry", "AB", "measureParams"}, null, null, null, null, null);
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex("measureParams"));
                            if (string == null || string.isEmpty()) {
                                long j = cursorQuery.getLong(cursorQuery.getColumnIndex("localId"));
                                String str = String.format(Locale.ROOT, "{\"G1\":%s,\"G2\":%s,\"G3\":%s,\"Ly\":%s,\"Ry\":%s,\"AB\":%s}", Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("G1"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("G2"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("G3"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("Ly"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("Ry"))), Double.valueOf(cursorQuery.getDouble(cursorQuery.getColumnIndex("AB"))));
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("measureParams", str);
                                sQLiteDatabase.update("shovel", contentValues, "localId = ?", new String[]{String.valueOf(j)});
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            return;
        }
        createShovel(sQLiteDatabase);
    }

    private void less22(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "engineering")) {
            if (!isColumnExists(sQLiteDatabase, "engineering", "current_usage")) {
                sQLiteDatabase.execSQL("ALTER TABLE engineering ADD COLUMN current_usage INTEGER DEFAULT 0");
            }
        } else {
            createEngineering(sQLiteDatabase);
        }
        if (isTableExists(sQLiteDatabase, "excavator")) {
            if (isColumnExists(sQLiteDatabase, "excavator", "Hy") && isColumnExists(sQLiteDatabase, "excavator", "pq")) {
                sQLiteDatabase.execSQL("UPDATE excavator SET pq = Hy");
            } else {
                SQLiteColumnRenameUtil.renameColumn(sQLiteDatabase, "excavator", "Hy", "pq");
            }
        }
    }

    private void less21(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "excavator", "mode")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN mode INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "G1")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN G1 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "G2")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN G2 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "G3")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN G3 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ly")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ly REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ry")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ry REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Hy")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Hy REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ay")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ay REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ax")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ax REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "BD")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN BD REAL DEFAULT 0");
        }
        for (String str : this.projectTableList) {
            if (!isColumnExists(sQLiteDatabase, str, "engineering_name")) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN engineering_name TEXT");
            }
        }
        if (isTableExists(sQLiteDatabase, "shovel")) {
            return;
        }
        createShovel(sQLiteDatabase);
    }

    private void less20(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "multiPointArea")) {
            return;
        }
        createMultiPointArea(sQLiteDatabase);
    }

    private void less19(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "dike", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE dike ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "line", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE line ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "polyline", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE polyline ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "onePointArea", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE onePointArea ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "threePointArea", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE threePointArea ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "siteleveling", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE siteleveling ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "arbitraryline", "shovelTipType")) {
            sQLiteDatabase.execSQL("ALTER TABLE arbitraryline ADD COLUMN shovelTipType INTEGER DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "curvedSlope", "shovelTipType")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE curvedSlope ADD COLUMN shovelTipType INTEGER DEFAULT 0");
    }

    private void less18(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "wagou", "leftSlopeRatio")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN leftSlopeRatio REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "rightSlopeRatio")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN rightSlopeRatio REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "leftBottomWidth")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN leftBottomWidth REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "rightBottomWidth")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN rightBottomWidth REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "wagou", "advancedType")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN advancedType INTEGER DEFAULT 0");
    }

    private void less17(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "curvedSlope")) {
            return;
        }
        createCurvedSlope(sQLiteDatabase);
    }

    private void less16(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isTableExists(sQLiteDatabase, "onePointArea")) {
            createOnePointArea(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "threePointArea")) {
            createThreePointArea(sQLiteDatabase);
        }
        if (!isTableExists(sQLiteDatabase, "siteleveling")) {
            createSiteLeveling(sQLiteDatabase);
        }
        if (isTableExists(sQLiteDatabase, "arbitraryline")) {
            return;
        }
        createArbitraryLine(sQLiteDatabase);
    }

    private void less15(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "polyline", "heightDiff")) {
            sQLiteDatabase.execSQL("ALTER TABLE polyline ADD COLUMN heightDiff REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "polyline", "baseStationLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE polyline ADD COLUMN baseStationLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "polyline", "baseStationLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE polyline ADD COLUMN baseStationLat REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "polyline", "baseStationElev")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE polyline ADD COLUMN baseStationElev REAL DEFAULT 0");
    }

    private void less14(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "deviceInfo")) {
            return;
        }
        createDeviceInfo(sQLiteDatabase);
    }

    private void less13(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "polyline")) {
            return;
        }
        createPolyLine(sQLiteDatabase);
    }

    private void less12(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "baseStationLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN baseStationLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "baseStationLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN baseStationLat REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "baseStationElev")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN baseStationElev REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "baseStationLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN baseStationLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "baseStationLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN baseStationLat REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "baseStationElev")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN baseStationElev REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "baseStationLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN baseStationLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "baseStationLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN baseStationLat REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "baseStationElev")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN baseStationElev REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "dike", "baseStationLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE dike ADD COLUMN baseStationLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "dike", "baseStationLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE dike ADD COLUMN baseStationLat REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "dike", "baseStationElev")) {
            sQLiteDatabase.execSQL("ALTER TABLE dike ADD COLUMN baseStationElev REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "line", "baseStationLon")) {
            sQLiteDatabase.execSQL("ALTER TABLE line ADD COLUMN baseStationLon REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "line", "baseStationLat")) {
            sQLiteDatabase.execSQL("ALTER TABLE line ADD COLUMN baseStationLat REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "line", "baseStationElev")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE line ADD COLUMN baseStationElev REAL DEFAULT 0");
    }

    private void less11(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "excavator", "AB")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AB REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Lx")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Lx REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "HA")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN HA REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Dx")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Dx REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "AC")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AC REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "AD")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AD REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "BC")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN BC REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "CD")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN CD REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "AL")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AL REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "AR")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AR REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "BL")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN BL REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "BR")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN BR REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ly")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ly REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "excavator", "Ry")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ry REAL DEFAULT 0");
    }

    private void less10(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isColumnExists(sQLiteDatabase, "excavator", "attitudeSensor")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN attitudeSensor INTEGER DEFAULT 0");
    }

    private void less9(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isColumnExists(sQLiteDatabase, "shuapo", "flatDistance")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN flatDistance REAL DEFAULT 0");
    }

    private void less8(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "pointLib", "coordinateSystem")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN coordinateSystem TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "corsName")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN corsName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "corsHost")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN corsHost TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "corsPort")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN corsPort INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "corsUserName")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN corsUserName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "pointLib", "corsPassword")) {
            sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN corsPassword TEXT DEFAULT ''");
        }
        if (isColumnExists(sQLiteDatabase, "pointLib", "corsMount")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE pointLib ADD COLUMN corsMount TEXT DEFAULT ''");
    }

    private void less7(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "excavator", "calibParamsId")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN calibParamsId TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "calibParams")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN calibParams TEXT DEFAULT ''");
        }
        if (isTableExists(sQLiteDatabase, "line")) {
            return;
        }
        createLine(sQLiteDatabase);
    }

    private void less6(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "dike")) {
            return;
        }
        createDike(sQLiteDatabase);
    }

    private void less5(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isTableExists(sQLiteDatabase, "excavator")) {
            createExcavator(sQLiteDatabase);
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "subType")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN subType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "showUnit")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN showUnit INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "subType")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN subType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "tickA")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN tickA INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "tickB")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN tickB INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "tickC")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN tickC INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "ditchC")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN ditchC REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "width")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN width REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "heigth")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN heigth REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "ratio")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN ratio REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "showUnit")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN showUnit INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "subType")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN subType INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "tickA")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN tickA INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "tickB")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN tickB INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "length")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN length REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "depthA")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN depthA REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "depthB")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN depthB REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "wagou", "showUnit")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN showUnit INTEGER DEFAULT 0");
    }

    private void less4(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isTableExists(sQLiteDatabase, "share")) {
            createShare(sQLiteDatabase);
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "updateTime")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN updateTime INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "projectUUid")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN projectUUid TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "projectId")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN projectId INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "version")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN version INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "coordinateSystem")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN coordinateSystem TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "corsName")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN corsName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "corsHost")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN corsHost TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "corsPort")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN corsPort INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "corsUserName")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN corsUserName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "corsPassword")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN corsPassword TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "corsMount")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN corsMount TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "editState")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN editState INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "updateTime")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN updateTime INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "projectUUid")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN projectUUid TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "projectId")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN projectId INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "version")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN version INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "coordinateSystem")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN coordinateSystem TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "corsName")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN corsName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "corsHost")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN corsHost TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "corsPort")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN corsPort INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "corsUserName")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN corsUserName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "corsPassword")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN corsPassword TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "corsMount")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN corsMount TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "editState")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN editState INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "updateTime")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN updateTime INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "projectUUid")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN projectUUid TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "projectId")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN projectId INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "version")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN version INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "coordinateSystem")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN coordinateSystem TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "corsName")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN corsName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "corsHost")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN corsHost TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "corsPort")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN corsPort INTEGER DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "corsUserName")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN corsUserName TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "corsPassword")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN corsPassword TEXT DEFAULT ''");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "corsMount")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN corsMount TEXT DEFAULT ''");
        }
        if (isColumnExists(sQLiteDatabase, "wagou", "editState")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN editState INTEGER DEFAULT 0");
    }

    private void less3(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "east")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN east REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "north")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN north REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "east1")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN east1 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "north1")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN north1 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "east2")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN east2 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "north2")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN north2 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "east3")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN east3 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "shuapo", "north3")) {
            sQLiteDatabase.execSQL("ALTER TABLE shuapo ADD COLUMN north3 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "east1")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN east1 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "north1")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN north1 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "east2")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN east2 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "north2")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN north2 REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "wagou", "eastH")) {
            sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN eastH REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "wagou", "northH")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE wagou ADD COLUMN northH REAL DEFAULT 0");
    }

    private void less2(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "depth")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN depth REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "zhaoping", "height")) {
            sQLiteDatabase.execSQL("ALTER TABLE zhaoping ADD COLUMN height REAL DEFAULT 0");
        }
        if (!isTableExists(sQLiteDatabase, "cors")) {
            createCors(sQLiteDatabase);
        }
        if (isTableExists(sQLiteDatabase, "pointLib")) {
            return;
        }
        createPointLib(sQLiteDatabase);
    }

    private void createCors(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE cors (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, ntripType INTEGER, name TEXT, host TEXT, port INTEGER, userName TEXT, password TEXT, mount TEXT)");
    }

    private void createPointLib(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE pointLib (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, point_id INTEGER DEFAULT 0, group_id INTEGER DEFAULT 0, group_local_id INTEGER DEFAULT 0, createTime INTEGER, pointType INTEGER, name TEXT, systemType TEXT, lon REAL, lat REAL, alt REAL DEFAULT 0, elev REAL, geodeticLon REAL DEFAULT 0, geodeticLat REAL DEFAULT 0, geodeticElev REAL DEFAULT 0, east REAL, north REAL, quality INTEGER, hdop REAL DEFAULT 0, vdop REAL DEFAULT 0, encod INTEGER, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT)");
    }

    private void ensureExcavatorSchemaV26(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator")) {
            if (!isColumnExists(sQLiteDatabase, "excavator", "calibParamsId")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN calibParamsId TEXT DEFAULT ''");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "calibParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN calibParams TEXT DEFAULT ''");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "mode")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN mode INTEGER DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "excavatorParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN excavatorParams TEXT");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "measureParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN measureParams TEXT");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "autoGenerateParams")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN autoGenerateParams TEXT");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "version")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN version INTEGER DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "showUnit")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN showUnit INTEGER DEFAULT 0");
            }
            ensureExcavatorPqColumn(sQLiteDatabase);
            ensureExcavatorCalibSoInputsColumn(sQLiteDatabase);
        }
    }

    private void ensureExcavatorCalibSoInputsColumn(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator") && !isColumnExists(sQLiteDatabase, "excavator", "calibSoInputs")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN calibSoInputs TEXT");
        }
    }

    private void ensureExcavatorPqColumn(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isColumnExists(sQLiteDatabase, "excavator", "pq")) {
            return;
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Hy")) {
            if (isColumnExists(sQLiteDatabase, "excavator", "HA")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN pq REAL DEFAULT 0");
                return;
            }
            return;
        }
        SQLiteColumnRenameUtil.renameColumn(sQLiteDatabase, "excavator", "Hy", "pq");
    }

    private void repairExcavatorOnDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator")) {
            if (i >= 26 && i2 < 26) {
                restoreExcavatorFlatCalibrationColumns(sQLiteDatabase);
            }
            if (i >= 25 && i2 < 25) {
                restoreExcavatorFlatMeasureColumns(sQLiteDatabase);
            }
            if (i2 >= 26) {
                ensureExcavatorSchemaV26(sQLiteDatabase);
            }
        }
    }

    private void syncExcavatorFlatColumnsFromJson(SQLiteDatabase sQLiteDatabase) throws SQLException {
        restoreExcavatorFlatCalibrationColumns(sQLiteDatabase);
        restoreExcavatorFlatMeasureColumns(sQLiteDatabase);
    }

    private void syncShovelFlatColumnsFromJson(SQLiteDatabase sQLiteDatabase) throws SQLException {
        restoreShovelFlatMeasureColumns(sQLiteDatabase);
    }

    private void restoreExcavatorFlatCalibrationColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ensureExcavatorFlatCalibrationColumns(sQLiteDatabase);
        if (!isColumnExists(sQLiteDatabase, "excavator", "excavatorParams")) {
            return;
        }
        try {
            Cursor cursorQuery = sQLiteDatabase.query("excavator", new String[]{"localId", "excavatorParams"}, null, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    return;
                }
                return;
            }
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("excavatorParams"));
                if (string != null && !string.isEmpty()) {
                    long j = cursorQuery.getLong(cursorQuery.getColumnIndex("localId"));
                    ContentValues excavatorParamsToValues = parseExcavatorParamsToValues(string);
                    if (excavatorParamsToValues.size() > 0) {
                        sQLiteDatabase.update("excavator", excavatorParamsToValues, "localId = ?", new String[]{String.valueOf(j)});
                    }
                }
            }
            cursorQuery.close();
        } finally {
        }
    }

    private void ensureExcavatorFlatCalibrationColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!isColumnExists(sQLiteDatabase, "excavator", "HA")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN HA REAL DEFAULT 0");
        }
        ensureExcavatorPqColumn(sQLiteDatabase);
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ay")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ay REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Ax")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ax REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "Dx")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Dx REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "AD")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AD REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "BD")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN BD REAL DEFAULT 0");
        }
        if (!isColumnExists(sQLiteDatabase, "excavator", "CD")) {
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN CD REAL DEFAULT 0");
        }
        if (isColumnExists(sQLiteDatabase, "excavator", "BC")) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN BC REAL DEFAULT 0");
    }

    private void ensureExcavatorFlatMeasureColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "excavator")) {
            if (!isColumnExists(sQLiteDatabase, "excavator", "G1")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN G1 REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "G2")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN G2 REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "G3")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN G3 REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "Ly")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ly REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "Ry")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN Ry REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "AB")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AB REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "NT")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN NT REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "AT")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN AT REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "excavator", "NA")) {
                sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN NA REAL DEFAULT 0");
            }
            if (isColumnExists(sQLiteDatabase, "excavator", "LR")) {
                return;
            }
            sQLiteDatabase.execSQL("ALTER TABLE excavator ADD COLUMN LR REAL DEFAULT 0");
        }
    }

    private void ensureShovelFlatMeasureColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (isTableExists(sQLiteDatabase, "shovel")) {
            if (!isColumnExists(sQLiteDatabase, "shovel", "G1")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN G1 REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "G2")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN G2 REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "G3")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN G3 REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "Ly")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN Ly REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "Ry")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN Ry REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "AB")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN AB REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "NT")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN NT REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "AT")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN AT REAL DEFAULT 0");
            }
            if (!isColumnExists(sQLiteDatabase, "shovel", "NA")) {
                sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN NA REAL DEFAULT 0");
            }
            if (isColumnExists(sQLiteDatabase, "shovel", "LR")) {
                return;
            }
            sQLiteDatabase.execSQL("ALTER TABLE shovel ADD COLUMN LR REAL DEFAULT 0");
        }
    }

    @SuppressLint({"Range"})
    private void restoreExcavatorFlatMeasureColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ensureExcavatorFlatMeasureColumns(sQLiteDatabase);
        try {
            Cursor cursorQuery = sQLiteDatabase.query("excavator", new String[]{"localId", "measureParams", "autoGenerateParams"}, null, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } else {
                while (cursorQuery.moveToNext()) {
                    long j = cursorQuery.getLong(cursorQuery.getColumnIndex("localId"));
                    ContentValues measureParamsToValues = parseMeasureParamsToValues(cursorQuery.getString(cursorQuery.getColumnIndex("measureParams")), cursorQuery.getString(cursorQuery.getColumnIndex("autoGenerateParams")));
                    if (measureParamsToValues.size() > 0) {
                        sQLiteDatabase.update("excavator", measureParamsToValues, "localId = ?", new String[]{String.valueOf(j)});
                    }
                }
                cursorQuery.close();
            }
        } finally {
        }
    }

    @SuppressLint({"Range"})
    private void restoreShovelFlatMeasureColumns(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ensureShovelFlatMeasureColumns(sQLiteDatabase);
        if (!isColumnExists(sQLiteDatabase, "shovel", "measureParams")) {
            return;
        }
        try {
            Cursor cursorQuery = sQLiteDatabase.query("shovel", new String[]{"localId", "measureParams", "autoGenerateParams"}, null, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } else {
                while (cursorQuery.moveToNext()) {
                    long j = cursorQuery.getLong(cursorQuery.getColumnIndex("localId"));
                    ContentValues measureParamsToValues = parseMeasureParamsToValues(cursorQuery.getString(cursorQuery.getColumnIndex("measureParams")), cursorQuery.getString(cursorQuery.getColumnIndex("autoGenerateParams")));
                    if (measureParamsToValues.size() > 0) {
                        sQLiteDatabase.update("shovel", measureParamsToValues, "localId = ?", new String[]{String.valueOf(j)});
                    }
                }
                cursorQuery.close();
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.content.ContentValues parseMeasureParamsToValues(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            android.content.ContentValues r0 = new android.content.ContentValues
            r0.<init>()
            r1 = 0
            if (r6 == 0) goto L1c
            boolean r2 = r6.isEmpty()     // Catch: java.lang.Exception -> L1a
            if (r2 != 0) goto L1c
            com.google.gson.Gson r7 = com.qianhe.yct.db.DatabaseHelper.GSON     // Catch: java.lang.Exception -> L1a
            java.lang.Class<com.qianhe.baselib.bean.ShovelMeasureParams> r2 = com.qianhe.baselib.bean.ShovelMeasureParams.class
            java.lang.Object r6 = r7.fromJson(r6, r2)     // Catch: java.lang.Exception -> L1a
            com.qianhe.baselib.bean.ShovelMeasureParams r6 = (com.qianhe.baselib.bean.ShovelMeasureParams) r6     // Catch: java.lang.Exception -> L1a
            r1 = r6
            goto L53
        L1a:
            r6 = move-exception
            goto L3b
        L1c:
            if (r7 == 0) goto L53
            boolean r6 = r7.isEmpty()     // Catch: java.lang.Exception -> L1a
            if (r6 != 0) goto L53
            com.google.gson.Gson r6 = com.qianhe.yct.db.DatabaseHelper.GSON     // Catch: java.lang.Exception -> L1a
            java.lang.Class<com.qianhe.baselib.bean.ShovelAutoGenerateParams> r2 = com.qianhe.baselib.bean.ShovelAutoGenerateParams.class
            java.lang.Object r6 = r6.fromJson(r7, r2)     // Catch: java.lang.Exception -> L1a
            com.qianhe.baselib.bean.ShovelAutoGenerateParams r6 = (com.qianhe.baselib.bean.ShovelAutoGenerateParams) r6     // Catch: java.lang.Exception -> L1a
            if (r6 == 0) goto L53
            boolean r7 = r6.isEmpty()     // Catch: java.lang.Exception -> L1a
            if (r7 != 0) goto L53
            com.qianhe.baselib.bean.ShovelMeasureParams r1 = r6.toMeasureParams(r1)     // Catch: java.lang.Exception -> L1a
            goto L53
        L3b:
            r6.printStackTrace()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r2 = "解析 measureParams 失败："
            r7.append(r2)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.qianhe.baselib.utils.LogToFile.e(r6)
        L53:
            if (r1 == 0) goto Ld1
            r1.syncLRWithHalfWidths()
            double r6 = r1.G1
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "G1"
            r0.put(r7, r6)
            double r6 = r1.G2
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "G2"
            r0.put(r7, r6)
            double r6 = r1.G3
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "G3"
            r0.put(r7, r6)
            double r6 = r1.Ly
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "Ly"
            r0.put(r7, r6)
            double r6 = r1.Ry
            r2 = 0
            int r4 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r4 == 0) goto L8d
            goto L8f
        L8d:
            double r6 = r1.Ly
        L8f:
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "Ry"
            r0.put(r7, r6)
            double r6 = r1.AB
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "AB"
            r0.put(r7, r6)
            double r6 = r1.NT
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "NT"
            r0.put(r7, r6)
            double r6 = r1.AT
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "AT"
            r0.put(r7, r6)
            double r6 = r1.NA
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "NA"
            r0.put(r7, r6)
            double r6 = r1.resolveLR()
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "LR"
            r0.put(r7, r6)
        Ld1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.DatabaseHelper.parseMeasureParamsToValues(java.lang.String, java.lang.String):android.content.ContentValues");
    }

    private ContentValues parseExcavatorParamsToValues(String str) {
        ContentValues contentValues = new ContentValues();
        try {
            JSONObject jSONObject = new JSONObject(str);
            putJsonDouble(contentValues, jSONObject, "HA");
            putJsonDouble(contentValues, jSONObject, "pq");
            putJsonDouble(contentValues, jSONObject, "Ay");
            putJsonDouble(contentValues, jSONObject, "Ax");
            putJsonDouble(contentValues, jSONObject, "Dx");
            putJsonDouble(contentValues, jSONObject, "AD");
            putJsonDouble(contentValues, jSONObject, "BD");
            putJsonDouble(contentValues, jSONObject, "CD");
            putJsonDouble(contentValues, jSONObject, "BC");
            return contentValues;
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("解析 excavatorParams 失败：" + e);
            return contentValues;
        }
    }

    private void putJsonDouble(ContentValues contentValues, JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            try {
                contentValues.put(str, Double.valueOf(jSONObject.getDouble(str)));
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public boolean isTableExists(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name=?", new String[]{str});
        boolean z = cursorRawQuery.getCount() > 0;
        cursorRawQuery.close();
        return z;
    }

    public boolean isColumnExists(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
            if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                int columnIndex = cursorRawQuery.getColumnIndex("name");
                while (!str2.equals(cursorRawQuery.getString(columnIndex))) {
                    if (!cursorRawQuery.moveToNext()) {
                    }
                }
                cursorRawQuery.close();
                return true;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }
}
