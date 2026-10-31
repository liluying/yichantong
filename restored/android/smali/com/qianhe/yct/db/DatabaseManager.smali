.class public Lcom/qianhe/yct/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static instance:Lcom/qianhe/yct/db/DatabaseManager;

.field private static final mSp:Landroid/content/SharedPreferences;


# instance fields
.field private final context:Landroid/content/Context;

.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public static synthetic $r8$lambda$CNSoMIWKppWPlmZV_hqc2H260uY(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)I
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 1568
    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    invoke-static {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide v2

    if-eqz p1, :cond_1

    .line 1569
    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    :cond_1
    invoke-static {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide p0

    .line 1567
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/db/DatabaseManager;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    .line 73
    new-instance v0, Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/qianhe/yct/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    invoke-static {p1}, Lcom/qianhe/yct/db/UserSession;->attach(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private appendAnd(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 4220
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private appendCurrentEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1257
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->appendEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method private appendEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")V"
        }
    .end annotation

    .line 1249
    invoke-direct {p0, p3, p2}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringScopeClause(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1251
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, " AND "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendPointGroupsFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 4469
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4471
    :cond_1
    invoke-direct {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToPointGroup(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4472
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4475
    :cond_2
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 4476
    throw p1
.end method

.method private appendPointToGroupLocalIds(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_3

    .line 4586
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 4589
    :cond_1
    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[]"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    :goto_0
    invoke-direct {p2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4590
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4591
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4593
    :cond_4
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 4594
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    .line 4595
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4597
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appendPointToGroupLocalIds: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private appendProjectsFromTable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 3113
    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3114
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3115
    invoke-direct {p0, p1, v2, p2}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    .line 3116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 3117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3118
    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 3123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    move-object p2, v0

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3124
    :cond_3
    throw p2
.end method

.method public static applyEngineeringBinding(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 5

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 873
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 874
    iput-wide v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    .line 876
    :cond_1
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    iput-wide v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 878
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public static applyEngineeringBinding(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 5

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 885
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    .line 887
    :cond_1
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 888
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    .line 889
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method private attachControlPoints(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0

    .line 4291
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    .line 4292
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    return-void
.end method

.method private attachTransParamToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 486
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 487
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iput-object v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-void

    .line 493
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 494
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByTransParamId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iput-object v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 497
    iget-wide p2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    return-void

    .line 501
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/db/DatabaseManager;->snapshotTransParamFromEmbeddedJson(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 503
    iput-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    :cond_2
    return-void
.end method

.method private bindCurrentEngineering(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 1

    .line 3092
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindEngineeringIfNeeded(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method private bindCurrentEngineeringToPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 1

    .line 4327
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindPointGroupEngineeringIfNeeded(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method private bindEngineeringIfNeeded(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1149
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isSharedProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 1152
    :cond_2
    invoke-static {p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->applyEngineeringBinding(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private bindOrphanDataToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringBindingValues(Lcom/qianhe/baselib/bean/EngineeringEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1143
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/qianhe/yct/db/DatabaseManager;->orphanEngineeringWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1145
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanPointGroupsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method private bindOrphanPointGroupsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringBindingValues(Lcom/qianhe/baselib/bean/EngineeringEntity;)Landroid/content/ContentValues;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointGroup"

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->orphanEngineeringWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private bindPointGroupEngineeringIfNeeded(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1156
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isSharedPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isPointGroupBound(Lcom/qianhe/baselib/bean/PointGroupEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1157
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 1159
    :cond_2
    invoke-static {p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->applyEngineeringBinding(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private buildEngineeringBindingValues(Lcom/qianhe/baselib/bean/EngineeringEntity;)Landroid/content/ContentValues;
    .locals 6

    .line 894
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 896
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 897
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "engineering_local_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 899
    :cond_1
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 900
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "belong_engineering_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 901
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    const-string v1, "engineering_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private buildEngineeringScopeClause(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1229
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 1230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1233
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 1234
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string p1, "(CASE WHEN engineering_local_id > 0 AND belong_engineering_id > 0 AND engineering_uuid IS NOT NULL AND engineering_uuid != \'\' THEN engineering_uuid = ? WHEN belong_engineering_id > 0 THEN belong_engineering_id = ? WHEN engineering_uuid IS NOT NULL AND engineering_uuid != \'\' THEN engineering_uuid = ? ELSE engineering_local_id = ? END)"

    return-object p1
.end method

.method private buildGnssTransParamContentValues(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Landroid/content/ContentValues;
    .locals 6

    .line 4224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4225
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "trans_param_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4226
    const-string/jumbo v1, "trans_param_uuid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "create_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4228
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4229
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4230
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    .line 4231
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "belong_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4232
    iget v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4233
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    iget v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "param_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4235
    iget-object v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    const-string v2, "params_detail"

    if-nez v1, :cond_1

    .line 4236
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 4238
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    :goto_0
    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    const-string v1, "control_points"

    if-nez p1, :cond_2

    .line 4242
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-object v0

    .line 4244
    :cond_2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildPointGroupContentValues(Lcom/qianhe/baselib/bean/PointGroupEntity;)Landroid/content/ContentValues;
    .locals 8

    .line 4544
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4545
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4546
    const-string v1, "group_uuid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4547
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "create_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4548
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->updateTime:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4549
    iget v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4550
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4551
    const-string v1, "remark"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    iget-object v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "[]"

    :goto_0
    const-string v2, "local_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4553
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "engineering_local_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4554
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "belong_engineering_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4555
    iget-object v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    const-string v2, "engineering_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    iget v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->editState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "editState"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4557
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongUid:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongUid:J

    .line 4558
    :cond_4
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method private claimUnassignedSharedRows(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    .line 213
    const-string v0, "belong_uid"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->uuidColumnOfBelongUidTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 215
    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "belong_uid = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = 1"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p4, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT a.rowid FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " a WHERE a."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = 0 AND a."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = 1 AND (a."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IS NULL OR a."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = \'\' OR NOT EXISTS (SELECT 1 FROM "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " b WHERE b."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = a."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND b."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ?))"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 227
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    .line 229
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 230
    invoke-interface {v3, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    .line 233
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rowid = ?"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p4, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 239
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    .line 237
    :goto_2
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "claimUnassignedSharedRows "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 239
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_4
    throw p1
.end method

.method private cleanupDuplicateProjectsInTable(Ljava/lang/String;)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2653
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2655
    :try_start_0
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT id, projectUUid, createTime FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE projectUUid IS NOT NULL AND projectUUid != \'\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "belong_uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ORDER BY projectUUid ASC, createTime ASC, id ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2655
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    .line 2677
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    .line 2663
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2664
    const-string v4, "projectUUid"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2665
    const-string v5, "id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2666
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 2667
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2668
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object v2, v4

    goto :goto_0

    .line 2677
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2680
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_6

    goto :goto_1

    .line 2682
    :cond_6
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "id = ?"

    invoke-virtual {v3, p1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_7
    return v1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2674
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupDuplicateProjectsInTable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_8

    .line 2677
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return v1

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2678
    :cond_9
    throw p1

    :cond_a
    :goto_4
    return v1
.end method

.method private collectDefaultEngineeringNames()Ljava/util/Set;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3408
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3409
    iget-object v2, v0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->Default:I

    invoke-static {v2, v3}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 3410
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3411
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3413
    :cond_0
    const-string v19, "ar"

    const-string v20, "fa"

    const-string/jumbo v4, "zh"

    const-string/jumbo v5, "zh-TW"

    const-string v6, "en"

    const-string v7, "ja"

    const-string v8, "ko"

    const-string v9, "de"

    const-string v10, "fr"

    const-string v11, "es"

    const-string v12, "pt"

    const-string v13, "it"

    const-string v14, "ru"

    const-string v15, "nl"

    const-string/jumbo v16, "tr"

    const-string/jumbo v17, "vi"

    const-string v18, "hi"

    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 3417
    aget-object v4, v2, v3

    .line 3419
    :try_start_0
    new-instance v5, Landroid/content/res/Configuration;

    iget-object v6, v0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3420
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 3421
    iget-object v4, v0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3422
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3423
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static compareEngineeringCreateOrder(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)I
    .locals 5

    .line 3462
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-static {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide v0

    .line 3463
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-static {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3465
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 3467
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide p0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private createContentValue(Lcom/qianhe/baselib/base/BaseProEntity;Landroid/content/ContentValues;)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3487
    iget v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    const-string v4, "north"

    const-string v5, "east"

    const-string v6, "depth"

    if-ne v2, v3, :cond_0

    .line 3488
    move-object v2, v0

    check-cast v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 3489
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLon:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v7, "targetLon"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3490
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLat:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v7, "targetLat"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3491
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3492
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3493
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "targetElevation"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3494
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3495
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->height:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3496
    iget v2, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "quality"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v2, v0

    goto/16 :goto_1

    .line 3497
    :cond_0
    iget v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    const-string v7, "quality1"

    const-string/jumbo v8, "tickB"

    const-string/jumbo v9, "tickA"

    const-string/jumbo v10, "targetElevation2"

    const-string/jumbo v11, "targetLat2"

    const-string/jumbo v12, "targetLon2"

    const-string/jumbo v13, "targetElevation1"

    const-string/jumbo v14, "targetLat1"

    const-string/jumbo v15, "targetLon1"

    move-object/from16 v16, v4

    const-string/jumbo v4, "width"

    move-object/from16 v17, v5

    const-string v5, "north2"

    move-object/from16 v18, v6

    const-string v6, "east2"

    const-string v0, "north1"

    move-object/from16 v19, v4

    const-string v4, "east1"

    move-object/from16 v20, v8

    const-string v8, "ratio"

    if-ne v2, v3, :cond_1

    .line 3498
    move-object/from16 v2, p1

    check-cast v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-object/from16 v21, v8

    move-object v3, v9

    .line 3499
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3500
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3501
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3502
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3503
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3504
    iget v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->quality1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3505
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3506
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3507
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3508
    iget-wide v6, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3509
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3510
    iget v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->quality2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "quality2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3511
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLon3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3512
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLat3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3513
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "east3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3514
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "north3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3515
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetElevation3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3516
    iget v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->quality3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "quality3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3517
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLonBenchmark:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLonBenchmark"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3518
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLatBenchmark:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLatBenchmark"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3519
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetElevationBenchmark"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3520
    iget v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3521
    iget v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v8, v20

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3522
    iget v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickC:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "tickC"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3523
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ditchC:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "ditchC"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3524
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v9, v19

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3525
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "heigth"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3526
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "flatDistance"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3527
    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :goto_0
    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v2, v19

    move-object/from16 v19, v9

    move-object v9, v2

    move-object v2, v8

    move-object/from16 v8, p1

    .line 3528
    iget v3, v8, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v21, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual/range {v21 .. v21}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    move-object/from16 v21, v2

    const-string v2, "length"

    move-object/from16 v22, v2

    const-string v2, "depthB"

    move-object/from16 v23, v2

    const-string v2, "depthA"

    if-ne v3, v8, :cond_2

    .line 3529
    move-object/from16 v3, p1

    check-cast v3, Lcom/qianhe/baselib/bean/WaGouEntity;

    move-object/from16 v24, v9

    .line 3530
    iget-wide v8, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3531
    iget-wide v8, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3532
    iget-wide v8, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3533
    iget-wide v8, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3534
    iget-wide v8, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3535
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->quality1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3536
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3537
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3538
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3539
    iget-wide v6, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3540
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3541
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->quality2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "quality2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3542
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonH:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLonH"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3543
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatH:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLatH"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3544
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->eastH:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "eastH"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3545
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->northH:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "northH"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3546
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationH:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetElevationH"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3547
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->qualityH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "qualityH"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3548
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->collectType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "collectType"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3549
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonBenchmark:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLonBenchmark"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3550
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatBenchmark:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetLatBenchmark"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3551
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v4, "targetElevationBenchmark"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3552
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v7, v18

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3553
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v9, v24

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3554
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v8, v21

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3555
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3556
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v20

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3557
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v4, v22

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3558
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3559
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v2, v23

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3560
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "leftSlopeRatio"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3561
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "rightSlopeRatio"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3562
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "leftBottomWidth"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3563
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "rightBottomWidth"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3564
    iget v0, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "advancedType"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v25, v23

    move-object/from16 v19, v2

    .line 3565
    iget v2, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v20, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual/range {v20 .. v20}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 3566
    move-object/from16 v2, p1

    check-cast v2, Lcom/qianhe/baselib/bean/DikeEntity;

    move-object/from16 v20, v7

    move-object v3, v8

    .line 3567
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3568
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3569
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3570
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3571
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3572
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3573
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3574
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3575
    iget-wide v6, v2, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3576
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3577
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3578
    iget v0, v2, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3579
    iget v0, v2, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v20

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3580
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v3, v22

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3581
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v7, v19

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3582
    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v8, p1

    move-object/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v23, v25

    .line 3583
    iget v2, v8, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v19, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual/range {v19 .. v19}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v2, v8, :cond_4

    .line 3584
    move-object/from16 v2, p1

    check-cast v2, Lcom/qianhe/baselib/bean/LineEntity;

    move-object/from16 v19, v7

    .line 3585
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetLon1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3586
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetLat1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3587
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3588
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3589
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3590
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetLon2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3591
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetLat2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3592
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3593
    iget-wide v6, v2, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3594
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3595
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/LineEntity;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3596
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/LineEntity;->ratio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v8, v21

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3597
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3598
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v7, v19

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3599
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v3, v23

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3600
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/LineEntity;->spacing:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v3, "spacing"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3601
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "pileSpacing"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3602
    iget v0, v2, Lcom/qianhe/baselib/bean/LineEntity;->rigthItems:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "rigthItems"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3603
    iget v0, v2, Lcom/qianhe/baselib/bean/LineEntity;->leftItems:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "leftItems"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v2, p1

    move-object/from16 v8, v21

    move-object/from16 v3, v23

    .line 3604
    iget v10, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v11, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v11

    const-string v12, "coordsListJson"

    if-ne v10, v11, :cond_5

    .line 3605
    move-object v0, v2

    check-cast v0, Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 3606
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3607
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3608
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->heightDiff:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "heightDiff"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3609
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3610
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthA:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3611
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthB:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3612
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3613
    iget-object v0, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3614
    :cond_5
    iget v9, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v10, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 3615
    move-object v0, v2

    check-cast v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 3616
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "lon"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3617
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "lat"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3618
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "elev"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3619
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v9, v17

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3620
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v10, v16

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3621
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v11, v18

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3622
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "ratioN"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3623
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "ratioE"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v10, v16

    move-object/from16 v9, v17

    move-object/from16 v11, v18

    .line 3624
    iget v13, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v14, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v14}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 3625
    move-object v8, v2

    check-cast v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 3626
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "lon1"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3627
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "lat1"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3628
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "elev1"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3629
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3630
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3631
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "lon2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3632
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "lat2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3633
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "elev2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3634
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3635
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3636
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "lon3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3637
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "lat3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3638
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "elev3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3639
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "east3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3640
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "north3"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3641
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3642
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3643
    iget-wide v3, v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "depthC"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 3644
    :cond_7
    iget v13, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v14, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v14}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v14

    if-ne v13, v14, :cond_8

    .line 3645
    move-object v0, v2

    check-cast v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 3646
    iget-object v3, v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3648
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->compactionCoeff:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "compactionCoeff"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 3649
    :cond_8
    iget v13, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v14, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v14}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v14

    if-ne v13, v14, :cond_9

    .line 3650
    move-object v0, v2

    check-cast v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 3651
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "lon"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3652
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "lat"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3653
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "elev"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3654
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3655
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3656
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3657
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 3658
    :cond_9
    iget v8, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_a

    .line 3659
    move-object v8, v2

    check-cast v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 3660
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "lon1"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3661
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "lat1"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3662
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "elev1"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3663
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3664
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3665
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthA:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3666
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "lon2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3667
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "lat2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3668
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "elev2"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3669
    iget-wide v9, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3670
    iget-wide v6, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3671
    iget-wide v4, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthB:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3672
    iget-object v0, v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3673
    :cond_a
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    if-ne v0, v3, :cond_b

    .line 3674
    move-object v0, v2

    check-cast v0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 3675
    iget v3, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "shovelTipType"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3676
    iget-object v0, v0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3678
    :cond_b
    :goto_1
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3679
    const-string v0, "name"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    const-string v0, "cadPath"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "belong_engineering_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3682
    iget-object v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    const-string v0, ""

    :goto_2
    const-string v3, "engineering_uuid"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "engineering_local_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3684
    const-string v0, "projectUUid"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3686
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "projectId"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3687
    const-string v0, "coordinateSystem"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    const-string v0, "corsName"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    const-string v0, "corsHost"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "corsPort"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3691
    const-string v0, "corsUserName"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3692
    const-string v0, "corsPassword"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    const-string v0, "corsMount"

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "editState"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3695
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "subType"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3696
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "shovelTipType"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3697
    iget v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "showUnit"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3698
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "baseStationLon"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3699
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "baseStationLat"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3700
    iget-wide v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "baseStationElev"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method private createDefaultEngineeringInternal(Ljava/lang/String;)Z
    .locals 6

    .line 348
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->initDefaultEngineeringParams()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 351
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 352
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    .line 354
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 355
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->repairEngineeringBindings()V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " localId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private createExcavatorEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2264
    new-instance v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    .line 2265
    const-string v3, "localId"

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 2266
    const-string/jumbo v3, "userId"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 2267
    const-string v3, "belong_uid"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2268
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2269
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_0

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 2271
    :cond_0
    const-string v3, "calibrateId"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    .line 2272
    const-string v3, "calibrateUUid"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    .line 2273
    const-string v3, "createTime"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    .line 2274
    const-string/jumbo v3, "updateTime"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 2275
    const-string v3, "name"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 2276
    const-string v3, "calibParamsId"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 2277
    const-string v3, "calibParams"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 2278
    const-string v3, "leftDist"

    const-wide/16 v6, 0x0

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 2279
    const-string v3, "rigthDist"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 2280
    const-string/jumbo v3, "spanDist"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 2281
    const-string v3, "deviceHeight"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    .line 2282
    const-string v3, "mode"

    const/4 v8, 0x0

    invoke-direct {v0, v1, v3, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 2283
    const-string v3, "excavatorParams"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2284
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    .line 2285
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadExcavatorParamsFromJson()V

    .line 2287
    :cond_1
    const-string v3, "HA"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    cmpl-double v11, v9, v6

    if-nez v11, :cond_3

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    cmpl-double v11, v9, v6

    if-nez v11, :cond_3

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    cmpl-double v11, v9, v6

    if-nez v11, :cond_3

    .line 2288
    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    .line 2289
    const-string v3, "Hy"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v11

    const-string v3, "pq"

    invoke-direct {v0, v1, v3, v11, v12}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v11

    .line 2290
    const-string v3, "Ay"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v13

    cmpl-double v3, v9, v6

    if-nez v3, :cond_2

    cmpl-double v3, v11, v6

    if-nez v3, :cond_2

    cmpl-double v3, v13, v6

    if-eqz v3, :cond_3

    .line 2292
    :cond_2
    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 2293
    iput-wide v11, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 2294
    iput-wide v13, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 2295
    const-string v3, "Ax"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 2296
    const-string v3, "Dx"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 2297
    const-string v3, "AD"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 2298
    const-string v3, "BD"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 2299
    const-string v3, "CD"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 2300
    const-string v3, "BC"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 2303
    :cond_3
    const-string/jumbo v3, "showUnit"

    invoke-direct {v0, v1, v3, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    .line 2304
    const-string/jumbo v3, "version"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 2305
    const-string v3, "measureParams"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2306
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    .line 2308
    :cond_4
    const-string v3, "autoGenerateParams"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2309
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    .line 2311
    :cond_5
    const-string v3, "calibSoInputs"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2313
    :try_start_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 2314
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 2315
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->discardInvalidCalibSoInputs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    .line 2317
    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 2321
    :cond_6
    :goto_0
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v3

    const-string v4, "AB"

    const-string v5, "Ry"

    const-string v8, "Ly"

    if-nez v3, :cond_9

    const-string v3, "NT"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2322
    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    const-string v11, "NA"

    const-string v12, "AT"

    cmpl-double v13, v9, v6

    if-nez v13, :cond_7

    .line 2323
    invoke-direct {v0, v1, v12, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    cmpl-double v13, v9, v6

    if-nez v13, :cond_7

    .line 2324
    invoke-direct {v0, v1, v11, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    cmpl-double v13, v9, v6

    if-eqz v13, :cond_9

    .line 2325
    :cond_7
    const-string v9, "LR"

    invoke-direct {v0, v1, v9, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    .line 2326
    invoke-direct {v0, v1, v8, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v13

    .line 2327
    invoke-direct {v0, v1, v5, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v15

    cmpl-double v5, v9, v6

    if-eqz v5, :cond_8

    cmpl-double v5, v13, v6

    if-nez v5, :cond_8

    cmpl-double v5, v15, v6

    if-nez v5, :cond_8

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double v13, v9, v13

    move-wide v8, v13

    move-wide v15, v8

    goto :goto_1

    :cond_8
    move-wide v8, v13

    .line 2332
    :goto_1
    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v13

    .line 2333
    invoke-direct {v0, v1, v12, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v17

    .line 2334
    invoke-direct {v0, v1, v11, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v10

    move-object v5, v2

    move-wide v2, v13

    .line 2336
    invoke-direct {v0, v1, v4, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v12

    move-object v1, v5

    move-wide v6, v10

    move-wide v10, v15

    move-wide/from16 v4, v17

    .line 2331
    invoke-virtual/range {v1 .. v13}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setDistanceMeasureValues(DDDDDD)V

    goto :goto_3

    .line 2337
    :cond_9
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2338
    const-string v3, "G1"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2339
    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    const-string v3, "G2"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v11

    const-string v3, "G3"

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v13

    invoke-direct {v0, v1, v8, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v15

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v17

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v3

    move-object v1, v2

    move-wide v6, v13

    move-wide/from16 v19, v11

    move-wide v12, v3

    move-wide v2, v9

    move-wide/from16 v4, v19

    move-wide v8, v15

    move-wide/from16 v10, v17

    invoke-virtual/range {v1 .. v13}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    .line 2342
    :goto_3
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2343
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearMeasureParams()V

    goto :goto_4

    .line 2344
    :cond_c
    iget-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2345
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearAutoGenerateParams()V

    :cond_d
    :goto_4
    return-object v1
.end method

.method private createShovelEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2394
    new-instance v2, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 2395
    const-string v3, "localId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 2396
    const-string v3, "createTime"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 2397
    const-string/jumbo v3, "updateTime"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    .line 2398
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 2399
    const-string v3, "bucket_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 2400
    const-string v3, "bucket_uuid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 2401
    const-string v3, "mode"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 2402
    const-string v3, "measureParams"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2403
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    .line 2405
    :cond_0
    const-string v3, "autoGenerateParams"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2406
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    .line 2409
    :cond_1
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v3

    const-string v4, "AB"

    const-string v5, "Ry"

    const-string v6, "Ly"

    if-nez v3, :cond_4

    const-string v3, "NT"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x0

    .line 2410
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    const-string v11, "NA"

    const-string v12, "AT"

    cmpl-double v13, v9, v7

    if-nez v13, :cond_2

    .line 2411
    invoke-direct {v0, v1, v12, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    cmpl-double v13, v9, v7

    if-nez v13, :cond_2

    .line 2412
    invoke-direct {v0, v1, v11, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    cmpl-double v13, v9, v7

    if-eqz v13, :cond_4

    .line 2413
    :cond_2
    const-string v9, "LR"

    invoke-direct {v0, v1, v9, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v9

    .line 2414
    invoke-direct {v0, v1, v6, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v13

    .line 2415
    invoke-direct {v0, v1, v5, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v5

    cmpl-double v15, v9, v7

    if-eqz v15, :cond_3

    cmpl-double v15, v13, v7

    if-nez v15, :cond_3

    cmpl-double v15, v5, v7

    if-nez v15, :cond_3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v13, v9, v5

    move-wide v5, v13

    move-wide v9, v5

    goto :goto_0

    :cond_3
    move-wide v9, v13

    .line 2420
    :goto_0
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v13

    .line 2421
    invoke-direct {v0, v1, v12, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v15

    .line 2422
    invoke-direct {v0, v1, v11, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v11

    .line 2424
    invoke-direct {v0, v1, v4, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v3

    move-wide v7, v13

    move-wide v13, v3

    move-wide v3, v7

    move-wide v7, v11

    move-wide v11, v5

    move-wide v5, v15

    .line 2419
    invoke-virtual/range {v2 .. v14}, Lcom/qianhe/baselib/bean/ShovelEntity;->setDistanceMeasureValues(DDDDDD)V

    goto :goto_1

    .line 2425
    :cond_4
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2426
    const-string v3, "G1"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2427
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    const-string v3, "G2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    const-string v3, "G3"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    move-wide/from16 v17, v13

    move-wide v13, v3

    move-wide v3, v7

    move-wide v7, v11

    move-wide v11, v5

    move-wide v5, v9

    move-wide/from16 v9, v17

    invoke-virtual/range {v2 .. v14}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureValues(DDDDDD)V

    .line 2430
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2431
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearMeasureParams()V

    goto :goto_2

    .line 2432
    :cond_7
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2433
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearAutoGenerateParams()V

    .line 2435
    :cond_8
    :goto_2
    const-string v3, "param"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 2436
    const-string/jumbo v3, "showUnit"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 2437
    const-string/jumbo v3, "version"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 2438
    const-string v3, "belong_uid"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2439
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    :cond_9
    return-object v2
.end method

.method private deleteBoundProjectsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 3129
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3130
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringScopeClause(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3132
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3133
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3134
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private deleteBoundTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 3153
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 3155
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 3156
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteGnssTransParamByLocalId(J)J

    :cond_1
    :goto_0
    return-void
.end method

.method private deletePointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    .line 3141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 3142
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private deletePointsInGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 4356
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    .line 4357
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "id = ?"

    const-string v6, "pointLib"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 4358
    iget-object v7, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v8, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v6, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 4360
    :cond_1
    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4362
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4363
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 4364
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePointsInGroup local_ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4370
    :cond_2
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 4371
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "group_id = ?"

    invoke-virtual {p1, v6, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4373
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_local_id = ?"

    invoke-virtual {p1, v6, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteSharedEngineeringIfOrphaned(Ljava/lang/String;)V
    .locals 4

    .line 3927
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3928
    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3929
    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3930
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringReferencedByAnyProject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3931
    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deleteEngineeringRecordOnly(J)J

    .line 3932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u5220\u9664\u5206\u4eab\u4e13\u7528\u5de5\u7a0b uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", localId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private editStateColumnOfBelongUidTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 299
    const-string v0, "engineering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "edit_state"

    return-object p1

    .line 300
    :cond_0
    const-string v0, "share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pointGroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    .line 301
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_2
    :goto_0
    const-string p1, "editState"

    return-object p1
.end method

.method public static effectiveCreateTime(J)J
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static effectiveTime(JJ)J
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static entityUsesServerBinding(J)Z
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static findCurrentUsageEngineering(Ljava/util/List;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;)",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3200
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3203
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, -0x1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v3, :cond_1

    .line 3204
    iget v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 3205
    :cond_2
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-static {v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide v4

    if-eqz v0, :cond_3

    cmp-long v6, v4, v1

    if-ltz v6, :cond_1

    :cond_3
    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getContentExcavetorValues(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Landroid/content/ContentValues;
    .locals 6

    .line 3787
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncParamsToJson()V

    .line 3788
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncExcavatorParamsToJson()V

    .line 3789
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3790
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 3791
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3792
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 3793
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3794
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3795
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "calibrateId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3796
    const-string v1, "calibrateUUid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    const-string v1, "calibParamsId"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    const-string v1, "calibParams"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "leftDist"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3801
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "rigthDist"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3802
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "spanDist"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3803
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "deviceHeight"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3804
    iget v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3805
    const-string v1, "excavatorParams"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "HA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3807
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "pq"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3808
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Ay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3809
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Ax"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3810
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Dx"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3811
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "AD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3812
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "BD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3813
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "CD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3814
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "BC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3815
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "G1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3816
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "G2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3817
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "G3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3818
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Ly"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3819
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Ry"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3820
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "AB"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3821
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "NT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3822
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "AT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3823
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3824
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLR()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "LR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3825
    iget v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "showUnit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3826
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3827
    const-string v1, "measureParams"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    const-string v1, "autoGenerateParams"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncCalibSoInputsToJson()V

    .line 3830
    const-string v1, "calibSoInputs"

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getContentShovelValues(Lcom/qianhe/baselib/bean/ShovelEntity;)Landroid/content/ContentValues;
    .locals 7

    .line 2445
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 2446
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2447
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2448
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2449
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2451
    const-string v1, "bucket_uuid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    iget v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2453
    const-string v1, "measureParams"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const-string v1, "autoGenerateParams"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "G1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2456
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "G2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2457
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "G3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2458
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Ly"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2459
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getRy()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Ry"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2460
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "AB"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2461
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNT()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "NT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2462
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAT()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "AT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2463
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNA()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2464
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLR()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->round3(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "LR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2465
    const-string v1, "param"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    iget v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "showUnit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2467
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2468
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    .line 2469
    :cond_1
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method private getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;D)D
    .locals 0

    .line 2488
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2489
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method private getCursorInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 0

    .line 2483
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2484
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method private getCursorLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 0

    .line 2478
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2479
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method private getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2497
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2498
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 2

    const-class v0, Lcom/qianhe/yct/db/DatabaseManager;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/db/DatabaseManager;->instance:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Lcom/qianhe/yct/db/DatabaseManager;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/db/DatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qianhe/yct/db/DatabaseManager;->instance:Lcom/qianhe/yct/db/DatabaseManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Database requires external storage access"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "DatabaseManager context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_2
    :goto_0
    sget-object p0, Lcom/qianhe/yct/db/DatabaseManager;->instance:Lcom/qianhe/yct/db/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static hasAllEngineeringBindingFields(JJLjava/lang/String;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    .line 856
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 0

    .line 2474
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initDefaultEngineeringParams()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 6

    .line 609
    new-instance v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/EngineeringEntity;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    sget v2, Lcom/qianhe/yct/R$string;->Default:I

    invoke-static {v1, v2}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 611
    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    const/4 v2, 0x2

    .line 614
    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 616
    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 618
    new-instance v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;-><init>()V

    .line 621
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->resolveDefaultCentralMeridianFromSp()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    const-wide/16 v2, 0x0

    .line 622
    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    const-wide v4, 0x411e848000000000L    # 500000.0

    .line 623
    iput-wide v4, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    .line 624
    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 625
    iput-wide v4, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    .line 626
    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    const/4 v2, 0x0

    .line 627
    iput v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    .line 628
    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    .line 629
    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    return-object v0
.end method

.method private isBelongUidTable(Ljava/lang/String;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getBelongUidTableNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isEngineeringBound(JJLjava/lang/String;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    cmp-long p0, p2, v0

    if-gtz p0, :cond_1

    .line 851
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isEngineeringReferencedByAnyProject(Ljava/lang/String;)Z
    .locals 12

    .line 3936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3937
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v2, 0x0

    .line 3940
    :try_start_0
    const-string v3, "id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "engineering_uuid = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const-string v11, "1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3942
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 3946
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3947
    :cond_3
    throw p1

    :cond_4
    return v1
.end method

.method public static isPointGroupBound(Lcom/qianhe/baselib/bean/PointGroupEntity;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 868
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    iget-object p0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringBound(JJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 860
    iget-wide v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    iget-object p0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringBound(JJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameEngineeringBinding(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_3

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1403
    :goto_0
    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v2, v3

    .line 1404
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 1407
    :cond_3
    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_6

    iget-wide v6, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_4

    goto :goto_1

    .line 1410
    :cond_4
    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iget-wide p0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    cmp-long v4, v1, p0

    if-nez v4, :cond_5

    return v3

    :cond_5
    return v0

    .line 1408
    :cond_6
    :goto_1
    iget-wide p0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    cmp-long v4, v1, p0

    if-nez v4, :cond_7

    return v3

    :cond_7
    return v0

    .line 1405
    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_3
    return v0
.end method

.method public static isSameServerEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3273
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-lez p1, :cond_2

    .line 3274
    iget-wide p0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v1, p0, p2

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static isSharedPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 864
    iget p0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->editState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSharedProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 846
    iget p0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUserLoggedIn()Z
    .locals 1

    .line 114
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method private listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V
    .locals 62
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_14

    .line 1739
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1741
    :goto_0
    const-string v3, "id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1742
    const-string v5, "createTime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1743
    const-string/jumbo v7, "updateTime"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1744
    const-string/jumbo v9, "type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1745
    const-string v10, "name"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1746
    const-string v11, "projectUUid"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1747
    const-string/jumbo v12, "version"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1748
    const-string v14, "projectId"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v16, v14

    .line 1749
    const-string v14, "coordinateSystem"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1750
    const-string v15, "corsName"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 1751
    const-string v15, "corsHost"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    .line 1752
    const-string v15, "corsPort"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v20, v15

    .line 1753
    const-string v15, "corsUserName"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    .line 1754
    const-string v15, "corsPassword"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v15

    .line 1755
    const-string v15, "corsMount"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v15

    .line 1756
    const-string v15, "editState"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v24, v14

    .line 1757
    const-string/jumbo v14, "subType"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v25, v14

    .line 1758
    const-string/jumbo v14, "shovelTipType"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v26, v14

    .line 1759
    const-string v14, "engineering_local_id"

    invoke-direct {v0, v1, v14}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "engineering_local_id"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    :goto_1
    move/from16 v29, v15

    move-wide/from16 v14, v27

    move-wide/from16 v27, v12

    goto :goto_2

    :cond_0
    const-wide/16 v27, 0x0

    goto :goto_1

    .line 1760
    :goto_2
    const-string v12, "belong_engineering_id"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v30, v11

    .line 1761
    const-string v11, "engineering_uuid"

    invoke-direct {v0, v1, v11}, Lcom/qianhe/yct/db/DatabaseManager;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v11

    const-string v31, ""

    if-eqz v11, :cond_1

    const-string v11, "engineering_uuid"

    invoke-direct {v0, v1, v11}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v32, v11

    goto :goto_3

    :cond_1
    move-object/from16 v32, v31

    .line 1762
    :goto_3
    const-string/jumbo v11, "showUnit"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v33, v11

    .line 1763
    const-string v11, "baseStationLon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v34, v12

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    .line 1764
    const-string v13, "baseStationLat"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-wide/from16 v36, v11

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    .line 1765
    const-string v13, "baseStationElev"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-wide/from16 v38, v11

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    .line 1766
    const-string v13, "cadPath"

    invoke-direct {v0, v1, v13}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1767
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 1768
    const-string v13, "path"

    invoke-direct {v0, v1, v13}, Lcom/qianhe/yct/db/DatabaseManager;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1771
    :cond_2
    const-string/jumbo v0, "zhaoping"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v40, v0

    const-string v0, "north"

    move-object/from16 v41, v13

    const-string v13, "east"

    move-wide/from16 v42, v11

    const-string v11, "depth"

    if-eqz v40, :cond_3

    .line 1772
    new-instance v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/ZhaoPingEntity;-><init>()V

    move-wide/from16 v44, v14

    .line 1773
    const-string/jumbo v14, "targetLon"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    iput-wide v14, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLon:D

    .line 1774
    const-string/jumbo v14, "targetLat"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    iput-wide v14, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLat:D

    .line 1775
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    iput-wide v13, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    .line 1776
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    iput-wide v13, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    .line 1777
    const-string/jumbo v0, "targetElevation"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    iput-wide v13, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    .line 1778
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    iput-wide v13, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    .line 1779
    const-string v0, "height"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    iput-wide v13, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->height:D

    .line 1780
    const-string v0, "quality"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->quality:I

    move-wide/from16 v52, v3

    move-wide/from16 v50, v5

    move-wide/from16 v48, v7

    move/from16 v47, v9

    move-object/from16 v46, v10

    goto/16 :goto_4

    :cond_3
    move-wide/from16 v44, v14

    .line 1782
    const-string/jumbo v12, "shuapo"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v14, "tickB"

    const-string/jumbo v15, "tickA"

    move/from16 v40, v12

    const-string/jumbo v12, "targetElevation2"

    move-object/from16 v46, v10

    const-string/jumbo v10, "targetLat2"

    move/from16 v47, v9

    const-string/jumbo v9, "targetLon2"

    move-wide/from16 v48, v7

    const-string/jumbo v7, "targetElevation1"

    const-string/jumbo v8, "targetLat1"

    move-wide/from16 v50, v5

    const-string/jumbo v5, "targetLon1"

    const-string v6, "ratio"

    move-wide/from16 v52, v3

    const-string/jumbo v3, "width"

    const-string v4, "north2"

    move-object/from16 v54, v0

    const-string v0, "east2"

    move-object/from16 v55, v13

    const-string v13, "north1"

    move-object/from16 v56, v11

    const-string v11, "east1"

    if-eqz v40, :cond_4

    .line 1783
    new-instance v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/ShuaPoEntity;-><init>()V

    .line 1784
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v40, v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon1:D

    .line 1785
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat1:D

    .line 1786
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    .line 1787
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    .line 1788
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    .line 1789
    const-string v5, "quality1"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->quality1:I

    .line 1790
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon2:D

    .line 1791
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat2:D

    .line 1792
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    .line 1793
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    .line 1794
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    .line 1795
    const-string v0, "quality2"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->quality2:I

    .line 1796
    const-string/jumbo v0, "targetLon3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon3:D

    .line 1797
    const-string/jumbo v0, "targetLat3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat3:D

    .line 1798
    const-string v0, "east3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    .line 1799
    const-string v0, "north3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    .line 1800
    const-string/jumbo v0, "targetElevation3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    .line 1801
    const-string v0, "quality3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->quality3:I

    .line 1802
    const-string/jumbo v0, "targetLonBenchmark"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLonBenchmark:D

    .line 1803
    const-string/jumbo v0, "targetLatBenchmark"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLatBenchmark:D

    .line 1804
    const-string/jumbo v0, "targetElevationBenchmark"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    .line 1805
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    .line 1806
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    .line 1807
    const-string/jumbo v0, "tickC"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickC:I

    .line 1808
    const-string v0, "ditchC"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-double v4, v0

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ditchC:D

    .line 1809
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    .line 1810
    const-string v0, "heigth"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    .line 1811
    const-string v0, "flatDistance"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    move-object/from16 v6, v40

    .line 1812
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    move-object v12, v2

    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 1814
    :cond_4
    const-string/jumbo v2, "wagou"

    move-object/from16 v40, v14

    move-object/from16 v14, p2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v57, v2

    const-string v2, "length"

    const-string v14, "depthB"

    move-object/from16 v58, v14

    const-string v14, "depthA"

    if-eqz v57, :cond_5

    move-object/from16 v57, v14

    .line 1815
    new-instance v14, Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-direct {v14}, Lcom/qianhe/baselib/bean/WaGouEntity;-><init>()V

    .line 1816
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v59, v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    .line 1817
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    .line 1818
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    .line 1819
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    .line 1820
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    .line 1821
    const-string v5, "quality1"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->quality1:I

    .line 1822
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    .line 1823
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    .line 1824
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    .line 1825
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    .line 1826
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    .line 1827
    const-string v0, "quality2"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->quality2:I

    .line 1828
    const-string/jumbo v0, "targetLonH"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonH:D

    .line 1829
    const-string/jumbo v0, "targetLatH"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatH:D

    .line 1830
    const-string v0, "eastH"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->eastH:D

    .line 1831
    const-string v0, "northH"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->northH:D

    .line 1832
    const-string/jumbo v0, "targetElevationH"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationH:D

    .line 1833
    const-string v0, "qualityH"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->qualityH:I

    .line 1834
    const-string v0, "collectType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->collectType:I

    .line 1835
    const-string/jumbo v0, "targetLonBenchmark"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonBenchmark:D

    .line 1836
    const-string/jumbo v0, "targetLatBenchmark"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatBenchmark:D

    .line 1837
    const-string/jumbo v0, "targetElevationBenchmark"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    move-object/from16 v6, v56

    .line 1838
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    .line 1839
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    move-object/from16 v0, v59

    .line 1840
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    .line 1841
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    move-object/from16 v0, v40

    .line 1842
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 1843
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    move-object/from16 v0, v57

    .line 1844
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    move-object/from16 v0, v58

    .line 1845
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 1846
    const-string v0, "leftSlopeRatio"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    .line 1847
    const-string v0, "rightSlopeRatio"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    .line 1848
    const-string v0, "leftBottomWidth"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    .line 1849
    const-string v0, "rightBottomWidth"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    .line 1850
    const-string v0, "advancedType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    move-object/from16 v2, p2

    move-object v12, v14

    goto/16 :goto_4

    :cond_5
    move-object/from16 v57, v14

    move-object/from16 v14, v40

    move-object/from16 v40, v6

    .line 1852
    const-string v6, "dike"

    move-object/from16 v59, v2

    move-object/from16 v2, p2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1853
    new-instance v6, Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-direct {v6}, Lcom/qianhe/baselib/bean/DikeEntity;-><init>()V

    .line 1854
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v61, v14

    move-object/from16 v60, v15

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    iput-wide v14, v6, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    .line 1855
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    iput-wide v14, v6, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    .line 1856
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    iput-wide v14, v6, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    .line 1857
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    iput-wide v13, v6, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    .line 1858
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    .line 1859
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon2:D

    .line 1860
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat2:D

    .line 1861
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    .line 1862
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v6, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    .line 1863
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v6, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    .line 1864
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v6, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    move-object/from16 v14, v60

    .line 1865
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    move-object/from16 v15, v61

    .line 1866
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    move-object/from16 v0, v59

    .line 1867
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v6, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    move-object/from16 v0, v57

    .line 1868
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v6, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    move-object/from16 v0, v58

    .line 1869
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v6, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    move-object v12, v6

    goto/16 :goto_4

    :cond_6
    move-object/from16 v61, v14

    move-object/from16 v60, v15

    move-object/from16 v14, v57

    move-object/from16 v6, v59

    .line 1871
    const-string v15, "line"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1872
    new-instance v15, Lcom/qianhe/baselib/bean/LineEntity;

    invoke-direct {v15}, Lcom/qianhe/baselib/bean/LineEntity;-><init>()V

    .line 1873
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v59, v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->targetLon1:D

    .line 1874
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->targetLat1:D

    .line 1875
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    .line 1876
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    .line 1877
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    .line 1878
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->targetLon2:D

    .line 1879
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->targetLat2:D

    .line 1880
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v15, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    .line 1881
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v15, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    .line 1882
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v15, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    .line 1883
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->width:D

    move-object/from16 v6, v40

    .line 1884
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->ratio:D

    move-object/from16 v0, v59

    .line 1885
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    .line 1886
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    move-object/from16 v5, v58

    .line 1887
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    .line 1888
    const-string/jumbo v0, "spacing"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->spacing:D

    .line 1889
    const-string v0, "pileSpacing"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v15, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    .line 1890
    const-string v0, "rigthItems"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/qianhe/baselib/bean/LineEntity;->rigthItems:I

    .line 1891
    const-string v0, "leftItems"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/qianhe/baselib/bean/LineEntity;->leftItems:I

    move-object v12, v15

    goto/16 :goto_4

    :cond_7
    move-object/from16 v6, v40

    move-object/from16 v5, v58

    .line 1893
    const-string v7, "polyline"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "coordsListJson"

    if-eqz v7, :cond_8

    .line 1894
    new-instance v12, Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/PolyLineEntity;-><init>()V

    .line 1895
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    iput-wide v9, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    move-object/from16 v0, v60

    .line 1896
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->tickA:I

    move-object/from16 v15, v61

    .line 1897
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->tickB:I

    .line 1898
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    iput-wide v9, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthA:D

    .line 1899
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthB:D

    .line 1900
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 1901
    const-string v0, "heightDiff"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->heightDiff:D

    .line 1902
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    .line 1903
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    goto/16 :goto_4

    .line 1905
    :cond_8
    const-string v3, "onePointArea"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1906
    new-instance v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/OnePointAreaEntity;-><init>()V

    .line 1907
    const-string v0, "lon"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    .line 1908
    const-string v0, "lat"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    .line 1909
    const-string v0, "elev"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    move-object/from16 v3, v55

    .line 1910
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    move-object/from16 v7, v54

    .line 1911
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    .line 1912
    const-string v0, "ratioN"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    .line 1913
    const-string v0, "ratioE"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    move-object/from16 v9, v56

    .line 1914
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    goto/16 :goto_4

    :cond_9
    move-object/from16 v7, v54

    move-object/from16 v3, v55

    move-object/from16 v9, v56

    .line 1916
    const-string/jumbo v10, "threePointArea"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1917
    new-instance v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;-><init>()V

    .line 1918
    const-string v3, "lon1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    .line 1919
    const-string v3, "lat1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    .line 1920
    const-string v3, "elev1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    .line 1921
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    .line 1922
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    .line 1923
    const-string v3, "lon2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    .line 1924
    const-string v3, "lat2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    .line 1925
    const-string v3, "elev2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    .line 1926
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    .line 1927
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    .line 1928
    const-string v0, "lon3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    .line 1929
    const-string v0, "lat3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    .line 1930
    const-string v0, "elev3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    .line 1931
    const-string v0, "east3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    .line 1932
    const-string v0, "north3"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    .line 1933
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    .line 1934
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    .line 1935
    const-string v0, "depthC"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    goto/16 :goto_4

    .line 1937
    :cond_a
    const-string/jumbo v10, "siteleveling"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1938
    new-instance v12, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/SiteLevelingEntity;-><init>()V

    .line 1939
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    .line 1940
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    .line 1941
    const-string v0, "compactionCoeff"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->compactionCoeff:D

    goto/16 :goto_4

    .line 1943
    :cond_b
    const-string v10, "arbitraryline"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1944
    new-instance v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;-><init>()V

    .line 1945
    const-string v0, "lon"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lon:D

    .line 1946
    const-string v0, "lat"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lat:D

    .line 1947
    const-string v0, "elev"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    .line 1948
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    .line 1949
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    .line 1950
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    .line 1951
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    goto/16 :goto_4

    .line 1953
    :cond_c
    const-string v3, "curvedSlope"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1954
    new-instance v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;-><init>()V

    .line 1955
    const-string v3, "lon1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon1:D

    .line 1956
    const-string v3, "lat1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat1:D

    .line 1957
    const-string v3, "elev1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    .line 1958
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    .line 1959
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    .line 1960
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthA:D

    .line 1961
    const-string v3, "lon2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon2:D

    .line 1962
    const-string v3, "lat2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat2:D

    .line 1963
    const-string v3, "elev2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev2:D

    .line 1964
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east2:D

    .line 1965
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north2:D

    .line 1966
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthB:D

    .line 1967
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    goto :goto_4

    .line 1969
    :cond_d
    const-string v0, "multiPointArea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1970
    new-instance v12, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-direct {v12}, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;-><init>()V

    .line 1971
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    goto :goto_4

    :cond_e
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_12

    move-wide/from16 v3, v52

    .line 1975
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    move-wide/from16 v3, v50

    .line 1976
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    move-wide/from16 v3, v48

    .line 1977
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    move/from16 v0, v47

    .line 1978
    iput v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    move-object/from16 v0, v46

    .line 1979
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    move-wide/from16 v3, v44

    .line 1980
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    move-wide/from16 v3, v34

    .line 1981
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    if-eqz v32, :cond_f

    move-object/from16 v11, v32

    goto :goto_5

    :cond_f
    move-object/from16 v11, v31

    .line 1982
    :goto_5
    iput-object v11, v12, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    move-object/from16 v0, v30

    .line 1983
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    move-wide/from16 v3, v27

    .line 1984
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    move-wide/from16 v3, v16

    .line 1985
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    move/from16 v0, v29

    .line 1986
    iput v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    move-object/from16 v0, v24

    .line 1987
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    move-object/from16 v0, v18

    .line 1988
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    move-object/from16 v0, v19

    .line 1989
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    move/from16 v0, v20

    .line 1990
    iput v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    move-object/from16 v0, v21

    .line 1991
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    move-object/from16 v0, v22

    .line 1992
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    move-object/from16 v0, v23

    .line 1993
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    move/from16 v0, v25

    .line 1994
    iput v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    move/from16 v0, v26

    .line 1995
    iput v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    move/from16 v0, v33

    .line 1996
    iput v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    move-wide/from16 v3, v36

    .line 1997
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    move-wide/from16 v3, v38

    .line 1998
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    move-wide/from16 v3, v42

    .line 1999
    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    if-eqz v41, :cond_10

    move-object/from16 v0, v41

    goto :goto_6

    :cond_10
    move-object/from16 v0, v31

    .line 2000
    :goto_6
    iput-object v0, v12, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 2001
    const-string v0, "belong_uid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 2002
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/qianhe/baselib/base/BaseProEntity;->belongUid:J

    :cond_11
    move-object/from16 v0, p3

    .line 2003
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    move-object/from16 v0, p3

    .line 2005
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 2006
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_13
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private loadEmbeddedTransParamSnapshot(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 436
    const-string v1, "seven_parameter"

    const-string v2, "four_parameter"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v4, :cond_1

    :cond_0
    move-object/from16 v9, p0

    goto :goto_4

    .line 441
    :cond_1
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 444
    :try_start_0
    const-string v10, "engineering"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "id = ?"

    .line 446
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v17, "1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p0

    .line 444
    invoke-direct/range {v9 .. v17}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 448
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 449
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_0
    if-eqz v4, :cond_3

    .line 454
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object/from16 v9, p0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_4
    throw v0

    :cond_5
    move-object v1, v3

    goto :goto_1

    .line 458
    :goto_3
    invoke-direct {v9, v0, v3, v1}, Lcom/qianhe/yct/db/DatabaseManager;->snapshotTransParamFromEmbeddedJson(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    return-object v0

    :goto_4
    return-object v3
.end method

.method private loginSyncSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(belong_uid = 0 OR belong_uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 556
    new-instance v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/EngineeringEntity;-><init>()V

    .line 557
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 558
    const-string v1, "engineering_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    .line 559
    const-string v1, "engineering_uuid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 560
    const-string v1, "create_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    .line 561
    const-string/jumbo v1, "update_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    .line 562
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 563
    const-string v1, "ellipsoid_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 564
    const-string v1, "custom_ellipsoid_params"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 566
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    .line 573
    :cond_0
    const-string v1, "projection_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 574
    const-string v1, "gauss_kruger_params"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    .line 578
    :cond_1
    const-string/jumbo v1, "utm_params"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    .line 582
    :cond_2
    const-string/jumbo v1, "transverse_mercator_params"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 584
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    .line 587
    :cond_3
    const-string v1, "conversion_params_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 588
    const-string/jumbo v1, "trans_param_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 590
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 592
    :cond_4
    const-string/jumbo v1, "trans_param_local_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 594
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 596
    :cond_5
    const-string v1, "four_parameter"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v2, "seven_parameter"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->attachTransParamToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v1, "edit_state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    .line 600
    const-string v1, "current_usage"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 601
    const-string/jumbo v1, "version"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    .line 602
    const-string v1, "belong_uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 603
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->belongUid:J

    :cond_6
    return-object v0
.end method

.method private mapCursorToGnssTransParamEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 4251
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;-><init>()V

    .line 4252
    const-string v1, "localId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 4253
    const-string/jumbo v1, "trans_param_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 4254
    const-string/jumbo v1, "trans_param_uuid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    .line 4255
    const-string v1, "create_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    .line 4256
    const-string/jumbo v1, "update_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    .line 4257
    const-string/jumbo v1, "version"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    .line 4258
    const-string v1, "belong_uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    .line 4259
    const-string/jumbo v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    .line 4260
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 4261
    const-string v1, "param_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 4262
    const-string v1, "params_detail"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    .line 4263
    const-string v1, "control_points"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    return-object v0
.end method

.method private mapCursorToPointGroup(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointGroupEntity;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 4564
    new-instance v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/PointGroupEntity;-><init>()V

    .line 4565
    const-string v1, "group_local_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    .line 4566
    const-string v1, "group_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    .line 4567
    const-string v1, "group_uuid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v5, ""

    if-ltz v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    .line 4568
    const-string v1, "create_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    .line 4569
    const-string/jumbo v1, "update_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->updateTime:J

    .line 4570
    const-string/jumbo v1, "version"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x0

    if-ltz v2, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->version:I

    .line 4571
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    .line 4572
    const-string v1, "remark"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v5

    :goto_4
    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    .line 4573
    const-string v1, "local_ids"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    const-string v1, "[]"

    :goto_5
    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    .line 4574
    const-string v1, "engineering_local_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_6

    :cond_6
    move-wide v1, v3

    :goto_6
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    .line 4575
    const-string v1, "belong_engineering_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :cond_7
    iput-wide v3, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    .line 4576
    const-string v1, "engineering_uuid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v5

    :goto_7
    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 4577
    iput-object v5, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    .line 4578
    :cond_9
    const-string v1, "editState"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :cond_a
    iput v6, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->editState:I

    .line 4579
    const-string v1, "belong_uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 4580
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongUid:J

    :cond_b
    return-object v0
.end method

.method private mapCursorToPointlib(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2118
    new-instance v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;-><init>()V

    .line 2119
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    .line 2120
    const-string v1, "point_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    .line 2121
    const-string v1, "group_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    .line 2122
    const-string v1, "group_local_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :cond_2
    iput-wide v3, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    .line 2123
    const-string v1, "createTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    .line 2124
    const-string v1, "pointType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointType:I

    .line 2125
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 2126
    const-string/jumbo v1, "systemType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    .line 2127
    const-string v1, "lon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 2128
    const-string v1, "lat"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 2129
    const-string v1, "alt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    goto :goto_2

    :cond_3
    move-wide v1, v3

    :goto_2
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 2130
    const-string v1, "elev"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 2131
    const-string v1, "geodeticLon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    goto :goto_3

    :cond_4
    move-wide v1, v3

    :goto_3
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 2132
    const-string v1, "geodeticLat"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    goto :goto_4

    :cond_5
    move-wide v1, v3

    :goto_4
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 2133
    const-string v1, "geodeticElev"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    goto :goto_5

    :cond_6
    move-wide v1, v3

    :goto_5
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 2134
    const-string v1, "east"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 2135
    const-string v1, "north"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 2136
    const-string v1, "quality"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    .line 2137
    const-string v1, "hdop"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    goto :goto_6

    :cond_7
    move-wide v1, v3

    :goto_6
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 2138
    const-string/jumbo v1, "vdop"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    :cond_8
    iput-wide v3, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    .line 2139
    const-string v1, "encod"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->encod:I

    .line 2140
    const-string v1, "coordinateSystem"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->coordinateSystem:Ljava/lang/String;

    .line 2141
    const-string v1, "corsName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->corsName:Ljava/lang/String;

    .line 2142
    const-string v1, "corsHost"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->corsHost:Ljava/lang/String;

    .line 2143
    const-string v1, "corsPort"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPort:I

    .line 2144
    const-string v1, "corsUserName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->corsUserName:Ljava/lang/String;

    .line 2145
    const-string v1, "corsPassword"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPassword:Ljava/lang/String;

    .line 2146
    const-string v1, "corsMount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->corsMount:Ljava/lang/String;

    return-object v0
.end method

.method private needsEngineeringBindingSync(JJLjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p6, :cond_0

    return v0

    .line 1121
    :cond_0
    invoke-static {p6}, Lcom/qianhe/yct/db/DatabaseManager;->usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 1122
    iget-wide p1, p6, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v1, p3, p1

    if-eqz v1, :cond_1

    return v2

    .line 1123
    :cond_1
    iget-object p1, p6, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 1124
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2

    .line 1126
    :cond_5
    iget-wide p3, p6, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 p5, 0x0

    cmp-long v1, p3, p5

    if-lez v1, :cond_6

    cmp-long p5, p1, p3

    if-eqz p5, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method private orphanEngineeringWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "engineering_local_id IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "engineering_local_id = 0) AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "belong_engineering_id IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "belong_engineering_id = 0) AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "engineering_uuid IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "engineering_uuid = \'\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 913
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND (editState IS NULL OR editState != 1)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private pickDefaultEngineeringToKeep(Ljava/util/List;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;)",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;"
        }
    .end annotation

    .line 3435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v3, :cond_1

    goto :goto_0

    .line 3439
    :cond_1
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v4, v6

    if-lez v9, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v3

    move v2, v4

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    move-object v0, v3

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-ne v4, v2, :cond_0

    .line 3451
    invoke-static {v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->compareEngineeringCreateOrder(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    move-result v4

    if-gez v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V
    .locals 0

    .line 949
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    .line 950
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    return-void
.end method

.method private preserveEngineeringBindingIfMissing(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 2565
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2568
    :cond_0
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2569
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2570
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 2571
    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 2572
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 2573
    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    :cond_3
    :goto_1
    return-void
.end method

.method private putBelongUid(Landroid/content/ContentValues;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "belong_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private putEngineeringEllipsoidColumns(Landroid/content/ContentValues;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 2

    .line 840
    iget v0, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ellipsoid_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    iget-object p2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 841
    :goto_0
    const-string v0, "custom_ellipsoid_params"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putEngineeringTransParamColumns(Landroid/content/ContentValues;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    .line 510
    iget-object v0, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object p2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 512
    iget-object p2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    move-object v3, v1

    move-object v1, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 514
    iget-object p2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 517
    :goto_0
    const-string v0, "four_parameter"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "seven_parameter"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private queryAutoCreatedDefaultEngineerings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation

    .line 3394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3395
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->collectDefaultEngineeringNames()Ljava/util/Set;

    move-result-object v1

    .line 3396
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v3, :cond_0

    .line 3397
    iget v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 3400
    :cond_1
    iget-object v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3401
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p3}, Lcom/qianhe/yct/db/DatabaseManager;->loginSyncSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private queryProjectsWithUUidByEngineeringLocalId(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 3042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    :cond_0
    move-object v3, p0

    goto :goto_3

    .line 3044
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v2, 0x0

    .line 3047
    :try_start_0
    const-string v6, "engineering_local_id = ? AND projectUUid IS NOT NULL AND projectUUid != \'\'"

    .line 3049
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 3047
    :try_start_1
    invoke-direct/range {v3 .. v10}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3050
    invoke-direct {p0, v2, v4, v0}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 3052
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, p0

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3053
    :cond_3
    throw p1

    :goto_3
    return-object v0
.end method

.method private queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 149
    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/qianhe/yct/db/DatabaseManager;->scopedSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->sqlWithBelongUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private readGnssTransParamList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation

    .line 4279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 4280
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4282
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToGnssTransParamEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    .line 4283
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->attachControlPoints(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 4284
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4285
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private readSingleGnssTransParam(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4269
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4270
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToGnssTransParamEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p1

    .line 4271
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->attachControlPoints(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private rebindEngineeringData(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 3471
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 3474
    :cond_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringBindingValues(Lcom/qianhe/baselib/bean/EngineeringEntity;)Landroid/content/ContentValues;

    move-result-object p2

    .line 3475
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3479
    :cond_1
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3480
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "engineering_local_id = ?"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3481
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 3483
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointGroup"

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private removeForeignSyncedPointGroups(J)V
    .locals 9

    .line 4481
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 4483
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4484
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4485
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    iget-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4486
    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    iget-object v3, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsByServerId(JLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4487
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 4488
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4489
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4490
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    move-object v2, v3

    goto :goto_1

    .line 4494
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/PointGroupEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4495
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private removePointFromGroupLocalIds(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_3

    .line 4603
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 4606
    :cond_1
    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[]"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    :goto_0
    invoke-direct {p2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4607
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 4608
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4609
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    cmp-long v4, v2, p3

    if-eqz v4, :cond_3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4611
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    .line 4612
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4614
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removePointFromGroupLocalIds: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private repairEngineeringBindingsInTable(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1002
    :try_start_0
    const-string v0, "id"

    const-string v2, "engineering_local_id"

    const-string v3, "belong_engineering_id"

    const-string v4, "engineering_uuid"

    const-string v5, "editState"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 1022
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 1005
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 1006
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v0, 0x1

    .line 1007
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v2, 0x2

    .line 1008
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v2, 0x3

    .line 1009
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v2, ""

    :goto_1
    move-object v7, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    const/4 v2, 0x4

    .line 1010
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 1013
    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/db/DatabaseManager;->resolveRepairTarget(JJLjava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1017
    :cond_4
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringBindingValues(Lcom/qianhe/baselib/bean/EngineeringEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1019
    :cond_5
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "id = ?"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p1

    invoke-virtual {v3, v7, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1022
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_7
    throw v0
.end method

.method private repairPointGroupEngineeringBindings(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1033
    :try_start_0
    const-string v3, "pointGroup"

    const-string v0, "group_local_id"

    const-string v2, "engineering_local_id"

    const-string v4, "belong_engineering_id"

    const-string v5, "engineering_uuid"

    const-string v6, "editState"

    filled-new-array {v0, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 1055
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 1037
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 1038
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v0, 0x1

    .line 1039
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v2, 0x2

    .line 1040
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v2, 0x3

    .line 1041
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v2, ""

    :goto_1
    move-object v7, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    const/4 v2, 0x4

    .line 1042
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 1045
    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/db/DatabaseManager;->resolveRepairTarget(JJLjava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1049
    :cond_4
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringBindingValues(Lcom/qianhe/baselib/bean/EngineeringEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1051
    :cond_5
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pointGroup"

    const-string v5, "group_local_id = ?"

    .line 1052
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 1051
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1055
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_7
    throw v0
.end method

.method private resolveConflictEngineeringScope(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1491
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    return-object p1

    .line 1494
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    return-object p1
.end method

.method private resolveDefaultCentralMeridianFromSp()I
    .locals 6

    .line 635
    sget-object v0, Lcom/qianhe/yct/db/DatabaseManager;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "current_coords"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 640
    :cond_0
    :try_start_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    return v2

    :cond_1
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    return v0

    :catch_0
    return v2
.end method

.method private resolveRepairTarget(JJLjava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;)",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;"
        }
    .end annotation

    move-object/from16 v0, p10

    .line 1070
    invoke-static/range {p1 .. p5}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringBound(JJLjava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return-object v7

    .line 1075
    :cond_0
    invoke-static/range {p1 .. p5}, Lcom/qianhe/yct/db/DatabaseManager;->hasAllEngineeringBindingFields(JJLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1076
    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v6, :cond_1

    return-object v7

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1078
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingSync(JJLjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v6

    :cond_2
    return-object v7

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_4

    .line 1084
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    cmp-long v6, p3, v3

    if-lez v6, :cond_5

    .line 1085
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v9, p7

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v5, :cond_a

    .line 1088
    invoke-virtual/range {p0 .. p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 1089
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-lez v6, :cond_9

    if-eqz v1, :cond_6

    .line 1090
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, p3, v1

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_8

    .line 1093
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 1094
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz p5, :cond_7

    move-object v2, p5

    goto :goto_1

    .line 1095
    :cond_7
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    return-object v7

    :cond_9
    :goto_2
    return-object v0

    :cond_a
    if-eqz v1, :cond_c

    .line 1101
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v6, :cond_b

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1102
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingSync(JJLjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v6

    :cond_b
    return-object v7

    .line 1107
    :cond_c
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1108
    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v6, :cond_d

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1110
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingSync(JJLjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v6

    :cond_d
    return-object v7
.end method

.method private static round3(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v0

    .line 2493
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private scopedSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isBelongUidTable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "belong_uid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private snapshotTransParamFromEmbeddedJson(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 464
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 470
    :cond_1
    iget p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    move-object p2, p3

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 473
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-object v0

    .line 476
    :cond_3
    new-instance p3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;-><init>()V

    .line 477
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    iput v1, p3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 478
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    iput-wide v1, p3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 479
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    iput-wide v1, p3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 480
    iput-object p2, p3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    .line 481
    invoke-virtual {p3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    .line 482
    invoke-virtual {p3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p3

    :cond_4
    :goto_1
    return-object v0
.end method

.method private sqlWithBelongUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 178
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isBelongUidTable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " AND belong_uid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateEngineeringInternal(Lcom/qianhe/baselib/bean/EngineeringEntity;J)I
    .locals 6

    .line 2935
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2936
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "engineering_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2937
    const-string v1, "engineering_uuid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "create_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2939
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "update_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2940
    const-string p2, "name"

    iget-object p3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->putEngineeringEllipsoidColumns(Landroid/content/ContentValues;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 2942
    iget p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "projection_type"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2943
    iget-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    const-string v1, "gauss_kruger_params"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    iget-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, p3

    :goto_2
    const-string/jumbo v1, "utm_params"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    const-string/jumbo p2, "transverse_mercator_params"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    iget p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "conversion_params_type"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2947
    iget-wide p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "trans_param_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2948
    iget-wide p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "trans_param_local_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2949
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->putEngineeringTransParamColumns(Landroid/content/ContentValues;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 2950
    iget p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "edit_state"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2951
    iget p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "current_usage"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2952
    iget-wide p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "version"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2953
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 2954
    iget-object p2, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "engineering"

    const-string v1, "id = ?"

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 2956
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    :cond_4
    return p1
.end method

.method public static usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 1169
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private uuidColumnOfBelongUidTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 287
    const-string v0, "engineering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "engineering_uuid"

    return-object p1

    .line 288
    :cond_0
    const-string v0, "excavator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "calibrateUUid"

    return-object p1

    .line 289
    :cond_1
    const-string/jumbo v0, "shovel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "bucket_uuid"

    return-object p1

    .line 290
    :cond_2
    const-string v0, "gnss_trans_param"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "trans_param_uuid"

    return-object p1

    .line 291
    :cond_3
    const-string v0, "pointGroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "group_uuid"

    return-object p1

    .line 292
    :cond_4
    const-string v0, "share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "shareUUid"

    return-object p1

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "projectUUid"

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public applyLatestCurrentEngineeringParams()V
    .locals 1

    .line 2909
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureCurrentEngineeringInUse()Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 2910
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    .line 2911
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    return-void
.end method

.method public applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1305
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 1306
    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    return-void

    .line 1309
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1310
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    :cond_2
    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    return-void
.end method

.method public applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1319
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isPointGroupBound(Lcom/qianhe/baselib/bean/PointGroupEntity;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 1320
    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    return-void

    .line 1323
    :cond_1
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    iget-object v8, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(JJLjava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1325
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    :cond_2
    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    return-void
.end method

.method public applyServerCurrentEngineering(Ljava/lang/String;J)Z
    .locals 0

    .line 3279
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3281
    :cond_0
    iget-wide p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;JJLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1198
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringBound(JJLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1200
    :cond_1
    invoke-static {p2, p3, p4, p5, p6}, Lcom/qianhe/yct/db/DatabaseManager;->hasAllEngineeringBindingFields(JJLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1201
    iget-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 1202
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0

    .line 1204
    :cond_3
    invoke-static {p4, p5}, Lcom/qianhe/yct/db/DatabaseManager;->entityUsesServerBinding(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1205
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->usesServerEngineeringBinding(Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-wide p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p3, p4, p1

    if-nez p3, :cond_4

    return v2

    :cond_4
    return v0

    .line 1207
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 1208
    iget-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 1209
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-lez p6, :cond_8

    .line 1211
    iget-wide p4, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p1, p2, p4

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 7

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1179
    :cond_0
    iget-wide v2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iget-wide v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    iget-object v6, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;JJLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/PointGroupEntity;)Z
    .locals 7

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1184
    :cond_0
    iget-wide v2, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    iget-wide v4, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    iget-object v6, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;JJLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bindOrphanDataToDefaultEngineering()V
    .locals 1

    .line 955
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->repairEngineeringBindings()V

    return-void
.end method

.method public bindTransParamLocalId(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 538
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 539
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 543
    :cond_1
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 544
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByTransParamId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 546
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 547
    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 550
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    :cond_4
    :goto_1
    return-void
.end method

.method public claimUnassignedDataToCurrentUser()V
    .locals 9

    .line 190
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "belong_uid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseHelper;->getBelongUidTableNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    iget-object v5, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->editStateColumnOfBelongUidTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 199
    iget-object v4, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "belong_uid = 0"

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_2
    iget-object v5, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "belong_uid = 0 AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IS NULL OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " != 1)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->claimUnassignedSharedRows(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public cleanupDuplicateProjectsByUuid()I
    .locals 3

    .line 2640
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2641
    invoke-direct {p0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsInTable(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 2644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupDuplicateProjectsByUuid deleted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public clearAllUserData()V
    .locals 4

    .line 4654
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4657
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4659
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getAllUserDataTableNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4660
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4662
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4663
    const-string/jumbo v0, "\u6ce8\u9500\u8d26\u53f7\uff1a\u672c\u5730\u6570\u636e\u5e93\u5df2\u6e05\u7a7a"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4665
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4667
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    return-void

    .line 4665
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4666
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 4643
    sput-object v0, Lcom/qianhe/yct/db/DatabaseManager;->instance:Lcom/qianhe/yct/db/DatabaseManager;

    .line 4644
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4645
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4647
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    if-eqz v0, :cond_1

    .line 4648
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_1
    return-void
.end method

.method public collectPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public collectProjectsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 3097
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 3099
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3101
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringScopeClause(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3103
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    .line 3104
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    .line 3105
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/db/DatabaseManager;->appendProjectsFromTable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v4
.end method

.method public collectServerPointIdsInGroup(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    goto :goto_1

    .line 4348
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 4349
    iget-wide v3, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public createDefaultEngineeringIfAbsent(I)Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->hasLocalDefaultEngineering()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->hasLocalEngineering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->serverHasAnyEngineering(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 336
    :cond_1
    const-string/jumbo p1, "\u63a5\u53e3\u4e0e\u672c\u5730\u5747\u65e0\u5de5\u7a0b\uff0c\u5df2\u521b\u5efa\u672c\u5730\u9ed8\u8ba4\u5de5\u7a0b"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringInternal(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public createDefaultEngineeringIfAbsentLocally()Z
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->hasLocalDefaultEngineering()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->hasLocalEngineering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 320
    :cond_1
    const-string/jumbo v0, "\u672c\u5730\u65e0\u6b63\u5728\u4f7f\u7528\u7684\u5de5\u7a0b\uff0c\u5df2\u521b\u5efa\u672c\u5730\u9ed8\u8ba4\u5de5\u7a0b"

    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringInternal(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public currentBelongUid()J
    .locals 2

    .line 119
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public deduplicateDefaultEngineeringsAfterSync()V
    .locals 8

    .line 3365
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAutoCreatedDefaultEngineerings()Ljava/util/List;

    move-result-object v0

    .line 3366
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto/16 :goto_1

    .line 3369
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->pickDefaultEngineeringToKeep(Ljava/util/List;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 3373
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v2, :cond_2

    .line 3374
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    goto :goto_0

    .line 3378
    :cond_3
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    goto :goto_0

    .line 3381
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->rebindEngineeringData(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 3382
    invoke-direct {p0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deleteBoundTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 3383
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->deleteEngineeringRecordOnly(J)J

    move-result-wide v3

    .line 3384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u540c\u6b65\u53bb\u91cd\u9ed8\u8ba4\u5de5\u7a0b: \u5220\u9664 localId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", engineeringId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", createTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u4fdd\u7559 localId="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", \u7ed3\u679c="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public deleteById(Lcom/qianhe/baselib/base/BaseProEntity;)J
    .locals 7

    .line 3842
    iget v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 3843
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "id = ?"

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 3844
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    const-string/jumbo v4, "\u5220\u9664\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "\u5220\u9664\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2014\u2014>table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cid:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    return-wide v1
.end method

.method public deleteCORS(Lcom/qianhe/baselib/bean/CorsEntity;)J
    .locals 6

    .line 3879
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "cors"

    const-string v3, "id = ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 3880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const-string/jumbo v3, "\u5220\u9664\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "\u5220\u9664\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2014\u2014>name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-wide v0
.end method

.method public deleteEngineeringById(J)J
    .locals 2

    .line 3161
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 3163
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteBoundProjectsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 3164
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteBoundTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 3165
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 3166
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "engineering"

    const-string v1, "id = ?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public deleteEngineeringRecordOnly(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "engineering"

    const-string v1, "id = ?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public deleteExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J
    .locals 3

    .line 3953
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "excavator"

    const-string v2, "localId = ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public deleteForeignSharedProjectsAndEngineering(Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 12

    if-eqz p1, :cond_8

    .line 3905
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3906
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3907
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 3908
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 3909
    :cond_1
    invoke-static {}, Lcom/qianhe/baselib/enums/ProjectEnum;->values()[Lcom/qianhe/baselib/enums/ProjectEnum;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 3910
    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 3911
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v9, :cond_2

    .line 3912
    iget v10, v9, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    goto :goto_2

    .line 3913
    :cond_3
    iget-object v10, v9, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3914
    iget-object v10, v9, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3916
    :cond_4
    invoke-virtual {p0, v9}, Lcom/qianhe/yct/db/DatabaseManager;->deleteById(Lcom/qianhe/baselib/base/BaseProEntity;)J

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3920
    :cond_7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3921
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteSharedEngineeringIfOrphaned(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public deleteGnssTransParamByLocalId(J)J
    .locals 2

    .line 4111
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "gnss_trans_param"

    const-string v1, "localId = ?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public deletePoint(Lcom/qianhe/baselib/bean/PointlibEntity;)J
    .locals 7

    .line 3885
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    .line 3886
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "pointLib"

    const-string v5, "id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 3888
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->removePointFromGroupLocalIds(JJ)V

    :cond_0
    return-wide v2
.end method

.method public deletePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J
    .locals 5

    if-eqz p1, :cond_2

    .line 4337
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 4338
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    .line 4340
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointsInGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 4341
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "pointGroup"

    const-string v2, "group_local_id = ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public deleteShare(Lcom/qianhe/baselib/bean/ShareEntity;)J
    .locals 5

    .line 3894
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "shareId = ?"

    .line 3895
    const-string v2, "share"

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->scopedSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    .line 3896
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3894
    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public deleteShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)J
    .locals 3

    .line 2351
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "shovel"

    const-string v2, "localId = ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public ensureCurrentEngineeringInUse()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 2

    .line 933
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    .line 936
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 937
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->reconcileCurrentUsage()V

    .line 938
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 940
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    .line 941
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    return-object v0

    .line 943
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureLocalDefaultEngineering()Z

    .line 944
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    return-object v0
.end method

.method public ensureDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureCurrentEngineeringInUse()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 922
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringIfAbsentLocally()Z

    .line 926
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    return-object v0
.end method

.method public ensureLocalDefaultEngineering()Z
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->hasLocalDefaultEngineering()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->hasLocalEngineering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    const-string/jumbo v0, "\u672c\u5730\u65e0\u5de5\u7a0b\uff0c\u5df2\u521b\u5efa\u672c\u5730\u9ed8\u8ba4\u5de5\u7a0b"

    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringInternal(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public finalizeEngineeringSyncAfterServerPull(ILjava/lang/String;JJLcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 4

    .line 3300
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringIfAbsent(I)Z

    .line 3301
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->deduplicateDefaultEngineeringsAfterSync()V

    const/4 p5, 0x1

    const-wide/16 v0, 0x0

    const/4 p6, 0x0

    if-eqz p7, :cond_0

    .line 3304
    iget-wide v2, p7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p7, v2, v0

    if-lez p7, :cond_0

    .line 3305
    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p7

    if-eqz p7, :cond_1

    .line 3306
    iget v2, p7, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v2, p5, :cond_1

    :cond_0
    move-object p7, p6

    :cond_1
    if-nez p7, :cond_2

    .line 3311
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3312
    iget v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-eq v3, p5, :cond_2

    move-object p7, v2

    .line 3317
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    if-eqz p7, :cond_3

    .line 3321
    iget-wide p3, p7, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p5, p3, v0

    if-gtz p5, :cond_3

    if-nez p2, :cond_3

    .line 3322
    iget-wide p1, p7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    .line 3323
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    .line 3324
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureCurrentEngineeringInUse()Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3325
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 3326
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p2, :cond_5

    .line 3331
    invoke-direct {p0}, Lcom/qianhe/yct/db/DatabaseManager;->isUserLoggedIn()Z

    move-result p3

    if-eqz p3, :cond_5

    if-lez p1, :cond_5

    :cond_4
    move-object p6, p2

    goto :goto_1

    :cond_5
    if-eqz p7, :cond_6

    if-eqz p2, :cond_6

    .line 3334
    iget-wide p3, p7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide p5, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p1, p3, p5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_6
    if-eqz p7, :cond_7

    :goto_0
    move-object p6, p7

    :cond_7
    :goto_1
    if-eqz p6, :cond_8

    .line 3340
    iget-wide p1, p6, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    goto :goto_2

    .line 3342
    :cond_8
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->reconcileCurrentUsage()V

    .line 3343
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureCurrentEngineeringInUse()Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3345
    :goto_2
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    .line 3346
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureCurrentEngineeringInUse()Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3348
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 3349
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    return-object p1
.end method

.method public findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 4

    .line 3253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3254
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3255
    iget-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_3

    .line 3261
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3262
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v3, v1, p2

    if-nez v3, :cond_2

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public fromEngineeringTransParam(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 524
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;-><init>()V

    .line 525
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 526
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    .line 527
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 528
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramType:I

    iput v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 529
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramsDetail:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    .line 530
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->controlPoints:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    .line 531
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    .line 532
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    return-object v0
.end method

.method public fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4298
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;-><init>()V

    .line 4299
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 4300
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    .line 4301
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->createEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    .line 4302
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->updateEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    .line 4303
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->version:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    .line 4304
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->belongUid:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    .line 4305
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->state:I

    iput v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    .line 4306
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 4307
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->paramType:I

    iput v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 4308
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->paramsDetail:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    .line 4309
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->controlPoints:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    .line 4310
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    .line 4311
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    return-object v0
.end method

.method public generateDefaultPointGroupName()Ljava/lang/String;
    .locals 6

    .line 4619
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4620
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4622
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->point_group_default_name:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const/4 v3, 0x1

    .line 4625
    :goto_1
    invoke-virtual {p0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->isPointGroupNameExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v4

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public generateDefaultPointName(J)Ljava/lang/String;
    .locals 7

    .line 4632
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4634
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "Pt%d"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4635
    :goto_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->isPointNameExistsInGroup(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4636
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1

    .line 3850
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3851
    const-string/jumbo p1, "zhaoping"

    return-object p1

    .line 3852
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3853
    const-string/jumbo p1, "shuapo"

    return-object p1

    .line 3854
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3855
    const-string/jumbo p1, "wagou"

    return-object p1

    .line 3856
    :cond_2
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 3857
    const-string p1, "dike"

    return-object p1

    .line 3858
    :cond_3
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 3859
    const-string p1, "line"

    return-object p1

    .line 3860
    :cond_4
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 3861
    const-string p1, "polyline"

    return-object p1

    .line 3862
    :cond_5
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 3863
    const-string p1, "onePointArea"

    return-object p1

    .line 3864
    :cond_6
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 3865
    const-string/jumbo p1, "threePointArea"

    return-object p1

    .line 3866
    :cond_7
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 3867
    const-string/jumbo p1, "siteleveling"

    return-object p1

    .line 3868
    :cond_8
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 3869
    const-string p1, "arbitraryline"

    return-object p1

    .line 3870
    :cond_9
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 3871
    const-string p1, "curvedSlope"

    return-object p1

    .line 3872
    :cond_a
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 3873
    const-string p1, "multiPointArea"

    return-object p1

    .line 3875
    :cond_b
    const-string p1, ""

    return-object p1
.end method

.method public hasLocalDefaultEngineering()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLocalEngineering()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public insert(Lcom/qianhe/baselib/base/BaseProEntity;)J
    .locals 2

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J
    .locals 6

    .line 670
    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    .line 673
    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 674
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 675
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 676
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 677
    const-string v2, ""

    iput-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 678
    iget-object v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 679
    iget-object v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 680
    iget v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 681
    iget-object v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    iput-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 682
    iget-object v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    iput-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 683
    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    goto :goto_0

    .line 686
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    sget v2, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-static {v0, v2}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 688
    const-string v0, "rss.rtkiot.cn"

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    const/16 v0, 0x1f41

    .line 689
    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 690
    const-string v0, "AUTO"

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    .line 693
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p2, :cond_2

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "createTime"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 695
    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindCurrentEngineering(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 697
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->createContentValue(Lcom/qianhe/baselib/base/BaseProEntity;Landroid/content/ContentValues;)V

    .line 698
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongUid:J

    .line 699
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 700
    iget p2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    const-wide/16 v2, -0x1

    if-lez p2, :cond_4

    .line 701
    iget-object v4, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 702
    const-string/jumbo p1, "\u6570\u636e\u63d2\u5165\u5931\u8d25\u3002"

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u63d2\u5165\u6210\u529f\u3002"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-wide v0

    :cond_4
    return-wide v2
.end method

.method public insertCORS(Lcom/qianhe/baselib/bean/CorsEntity;)J
    .locals 2

    const/4 v0, 0x1

    .line 708
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertCORS(Lcom/qianhe/baselib/bean/CorsEntity;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertCORS(Lcom/qianhe/baselib/bean/CorsEntity;Z)J
    .locals 5

    .line 713
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "createTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    iget p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "ntripType"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string p2, "name"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string p2, "host"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "port"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    const-string/jumbo p2, "userName"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string p2, "password"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string p2, "mount"

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "cors"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)J
    .locals 5

    .line 3958
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 3960
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3961
    iget-object v1, p1, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    const-string/jumbo v2, "sn"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    const-string/jumbo v1, "type"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3963
    const-string v1, "pnVersion"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->pnVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    const-string v1, "fmwVersion"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    const-string v1, "gnssVersion"

    iget-object p1, p1, Lcom/qianhe/yct/bean/DeviceInfo;->gnssVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "deviceInfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)J
    .locals 6

    .line 814
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 815
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "engineering_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 816
    const-string v1, "engineering_uuid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "create_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 818
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 819
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->putEngineeringEllipsoidColumns(Landroid/content/ContentValues;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 822
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "projection_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "gauss_kruger_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string/jumbo v3, "utm_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string/jumbo v3, "transverse_mercator_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "conversion_params_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "trans_param_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "trans_param_local_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->putEngineeringTransParamColumns(Landroid/content/ContentValues;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 831
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "edit_state"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "current_usage"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 834
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->belongUid:J

    .line 835
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 836
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "engineering"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J
    .locals 5

    .line 807
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 808
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getContentExcavetorValues(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Landroid/content/ContentValues;

    move-result-object p1

    .line 809
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "excavator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)J
    .locals 6

    .line 4021
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    .line 4024
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 4025
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    .line 4027
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setControlPointList(Ljava/util/List;)V

    .line 4028
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    .line 4029
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->buildGnssTransParamContentValues(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4030
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "gnss_trans_param"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 4032
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 4033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GNSS\u8f6c\u6362\u53c2\u6570\u63d2\u5165\u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-wide v0

    .line 4035
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GNSS\u8f6c\u6362\u53c2\u6570\u63d2\u5165\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-wide v0
.end method

.method public insertPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)J
    .locals 9

    .line 728
    invoke-static {p1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->normalizeGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 730
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    .line 731
    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 732
    invoke-virtual {p0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 734
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 735
    const-string v1, ""

    iput-object v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->coordinateSystem:Ljava/lang/String;

    .line 736
    iget-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsName:Ljava/lang/String;

    .line 737
    iget-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsHost:Ljava/lang/String;

    .line 738
    iget v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPort:I

    .line 739
    iget-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsUserName:Ljava/lang/String;

    .line 740
    iget-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPassword:Ljava/lang/String;

    .line 741
    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsMount:Ljava/lang/String;

    goto :goto_0

    .line 744
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->coordinateSystem:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsName:Ljava/lang/String;

    .line 746
    const-string v0, "rss.rtkiot.cn"

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsHost:Ljava/lang/String;

    const/16 v0, 0x1f41

    .line 747
    iput v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPort:I

    .line 748
    const-string v0, "AUTO"

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsMount:Ljava/lang/String;

    .line 750
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 751
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "pointType"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "createTime"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    const-string v1, "name"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string/jumbo v1, "systemType"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "lon"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 756
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "lat"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 757
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "alt"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 758
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "elev"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 759
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "east"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 760
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "north"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 761
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "quality"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->encod:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "encod"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v1, "coordinateSystem"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->coordinateSystem:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v1, "corsName"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "corsHost"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "corsPort"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const-string v1, "corsUserName"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v1, "corsPassword"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v1, "corsMount"

    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsMount:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "group_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "group_local_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "point_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 773
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "geodeticLon"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 774
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "geodeticLat"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 775
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "geodeticElev"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 776
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "hdop"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 777
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v3, "vdop"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 778
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "pointLib"

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-lez v2, :cond_3

    .line 780
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    .line 781
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->appendPointToGroupLocalIds(JJ)V

    :cond_3
    return-wide v0
.end method

.method public insertPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J
    .locals 5

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 4319
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindCurrentEngineeringToPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 4320
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->buildPointGroupContentValues(Lcom/qianhe/baselib/bean/PointGroupEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4321
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pointGroup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4322
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    :cond_1
    return-wide v0
.end method

.method public insertShare(Lcom/qianhe/baselib/bean/ShareEntity;)J
    .locals 3

    .line 788
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isShareCodeExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 790
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "shareId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 793
    const-string v1, "shareCode"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "editState"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v1, "projectUUids"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expireTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 798
    const-string v1, "shareUUid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareUUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->belongUid:J

    .line 800
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 801
    iget-object p1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "share"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J
    .locals 3

    .line 2381
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getContentShovelValues(Lcom/qianhe/baselib/bean/ShovelEntity;)Landroid/content/ContentValues;

    move-result-object p1

    .line 2382
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "shovel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCorsNameExist(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3

    .line 2708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2709
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2712
    :try_start_0
    const-string v2, "SELECT 1 FROM cors WHERE TRIM(name) = ? AND id != ? LIMIT 1"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string v2, "SELECT 1 FROM cors WHERE TRIM(name) = ? LIMIT 1"

    :goto_0
    if-eqz p2, :cond_2

    .line 2713
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 2714
    :goto_1
    const-string p2, "cors"

    invoke-direct {p0, p2, v2, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2715
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 2717
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2718
    :cond_5
    throw p1
.end method

.method public isDeviceSnExists(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 4007
    :try_start_0
    const-string v1, "SELECT 1 FROM deviceInfo WHERE sn = ? LIMIT 1"

    .line 4008
    const-string v2, "deviceInfo"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4009
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4013
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4014
    :cond_2
    throw p1
.end method

.method public isEngineeringNameExists(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2769
    :try_start_0
    const-string v1, "SELECT 1 FROM engineering WHERE name = ? LIMIT 1"

    .line 2770
    const-string v2, "engineering"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2771
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2774
    :cond_2
    throw p1
.end method

.method public isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT 1 FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE name = ? LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2582
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2583
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2588
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    .line 2585
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 2588
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2590
    :cond_3
    throw p1
.end method

.method public isEntityNameExistsInEngineering(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 1 FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE name = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2598
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->appendCurrentEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 2600
    const-string p2, " LIMIT 1"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 2604
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, p2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2605
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2610
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return p2

    .line 2607
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 2610
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return p2

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2612
    :cond_3
    throw p1
.end method

.method public isEntityUUidExists(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2618
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2619
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 2622
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT 1 FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE projectUUid = ? LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2623
    iget-object v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2624
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 2628
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2629
    :cond_3
    throw p1

    :cond_4
    :goto_2
    return v0
.end method

.method public isExcavatorNameExists(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2755
    :try_start_0
    const-string v1, "SELECT 1 FROM excavator WHERE name = ? LIMIT 1"

    .line 2756
    const-string v2, "excavator"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2757
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2761
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2762
    :cond_2
    throw p1
.end method

.method public isGnssTransParamNameExists(Ljava/lang/String;)Z
    .locals 4

    .line 4115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4118
    :try_start_0
    const-string v2, "gnss_trans_param"

    const-string v3, "SELECT 1 FROM gnss_trans_param WHERE name = ? AND state = 0 LIMIT 1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4121
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4124
    :cond_3
    throw p1
.end method

.method public isLoginSyncBelongUid(J)Z
    .locals 5

    .line 143
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPointGroupNameExists(Ljava/lang/String;)Z
    .locals 1

    .line 4519
    const-string v0, "pointGroup"

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExistsInEngineering(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPointNameExistsInGroup(JLjava/lang/String;)Z
    .locals 4

    .line 4523
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4526
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT 1 FROM pointLib WHERE group_local_id = ? AND name = ? LIMIT 1"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4527
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4529
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4530
    :cond_3
    throw p1
.end method

.method public isShareCodeExists(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2691
    :try_start_0
    const-string v1, "SELECT 1 FROM share WHERE shareCode = ? LIMIT 1"

    .line 2692
    const-string v2, "share"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2693
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2697
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2698
    :cond_2
    throw p1
.end method

.method public isShovelNameExists(Ljava/lang/String;)Z
    .locals 4

    .line 2503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2508
    :try_start_0
    const-string v2, "SELECT 1 FROM shovel WHERE name = ? LIMIT 1"

    .line 2509
    const-string/jumbo v3, "shovel"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v2, p1}, Lcom/qianhe/yct/db/DatabaseManager;->rawQueryScoped(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2510
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 2515
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2516
    :cond_2
    throw p1

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    return v1
.end method

.method public needsEngineeringBindingReconcile(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    invoke-static {p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->isSameEngineeringBinding(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 1395
    :cond_1
    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1396
    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iget-wide p1, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    cmp-long v1, v3, p1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public queryAllEngineering()Ljava/util/List;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 2779
    const-string v7, "create_time DESC"

    const-string v1, "engineering"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 2781
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2783
    :cond_0
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v3

    .line 2784
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2785
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2786
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public queryAllGnssTransParams()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 4177
    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParams(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryAllPointGroups()Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation

    .line 4395
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllProjectsAcrossEngineerings()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 3082
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3083
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3084
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 3085
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/db/DatabaseManager;->appendProjectsFromTable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public queryCORS(Ljava/lang/Long;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2013
    const-string v1, "id = ?"

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :cond_1
    move-object v6, v0

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const-string v3, "cors"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 2016
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2018
    :cond_2
    new-instance v1, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    .line 2019
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 2020
    const-string v2, "createTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->timeStamp:J

    .line 2021
    const-string v2, "ntripType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 2022
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 2023
    const-string v2, "host"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 2024
    const-string v2, "port"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 2025
    const-string/jumbo v2, "userName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 2026
    const-string v2, "password"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 2027
    const-string v2, "mount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    .line 2028
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2030
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public queryCORSByName(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;"
        }
    .end annotation

    .line 2037
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "name = ?"

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    :cond_1
    move-object v6, v1

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const-string v3, "cors"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 2039
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2041
    :cond_2
    new-instance v1, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    .line 2042
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 2043
    const-string v2, "createTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->timeStamp:J

    .line 2044
    const-string v2, "ntripType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 2045
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 2046
    const-string v2, "host"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 2047
    const-string v2, "port"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 2048
    const-string/jumbo v2, "userName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 2049
    const-string v2, "password"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 2050
    const-string v2, "mount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    .line 2051
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2052
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2053
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2871
    const-string/jumbo v7, "update_time DESC, id DESC"

    const-string v8, "1"

    const-string v1, "engineering"

    const/4 v2, 0x0

    const-string v3, "current_usage = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2873
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2874
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    .line 2875
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    .line 2878
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const/4 v7, 0x0

    .line 653
    const-string v8, "1"

    const-string v1, "engineering"

    const/4 v2, 0x0

    const-string v3, "current_usage = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 654
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    .line 656
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    .line 659
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 3985
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "createTime DESC"

    const-string v1, "deviceInfo"

    const/4 v2, 0x0

    const-string/jumbo v3, "sn = ?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 3988
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3990
    :cond_0
    new-instance v1, Lcom/qianhe/yct/bean/DeviceInfo;

    invoke-direct {v1}, Lcom/qianhe/yct/bean/DeviceInfo;-><init>()V

    .line 3991
    const-string/jumbo v2, "sn"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    .line 3992
    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    .line 3993
    const-string v2, "pnVersion"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/yct/bean/DeviceInfo;->pnVersion:Ljava/lang/String;

    .line 3994
    const-string v2, "fmwVersion"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    .line 3995
    const-string v2, "gnssVersion"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/yct/bean/DeviceInfo;->gnssVersion:Ljava/lang/String;

    .line 3996
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3997
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3998
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4000
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/bean/DeviceInfo;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    return-object v2

    .line 393
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const-string v11, "1"

    const-string v4, "engineering"

    const/4 v5, 0x0

    const-string v6, "id = ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 394
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 395
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    .line 396
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    .line 399
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method

.method public queryEngineeringByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 379
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "1"

    const-string v1, "engineering"

    const/4 v2, 0x0

    const-string v3, "name = ? AND (edit_state IS NULL OR edit_state != 1)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 382
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    .line 384
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 387
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryEngineeringReferencingTransParam(JJ)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    cmp-long v4, p3, v2

    if-gtz v4, :cond_0

    return-object v1

    :cond_0
    if-lez v0, :cond_2

    .line 4070
    :try_start_0
    const-string v6, "engineering"

    const-string/jumbo v8, "trans_param_local_id = ?"

    .line 4071
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v13, "1"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    .line 4070
    invoke-direct/range {v5 .. v13}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 4073
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4074
    invoke-direct {p0, v4}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4091
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    .line 4077
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v4, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    cmp-long v0, p3, v2

    if-lez v0, :cond_5

    .line 4082
    const-string v6, "engineering"

    const-string/jumbo v8, "trans_param_id = ?"

    .line 4083
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v13, "1"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    .line 4082
    invoke-direct/range {v5 .. v13}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4085
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4086
    invoke-direct {p0, v4}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4091
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4092
    :cond_4
    throw v0

    :cond_5
    if-eqz v4, :cond_6

    .line 4091
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1
.end method

.method public queryEntityByEditStateAndExactName(IILjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 1425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1427
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 1428
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-object v0

    .line 1429
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "editState = ? AND name = ?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2

    goto :goto_1

    .line 1433
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p4

    .line 1434
    :goto_1
    invoke-direct {p0, p1, v1, p4}, Lcom/qianhe/yct/db/DatabaseManager;->appendEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1435
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 1436
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 1435
    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1437
    invoke-direct {p0, p1, v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 1652
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    .line 1655
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 1657
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "editState = ? AND LOWER(name) LIKE ?"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1658
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1659
    invoke-direct {p0, p2, p3}, Lcom/qianhe/yct/db/DatabaseManager;->appendCurrentEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1660
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x0

    .line 1661
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    .line 1663
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v6, 0x0

    const-string v7, "createTime DESC"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    const/4 p1, 0x0

    .line 1664
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    invoke-direct {p0, p1, v1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method public queryEntityById(ILjava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1623
    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryEntityById(ILjava/lang/Long;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 1630
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1632
    const-string v0, "id = ?"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    .line 1633
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 1635
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1636
    new-instance v0, Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_4

    .line 1639
    :cond_4
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p3

    .line 1640
    :goto_4
    invoke-direct {p0, v4, v0, p3}, Lcom/qianhe/yct/db/DatabaseManager;->appendEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1642
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_6
    move-object p2, p1

    .line 1643
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    :goto_6
    move-object v4, v3

    goto :goto_7

    :cond_7
    new-array p3, v2, [Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    goto :goto_6

    .line 1645
    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 v6, 0x0

    const-string v7, "createTime DESC"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_8

    :cond_8
    move-object v0, p0

    .line 1646
    :goto_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    invoke-direct {p0, p1, v1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method public queryEntityByProjectIds(ILjava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 1705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 1706
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto/16 :goto_4

    .line 1707
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 1708
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1709
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1711
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1712
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1713
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1716
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 1718
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit16 v10, v1, 0x190

    .line 1719
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1720
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 1722
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    if-lez v4, :cond_6

    const/16 v5, 0x2c

    .line 1723
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v5, 0x3f

    .line 1724
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1726
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "projectId IN ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1729
    invoke-direct {p0, v4, v2}, Lcom/qianhe/yct/db/DatabaseManager;->appendCurrentEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1730
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, p2, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1731
    invoke-direct {p0, v1, v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v1, :cond_8

    .line 1732
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move v1, v10

    goto :goto_2

    :goto_4
    return-object v0
.end method

.method public queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 1670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1672
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 1674
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1676
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const/4 v4, 0x0

    const-string v5, "projectUUid = ?"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v2, p0

    const/4 p1, 0x0

    .line 1679
    :goto_0
    invoke-direct {p0, p1, v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public queryExcavatorByCalibParamsId(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation

    .line 2219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "calibParamsId = ?"

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    :cond_1
    move-object v6, v1

    const/4 v8, 0x0

    const-string v9, "createTime DESC, name DESC"

    const-string v3, "excavator"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 2222
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2224
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createExcavatorEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    .line 2225
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public queryExcavatorByLocalId(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2233
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2234
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "createTime DESC"

    const-string v1, "excavator"

    const/4 v2, 0x0

    const-string v3, "localId = ?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2235
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 2237
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2239
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createExcavatorEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    .line 2240
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2242
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2
.end method

.method public queryExcavatorByName(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation

    .line 2248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2249
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "createTime DESC"

    const-string v1, "excavator"

    const/4 v2, 0x0

    const-string v3, "name = ?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 2252
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2254
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createExcavatorEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v2

    .line 2255
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2256
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2257
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public queryExcavatorByUserId(J)Ljava/util/List;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    .line 2204
    const-string/jumbo v0, "userId = ?"

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    :cond_1
    move-object v8, v2

    const/4 v10, 0x0

    const-string v11, "createTime DESC, name DESC"

    const-string v5, "excavator"

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2205
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 2207
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2209
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createExcavatorEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    .line 2210
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2212
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p2
.end method

.method public queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4143
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "1"

    const-string v1, "gnss_trans_param"

    const/4 v2, 0x0

    const-string v3, "localId = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4144
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->readSingleGnssTransParam(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4145
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2
.end method

.method public queryGnssTransParamByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 9

    .line 4168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4169
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "1"

    const-string v1, "gnss_trans_param"

    const/4 v2, 0x0

    const-string v3, "name = ? AND state = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4170
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->readSingleGnssTransParam(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 4171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public queryGnssTransParamByTransParamId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4152
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "1"

    const-string v1, "gnss_trans_param"

    const/4 v2, 0x0

    const-string/jumbo v3, "trans_param_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4153
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->readSingleGnssTransParam(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4154
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2
.end method

.method public queryGnssTransParams(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation

    .line 4186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p5, :cond_0

    .line 4189
    const-string/jumbo p5, "state = 0"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    .line 4191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p5, v2, v4

    if-lez p5, :cond_1

    .line 4192
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->appendAnd(Ljava/lang/StringBuilder;)V

    .line 4193
    const-string/jumbo p5, "trans_param_id = ?"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4194
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4196
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4197
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->appendAnd(Ljava/lang/StringBuilder;)V

    .line 4198
    const-string/jumbo p1, "trans_param_uuid = ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4199
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4201
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4202
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->appendAnd(Ljava/lang/StringBuilder;)V

    .line 4203
    const-string p1, "LOWER(name) LIKE ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p4, :cond_4

    .line 4206
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    .line 4207
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->appendAnd(Ljava/lang/StringBuilder;)V

    .line 4208
    const-string p1, "param_type = ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4209
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4211
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_5
    move-object v5, p2

    .line 4212
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    move-object v6, p2

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Ljava/lang/String;

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    .line 4213
    const-string v9, "create_time DESC"

    const-string v3, "gnss_trans_param"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4214
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->readGnssTransParamList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 4215
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object p2
.end method

.method public queryPoint(Ljava/lang/Long;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2085
    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;"
        }
    .end annotation

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2091
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2093
    const-string v2, "id = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    :cond_0
    const-string p1, " AND "

    if-eqz p2, :cond_2

    .line 2097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    :cond_1
    const-string v2, "group_local_id = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p3, :cond_4

    .line 2102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    :cond_3
    const-string p1, "(geodeticLon != 0 OR geodeticLat != 0 OR geodeticElev != 0)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_5
    move-object v5, p2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    move-object v6, p2

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Ljava/lang/String;

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const-string v3, "pointLib"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    .line 2107
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2109
    :cond_7
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToPointlib(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_7

    .line 2111
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object p2
.end method

.method public queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    return-object v2

    .line 4443
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const-string v11, "1"

    const-string v4, "pointGroup"

    const/4 v5, 0x0

    const-string v6, "group_local_id = ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4445
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4446
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToPointGroup(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p2

    .line 4447
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    .line 4449
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method

.method public queryPointGroupByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/PointGroupEntity;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 4502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4503
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "name = ?"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4505
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4506
    invoke-direct {p0, v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->appendCurrentEngineeringScopeFilter(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 4507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "1"

    const-string v4, "pointGroup"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4509
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4510
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToPointGroup(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    .line 4511
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 4513
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public queryPointGroupsByServerId(JLjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation

    .line 4457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 4459
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "group_local_id ASC"

    const-string v2, "pointGroup"

    const/4 v3, 0x0

    const-string v4, "group_id = ?"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->appendPointGroupsFromCursor(Ljava/util/List;Landroid/database/Cursor;)V

    return-object v0

    :cond_0
    move-object v1, p0

    .line 4460
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4461
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "group_local_id ASC"

    const-string v2, "pointGroup"

    const/4 v3, 0x0

    const-string v4, "group_uuid = ?"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->appendPointGroupsFromCursor(Ljava/util/List;Landroid/database/Cursor;)V

    :cond_1
    return-object v0
.end method

.method public queryPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4404
    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->buildEngineeringScopeClause(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4406
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    move-object v4, p1

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    move-object v5, v4

    :goto_0
    const/4 v7, 0x0

    .line 4409
    const-string v8, "create_time DESC"

    const-string v2, "pointGroup"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 4411
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4413
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToPointGroup(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4414
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4415
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public queryProjectByLocalId(IJ)Lcom/qianhe/baselib/base/BaseProEntity;
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-lez v3, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    move-object v4, p0

    goto :goto_3

    .line 3010
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v5

    .line 3011
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v2

    .line 3014
    :cond_2
    :try_start_0
    const-string v7, "id = ?"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3015
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3016
    invoke-direct {p0, p1, v5, p2}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    .line 3017
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    .line 3019
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object p2, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, p0

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3020
    :cond_5
    throw p2

    :goto_3
    return-object v2
.end method

.method public queryShareByShareCode(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShareEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2178
    const-string v1, "shareCode = ?"

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :cond_1
    move-object v6, v0

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const-string v3, "share"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 2181
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2183
    :cond_2
    new-instance v1, Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ShareEntity;-><init>()V

    .line 2184
    const-string v2, "shareId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    .line 2185
    const-string v2, "createTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->createTime:J

    .line 2186
    const-string/jumbo v2, "updateTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->updateTime:J

    .line 2187
    const-string v2, "expireTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    .line 2188
    const-string v2, "shareCode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    .line 2189
    const-string v2, "editState"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    .line 2190
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    .line 2191
    const-string v2, "projectUUids"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    .line 2192
    const-string v2, "shareUUid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareUUid:Ljava/lang/String;

    .line 2193
    const-string v2, "belong_uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 2194
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->belongUid:J

    .line 2195
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2197
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShareEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2152
    const-string v1, "shareId = ?"

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :cond_1
    move-object v6, v0

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const-string v3, "share"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 2155
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2157
    :cond_2
    new-instance v1, Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ShareEntity;-><init>()V

    .line 2158
    const-string v2, "shareId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    .line 2159
    const-string v2, "createTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->createTime:J

    .line 2160
    const-string/jumbo v2, "updateTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->updateTime:J

    .line 2161
    const-string v2, "expireTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    .line 2162
    const-string v2, "shareCode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    .line 2163
    const-string v2, "editState"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    .line 2164
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    .line 2165
    const-string v2, "projectUUids"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    .line 2166
    const-string v2, "shareUUid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareUUid:Ljava/lang/String;

    .line 2167
    const-string v2, "belong_uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 2168
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->belongUid:J

    .line 2169
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2170
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public queryShovelByLocalId(J)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    return-object v2

    .line 2371
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v4, "shovel"

    const/4 v5, 0x0

    const-string v6, "localId = ?"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2373
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2374
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createShovelEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p2

    .line 2375
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    return-object v2
.end method

.method public queryShovelByName(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation

    .line 2356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "name = ?"

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    :cond_1
    move-object v6, v1

    const/4 v8, 0x0

    const-string v9, "createTime DESC"

    const-string/jumbo v3, "shovel"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryScoped(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 2359
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2361
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->createShovelEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    .line 2362
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2364
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1443
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1444
    :cond_0
    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1445
    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1448
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1450
    :cond_1
    iget-object p2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndExactName(IILjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1452
    :cond_2
    iget-object p2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndExactName(IILjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUnassignedEngineering()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 2793
    const-string v7, "create_time DESC"

    const-string v1, "engineering"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 2795
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2797
    :cond_0
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToEngineeringEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2798
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2799
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public queryUnassignedExcavators()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 2826
    const-string v7, "createTime DESC, name DESC"

    const-string v1, "excavator"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 2828
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2830
    :cond_0
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->createExcavatorEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2831
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public queryUnassignedGnssTransParams()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 2850
    const-string v7, "create_time DESC"

    const-string v1, "gnss_trans_param"

    const/4 v2, 0x0

    const-string/jumbo v3, "state = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2851
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->readGnssTransParamList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 2852
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2
.end method

.method public queryUnassignedPointGroups()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 2857
    const-string v7, "create_time DESC"

    const-string v1, "pointGroup"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 2859
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2861
    :cond_0
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->mapCursorToPointGroup(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2862
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2863
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public queryUnassignedProjectsAcrossEngineerings()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 2806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2807
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2808
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 2811
    :try_start_0
    invoke-direct/range {v4 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2812
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2813
    invoke-direct {p0, v3, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->listEntityCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/List;)V

    .line 2814
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 2815
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2816
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_0

    .line 2819
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2820
    :cond_3
    throw v0

    :cond_4
    move-object v4, p0

    return-object v0
.end method

.method public queryUnassignedShovels()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 2838
    const-string v7, "createTime DESC"

    const-string/jumbo v1, "shovel"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryLoginSync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2839
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 2840
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2842
    :cond_0
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->createShovelEntity(Landroid/database/Cursor;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2843
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2844
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public reconcileCurrentUsage()V
    .locals 11

    .line 3216
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    .line 3217
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3221
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3222
    iget v9, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    if-ne v9, v8, :cond_1

    iget v9, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v9, v8, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 3224
    iget-wide v8, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-static {v8, v9}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide v8

    if-eqz v3, :cond_3

    cmp-long v10, v8, v4

    if-lez v10, :cond_1

    :cond_3
    move-object v3, v7

    move-wide v4, v8

    goto :goto_0

    :cond_4
    if-nez v6, :cond_7

    .line 3231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 3232
    iget v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-eq v4, v8, :cond_5

    .line 3233
    iget-wide v0, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    return-void

    .line 3237
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    return-void

    :cond_7
    if-ne v6, v8, :cond_8

    .line 3241
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_9

    .line 3242
    iget-wide v0, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    return-void

    :cond_8
    if-eqz v3, :cond_9

    .line 3247
    iget-wide v0, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    :cond_9
    :goto_1
    return-void
.end method

.method public reconcileProjectBindingFromServer(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1348
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 1351
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1353
    iget v3, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v3, v2, :cond_2

    return v0

    :cond_2
    if-nez v1, :cond_3

    .line 1354
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-ne v1, v2, :cond_3

    return v0

    .line 1356
    :cond_3
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1357
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    .line 1358
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 1359
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1360
    invoke-virtual {p0, v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingReconcile(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    .line 1364
    :cond_5
    iget-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1365
    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)I

    move-result v3

    if-lez v3, :cond_8

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u540c\u6b65\u7ea0\u6b63\u5de5\u7a0b\u5f52\u5c5e\u2014\u2014>type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cname:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cuuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cbelong:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\uff0cengUuid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    iget-object v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    const-string v7, ""

    if-eqz v6, :cond_6

    goto :goto_0

    :cond_6
    move-object v6, v7

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    iget-object v6, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v6, :cond_7

    move-object v7, v6

    :cond_7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\uff0clocalId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1367
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_8
    if-lez v3, :cond_9

    return v2

    :cond_9
    :goto_1
    return v0
.end method

.method public refreshProjectForUpload(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/base/BaseProEntity;
    .locals 6

    if-eqz p1, :cond_7

    .line 3025
    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    iget v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    if-gtz v4, :cond_0

    goto :goto_1

    .line 3026
    :cond_0
    invoke-virtual {p0, v4, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryProjectByLocalId(IJ)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3028
    :cond_1
    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    iput-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 3029
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 3030
    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iput-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    .line 3031
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 3032
    :cond_3
    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    iput-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    .line 3033
    :cond_4
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 3034
    :cond_5
    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    .line 3035
    :cond_6
    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3036
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedIfConflictsWithSynced(Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_7
    :goto_1
    return-object p1
.end method

.method public removeUnassignedDuplicatesAlreadyOwnedByCurrentUser()V
    .locals 10

    .line 248
    const-string v0, "belong_uid"

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 250
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseHelper;->getBelongUidTableNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    iget-object v5, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, v3}, Lcom/qianhe/yct/db/DatabaseHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    invoke-direct {p0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->uuidColumnOfBelongUidTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 257
    :try_start_0
    invoke-direct {p0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->editStateColumnOfBelongUidTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 259
    const-string v6, ""

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto/16 :goto_5

    .line 260
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND (a."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IS NULL OR a."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " != 1)"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    :goto_1
    iget-object v7, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT a.rowid FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " a INNER JOIN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " b ON a."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = b."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " WHERE a."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = 0 AND b."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = ? AND a."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IS NOT NULL AND a."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " != \'\'"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_5

    .line 268
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    .line 269
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 273
    iget-object v8, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "rowid = ?"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v3, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 275
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5df2\u5220\u9664 belong_uid=0 \u4e14\u5f53\u524d\u7528\u6237\u5df2\u6709\u540c uuid \u7684\u91cd\u590d\u6570\u636e table="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-eqz v5, :cond_1

    .line 281
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 279
    :goto_5
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUnassignedDuplicates "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_4

    :goto_6
    if-eqz v5, :cond_8

    .line 281
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_8
    throw v0

    :cond_9
    :goto_7
    return-void
.end method

.method public renameUnsyncedConflictsWithServer(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1476
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1477
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 1478
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    if-gtz v1, :cond_2

    goto :goto_0

    .line 1479
    :cond_2
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->resolveConflictEngineeringScope(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1480
    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 1481
    :cond_3
    iget v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndExactName(IILjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocals(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public renameUnsyncedIfConflictsWithSynced(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 1517
    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1520
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_5

    .line 1525
    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1526
    :cond_2
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndExactName(IILjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v1

    .line 1528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v2, :cond_3

    .line 1529
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1530
    invoke-virtual {p0, v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1536
    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/SyncNameHelper;->withCreateTimeSuffix(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1537
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1538
    :cond_4
    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 1540
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public renameUnsyncedLocalDuplicatesForAllEngineerings()V
    .locals 4

    .line 1584
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1586
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_1

    .line 1587
    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 1588
    :cond_2
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 8

    if-eqz p1, :cond_a

    .line 1548
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 1549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->collectProjectsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    .line 1550
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 1551
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1552
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v2, :cond_2

    .line 1553
    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-ne v3, v1, :cond_3

    goto :goto_0

    .line 1557
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1558
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4

    .line 1560
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1565
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1566
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    goto :goto_1

    .line 1567
    :cond_7
    new-instance v2, Lcom/qianhe/yct/db/DatabaseManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/qianhe/yct/db/DatabaseManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x1

    .line 1570
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1571
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/base/BaseProEntity;

    if-nez v3, :cond_8

    goto :goto_3

    .line 1573
    :cond_8
    iget-object v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-wide v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v4, v5, v6}, Lcom/qianhe/yct/utils/SyncNameHelper;->withCreateTimeSuffix(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 1574
    iget-object v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    .line 1575
    :cond_9
    iput-object v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 1577
    invoke-virtual {p0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    return-void
.end method

.method public renameUnsyncedLocals(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1499
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1500
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 1501
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1504
    :cond_2
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2, v3}, Lcom/qianhe/yct/utils/SyncNameHelper;->withCreateTimeSuffix(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1505
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1506
    :cond_3
    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 1508
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public repairEngineeringBindings()V
    .locals 12

    .line 967
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    .line 968
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 970
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 971
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 972
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 973
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 974
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 975
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 976
    iget-wide v8, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_2
    iget-wide v8, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_3

    .line 978
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 979
    iget-wide v8, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-wide v8, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_3
    iget-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    iget-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 987
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    .line 988
    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->repairEngineeringBindingsInTable(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    :cond_5
    move-object v2, p0

    .line 991
    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/db/DatabaseManager;->repairPointGroupEngineeringBindings(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public resolveEngineeringByBinding(JJLjava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 3

    .line 1263
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1264
    invoke-virtual {p0, p5, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p5

    if-eqz p5, :cond_0

    return-object p5

    :cond_0
    const/4 p5, 0x0

    cmp-long v0, p3, v1

    if-lez v0, :cond_1

    .line 1268
    invoke-virtual {p0, p5, p3, p4}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p3

    if-eqz p3, :cond_1

    return-object p3

    :cond_1
    cmp-long p3, p1, v1

    if-lez p3, :cond_2

    .line 1272
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p5
.end method

.method public resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1279
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    iget-object v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(JJLjava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    return-object p1
.end method

.method public resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 405
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v1, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object p1

    .line 412
    :cond_1
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 413
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 415
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_4

    .line 416
    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByTransParamId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 417
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    move-object v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 422
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v2

    if-nez v2, :cond_6

    .line 423
    :cond_5
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->loadEmbeddedTransParamSnapshot(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v1, v2

    :cond_6
    if-eqz v1, :cond_7

    .line 428
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 429
    iput-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    :cond_7
    if-eqz v1, :cond_8

    .line 431
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result p1

    if-eqz p1, :cond_8

    return-object v1

    :cond_8
    :goto_1
    return-object v0
.end method

.method public resolveSameNameOnSync(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1462
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveConflictEngineeringScope(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1463
    iget v0, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1464
    iget v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndExactName(IILjava/lang/String;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocals(Ljava/util/List;)V

    .line 1466
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->shouldSyncInsertProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1467
    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    :cond_2
    :goto_0
    return-void
.end method

.method public serverHasAnyEngineering(I)Z
    .locals 0

    .line 0
    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentEngineering(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 2884
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2885
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2888
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2889
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "current_usage"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2890
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 2891
    const-string v5, "engineering"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->scopedSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2890
    invoke-virtual {v1, v5, v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2893
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2894
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v0, :cond_2

    .line 2898
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->removeForeignSyncedPointGroups(J)V

    .line 2900
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "id = ?"

    invoke-virtual {v0, v5, v1, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2901
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    return-void
.end method

.method public shouldSyncInsertProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1286
    :cond_0
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityUUidExists(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1289
    :cond_1
    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1291
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1292
    iget p1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-eq p1, v2, :cond_2

    return v2

    :cond_2
    return v0

    .line 1293
    :cond_3
    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-eq p1, v2, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public softDeleteGnssTransParamByLocalId(J)I
    .locals 5

    .line 4097
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 4098
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4100
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "gnss_trans_param"

    const-string v2, "localId = ?"

    invoke-virtual {v1, p2, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1336
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1337
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->shouldSyncInsertProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1338
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    .line 1340
    :cond_2
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->reconcileProjectBindingFromServer(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result p1

    return p1
.end method

.method public syncPullUpdateProjectFromServer(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1383
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1384
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1385
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1386
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingReconcile(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result p1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    return v0

    .line 1388
    :cond_1
    iget-wide v1, p2, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public updateCORS(Lcom/qianhe/baselib/bean/CorsEntity;)I
    .locals 1

    const/4 v0, 0x1

    .line 3704
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateCORS(Lcom/qianhe/baselib/bean/CorsEntity;Z)I

    move-result p1

    return p1
.end method

.method public updateCORS(Lcom/qianhe/baselib/bean/CorsEntity;Z)I
    .locals 5

    .line 3709
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 3711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "createTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3713
    :cond_0
    iget p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "ntripType"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3714
    const-string p2, "name"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3715
    const-string p2, "host"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    iget p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "port"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3717
    const-string/jumbo p2, "userName"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3718
    const-string p2, "password"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    const-string p2, "mount"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    iget-object p2, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "cors"

    const-string v2, "id = ?"

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)I
    .locals 5

    .line 3971
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3972
    iget-wide v1, p1, Lcom/qianhe/yct/bean/DeviceInfo;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3973
    const-string/jumbo v1, "sn"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3974
    const-string/jumbo v1, "type"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    const-string v1, "pnVersion"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->pnVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    const-string v1, "fmwVersion"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    const-string v1, "gnssVersion"

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->gnssVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceInfo"

    const-string/jumbo v4, "sn = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string/jumbo v2, "\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2014\u2014>name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cline:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method public updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I
    .locals 4

    .line 2915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringInternal(Lcom/qianhe/baselib/bean/EngineeringEntity;J)I

    move-result p1

    return p1
.end method

.method public updateEngineeringCurrentUsageOnly(JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2964
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2965
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "current_usage"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2966
    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 2967
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 2966
    const-string p2, "engineering"

    const-string v1, "id = ?"

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 2969
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateEngineeringFromServer(Lcom/qianhe/baselib/bean/EngineeringEntity;)I
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 2920
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 2921
    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2924
    iget-object v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 2925
    iget-object v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz v2, :cond_0

    .line 2926
    iput-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    .line 2930
    :cond_0
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 2931
    :goto_0
    invoke-direct {p0, p1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringInternal(Lcom/qianhe/baselib/bean/EngineeringEntity;J)I

    move-result p1

    return p1
.end method

.method public updateEngineeringServerIds(JJLjava/lang/String;)V
    .locals 3

    .line 2975
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2976
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "engineering_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2977
    const-string p3, "engineering_uuid"

    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string/jumbo p4, "update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2979
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 2980
    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "engineering"

    const-string p4, "id = ?"

    invoke-virtual {p3, p2, v0, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I
    .locals 5

    .line 2530
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindCurrentEngineering(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 2531
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2532
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2533
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2534
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->createContentValue(Lcom/qianhe/baselib/base/BaseProEntity;Landroid/content/ContentValues;)V

    .line 2535
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 2536
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "id = ?"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string/jumbo v2, "\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2014\u2014>type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cline:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method public updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;)I
    .locals 1

    const/4 v0, 0x0

    .line 2542
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)I
    .locals 4

    .line 2548
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->preserveEngineeringBindingIfMissing(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 2549
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindCurrentEngineering(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 2550
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 2552
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "createTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2553
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo v1, "updateTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2554
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->createContentValue(Lcom/qianhe/baselib/base/BaseProEntity;Landroid/content/ContentValues;)V

    .line 2555
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 2556
    iget p2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object p2

    .line 2557
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "projectUUid = ?"

    invoke-direct {p0, p2, v2}, Lcom/qianhe/yct/db/DatabaseManager;->scopedSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 2558
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2557
    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_1

    const-string/jumbo v1, "\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2014\u2014>type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return p2
.end method

.method public updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I
    .locals 5

    .line 3773
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getContentExcavetorValues(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3774
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "excavator"

    const-string v4, "localId = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string/jumbo v2, "\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2014\u2014>name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cline:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method public updateGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)I
    .locals 5

    .line 4041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    .line 4042
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setControlPointList(Ljava/util/List;)V

    .line 4043
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    .line 4044
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->buildGnssTransParamContentValues(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4045
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "gnss_trans_param"

    const-string v4, "localId = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string v2, "GNSS\u8f6c\u6362\u53c2\u6570\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string v2, "GNSS\u8f6c\u6362\u53c2\u6570\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-lez v0, :cond_1

    .line 4048
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    :cond_1
    return v0
.end method

.method public updateGnssTransParamServerIds(JJLjava/lang/String;)V
    .locals 3

    .line 4055
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4056
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string/jumbo p4, "trans_param_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4057
    const-string/jumbo p3, "trans_param_uuid"

    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string/jumbo p4, "update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4059
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 4060
    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "gnss_trans_param"

    const-string p4, "localId = ?"

    invoke-virtual {p3, p2, v0, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updatePoint(Lcom/qianhe/baselib/bean/PointlibEntity;)I
    .locals 6

    .line 3726
    invoke-static {p1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->normalizeGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 3727
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3728
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pointType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3729
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3730
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    const-string/jumbo v1, "systemType"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3732
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3733
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3734
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "alt"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3735
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "elev"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3736
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "east"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3737
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "north"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3738
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quality"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3739
    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->encod:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encod"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3740
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3741
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_local_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3742
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "point_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3743
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "geodeticLon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3744
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "geodeticLat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3745
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "geodeticElev"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3746
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "hdop"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3747
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "vdop"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3748
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "pointLib"

    const-string v4, "id = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_1

    const-string/jumbo v2, "\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2014\u2014>name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method public updatePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)I
    .locals 5

    if-eqz p1, :cond_1

    .line 4331
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 4332
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->buildPointGroupContentValues(Lcom/qianhe/baselib/bean/PointGroupEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4333
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "pointGroup"

    const-string v3, "group_local_id = ?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public updatePointGroupServerIds(JJLjava/lang/String;)V
    .locals 5

    .line 4377
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4378
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4379
    const-string v1, "group_uuid"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4380
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->putBelongUid(Landroid/content/ContentValues;)V

    .line 4381
    iget-object p5, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "pointGroup"

    const-string v4, "group_local_id = ?"

    invoke-virtual {p5, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4382
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 4383
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4384
    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "pointLib"

    invoke-virtual {p3, p2, p5, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updatePointServerId(JJ)V
    .locals 1

    .line 4388
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4389
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "point_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4390
    iget-object p3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "pointLib"

    const-string p4, "id = ?"

    invoke-virtual {p3, p2, v0, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateProjectsBelongEngineeringId(JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 2986
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2987
    iget-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2988
    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2989
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryProjectsWithUUidByEngineeringLocalId(J)Ljava/util/List;

    move-result-object v1

    .line 2990
    iget-object v2, p0, Lcom/qianhe/yct/db/DatabaseManager;->dbHelper:Lcom/qianhe/yct/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseHelper;->getProjectTableList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "engineering_local_id = ?"

    const-string v5, "engineering_uuid"

    const-string v6, "belong_engineering_id"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2991
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2992
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2993
    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    iget-object v5, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2996
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2997
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2998
    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    iget-object v3, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "pointGroup"

    invoke-virtual {v3, p2, v2, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3000
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 3001
    iput-wide p3, p2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 3002
    iput-object v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    goto :goto_2

    :cond_3
    return-object v1

    .line 2985
    :cond_4
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public updateShare(Lcom/qianhe/baselib/bean/ShareEntity;)I
    .locals 6

    .line 3755
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3756
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3757
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3758
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expireTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3759
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "shareId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3760
    const-string v1, "shareCode"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    iget v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "editState"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3762
    const-string v1, "name"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3763
    const-string v1, "projectUUids"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    const-string v1, "shareUUid"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareUUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "shareId = ?"

    .line 3766
    const-string v3, "share"

    invoke-direct {p0, v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->scopedSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    .line 3767
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 3765
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string/jumbo v2, "\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2014\u2014>name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method public updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I
    .locals 5

    .line 2386
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->getContentShovelValues(Lcom/qianhe/baselib/bean/ShovelEntity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2387
    iget-object v1, p0, Lcom/qianhe/yct/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shovel"

    const-string v4, "localId = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string/jumbo v2, "\u94f2\u6597\u66f4\u65b0\u6210\u529f\u3002"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u94f2\u6597\u66f4\u65b0\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2014\u2014>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method
