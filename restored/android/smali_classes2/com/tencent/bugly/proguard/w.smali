.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/w$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static b:Lcom/tencent/bugly/proguard/w;

.field private static c:Lcom/tencent/bugly/proguard/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/x;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/w;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I
    .locals 2

    monitor-enter p0

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 215
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 227
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 228
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 220
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 227
    :cond_1
    :goto_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    .line 231
    :cond_2
    :goto_4
    monitor-exit p0

    return p4

    .line 227
    :goto_5
    :try_start_4
    sget-boolean p2, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 230
    :cond_3
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/w;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/w;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;
    .locals 12

    monitor-enter p0

    const/4 v1, 0x0

    .line 191
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 194
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 198
    :try_start_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 206
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 205
    :goto_1
    :try_start_2
    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/w;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/w;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/w;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/w;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/tencent/bugly/proguard/w;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/w;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;
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

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 575
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 576
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->a:J

    .line 577
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/y;->b:I

    .line 578
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->c:Ljava/lang/String;

    .line 579
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/String;

    .line 580
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->e:J

    .line 581
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/y;->g:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 584
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 585
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/w;ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/w;->a(ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z
    .locals 5

    const/4 p3, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    .line 661
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 664
    :try_start_1
    invoke-static {p2}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    const-string p2, "_id = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    .line 667
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and _tp = \""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    :goto_0
    const-string p2, "t_pf"

    invoke-virtual {v2, p2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 672
    const-string p2, "[Database] deleted %s data %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "t_pf"

    aput-object v4, v3, v0

    aput-object v1, v3, p3

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    move v0, p3

    .line 683
    :cond_2
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 684
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 676
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 677
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    goto :goto_5

    .line 683
    :cond_3
    :goto_3
    :try_start_4
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 684
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 687
    :cond_4
    :goto_4
    monitor-exit p0

    return v0

    .line 683
    :goto_5
    :try_start_5
    sget-boolean p2, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    .line 684
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 686
    :cond_5
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z
    .locals 2

    .line 298
    :try_start_0
    new-instance p4, Lcom/tencent/bugly/proguard/y;

    invoke-direct {p4}, Lcom/tencent/bugly/proguard/y;-><init>()V

    int-to-long v0, p1

    .line 299
    iput-wide v0, p4, Lcom/tencent/bugly/proguard/y;->a:J

    .line 300
    iput-object p2, p4, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p4, Lcom/tencent/bugly/proguard/y;->e:J

    .line 302
    iput-object p3, p4, Lcom/tencent/bugly/proguard/y;->g:[B

    .line 303
    invoke-direct {p0, p4}, Lcom/tencent/bugly/proguard/w;->b(Lcom/tencent/bugly/proguard/y;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 305
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 725
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 726
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->a:J

    .line 727
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->e:J

    .line 728
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    .line 729
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/y;->g:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 732
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 733
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private declared-synchronized b(Lcom/tencent/bugly/proguard/y;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    .line 390
    :try_start_0
    sget-object v3, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 392
    invoke-static {p1}, Lcom/tencent/bugly/proguard/w;->d(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 394
    const-string v4, "t_pf"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 396
    const-string v5, "[Database] insert %s success."

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "t_pf"

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 397
    iput-wide v3, p1, Lcom/tencent/bugly/proguard/y;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 398
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 411
    :cond_1
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :cond_2
    monitor-exit p0

    return v1

    .line 411
    :cond_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 412
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    :cond_4
    monitor-exit p0

    return v1

    .line 406
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 407
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 411
    :cond_5
    :goto_2
    :try_start_5
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 412
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 409
    :cond_6
    monitor-exit p0

    return v1

    .line 411
    :goto_3
    :try_start_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 412
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 414
    :cond_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method private static c(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 547
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 548
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/y;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 549
    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 551
    :cond_1
    :goto_0
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/proguard/y;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/y;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    iget-object p0, p0, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz p0, :cond_2

    .line 556
    const-string v2, "_dt"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    .line 560
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 561
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .locals 11

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    .line 601
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_7

    .line 603
    :try_start_1
    const-string v2, "_id = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 604
    const-string v4, "t_pf"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 605
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    .line 642
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    .line 644
    :cond_0
    :goto_0
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_1

    .line 645
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    :cond_1
    monitor-exit p0

    return-object v1

    .line 610
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 612
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 613
    invoke-static {v2}, Lcom/tencent/bugly/proguard/w;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 615
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 619
    :cond_3
    :try_start_4
    const-string v7, "_tp"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 620
    const-string v8, " or _tp = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 622
    :catchall_2
    :try_start_5
    const-string v7, "[Database] unknown id."

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 628
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 629
    const-string v7, " and _id = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    .line 630
    invoke-virtual {v6, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 631
    const-string v4, "t_pf"

    invoke-virtual {v3, v4, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 632
    const-string v4, "[Database] deleted %s illegal data %d."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "t_pf"

    aput-object v7, v6, v0

    const/4 v0, 0x1

    aput-object p1, v6, v0

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 642
    :cond_5
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_6

    .line 645
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 634
    :cond_6
    monitor-exit p0

    return-object v5

    :catchall_3
    move-exception v0

    move-object p1, v0

    move-object v2, v1

    goto :goto_3

    .line 644
    :cond_7
    :try_start_7
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_a

    if-eqz v3, :cond_a

    .line 645
    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object p1, v0

    move-object v2, v1

    move-object v3, v2

    .line 637
    :goto_3
    :try_start_8
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 638
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 642
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_9
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p1, :cond_a

    if-eqz v3, :cond_a

    goto :goto_2

    .line 648
    :cond_a
    :goto_5
    monitor-exit p0

    return-object v1

    :goto_6
    if-eqz v2, :cond_b

    .line 642
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_b
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    .line 645
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 647
    :cond_c
    throw p1

    :goto_7
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method private static d(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 694
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 699
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 700
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/y;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 701
    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 703
    :cond_1
    :goto_0
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/y;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    iget-object p0, p0, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz p0, :cond_2

    .line 706
    const-string v2, "_dt"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    .line 710
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 711
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J
    .locals 8

    const/4 p3, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 160
    :try_start_0
    sget-object v4, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 162
    const-string v4, "_id"

    invoke-virtual {v3, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-ltz p2, :cond_0

    .line 164
    const-string p2, "[Database] insert %s success."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 166
    :cond_0
    const-string p2, "[Database] replace %s error."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v1, v4

    .line 178
    :cond_1
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    .line 179
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 171
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 178
    :cond_2
    :goto_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 182
    :cond_3
    :goto_4
    monitor-exit p0

    return-wide v1

    .line 178
    :goto_5
    :try_start_4
    sget-boolean p2, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    .line 179
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 181
    :cond_4
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 122
    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/w;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 10

    const/4 v0, 0x0

    monitor-enter p0

    .line 423
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v2, :cond_c

    if-ltz p1, :cond_0

    .line 427
    :try_start_1
    const-string v3, "_tp = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, v1

    goto/16 :goto_3

    :cond_0
    move-object v5, v1

    .line 428
    :goto_0
    const-string v3, "t_lr"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 429
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    if-eqz p1, :cond_1

    .line 467
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    .line 469
    :cond_1
    :goto_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 432
    :cond_2
    monitor-exit p0

    return-object v1

    .line 435
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 438
    invoke-static {p1}, Lcom/tencent/bugly/proguard/w;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 440
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_3

    .line 444
    :cond_4
    :try_start_4
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 445
    const-string v7, " or _id = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 448
    :catchall_3
    :try_start_5
    const-string v5, "[Database] unknown id."

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 454
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x4

    .line 456
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    const-string v5, "t_lr"

    invoke-virtual {v2, v5, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 458
    const-string v5, "[Database] deleted %s illegal data %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "t_lr"

    aput-object v7, v6, v0

    const/4 v0, 0x1

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 467
    :cond_6
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 469
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_7

    .line 470
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 460
    :cond_7
    monitor-exit p0

    return-object v4

    .line 462
    :goto_3
    :try_start_7
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 463
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 467
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_9
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_c

    .line 470
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_6

    :goto_5
    if-eqz v3, :cond_a

    .line 467
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_a
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_b

    .line 470
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 472
    :cond_b
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 475
    :cond_c
    :goto_6
    monitor-exit p0

    return-object v1

    :goto_7
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;
    .locals 2

    const/4 p2, 0x0

    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/w;->c(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/bugly/proguard/y;

    .line 323
    iget-object v1, p2, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz v1, :cond_0

    .line 325
    iget-object p2, p2, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :cond_1
    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    return-object p2

    .line 330
    :goto_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object p2
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_6

    .line 483
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 486
    :cond_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/y;

    .line 490
    const-string v4, " or _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/tencent/bugly/proguard/y;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 493
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x4

    .line 495
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 497
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :try_start_1
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 500
    const-string v2, "[Database] deleted %s data %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "t_lr"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 506
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_5

    .line 507
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 502
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    .line 506
    :cond_3
    :goto_1
    :try_start_4
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_5

    .line 507
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 506
    :goto_2
    :try_start_5
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_4

    .line 507
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 509
    :cond_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    :cond_5
    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 484
    :cond_6
    :goto_4
    monitor-exit p0

    return-void
.end method

.method public final a(ILjava/lang/String;[BZ)Z
    .locals 0

    if-nez p4, :cond_0

    .line 244
    new-instance p4, Lcom/tencent/bugly/proguard/w$a;

    invoke-direct {p4, p0}, Lcom/tencent/bugly/proguard/w$a;-><init>(Lcom/tencent/bugly/proguard/w;)V

    .line 245
    invoke-virtual {p4, p1, p2, p3}, Lcom/tencent/bugly/proguard/w$a;->a(ILjava/lang/String;[B)V

    .line 246
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p4, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/proguard/y;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    .line 352
    :try_start_0
    sget-object v3, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 354
    invoke-static {p1}, Lcom/tencent/bugly/proguard/w;->c(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 356
    const-string v4, "t_lr"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 358
    const-string v5, "[Database] insert %s success."

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "t_lr"

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 359
    iput-wide v3, p1, Lcom/tencent/bugly/proguard/y;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 360
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 373
    :cond_1
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    :cond_2
    monitor-exit p0

    return v1

    .line 373
    :cond_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    :cond_4
    monitor-exit p0

    return v1

    .line 368
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 373
    :cond_5
    :goto_2
    :try_start_5
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    :cond_6
    monitor-exit p0

    return v1

    .line 373
    :goto_3
    :try_start_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 376
    :cond_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    .line 519
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 522
    :try_start_1
    const-string v2, "_tp = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 523
    :goto_0
    const-string v2, "t_lr"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 524
    const-string v1, "[Database] deleted %s data %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_lr"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    .line 531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 526
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 530
    :cond_1
    :goto_2
    :try_start_4
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    .line 531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 530
    :goto_3
    :try_start_5
    sget-boolean v1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 533
    :cond_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 535
    :cond_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method
