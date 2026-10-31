.class public Lcom/qianhe/yct/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field public static dbPath:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final projectTableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/qianhe/yct/db/DatabaseHelper;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/qianhe/baselib/utils/FileUtil;->mkDbDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.qianhe.xfix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "xfix.db"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "yct.db"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/qianhe/yct/db/DatabaseHelper;->dbPath:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    const-string v15, "curvedSlope"

    const-string v16, "multiPointArea"

    const-string/jumbo v5, "zhaoping"

    const-string/jumbo v6, "shuapo"

    const-string/jumbo v7, "wagou"

    const-string v8, "dike"

    const-string v9, "line"

    const-string v10, "polyline"

    const-string v11, "onePointArea"

    const-string/jumbo v12, "threePointArea"

    const-string/jumbo v13, "siteleveling"

    const-string v14, "arbitraryline"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    .line 71
    iput-object v1, v0, Lcom/qianhe/yct/db/DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addEngineeringUuidColumnAndBackfill(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .line 1034
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1035
    :cond_0
    const-string v0, "engineering_uuid"

    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN engineering_uuid TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1038
    :cond_1
    const-string v0, "engineering"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 1039
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET engineering_uuid = (SELECT e.engineering_uuid FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " e WHERE (( "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".belong_engineering_id > 0 AND e.engineering_id = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".belong_engineering_id) OR (( "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".belong_engineering_id IS NULL OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".belong_engineering_id = 0) AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".engineering_local_id > 0 AND e.id = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".engineering_local_id)) AND e.engineering_uuid IS NOT NULL AND e.engineering_uuid != \'\' LIMIT 1) WHERE (engineering_uuid IS NULL OR engineering_uuid = \'\') AND ((belong_engineering_id IS NOT NULL AND belong_engineering_id > 0) OR (engineering_local_id IS NOT NULL AND engineering_local_id > 0))"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private bindOrphanPointGroupsToDefaultEngineering(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1185
    const-string v10, "pointGroup"

    invoke-virtual {v0, v1, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 1189
    :cond_0
    const-string v2, "engineering"

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    const-string v11, "engineering_uuid"

    const-string v12, ""

    if-eqz v2, :cond_7

    .line 1190
    const-string v15, "id"

    const-string v2, "engineering_id"

    filled-new-array {v15, v2, v11}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const-string v9, "1"

    move-object v4, v2

    const-string v2, "engineering"

    move-object v5, v4

    const-string v4, "current_usage = 1"

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move-object/from16 v13, v16

    const-wide/16 v17, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 1192
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1193
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1194
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1195
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v12

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-object/from16 v16, v8

    goto :goto_1

    :cond_2
    move-object/from16 v16, v12

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    :goto_1
    if-eqz v2, :cond_3

    .line 1197
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    cmp-long v2, v19, v17

    if-gtz v2, :cond_6

    .line 1199
    filled-new-array {v15, v13, v11}, [Ljava/lang/String;

    move-result-object v2

    const-string v8, "id ASC"

    const-string v9, "1"

    move-object v3, v2

    const/4 v4, 0x2

    const-string v2, "engineering"

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v13, 0x2

    const/4 v7, 0x0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    const/4 v15, 0x2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1201
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1202
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1203
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1204
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v16, v12

    goto :goto_2

    :cond_4
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    .line 1206
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_6
    move-object/from16 v1, p1

    goto :goto_3

    :cond_7
    const-wide/16 v17, 0x0

    move-object/from16 v16, v12

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    :cond_8
    :goto_3
    cmp-long v2, v19, v17

    if-gtz v2, :cond_9

    :goto_4
    return-void

    .line 1210
    :cond_9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1211
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "engineering_local_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1212
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "belong_engineering_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v16, :cond_a

    move-object/from16 v12, v16

    .line 1213
    :cond_a
    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v3, "(engineering_local_id IS NULL OR engineering_local_id = 0) AND (belong_engineering_id IS NULL OR belong_engineering_id = 0) AND (engineering_uuid IS NULL OR engineering_uuid = \'\')"

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private clearPlaceholderCalibSoInputs(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .line 977
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "calibSoInputs"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 980
    :cond_0
    const-string v2, "localId"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "excavator"

    const-string v6, "calibSoInputs IS NOT NULL AND calibSoInputs != \'\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 987
    :catch_0
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 988
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 989
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 990
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    goto :goto_0

    .line 994
    :cond_3
    :try_start_1
    sget-object v8, Lcom/qianhe/yct/db/DatabaseHelper;->GSON:Lcom/google/gson/Gson;

    const-class v9, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-eqz v7, :cond_2

    .line 995
    invoke-virtual {v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isPlaceholder()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 998
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 999
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1000
    const-string v8, "localId = ?"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1006
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-lez v4, :cond_6

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5df2\u6e05\u9664\u6316\u673a\u5360\u4f4d calibSoInputs\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 1006
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1007
    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method private createArbitraryLine(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 235
    const-string v0, "CREATE TABLE arbitraryline (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, lon REAL, lat REAL, elev REAL, east REAL, north REAL, depth REAL, ratio REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 270
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createCors(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1749
    const-string v0, "CREATE TABLE cors (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, ntripType INTEGER, name TEXT, host TEXT, port INTEGER, userName TEXT, password TEXT, mount TEXT)"

    .line 1760
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createCurvedSlope(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 188
    const-string v0, "CREATE TABLE curvedSlope (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, lon1 REAL, lat1 REAL, elev1 REAL, east1 REAL, north1 REAL, depthA REAL, lon2 REAL, lat2 REAL, elev2 REAL, east2 REAL, north2 REAL, depthB REAL, coordsListJson TEXT, ratio REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 230
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createDeviceInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 562
    const-string v0, "CREATE TABLE deviceInfo (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, sn TEXT, type TEXT, pnVersion TEXT, fmwVersion TEXT, gnssVersion TEXT)"

    .line 572
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createDike(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 670
    const-string v0, "CREATE TABLE dike (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, east1 REAL, north1 REAL, east2 REAL, north2 REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, width REAL, depthA REAL,depthB REAL,length REAL, tickA INTEGER, tickB INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 715
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createEngineering(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 130
    const-string v0, "CREATE TABLE engineering (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, engineering_id INTEGER, engineering_uuid TEXT, create_time INTEGER, update_time INTEGER, name TEXT, ellipsoid_type INTEGER, custom_ellipsoid_params TEXT, projection_type INTEGER, gauss_kruger_params TEXT, utm_params TEXT, transverse_mercator_params TEXT, conversion_params_type INTEGER, trans_param_id INTEGER DEFAULT 0, trans_param_local_id INTEGER DEFAULT 0, four_parameter TEXT, seven_parameter TEXT, edit_state INTEGER, current_usage INTEGER DEFAULT 0, version INTEGER, belong_uid INTEGER DEFAULT 0)"

    .line 150
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createExcavator(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 720
    const-string v0, "CREATE TABLE excavator (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, userId INTEGER, calibrateId INTEGER, calibrateUUid TEXT, createTime INTEGER, updateTime INTEGER, name TEXT, calibParamsId TEXT, calibParams TEXT, leftDist REAL, rigthDist REAL, spanDist REAL, deviceHeight REAL, mode INTEGER, excavatorParams TEXT, version INTEGER, showUnit INTEGER, measureParams TEXT, autoGenerateParams TEXT, calibSoInputs TEXT, belong_uid INTEGER DEFAULT 0)"

    .line 743
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createGnssTransParam(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 113
    const-string v0, "CREATE TABLE gnss_trans_param (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, trans_param_id INTEGER, trans_param_uuid TEXT, create_time INTEGER, update_time INTEGER, version INTEGER, belong_uid INTEGER, state INTEGER DEFAULT 0, name TEXT, param_type INTEGER, params_detail TEXT, control_points TEXT)"

    .line 126
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createLine(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 616
    const-string v0, "CREATE TABLE line (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, ratio REAL, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, east1 REAL, north1 REAL, east2 REAL, north2 REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, width REAL, depthA REAL,depthB REAL,length REAL, tickA INTEGER, tickB INTEGER, spacing REAL, pileSpacing REAL, rigthItems INTEGER, leftItems INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 666
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createMultiPointArea(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 154
    const-string v0, "CREATE TABLE multiPointArea (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, coordsListJson TEXT, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 183
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createOnePointArea(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 474
    const-string v0, "CREATE TABLE onePointArea (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, subType INTEGER, shovelTipType INTEGER, cadPath TEXT, lon REAL, lat REAL, elev REAL, east REAL, north REAL, depth REAL, ratioN REAL, ratioE REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 510
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPointGroup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1222
    const-string v0, "CREATE TABLE pointGroup (group_local_id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, group_id INTEGER DEFAULT 0, group_uuid TEXT, create_time INTEGER, update_time INTEGER, version INTEGER DEFAULT 0, name TEXT, remark TEXT, local_ids TEXT, engineering_local_id INTEGER DEFAULT 0, belong_engineering_id INTEGER DEFAULT 0, engineering_uuid TEXT, editState INTEGER DEFAULT 0, belong_uid INTEGER DEFAULT 0)"

    .line 1238
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPointLib(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1764
    const-string v0, "CREATE TABLE pointLib (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, point_id INTEGER DEFAULT 0, group_id INTEGER DEFAULT 0, group_local_id INTEGER DEFAULT 0, createTime INTEGER, pointType INTEGER, name TEXT, systemType TEXT, lon REAL, lat REAL, alt REAL DEFAULT 0, elev REAL, geodeticLon REAL DEFAULT 0, geodeticLat REAL DEFAULT 0, geodeticElev REAL DEFAULT 0, east REAL, north REAL, quality INTEGER, hdop REAL DEFAULT 0, vdop REAL DEFAULT 0, encod INTEGER, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT)"

    .line 1794
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPolyLine(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 576
    const-string v0, "CREATE TABLE polyline (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, depthA REAL,depthB REAL,tickA INTEGER, tickB INTEGER, ratio REAL, heightDiff REAL, width REAL, coordsListJson TEXT, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 612
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createShare(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 768
    const-string v0, "CREATE TABLE share (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, expireTime INTEGER, shareId INTEGER, shareCode TEXT, editState INTEGER, name TEXT, projectUUids TEXT, shareUUid TEXT, belong_uid INTEGER DEFAULT 0)"

    .line 781
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createShovel(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 748
    const-string v0, "CREATE TABLE shovel (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, name TEXT, bucket_id INTEGER, bucket_uuid TEXT, mode INTEGER, measureParams TEXT, autoGenerateParams TEXT, param TEXT, showUnit INTEGER, version INTEGER, belong_uid INTEGER DEFAULT 0)"

    .line 763
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createShuaPo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 378
    const-string v0, "CREATE TABLE shuapo (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, subType INTEGER, shovelTipType INTEGER, cadPath TEXT, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, quality1 INTEGER, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, quality2 INTEGER, targetLon3 REAL, targetLat3 REAL, targetElevation3 REAL, quality3 INTEGER, east1 REAL, north1 REAL, east2 REAL, north2 REAL, east3 REAL, north3 REAL, targetLonBenchmark REAL, targetLatBenchmark REAL, targetElevationBenchmark REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, tickA INTEGER, tickB INTEGER, tickC INTEGER, ditchC REAL, width REAL, heigth REAL, flatDistance REAL, ratio REAL, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 432
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createSiteLeveling(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 275
    const-string v0, "CREATE TABLE siteleveling (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, subType INTEGER, shovelTipType INTEGER, coordsListJson TEXT, ratio REAL, compactionCoeff REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 306
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createThreePointArea(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 514
    const-string v0, "CREATE TABLE threePointArea (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, subType INTEGER, shovelTipType INTEGER, cadPath TEXT, lon1 REAL, lat1 REAL, elev1 REAL, north1 REAL, east1 REAL, lon2 REAL, lat2 REAL, elev2 REAL, east2 REAL, north2 REAL, lon3 REAL, lat3 REAL, elev3 REAL, east3 REAL, north3 REAL, depthA REAL, depthB REAL, depthC REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER, baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 558
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createUser(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 911
    const-string v0, "CREATE TABLE user (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, deviceId TEXT, user_token TEXT, user_account TEXT, user_name TEXT, user_id INTEGER DEFAULT 0)"

    .line 919
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createWaGou(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 310
    const-string v0, "CREATE TABLE wagou (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, openlineType INTEGER, ratio REAL, targetLon1 REAL, targetLat1 REAL, targetElevation1 REAL, quality1 INTEGER, targetLon2 REAL, targetLat2 REAL, targetElevation2 REAL, quality2 INTEGER, targetLonH REAL, targetLatH REAL, targetElevationH REAL, qualityH INTEGER,east1 REAL, north1 REAL, east2 REAL, north2 REAL, eastH REAL, northH REAL, collectType INTEGER,targetLonBenchmark REAL, targetLatBenchmark REAL, targetElevationBenchmark REAL, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, width REAL, depth REAL,depthA REAL,depthB REAL,length REAL, tickA INTEGER, tickB INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL,leftSlopeRatio REAL, rightSlopeRatio REAL, leftBottomWidth REAL, rightBottomWidth REAL, advancedType INTEGER, belong_uid INTEGER DEFAULT 0)"

    .line 374
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createZhaoPing(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 436
    const-string v0, "CREATE TABLE zhaoping (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, createTime INTEGER, updateTime INTEGER, projectUUid TEXT, projectId INTEGER, version INTEGER, type INTEGER, subType INTEGER, shovelTipType INTEGER, name TEXT, belong_engineering_id long, engineering_uuid TEXT, engineering_local_id INTEGER DEFAULT 0, cadPath TEXT, targetLon REAL, targetLat REAL, targetElevation REAL, east REAL, north REAL, depth REAL, height REAL, quality INTEGER, coordinateSystem TEXT, corsName TEXT, corsHost TEXT, corsPort INTEGER, corsUserName TEXT, corsPassword TEXT, corsMount TEXT, editState INTEGER, showUnit INTEGER,baseStationLon REAL,baseStationLat REAL,baseStationElev REAL, belong_uid INTEGER DEFAULT 0)"

    .line 470
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private ensureExcavatorCalibSoInputsColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1831
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1832
    :cond_0
    const-string v1, "calibSoInputs"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1833
    const-string v0, "ALTER TABLE excavator ADD COLUMN calibSoInputs TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureExcavatorFlatCalibrationColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1897
    const-string v0, "HA"

    const-string v1, "excavator"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    const-string v0, "ALTER TABLE excavator ADD COLUMN HA REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1900
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorPqColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1901
    const-string v0, "Ay"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1902
    const-string v0, "ALTER TABLE excavator ADD COLUMN Ay REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1904
    :cond_1
    const-string v0, "Ax"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1905
    const-string v0, "ALTER TABLE excavator ADD COLUMN Ax REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1907
    :cond_2
    const-string v0, "Dx"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1908
    const-string v0, "ALTER TABLE excavator ADD COLUMN Dx REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    :cond_3
    const-string v0, "AD"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1911
    const-string v0, "ALTER TABLE excavator ADD COLUMN AD REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1913
    :cond_4
    const-string v0, "BD"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1914
    const-string v0, "ALTER TABLE excavator ADD COLUMN BD REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    :cond_5
    const-string v0, "CD"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1917
    const-string v0, "ALTER TABLE excavator ADD COLUMN CD REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1919
    :cond_6
    const-string v0, "BC"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1920
    const-string v0, "ALTER TABLE excavator ADD COLUMN BC REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private ensureExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1925
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1926
    :cond_0
    const-string v1, "G1"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1927
    const-string v1, "ALTER TABLE excavator ADD COLUMN G1 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1929
    :cond_1
    const-string v1, "G2"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1930
    const-string v1, "ALTER TABLE excavator ADD COLUMN G2 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1932
    :cond_2
    const-string v1, "G3"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1933
    const-string v1, "ALTER TABLE excavator ADD COLUMN G3 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1935
    :cond_3
    const-string v1, "Ly"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1936
    const-string v1, "ALTER TABLE excavator ADD COLUMN Ly REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1938
    :cond_4
    const-string v1, "Ry"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1939
    const-string v1, "ALTER TABLE excavator ADD COLUMN Ry REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1941
    :cond_5
    const-string v1, "AB"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1942
    const-string v1, "ALTER TABLE excavator ADD COLUMN AB REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1944
    :cond_6
    const-string v1, "NT"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1945
    const-string v1, "ALTER TABLE excavator ADD COLUMN NT REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1947
    :cond_7
    const-string v1, "AT"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1948
    const-string v1, "ALTER TABLE excavator ADD COLUMN AT REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1950
    :cond_8
    const-string v1, "NA"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1951
    const-string v1, "ALTER TABLE excavator ADD COLUMN NA REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1953
    :cond_9
    const-string v1, "LR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1954
    const-string v0, "ALTER TABLE excavator ADD COLUMN LR REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method private ensureExcavatorPqColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1838
    const-string v0, "excavator"

    const-string v1, "pq"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1839
    const-string v2, "Hy"

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1840
    invoke-static {p1, v0, v2, v1}, Lcom/qianhe/yct/db/SQLiteColumnRenameUtil;->renameColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 1841
    :cond_0
    const-string v1, "HA"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1842
    const-string v0, "ALTER TABLE excavator ADD COLUMN pq REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private ensureExcavatorSchemaV26(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1801
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1802
    :cond_0
    const-string v1, "calibParamsId"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1803
    const-string v1, "ALTER TABLE excavator ADD COLUMN calibParamsId TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1805
    :cond_1
    const-string v1, "calibParams"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1806
    const-string v1, "ALTER TABLE excavator ADD COLUMN calibParams TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1808
    :cond_2
    const-string v1, "mode"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1809
    const-string v1, "ALTER TABLE excavator ADD COLUMN mode INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1811
    :cond_3
    const-string v1, "excavatorParams"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1812
    const-string v1, "ALTER TABLE excavator ADD COLUMN excavatorParams TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1814
    :cond_4
    const-string v1, "measureParams"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1815
    const-string v1, "ALTER TABLE excavator ADD COLUMN measureParams TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1817
    :cond_5
    const-string v1, "autoGenerateParams"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1818
    const-string v1, "ALTER TABLE excavator ADD COLUMN autoGenerateParams TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1820
    :cond_6
    const-string/jumbo v1, "version"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1821
    const-string v1, "ALTER TABLE excavator ADD COLUMN version INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1823
    :cond_7
    const-string/jumbo v1, "showUnit"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1824
    const-string v0, "ALTER TABLE excavator ADD COLUMN showUnit INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1826
    :cond_8
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorPqColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1827
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorCalibSoInputsColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private ensureShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1959
    const-string/jumbo v0, "shovel"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1960
    :cond_0
    const-string v1, "G1"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1961
    const-string v1, "ALTER TABLE shovel ADD COLUMN G1 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1963
    :cond_1
    const-string v1, "G2"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1964
    const-string v1, "ALTER TABLE shovel ADD COLUMN G2 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1966
    :cond_2
    const-string v1, "G3"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1967
    const-string v1, "ALTER TABLE shovel ADD COLUMN G3 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1969
    :cond_3
    const-string v1, "Ly"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1970
    const-string v1, "ALTER TABLE shovel ADD COLUMN Ly REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1972
    :cond_4
    const-string v1, "Ry"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1973
    const-string v1, "ALTER TABLE shovel ADD COLUMN Ry REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1975
    :cond_5
    const-string v1, "AB"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1976
    const-string v1, "ALTER TABLE shovel ADD COLUMN AB REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1978
    :cond_6
    const-string v1, "NT"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1979
    const-string v1, "ALTER TABLE shovel ADD COLUMN NT REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1981
    :cond_7
    const-string v1, "AT"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1982
    const-string v1, "ALTER TABLE shovel ADD COLUMN AT REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1984
    :cond_8
    const-string v1, "NA"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1985
    const-string v1, "ALTER TABLE shovel ADD COLUMN NA REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1987
    :cond_9
    const-string v1, "LR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1988
    const-string v0, "ALTER TABLE shovel ADD COLUMN LR REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method private hasPointsInPointLibrary(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 1154
    const-string v0, "pointLib"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1155
    :cond_0
    const-string v0, "SELECT COUNT(*) FROM pointLib"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1157
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 1160
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1
.end method

.method private less10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1631
    const-string v0, "excavator"

    const-string v1, "attitudeSensor"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE excavator ADD COLUMN attitudeSensor INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private less11(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1614
    const-string v0, "AB"

    const-string v1, "excavator"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE excavator ADD COLUMN AB REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1615
    :cond_0
    const-string v0, "Lx"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE excavator ADD COLUMN Lx REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    :cond_1
    const-string v0, "HA"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE excavator ADD COLUMN HA REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1617
    :cond_2
    const-string v0, "Dx"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE excavator ADD COLUMN Dx REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1618
    :cond_3
    const-string v0, "AC"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE excavator ADD COLUMN AC REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1619
    :cond_4
    const-string v0, "AD"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ALTER TABLE excavator ADD COLUMN AD REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    :cond_5
    const-string v0, "BC"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ALTER TABLE excavator ADD COLUMN BC REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1621
    :cond_6
    const-string v0, "CD"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALTER TABLE excavator ADD COLUMN CD REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1622
    :cond_7
    const-string v0, "AL"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ALTER TABLE excavator ADD COLUMN AL REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1623
    :cond_8
    const-string v0, "AR"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ALTER TABLE excavator ADD COLUMN AR REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1624
    :cond_9
    const-string v0, "BL"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ALTER TABLE excavator ADD COLUMN BL REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1625
    :cond_a
    const-string v0, "BR"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ALTER TABLE excavator ADD COLUMN BR REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1626
    :cond_b
    const-string v0, "Ly"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ALTER TABLE excavator ADD COLUMN Ly REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1627
    :cond_c
    const-string v0, "Ry"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ALTER TABLE excavator ADD COLUMN Ry REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private less12(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1596
    const-string/jumbo v0, "zhaoping"

    const-string v1, "baseStationLon"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ALTER TABLE zhaoping ADD COLUMN baseStationLon REAL DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1597
    :cond_0
    const-string v2, "baseStationLat"

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ALTER TABLE zhaoping ADD COLUMN baseStationLat REAL DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1598
    :cond_1
    const-string v3, "baseStationElev"

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN baseStationElev REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1599
    :cond_2
    const-string/jumbo v0, "shuapo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ALTER TABLE shuapo ADD COLUMN baseStationLon REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1600
    :cond_3
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ALTER TABLE shuapo ADD COLUMN baseStationLat REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1601
    :cond_4
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ALTER TABLE shuapo ADD COLUMN baseStationElev REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1602
    :cond_5
    const-string/jumbo v0, "wagou"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ALTER TABLE wagou ADD COLUMN baseStationLon REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1603
    :cond_6
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "ALTER TABLE wagou ADD COLUMN baseStationLat REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1604
    :cond_7
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ALTER TABLE wagou ADD COLUMN baseStationElev REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    :cond_8
    const-string v0, "dike"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "ALTER TABLE dike ADD COLUMN baseStationLon REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1606
    :cond_9
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "ALTER TABLE dike ADD COLUMN baseStationLat REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    :cond_a
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ALTER TABLE dike ADD COLUMN baseStationElev REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1608
    :cond_b
    const-string v0, "line"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "ALTER TABLE line ADD COLUMN baseStationLon REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1609
    :cond_c
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ALTER TABLE line ADD COLUMN baseStationLat REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    :cond_d
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ALTER TABLE line ADD COLUMN baseStationElev REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private less13(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1592
    const-string v0, "polyline"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createPolyLine(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private less14(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1588
    const-string v0, "deviceInfo"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createDeviceInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private less15(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1581
    const-string v0, "heightDiff"

    const-string v1, "polyline"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE polyline ADD COLUMN heightDiff REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1582
    :cond_0
    const-string v0, "baseStationLon"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE polyline ADD COLUMN baseStationLon REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1583
    :cond_1
    const-string v0, "baseStationLat"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE polyline ADD COLUMN baseStationLat REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    :cond_2
    const-string v0, "baseStationElev"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE polyline ADD COLUMN baseStationElev REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private less16(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1574
    const-string v0, "onePointArea"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createOnePointArea(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1575
    :cond_0
    const-string/jumbo v0, "threePointArea"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createThreePointArea(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1576
    :cond_1
    const-string/jumbo v0, "siteleveling"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createSiteLeveling(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1577
    :cond_2
    const-string v0, "arbitraryline"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createArbitraryLine(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return-void
.end method

.method private less17(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1570
    const-string v0, "curvedSlope"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createCurvedSlope(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private less18(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1562
    const-string v0, "leftSlopeRatio"

    const-string/jumbo v1, "wagou"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE wagou ADD COLUMN leftSlopeRatio REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1563
    :cond_0
    const-string v0, "rightSlopeRatio"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE wagou ADD COLUMN rightSlopeRatio REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    :cond_1
    const-string v0, "leftBottomWidth"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE wagou ADD COLUMN leftBottomWidth REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    :cond_2
    const-string v0, "rightBottomWidth"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE wagou ADD COLUMN rightBottomWidth REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1566
    :cond_3
    const-string v0, "advancedType"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE wagou ADD COLUMN advancedType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private less19(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1548
    const-string/jumbo v0, "zhaoping"

    const-string/jumbo v1, "shovelTipType"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1549
    :cond_0
    const-string/jumbo v0, "shuapo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE shuapo ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1550
    :cond_1
    const-string/jumbo v0, "wagou"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE wagou ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1551
    :cond_2
    const-string v0, "dike"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE dike ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    :cond_3
    const-string v0, "line"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE line ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1553
    :cond_4
    const-string v0, "polyline"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ALTER TABLE polyline ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    :cond_5
    const-string v0, "onePointArea"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ALTER TABLE onePointArea ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1555
    :cond_6
    const-string/jumbo v0, "threePointArea"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALTER TABLE threePointArea ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1556
    :cond_7
    const-string/jumbo v0, "siteleveling"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ALTER TABLE siteleveling ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    :cond_8
    const-string v0, "arbitraryline"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ALTER TABLE arbitraryline ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1558
    :cond_9
    const-string v0, "curvedSlope"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ALTER TABLE curvedSlope ADD COLUMN shovelTipType INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private less2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1741
    const-string v0, "depth"

    const-string/jumbo v1, "zhaoping"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN depth REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1742
    :cond_0
    const-string v0, "height"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN height REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1743
    :cond_1
    const-string v0, "cors"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createCors(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1744
    :cond_2
    const-string v0, "pointLib"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createPointLib(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return-void
.end method

.method private less20(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1544
    const-string v0, "multiPointArea"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createMultiPointArea(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private less21(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1523
    const-string v0, "mode"

    const-string v1, "excavator"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE excavator ADD COLUMN mode INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1524
    :cond_0
    const-string v0, "G1"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE excavator ADD COLUMN G1 REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1525
    :cond_1
    const-string v0, "G2"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE excavator ADD COLUMN G2 REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1526
    :cond_2
    const-string v0, "G3"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE excavator ADD COLUMN G3 REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1527
    :cond_3
    const-string v0, "Ly"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE excavator ADD COLUMN Ly REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1528
    :cond_4
    const-string v0, "Ry"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ALTER TABLE excavator ADD COLUMN Ry REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1529
    :cond_5
    const-string v0, "Hy"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ALTER TABLE excavator ADD COLUMN Hy REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1530
    :cond_6
    const-string v0, "Ay"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALTER TABLE excavator ADD COLUMN Ay REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1531
    :cond_7
    const-string v0, "Ax"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ALTER TABLE excavator ADD COLUMN Ax REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1532
    :cond_8
    const-string v0, "BD"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ALTER TABLE excavator ADD COLUMN BD REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1534
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1535
    const-string v2, "engineering_name"

    invoke-virtual {p0, p1, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN engineering_name TEXT"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_b
    const-string/jumbo v0, "shovel"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createShovel(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_c
    return-void
.end method

.method private less22(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1503
    const-string v0, "engineering"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createEngineering(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1507
    :cond_0
    const-string v1, "current_usage"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1508
    const-string v0, "ALTER TABLE engineering ADD COLUMN current_usage INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1512
    :cond_1
    :goto_0
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1513
    const-string v1, "Hy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "pq"

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1515
    const-string v0, "UPDATE excavator SET pq = Hy"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 1517
    :cond_2
    invoke-static {p1, v0, v1, v3}, Lcom/qianhe/yct/db/SQLiteColumnRenameUtil;->renameColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private less23(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1462
    const-string/jumbo v0, "shovel"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1463
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createShovel(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    .line 1466
    :cond_0
    const-string v10, "measureParams"

    invoke-virtual {v1, v2, v0, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1467
    const-string v3, "ALTER TABLE shovel ADD COLUMN measureParams TEXT"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1469
    :cond_1
    const-string v3, "autoGenerateParams"

    invoke-virtual {v1, v2, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1470
    const-string v3, "ALTER TABLE shovel ADD COLUMN autoGenerateParams TEXT"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1472
    :cond_2
    const-string v11, "G1"

    invoke-virtual {v1, v2, v0, v11}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v12, 0x0

    .line 1475
    :try_start_0
    const-string/jumbo v3, "shovel"

    const-string v13, "localId"

    const-string v14, "G1"

    const-string v15, "G2"

    const-string v16, "G3"

    const-string v17, "Ly"

    const-string v18, "Ry"

    const-string v19, "AB"

    const-string v20, "measureParams"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1477
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1478
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1479
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 1480
    :cond_3
    const-string v3, "localId"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1481
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 1482
    const-string v7, "G2"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 1483
    const-string v9, "G3"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    .line 1484
    const-string v9, "Ly"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v15

    .line 1485
    const-string v9, "Ry"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    .line 1486
    const-string v9, "AB"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    .line 1487
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v1, "{\"G1\":%s,\"G2\":%s,\"G3\":%s,\"Ly\":%s,\"Ry\":%s,\"AB\":%s}"

    .line 1489
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    const/4 v5, 0x1

    aput-object v6, v15, v5

    const/4 v5, 0x2

    aput-object v7, v15, v5

    const/4 v5, 0x3

    aput-object v8, v15, v5

    const/4 v5, 0x4

    aput-object v13, v15, v5

    const/4 v5, 0x5

    aput-object v14, v15, v5

    .line 1487
    invoke-static {v9, v1, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1491
    invoke-virtual {v5, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const-string v1, "localId = ?"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_4
    if-eqz v12, :cond_6

    .line 1496
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1497
    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method private less24(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1424
    const-string v0, "excavator"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 1425
    :cond_0
    const-string v10, "measureParams"

    invoke-virtual {v1, v2, v0, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1426
    const-string v3, "ALTER TABLE excavator ADD COLUMN measureParams TEXT"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1428
    :cond_1
    const-string v3, "autoGenerateParams"

    invoke-virtual {v1, v2, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1429
    const-string v3, "ALTER TABLE excavator ADD COLUMN autoGenerateParams TEXT"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    :cond_2
    const-string v11, "G1"

    invoke-virtual {v1, v2, v0, v11}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v12, 0x0

    .line 1434
    :try_start_0
    const-string v3, "excavator"

    const-string v13, "localId"

    const-string v14, "G1"

    const-string v15, "G2"

    const-string v16, "G3"

    const-string v17, "Ly"

    const-string v18, "Ry"

    const-string v19, "AB"

    const-string v20, "measureParams"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1436
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1437
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1438
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 1439
    :cond_3
    const-string v3, "localId"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1440
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 1441
    const-string v7, "G2"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 1442
    const-string v9, "G3"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    .line 1443
    const-string v9, "Ly"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v15

    .line 1444
    const-string v9, "Ry"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    .line 1445
    const-string v9, "AB"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    .line 1446
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v1, "{\"G1\":%s,\"G2\":%s,\"G3\":%s,\"Ly\":%s,\"Ry\":%s,\"AB\":%s}"

    .line 1448
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    const/4 v5, 0x1

    aput-object v6, v15, v5

    const/4 v5, 0x2

    aput-object v7, v15, v5

    const/4 v5, 0x3

    aput-object v8, v15, v5

    const/4 v5, 0x4

    aput-object v13, v15, v5

    const/4 v5, 0x5

    aput-object v14, v15, v5

    .line 1446
    invoke-static {v9, v1, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1450
    invoke-virtual {v5, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-string v1, "localId = ?"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_4
    if-eqz v12, :cond_6

    .line 1455
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1456
    :cond_5
    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method private less25(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1372
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1373
    :cond_0
    const-string v1, "G1"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1374
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less24(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1375
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1377
    :try_start_0
    const-string v0, "CREATE TABLE excavator_new (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, userId INTEGER, calibrateId INTEGER, calibrateUUid TEXT, createTime INTEGER, updateTime INTEGER, name TEXT, calibParamsId TEXT, calibParams TEXT, leftDist REAL, rigthDist REAL, spanDist REAL, deviceHeight REAL, mode INTEGER, HA REAL, pq REAL, Ay REAL, Ax REAL, Dx REAL, AD REAL, BD REAL, CD REAL, BC REAL, version INTEGER, showUnit INTEGER, measureParams TEXT, autoGenerateParams TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    const-string v0, "INSERT INTO excavator_new (localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, HA, pq, Ay, Ax, Dx, AD, BD, CD, BC, version, showUnit, measureParams, autoGenerateParams) SELECT localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, HA, pq, Ay, Ax, Dx, AD, BD, CD, BC, version, showUnit, measureParams, autoGenerateParams FROM excavator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v0, "DROP TABLE excavator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v0, "ALTER TABLE excavator_new RENAME TO excavator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1419
    throw v0
.end method

.method private less26(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1326
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1327
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorSchemaV26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1328
    const-string v1, "HA"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1331
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1333
    :try_start_0
    const-string v0, "CREATE TABLE excavator_new (localId INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, userId INTEGER, calibrateId INTEGER, calibrateUUid TEXT, createTime INTEGER, updateTime INTEGER, name TEXT, calibParamsId TEXT, calibParams TEXT, leftDist REAL, rigthDist REAL, spanDist REAL, deviceHeight REAL, mode INTEGER, excavatorParams TEXT, version INTEGER, showUnit INTEGER, measureParams TEXT, autoGenerateParams TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1354
    const-string v0, "INSERT INTO excavator_new (localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, excavatorParams, version, showUnit, measureParams, autoGenerateParams) SELECT localId, userId, calibrateId, calibrateUUid, createTime, updateTime, name, calibParamsId, calibParams, leftDist, rigthDist, spanDist, deviceHeight, mode, \'{\"HA\":\' || HA || \',\"pq\":\' || pq || \',\"Ay\":\' || Ay || \',\"Ax\":\' || Ax || \',\"Dx\":\' || Dx || \',\"AD\":\' || AD || \',\"BD\":\' || BD || \',\"CD\":\' || CD || \',\"BC\":\' || BC || \'}\', version, showUnit, measureParams, autoGenerateParams FROM excavator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1363
    const-string v0, "DROP TABLE excavator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1364
    const-string v0, "ALTER TABLE excavator_new RENAME TO excavator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1368
    throw v0
.end method

.method private less27(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1304
    const-string v0, "engineering"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DROP TABLE IF EXISTS gnss_trans_param_control_point"

    const-string v3, "gnss_trans_param"

    if-eqz v1, :cond_1

    const-string v1, "gauss_kruger_params"

    .line 1305
    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "conversion_params_type"

    .line 1306
    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    invoke-virtual {p0, p1, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createGnssTransParam(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1308
    :cond_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1311
    const-string v0, "DROP TABLE IF EXISTS engineering"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1313
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createEngineering(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1314
    invoke-virtual {p0, p1, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createGnssTransParam(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1315
    :cond_3
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1318
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1319
    const-string v2, "engineering_params"

    invoke-virtual {p0, p1, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN engineering_params TEXT"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private less28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1286
    const-string v0, "engineering"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    const-string/jumbo v1, "trans_param_id"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    const-string v1, "ALTER TABLE engineering ADD COLUMN trans_param_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    :cond_0
    const-string/jumbo v1, "trans_param_local_id"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1291
    const-string v0, "ALTER TABLE engineering ADD COLUMN trans_param_local_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1296
    const-string v2, "belong_engineering_id"

    invoke-virtual {p0, p1, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN belong_engineering_id TEXT"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private less29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .line 1242
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1243
    const-string v1, "engineering_local_id"

    invoke-virtual {p0, p1, v3, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ADD COLUMN engineering_local_id INTEGER DEFAULT 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1246
    :cond_0
    const-string v10, "engineering"

    invoke-virtual {p0, p1, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    const-string v11, " SET engineering_local_id = (SELECT e.id FROM "

    const-string v12, "UPDATE "

    if-eqz v2, :cond_1

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " e WHERE e.engineering_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".belong_engineering_id LIMIT 1) WHERE (engineering_local_id IS NULL OR engineering_local_id = 0) AND belong_engineering_id > 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1251
    :cond_1
    const-string v2, "engineering_params"

    invoke-virtual {p0, p1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1252
    const-string v4, "id"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "engineering_params IS NOT NULL AND engineering_params != \'\' AND (engineering_local_id IS NULL OR engineering_local_id = 0)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1256
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 1257
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 1258
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qianhe/yct/db/DatabaseHelper;->parseEngineeringLocalIdFromParams(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v13, v6, v8

    if-lez v13, :cond_2

    .line 1260
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1261
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1262
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "id = ?"

    invoke-virtual {v2, v3, v8, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1265
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    move-object v2, p1

    .line 1268
    :cond_5
    :goto_2
    invoke-virtual {p0, v2, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " e WHERE e.current_usage = 1 LIMIT 1) WHERE engineering_local_id IS NULL OR engineering_local_id = 0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    move-object p1, v2

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private less3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1724
    const-string v0, "east"

    const-string/jumbo v1, "zhaoping"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN east REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1725
    :cond_0
    const-string v0, "north"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN north REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1726
    :cond_1
    const-string/jumbo v0, "shuapo"

    const-string v1, "east1"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ALTER TABLE shuapo ADD COLUMN east1 REAL DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    :cond_2
    const-string v2, "north1"

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ALTER TABLE shuapo ADD COLUMN north1 REAL DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1728
    :cond_3
    const-string v3, "east2"

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ALTER TABLE shuapo ADD COLUMN east2 REAL DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1729
    :cond_4
    const-string v4, "north2"

    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ALTER TABLE shuapo ADD COLUMN north2 REAL DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1730
    :cond_5
    const-string v5, "east3"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "ALTER TABLE shuapo ADD COLUMN east3 REAL DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1731
    :cond_6
    const-string v5, "north3"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALTER TABLE shuapo ADD COLUMN north3 REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1732
    :cond_7
    const-string/jumbo v0, "wagou"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ALTER TABLE wagou ADD COLUMN east1 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1733
    :cond_8
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ALTER TABLE wagou ADD COLUMN north1 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1734
    :cond_9
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ALTER TABLE wagou ADD COLUMN east2 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1735
    :cond_a
    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ALTER TABLE wagou ADD COLUMN north2 REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1736
    :cond_b
    const-string v1, "eastH"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "ALTER TABLE wagou ADD COLUMN eastH REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1737
    :cond_c
    const-string v1, "northH"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ALTER TABLE wagou ADD COLUMN northH REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private less30(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1051
    const-string v10, "pointGroup"

    invoke-virtual {v0, v1, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1052
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createPointGroup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1054
    :cond_0
    const-string v2, "group_id"

    const-string v3, "pointLib"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1055
    const-string v2, "ALTER TABLE pointLib ADD COLUMN group_id INTEGER DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1057
    :cond_1
    const-string v11, "group_local_id"

    invoke-virtual {v0, v1, v3, v11}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1058
    const-string v2, "ALTER TABLE pointLib ADD COLUMN group_local_id INTEGER DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1060
    :cond_2
    const-string v2, "point_id"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1061
    const-string v2, "ALTER TABLE pointLib ADD COLUMN point_id INTEGER DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1063
    :cond_3
    const-string v2, "geodeticLon"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1064
    const-string v2, "ALTER TABLE pointLib ADD COLUMN geodeticLon REAL DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    :cond_4
    const-string v2, "geodeticLat"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1067
    const-string v2, "ALTER TABLE pointLib ADD COLUMN geodeticLat REAL DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    :cond_5
    const-string v2, "geodeticElev"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1070
    const-string v2, "ALTER TABLE pointLib ADD COLUMN geodeticElev REAL DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1072
    :cond_6
    const-string v2, "hdop"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1073
    const-string v2, "ALTER TABLE pointLib ADD COLUMN hdop REAL DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1075
    :cond_7
    const-string/jumbo v2, "vdop"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1076
    const-string v2, "ALTER TABLE pointLib ADD COLUMN vdop REAL DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1078
    :cond_8
    const-string v2, "alt"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1079
    const-string v2, "ALTER TABLE pointLib ADD COLUMN alt REAL DEFAULT 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1085
    :cond_9
    const-string v2, "engineering"

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_d

    .line 1086
    const-string v15, "id"

    const-string v2, "engineering_id"

    filled-new-array {v15, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const-string v9, "1"

    move-object v4, v2

    const-string v2, "engineering"

    move-object v5, v4

    const-string v4, "current_usage = 1"

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move-object/from16 v13, v16

    const-wide/16 v17, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v14, 0x1

    if-eqz v2, :cond_a

    .line 1088
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1089
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1090
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    goto :goto_0

    :cond_a
    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    :goto_0
    if-eqz v2, :cond_b

    .line 1092
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    cmp-long v1, v19, v17

    if-gtz v1, :cond_e

    .line 1094
    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "id ASC"

    const-string v9, "1"

    const-string v2, "engineering"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1096
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1097
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1098
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    :cond_c
    if-eqz v2, :cond_e

    .line 1100
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_d
    const-wide/16 v17, 0x0

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    .line 1104
    :cond_e
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/db/DatabaseHelper;->hasPointsInPointLibrary(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1105
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "\u9ed8\u8ba4"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v9, "1"

    const-string v2, "pointGroup"

    const-string v4, "name = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1108
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1109
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_2

    :cond_f
    move-wide/from16 v3, v17

    :goto_2
    if-eqz v2, :cond_10

    .line 1111
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1113
    :cond_10
    const-string v2, "belong_engineering_id"

    const-string v5, "engineering_local_id"

    cmp-long v6, v3, v17

    if-gtz v6, :cond_11

    .line 1114
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1115
    const-string v4, "name"

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "create_time"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v6, "update_time"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1118
    const-string v4, "local_ids"

    const-string v6, "[]"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1120
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    .line 1121
    invoke-virtual {v1, v10, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_3

    :cond_11
    cmp-long v6, v19, v17

    if-lez v6, :cond_12

    .line 1123
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1124
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1125
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1130
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1126
    const-string v5, "group_local_id = ? AND (engineering_local_id IS NULL OR engineering_local_id = 0) AND (belong_engineering_id IS NULL OR belong_engineering_id = 0) AND (engineering_uuid IS NULL OR engineering_uuid = \'\')"

    invoke-virtual {v1, v10, v6, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_12
    :goto_3
    cmp-long v2, v3, v17

    if-lez v2, :cond_14

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE pointLib SET group_local_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " WHERE group_local_id IS NULL OR group_local_id = 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    invoke-direct {v0, v1, v3, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->rebuildGroupLocalIds(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_4

    :cond_13
    move-object/from16 v1, p1

    .line 1140
    :cond_14
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/db/DatabaseHelper;->bindOrphanPointGroupsToDefaultEngineering(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1142
    iget-object v2, v0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1143
    invoke-virtual {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_5

    .line 1144
    :cond_16
    const-string v4, "path"

    invoke-virtual {v0, v1, v3, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "cadPath"

    if-eqz v5, :cond_17

    .line 1145
    invoke-static {v1, v3, v4, v6}, Lcom/qianhe/yct/db/SQLiteColumnRenameUtil;->renameColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 1146
    :cond_17
    invoke-virtual {v0, v1, v3, v6}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN cadPath TEXT"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    .line 1150
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensurePointGroupEditStateColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private less31(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1028
    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->addEngineeringUuidColumnAndBackfill(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_0
    const-string v0, "pointGroup"

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->addEngineeringUuidColumnAndBackfill(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private less32(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1015
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1016
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1017
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1020
    :cond_0
    const-string/jumbo v0, "shovel"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method

.method private less33(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorCalibSoInputsColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private less34(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->clearPlaceholderCalibSoInputs(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private less35(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 894
    const-string/jumbo v0, "user"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createUser(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 895
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureBelongUidColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 896
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->migrateUserFromSharedPreferences(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private less36(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 901
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensurePointGroupEditStateColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private less4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .line 1682
    const-string v0, "share"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createShare(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1683
    :cond_0
    const-string/jumbo v0, "zhaoping"

    const-string/jumbo v1, "updateTime"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ALTER TABLE zhaoping ADD COLUMN updateTime INTEGER DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1684
    :cond_1
    const-string v2, "projectUUid"

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ALTER TABLE zhaoping ADD COLUMN projectUUid TEXT DEFAULT \'\'"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1685
    :cond_2
    const-string v3, "projectId"

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ALTER TABLE zhaoping ADD COLUMN projectId INTEGER DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1686
    :cond_3
    const-string/jumbo v4, "version"

    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ALTER TABLE zhaoping ADD COLUMN version INTEGER DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1687
    :cond_4
    const-string v5, "coordinateSystem"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ALTER TABLE zhaoping ADD COLUMN coordinateSystem TEXT DEFAULT \'\'"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1688
    :cond_5
    const-string v6, "corsName"

    invoke-virtual {p0, p1, v0, v6}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "ALTER TABLE zhaoping ADD COLUMN corsName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1689
    :cond_6
    const-string v7, "corsHost"

    invoke-virtual {p0, p1, v0, v7}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "ALTER TABLE zhaoping ADD COLUMN corsHost TEXT DEFAULT \'\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1690
    :cond_7
    const-string v8, "corsPort"

    invoke-virtual {p0, p1, v0, v8}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "ALTER TABLE zhaoping ADD COLUMN corsPort INTEGER DEFAULT 0"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1691
    :cond_8
    const-string v9, "corsUserName"

    invoke-virtual {p0, p1, v0, v9}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "ALTER TABLE zhaoping ADD COLUMN corsUserName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1692
    :cond_9
    const-string v10, "corsPassword"

    invoke-virtual {p0, p1, v0, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "ALTER TABLE zhaoping ADD COLUMN corsPassword TEXT DEFAULT \'\'"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1693
    :cond_a
    const-string v11, "corsMount"

    invoke-virtual {p0, p1, v0, v11}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "ALTER TABLE zhaoping ADD COLUMN corsMount TEXT DEFAULT \'\'"

    invoke-virtual {p1, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1694
    :cond_b
    const-string v12, "editState"

    invoke-virtual {p0, p1, v0, v12}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN editState INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1696
    :cond_c
    const-string/jumbo v0, "shuapo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "ALTER TABLE shuapo ADD COLUMN updateTime INTEGER DEFAULT 0"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1697
    :cond_d
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "ALTER TABLE shuapo ADD COLUMN projectUUid TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1698
    :cond_e
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "ALTER TABLE shuapo ADD COLUMN projectId INTEGER DEFAULT 0"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1699
    :cond_f
    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "ALTER TABLE shuapo ADD COLUMN version INTEGER DEFAULT 0"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1700
    :cond_10
    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_11

    const-string v13, "ALTER TABLE shuapo ADD COLUMN coordinateSystem TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1701
    :cond_11
    invoke-virtual {p0, p1, v0, v6}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    const-string v13, "ALTER TABLE shuapo ADD COLUMN corsName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1702
    :cond_12
    invoke-virtual {p0, p1, v0, v7}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    const-string v13, "ALTER TABLE shuapo ADD COLUMN corsHost TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1703
    :cond_13
    invoke-virtual {p0, p1, v0, v8}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "ALTER TABLE shuapo ADD COLUMN corsPort INTEGER DEFAULT 0"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1704
    :cond_14
    invoke-virtual {p0, p1, v0, v9}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "ALTER TABLE shuapo ADD COLUMN corsUserName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1705
    :cond_15
    invoke-virtual {p0, p1, v0, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    const-string v13, "ALTER TABLE shuapo ADD COLUMN corsPassword TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1706
    :cond_16
    invoke-virtual {p0, p1, v0, v11}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_17

    const-string v13, "ALTER TABLE shuapo ADD COLUMN corsMount TEXT DEFAULT \'\'"

    invoke-virtual {p1, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1707
    :cond_17
    invoke-virtual {p0, p1, v0, v12}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "ALTER TABLE shuapo ADD COLUMN editState INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1709
    :cond_18
    const-string/jumbo v0, "wagou"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "ALTER TABLE wagou ADD COLUMN updateTime INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1710
    :cond_19
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "ALTER TABLE wagou ADD COLUMN projectUUid TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1711
    :cond_1a
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "ALTER TABLE wagou ADD COLUMN projectId INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    :cond_1b
    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "ALTER TABLE wagou ADD COLUMN version INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1713
    :cond_1c
    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "ALTER TABLE wagou ADD COLUMN coordinateSystem TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1714
    :cond_1d
    invoke-virtual {p0, p1, v0, v6}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "ALTER TABLE wagou ADD COLUMN corsName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1715
    :cond_1e
    invoke-virtual {p0, p1, v0, v7}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "ALTER TABLE wagou ADD COLUMN corsHost TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1716
    :cond_1f
    invoke-virtual {p0, p1, v0, v8}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "ALTER TABLE wagou ADD COLUMN corsPort INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1717
    :cond_20
    invoke-virtual {p0, p1, v0, v9}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "ALTER TABLE wagou ADD COLUMN corsUserName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1718
    :cond_21
    invoke-virtual {p0, p1, v0, v10}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "ALTER TABLE wagou ADD COLUMN corsPassword TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1719
    :cond_22
    invoke-virtual {p0, p1, v0, v11}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "ALTER TABLE wagou ADD COLUMN corsMount TEXT DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1720
    :cond_23
    invoke-virtual {p0, p1, v0, v12}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "ALTER TABLE wagou ADD COLUMN editState INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private less5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1660
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createExcavator(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1661
    :cond_0
    const-string/jumbo v0, "zhaoping"

    const-string/jumbo v1, "subType"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ALTER TABLE zhaoping ADD COLUMN subType INTEGER DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    :cond_1
    const-string/jumbo v2, "showUnit"

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE zhaoping ADD COLUMN showUnit INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1663
    :cond_2
    const-string/jumbo v0, "shuapo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ALTER TABLE shuapo ADD COLUMN subType INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    :cond_3
    const-string/jumbo v3, "tickA"

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ALTER TABLE shuapo ADD COLUMN tickA INTEGER DEFAULT 0"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1665
    :cond_4
    const-string/jumbo v4, "tickB"

    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ALTER TABLE shuapo ADD COLUMN tickB INTEGER DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1666
    :cond_5
    const-string/jumbo v5, "tickC"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "ALTER TABLE shuapo ADD COLUMN tickC INTEGER DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    :cond_6
    const-string v5, "ditchC"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "ALTER TABLE shuapo ADD COLUMN ditchC REAL DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1668
    :cond_7
    const-string/jumbo v5, "width"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "ALTER TABLE shuapo ADD COLUMN width REAL DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1669
    :cond_8
    const-string v5, "heigth"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "ALTER TABLE shuapo ADD COLUMN heigth REAL DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1670
    :cond_9
    const-string v5, "ratio"

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "ALTER TABLE shuapo ADD COLUMN ratio REAL DEFAULT 0"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1671
    :cond_a
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ALTER TABLE shuapo ADD COLUMN showUnit INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1672
    :cond_b
    const-string/jumbo v0, "wagou"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "ALTER TABLE wagou ADD COLUMN subType INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1673
    :cond_c
    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ALTER TABLE wagou ADD COLUMN tickA INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1674
    :cond_d
    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ALTER TABLE wagou ADD COLUMN tickB INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1675
    :cond_e
    const-string v1, "length"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "ALTER TABLE wagou ADD COLUMN length REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1676
    :cond_f
    const-string v1, "depthA"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "ALTER TABLE wagou ADD COLUMN depthA REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1677
    :cond_10
    const-string v1, "depthB"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "ALTER TABLE wagou ADD COLUMN depthB REAL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    :cond_11
    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ALTER TABLE wagou ADD COLUMN showUnit INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private less6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1656
    const-string v0, "dike"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createDike(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private less7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1649
    const-string v0, "calibParamsId"

    const-string v1, "excavator"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE excavator ADD COLUMN calibParamsId TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1650
    :cond_0
    const-string v0, "calibParams"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE excavator ADD COLUMN calibParams TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1652
    :cond_1
    const-string v0, "line"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createLine(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-void
.end method

.method private less8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1639
    const-string v0, "coordinateSystem"

    const-string v1, "pointLib"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE pointLib ADD COLUMN coordinateSystem TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1640
    :cond_0
    const-string v0, "corsName"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE pointLib ADD COLUMN corsName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1641
    :cond_1
    const-string v0, "corsHost"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE pointLib ADD COLUMN corsHost TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1642
    :cond_2
    const-string v0, "corsPort"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE pointLib ADD COLUMN corsPort INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    :cond_3
    const-string v0, "corsUserName"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE pointLib ADD COLUMN corsUserName TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    :cond_4
    const-string v0, "corsPassword"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ALTER TABLE pointLib ADD COLUMN corsPassword TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1645
    :cond_5
    const-string v0, "corsMount"

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ALTER TABLE pointLib ADD COLUMN corsMount TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private less9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1635
    const-string/jumbo v0, "shuapo"

    const-string v1, "flatDistance"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE shuapo ADD COLUMN flatDistance REAL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private migrateUserFromSharedPreferences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 933
    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 934
    :cond_0
    const-string v4, "SELECT COUNT(*) FROM user"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 937
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-gtz v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 938
    :cond_2
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v6, :cond_4

    goto :goto_2

    .line 941
    :cond_4
    iget-object v4, v0, Lcom/qianhe/yct/db/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sp"

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 942
    const-string v6, "deviceId"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 943
    const-string/jumbo v9, "user_token"

    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 944
    const-string/jumbo v11, "user_account"

    invoke-interface {v4, v11, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 945
    const-string/jumbo v13, "user_name"

    invoke-interface {v4, v13, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v6

    const-wide/16 v5, 0x0

    .line 948
    :try_start_0
    invoke-interface {v4, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v20, v17

    move-wide/from16 v17, v5

    move-wide/from16 v5, v20

    goto :goto_1

    :catch_0
    move-wide/from16 v17, v5

    .line 951
    :try_start_1
    const-string v5, "0"

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 952
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_5
    move-wide/from16 v5, v17

    .line 956
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 957
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    cmp-long v19, v5, v17

    if-nez v19, :cond_6

    :goto_2
    return-void

    .line 960
    :cond_6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    if-eqz v8, :cond_7

    :goto_3
    move-object/from16 v0, v16

    goto :goto_4

    :cond_7
    move-object v8, v7

    goto :goto_3

    .line 961
    :goto_4
    invoke-virtual {v15, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    move-object v10, v7

    .line 962
    :goto_5
    invoke-virtual {v15, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    move-object v12, v7

    .line 963
    :goto_6
    invoke-virtual {v15, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_a

    move-object v7, v14

    .line 964
    :cond_a
    invoke-virtual {v15, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x0

    .line 966
    invoke-virtual {v1, v3, v7, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 967
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 968
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 969
    invoke-interface {v0, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 970
    invoke-interface {v0, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 971
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 972
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5df2\u4ece SharedPreferences \u8fc1\u79fb\u6700\u8fd1\u767b\u5f55\u7528\u6237\u5230 user \u8868, user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private parseEngineeringLocalIdFromParams(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    .line 1278
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1279
    const-string p1, "id"

    invoke-virtual {v2, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private parseExcavatorParamsToValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 2071
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2073
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2074
    const-string p1, "HA"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2075
    const-string p1, "pq"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2076
    const-string p1, "Ay"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2077
    const-string p1, "Ax"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2078
    const-string p1, "Dx"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2079
    const-string p1, "AD"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2080
    const-string p1, "BD"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2081
    const-string p1, "CD"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2082
    const-string p1, "BC"

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2084
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u89e3\u6790 excavatorParams \u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseMeasureParamsToValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    .line 2039
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2042
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2043
    sget-object p2, Lcom/qianhe/yct/db/DatabaseHelper;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p2, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2044
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2045
    sget-object p1, Lcom/qianhe/yct/db/DatabaseHelper;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {p1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    if-eqz p1, :cond_1

    .line 2046
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2047
    invoke-virtual {p1, v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->toMeasureParams(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2051
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2052
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u89e3\u6790 measureParams \u5931\u8d25\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 2055
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 2056
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "G1"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2057
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "G2"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2058
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "G3"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2059
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "Ly"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2060
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "Ry"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2061
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "AB"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2062
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "NT"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2063
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "AT"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2064
    iget-wide p1, v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "NA"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2065
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->resolveLR()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "LR"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_3
    return-object v0
.end method

.method private putJsonDouble(Landroid/content/ContentValues;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 2091
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2095
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method

.method private rebuildGroupLocalIds(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9

    .line 1165
    const-string v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "id ASC"

    .line 1165
    const-string v2, "pointLib"

    const-string v4, "group_local_id = ?"

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1171
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    .line 1172
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    .line 1173
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1176
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1177
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1179
    const-string v2, "local_ids"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "pointGroup"

    const-string v0, "group_local_id = ?"

    invoke-virtual {v1, p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private repairExcavatorOnDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1848
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    if-ge p3, v0, :cond_1

    .line 1850
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreExcavatorFlatCalibrationColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/16 v1, 0x19

    if-lt p2, v1, :cond_2

    if-ge p3, v1, :cond_2

    .line 1853
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    if-lt p3, v0, :cond_3

    .line 1856
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorSchemaV26(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private restoreExcavatorFlatCalibrationColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 1876
    const-string v0, "localId"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorFlatCalibrationColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1877
    const-string v1, "excavator"

    const-string v2, "excavatorParams"

    invoke-virtual {p0, p1, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1880
    :try_start_0
    const-string v5, "excavator"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    .line 1892
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    .line 1882
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1883
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1884
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1885
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1886
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->parseExcavatorParamsToValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1887
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1888
    const-string v7, "localId = ?"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, p1, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 1892
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_5
    throw p1
.end method

.method private restoreExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 1997
    const-string v0, "autoGenerateParams"

    const-string v1, "measureParams"

    const-string v2, "localId"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    .line 2000
    :try_start_0
    const-string v5, "excavator"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    .line 2012
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 2002
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2003
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2004
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2005
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2006
    invoke-direct {p0, p1, v7}, Lcom/qianhe/yct/db/DatabaseHelper;->parseMeasureParamsToValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 2007
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 2008
    const-string v7, "excavator"

    const-string v8, "localId = ?"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, p1, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 2012
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2013
    :cond_3
    throw p1
.end method

.method private restoreShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2018
    const-string v0, "autoGenerateParams"

    const-string v1, "localId"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2019
    const-string/jumbo v2, "shovel"

    const-string v3, "measureParams"

    invoke-virtual {p0, p1, v2, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2022
    :try_start_0
    const-string/jumbo v6, "shovel"

    filled-new-array {v1, v3, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    if-eqz v4, :cond_1

    .line 2034
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    .line 2024
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2025
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2026
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2027
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2028
    invoke-direct {p0, p1, v8}, Lcom/qianhe/yct/db/DatabaseHelper;->parseMeasureParamsToValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 2029
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2030
    const-string v8, "localId = ?"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, p1, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 2034
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2035
    :cond_4
    throw p1
.end method

.method private syncExcavatorFlatColumnsFromJson(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1864
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreExcavatorFlatCalibrationColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1865
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private syncShovelFlatColumnsFromJson(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1869
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->restoreShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method ensureBelongUidColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 923
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseHelper;->getBelongUidTableNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 924
    invoke-virtual {p0, p1, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 925
    :cond_1
    const-string v2, "belong_uid"

    invoke-virtual {p0, p1, v1, v2}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER DEFAULT 0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method ensurePointGroupEditStateColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 905
    const-string v0, "pointGroup"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "editState"

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseHelper;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    const-string v0, "ALTER TABLE pointGroup ADD COLUMN editState INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAllUserDataTableNames()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    const-string v19, "excavator"

    const-string/jumbo v20, "shovel"

    const-string/jumbo v1, "zhaoping"

    const-string/jumbo v2, "shuapo"

    const-string/jumbo v3, "wagou"

    const-string v4, "dike"

    const-string v5, "line"

    const-string v6, "polyline"

    const-string v7, "onePointArea"

    const-string/jumbo v8, "threePointArea"

    const-string/jumbo v9, "siteleveling"

    const-string v10, "arbitraryline"

    const-string v11, "curvedSlope"

    const-string v12, "multiPointArea"

    const-string v13, "engineering"

    const-string v14, "gnss_trans_param"

    const-string v15, "pointGroup"

    const-string v16, "pointLib"

    const-string v17, "cors"

    const-string v18, "share"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBelongUidTableNames()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    const-string v17, "excavator"

    const-string/jumbo v18, "shovel"

    const-string/jumbo v1, "zhaoping"

    const-string/jumbo v2, "shuapo"

    const-string/jumbo v3, "wagou"

    const-string v4, "dike"

    const-string v5, "line"

    const-string v6, "polyline"

    const-string v7, "onePointArea"

    const-string/jumbo v8, "threePointArea"

    const-string/jumbo v9, "siteleveling"

    const-string v10, "arbitraryline"

    const-string v11, "curvedSlope"

    const-string v12, "multiPointArea"

    const-string v13, "engineering"

    const-string v14, "gnss_trans_param"

    const-string v15, "pointGroup"

    const-string v16, "share"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjectTableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseHelper;->projectTableList:Ljava/util/List;

    return-object v0
.end method

.method public isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2118
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2119
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2120
    const-string p1, "name"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 2122
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2123
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 2129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    .line 2126
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return p1

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2130
    :cond_4
    throw p1
.end method

.method public isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1

    .line 2101
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2102
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2103
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 76
    const-string v0, "DatabaseHelper -> onCreate()"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 77
    const-string v0, "cors"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createCors(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    :cond_0
    const-string v0, "engineering"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createEngineering(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    :cond_1
    const-string v0, "gnss_trans_param"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createGnssTransParam(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    :cond_2
    const-string v0, "pointGroup"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createPointGroup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    :cond_3
    const-string v0, "pointLib"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createPointLib(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    :cond_4
    const-string v0, "share"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createShare(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    :cond_5
    const-string v0, "excavator"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createExcavator(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    :cond_6
    const-string/jumbo v0, "shovel"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createShovel(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    :cond_7
    const-string v0, "deviceInfo"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createDeviceInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    :cond_8
    const-string/jumbo v0, "zhaoping"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createZhaoPing(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    :cond_9
    const-string/jumbo v0, "shuapo"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createShuaPo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    :cond_a
    const-string/jumbo v0, "wagou"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createWaGou(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    :cond_b
    const-string v0, "dike"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createDike(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90
    :cond_c
    const-string v0, "line"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createLine(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    :cond_d
    const-string v0, "polyline"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createPolyLine(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    :cond_e
    const-string v0, "onePointArea"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createOnePointArea(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    :cond_f
    const-string/jumbo v0, "threePointArea"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createThreePointArea(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    :cond_10
    const-string/jumbo v0, "siteleveling"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createSiteLeveling(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    :cond_11
    const-string v0, "arbitraryline"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createArbitraryLine(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    :cond_12
    const-string v0, "curvedSlope"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createCurvedSlope(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    :cond_13
    const-string v0, "multiPointArea"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createMultiPointArea(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    :cond_14
    const-string/jumbo v0, "user"

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->createUser(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    :cond_15
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureBelongUidColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u5e93\u964d\u7ea7  oldVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cnewVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 801
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/db/DatabaseHelper;->repairExcavatorOnDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 802
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PRAGMA user_version = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 804
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 805
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u6570\u636e\u5e93\u964d\u7ea7\u5904\u7406\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 786
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 787
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorSchemaV26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 788
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorFlatCalibrationColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 789
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 790
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureShovelFlatMeasureColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 791
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->ensureExcavatorCalibSoInputsColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 792
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->clearPlaceholderCalibSoInputs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 793
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->syncExcavatorFlatColumnsFromJson(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 794
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->syncShovelFlatColumnsFromJson(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u5e93\u5347\u7ea7  oldVersion\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newVersion\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    .line 813
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less2(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 p3, 0x3

    if-ge p2, p3, :cond_1

    .line 815
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less3(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 p3, 0x4

    if-ge p2, p3, :cond_2

    .line 817
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less4(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 p3, 0x5

    if-ge p2, p3, :cond_3

    .line 819
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less5(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/4 p3, 0x6

    if-ge p2, p3, :cond_4

    .line 821
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less6(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    const/4 p3, 0x7

    if-ge p2, p3, :cond_5

    .line 823
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less7(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const/16 p3, 0x8

    if-ge p2, p3, :cond_6

    .line 825
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less8(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    const/16 p3, 0x9

    if-ge p2, p3, :cond_7

    .line 827
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less9(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    const/16 p3, 0xa

    if-ge p2, p3, :cond_8

    .line 829
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less10(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    const/16 p3, 0xb

    if-ge p2, p3, :cond_9

    .line 831
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less11(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_9
    const/16 p3, 0xc

    if-ge p2, p3, :cond_a

    .line 833
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less12(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    const/16 p3, 0xd

    if-ge p2, p3, :cond_b

    .line 835
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less13(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_b
    const/16 p3, 0xe

    if-ge p2, p3, :cond_c

    .line 837
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less14(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_c
    const/16 p3, 0xf

    if-ge p2, p3, :cond_d

    .line 839
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less15(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_d
    const/16 p3, 0x10

    if-ge p2, p3, :cond_e

    .line 840
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less16(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    const/16 p3, 0x11

    if-ge p2, p3, :cond_f

    .line 841
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less17(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    const/16 p3, 0x12

    if-ge p2, p3, :cond_10

    .line 843
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less18(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    const/16 p3, 0x13

    if-ge p2, p3, :cond_11

    .line 845
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less19(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_11
    const/16 p3, 0x14

    if-ge p2, p3, :cond_12

    .line 847
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less20(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_12
    const/16 p3, 0x15

    if-ge p2, p3, :cond_13

    .line 849
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less21(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_13
    const/16 p3, 0x16

    if-ge p2, p3, :cond_14

    .line 851
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less22(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_14
    const/16 p3, 0x17

    if-ge p2, p3, :cond_15

    .line 853
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less23(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_15
    const/16 p3, 0x18

    if-ge p2, p3, :cond_16

    .line 855
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less24(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_16
    const/16 p3, 0x19

    if-ge p2, p3, :cond_17

    .line 857
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less25(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_17
    const/16 p3, 0x1a

    if-ge p2, p3, :cond_18

    .line 859
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less26(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_18
    const/16 p3, 0x1b

    if-ge p2, p3, :cond_19

    .line 861
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less27(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_19
    const/16 p3, 0x1c

    if-ge p2, p3, :cond_1a

    .line 863
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less28(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1a
    const/16 p3, 0x1d

    if-ge p2, p3, :cond_1b

    .line 865
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less29(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1b
    const/16 p3, 0x1e

    if-ge p2, p3, :cond_1c

    .line 867
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less30(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1c
    const/16 p3, 0x1f

    if-ge p2, p3, :cond_1d

    .line 869
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less31(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1d
    const/16 p3, 0x20

    if-ge p2, p3, :cond_1e

    .line 871
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less32(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1e
    const/16 p3, 0x21

    if-ge p2, p3, :cond_1f

    .line 873
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less33(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1f
    const/16 p3, 0x22

    if-ge p2, p3, :cond_20

    .line 875
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less34(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_20
    const/16 p3, 0x23

    if-ge p2, p3, :cond_21

    .line 877
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less35(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_21
    const/16 p3, 0x24

    if-ge p2, p3, :cond_22

    .line 879
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;->less36(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_22
    return-void
.end method
