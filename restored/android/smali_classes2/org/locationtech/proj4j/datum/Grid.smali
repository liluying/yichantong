.class public final Lorg/locationtech/proj4j/datum/Grid;
.super Ljava/lang/Object;
.source "Grid.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/proj4j/datum/Grid$ConversionTable;
    }
.end annotation


# static fields
.field static final MAX_TRY:I = 0x9

.field static final TOL:D = 1.0E-12


# instance fields
.field private child:Lorg/locationtech/proj4j/datum/Grid;

.field private fileName:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private gridName:Ljava/lang/String;

.field private gridOffset:I

.field private next:Lorg/locationtech/proj4j/datum/Grid;

.field table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromNadGrids(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    const-class v1, Lorg/locationtech/proj4j/datum/Grid;

    monitor-enter v1

    .line 319
    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 320
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    .line 321
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 323
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {v4, v0}, Lorg/locationtech/proj4j/datum/Grid;->mergeGridFile(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    if-eqz v5, :cond_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :cond_1
    :try_start_2
    throw v4

    .line 328
    :cond_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static gridinfoInit(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/Grid;
    .locals 4

    .line 334
    new-instance v0, Lorg/locationtech/proj4j/datum/Grid;

    invoke-direct {v0}, Lorg/locationtech/proj4j/datum/Grid;-><init>()V

    .line 335
    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->gridName:Ljava/lang/String;

    .line 336
    const-string v1, "missing"

    iput-object v1, v0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    const/4 v1, 0x0

    .line 337
    iput v1, v0, Lorg/locationtech/proj4j/datum/Grid;->gridOffset:I

    .line 339
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 343
    :cond_0
    invoke-static {p0}, Lorg/locationtech/proj4j/datum/Grid;->resolveGridDefinition(Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 p0, 0xa0

    .line 347
    :try_start_0
    new-array v2, p0, [B

    .line 348
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 349
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 350
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 351
    invoke-static {v2}, Lorg/locationtech/proj4j/datum/CTABLEV2;->testHeader([B)Z

    move-result p0

    const/16 v3, 0x400

    if-eqz p0, :cond_1

    .line 352
    const-string p0, "ctable2"

    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    .line 353
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 354
    invoke-static {v1}, Lorg/locationtech/proj4j/datum/CTABLEV2;->init(Ljava/io/DataInputStream;)Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    move-result-object p0

    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    .line 355
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 356
    invoke-static {v1, v0}, Lorg/locationtech/proj4j/datum/CTABLEV2;->load(Ljava/io/DataInputStream;Lorg/locationtech/proj4j/datum/Grid;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 357
    :cond_1
    invoke-static {v2}, Lorg/locationtech/proj4j/datum/NTV1;->testHeader([B)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 358
    const-string p0, "ntv1"

    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    .line 359
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 360
    invoke-static {v1}, Lorg/locationtech/proj4j/datum/NTV1;->init(Ljava/io/DataInputStream;)Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    move-result-object p0

    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    .line 361
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 362
    invoke-static {v1, v0}, Lorg/locationtech/proj4j/datum/NTV1;->load(Ljava/io/DataInputStream;Lorg/locationtech/proj4j/datum/Grid;)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-static {v2}, Lorg/locationtech/proj4j/datum/NTV2;->testHeader([B)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 364
    const-string p0, "ntv2"

    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    .line 365
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 366
    invoke-static {v1}, Lorg/locationtech/proj4j/datum/NTV2;->init(Ljava/io/DataInputStream;)Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    move-result-object p0

    iput-object p0, v0, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    .line 367
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 368
    invoke-static {v1, v0}, Lorg/locationtech/proj4j/datum/NTV2;->load(Ljava/io/DataInputStream;Lorg/locationtech/proj4j/datum/Grid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 345
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown grid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 370
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v0
.end method

.method public static mergeGridFile(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lorg/locationtech/proj4j/datum/Grid;->gridinfoInit(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/Grid;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static nad_cvt(Lorg/locationtech/proj4j/util/PolarCoordinate;ZLorg/locationtech/proj4j/datum/Grid$ConversionTable;)Lorg/locationtech/proj4j/util/PolarCoordinate;
    .locals 12

    .line 202
    iget-wide v0, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 205
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/util/PolarCoordinate;

    invoke-direct {v0, p0}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(Lorg/locationtech/proj4j/util/PolarCoordinate;)V

    .line 206
    iget-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-object v3, p2, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v4, v3, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double/2addr v1, v4

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 207
    iget-wide v4, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-wide v6, v3, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v1, v3

    .line 208
    invoke-static {v1, v2}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 209
    invoke-static {v0, p2}, Lorg/locationtech/proj4j/datum/Grid;->nad_intr(Lorg/locationtech/proj4j/util/PolarCoordinate;Lorg/locationtech/proj4j/datum/Grid$ConversionTable;)Lorg/locationtech/proj4j/util/PolarCoordinate;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 212
    new-instance p1, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p1, v2, v3, v2, v3}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 213
    new-instance p1, Lorg/locationtech/proj4j/util/PolarCoordinate;

    invoke-direct {p1, v2, v3, v2, v3}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 216
    iget-wide v4, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    .line 217
    :cond_1
    iget-wide v4, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 218
    iget-wide v4, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double/2addr v4, v6

    iput-wide v4, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    const/16 v4, 0x9

    .line 221
    :goto_0
    invoke-static {v1, p2}, Lorg/locationtech/proj4j/datum/Grid;->nad_intr(Lorg/locationtech/proj4j/util/PolarCoordinate;Lorg/locationtech/proj4j/datum/Grid$ConversionTable;)Lorg/locationtech/proj4j/util/PolarCoordinate;

    move-result-object v5

    .line 222
    iget-wide v6, v5, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 229
    :cond_2
    iget-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-wide v8, v5, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double v8, v6, v8

    iget-wide v10, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double/2addr v8, v10

    iput-wide v8, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double/2addr v6, v8

    iput-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 230
    iget-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-wide v8, v5, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    add-double/2addr v8, v6

    iget-wide v10, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double/2addr v8, v10

    iput-wide v8, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double/2addr v6, v8

    iput-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_4

    .line 231
    iget-wide v6, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v6, v8

    if-lez v4, :cond_4

    iget-wide v6, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v6, v8

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    :goto_1
    move v4, v5

    :goto_2
    if-gez v4, :cond_5

    .line 237
    iput-wide v2, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iput-wide v2, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    return-object v1

    .line 240
    :cond_5
    iget-wide v2, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-object p1, p2, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v4, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 241
    iget-wide v0, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-object p1, p2, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide p1, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    return-object p0

    .line 243
    :cond_6
    iget-wide p1, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v1

    .line 246
    :cond_7
    iget-wide p1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-wide v2, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double/2addr p1, v2

    iput-wide p1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 247
    iget-wide p1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-wide v0, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    return-object p0
.end method

.method private static nad_intr(Lorg/locationtech/proj4j/util/PolarCoordinate;Lorg/locationtech/proj4j/datum/Grid$ConversionTable;)Lorg/locationtech/proj4j/util/PolarCoordinate;
    .locals 20

    move-object/from16 v0, p1

    .line 255
    new-instance v1, Lorg/locationtech/proj4j/util/PolarCoordinate;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(Lorg/locationtech/proj4j/util/PolarCoordinate;)V

    .line 256
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 257
    new-instance v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget-wide v4, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-object v6, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v6, v6, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    div-double/2addr v4, v6

    iput-wide v4, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 258
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-wide v5, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-object v7, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v7, v7, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    div-double/2addr v5, v7

    iput-wide v5, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    .line 259
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lorg/locationtech/proj4j/util/IntPolarCoordinate;-><init>(II)V

    .line 260
    new-instance v4, Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v5, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget v7, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    iget-wide v7, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    int-to-double v9, v1

    sub-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 266
    iget v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    const-wide v5, 0x3da5fd7fe1796495L    # 1.0E-11

    const-wide/16 v7, 0x0

    const-wide v9, 0x3feffffffffea028L    # 0.99999999999

    const/4 v11, -0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_0

    if-ne v1, v11, :cond_3

    .line 267
    iget-wide v14, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    cmpl-double v16, v14, v9

    if-lez v16, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 268
    iput v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    .line 269
    iput-wide v7, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    goto :goto_0

    :cond_0
    add-int/lit8 v14, v1, 0x1

    .line 273
    iget-object v15, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v15, v15, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    if-lt v14, v15, :cond_1

    if-ne v14, v15, :cond_3

    .line 274
    iget-wide v14, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    cmpg-double v16, v14, v5

    if-gez v16, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 275
    iput v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    .line 276
    iput-wide v12, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 281
    :cond_1
    :goto_0
    iget v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    if-gez v1, :cond_2

    if-ne v1, v11, :cond_3

    .line 282
    iget-wide v5, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    cmpl-double v11, v5, v9

    if-lez v11, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 283
    iput v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    .line 284
    iput-wide v7, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v1, 0x1

    .line 288
    iget-object v8, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v8, v8, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    if-lt v7, v8, :cond_4

    if-ne v7, v8, :cond_3

    .line 289
    iget-wide v7, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    cmpg-double v9, v7, v5

    if-gez v9, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 290
    iput v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    .line 291
    iput-wide v12, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    goto :goto_1

    :cond_3
    return-object v2

    .line 296
    :cond_4
    :goto_1
    iget v1, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    iget-object v5, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v5, v5, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    mul-int v1, v1, v5

    iget v3, v3, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    add-int/2addr v1, v3

    .line 297
    iget-object v0, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    add-int/lit8 v3, v1, 0x1

    aget-object v1, v0, v1

    .line 298
    aget-object v6, v0, v3

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, -0x1

    .line 300
    aget-object v3, v0, v3

    .line 301
    aget-object v0, v0, v5

    .line 302
    iget-wide v7, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double v9, v12, v7

    .line 304
    iget-wide v14, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    mul-double v16, v7, v14

    mul-double v18, v9, v14

    sub-double/2addr v12, v14

    .line 306
    iput-wide v12, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    mul-double v9, v9, v12

    mul-double v7, v7, v12

    .line 309
    iget v4, v1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    float-to-double v4, v4

    mul-double v4, v4, v9

    iget v11, v6, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    float-to-double v11, v11

    mul-double v11, v11, v7

    add-double/2addr v4, v11

    iget v11, v0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    float-to-double v11, v11

    mul-double v11, v11, v18

    add-double/2addr v4, v11

    iget v11, v3, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    float-to-double v11, v11

    mul-double v11, v11, v16

    add-double/2addr v4, v11

    iput-wide v4, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 310
    iget v1, v1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    float-to-double v4, v1

    mul-double v9, v9, v4

    iget v1, v6, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    float-to-double v4, v1

    mul-double v7, v7, v4

    add-double/2addr v9, v7

    iget v0, v0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    float-to-double v0, v0

    mul-double v18, v18, v0

    add-double v9, v9, v18

    iget v0, v3, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    float-to-double v0, v0

    mul-double v16, v16, v0

    add-double v9, v9, v16

    iput-wide v9, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    return-object v2
.end method

.method private static resolveGridDefinition(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 2

    .line 378
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proj4/nad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lorg/locationtech/proj4j/datum/Grid;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 381
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static shift(Ljava/util/List;ZLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;Z",
            "Lorg/locationtech/proj4j/ProjCoordinate;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 86
    new-instance v1, Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v2, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v4, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 87
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 89
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/proj4j/datum/Grid;

    .line 90
    iget-object v5, v4, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    if-nez v5, :cond_2

    :cond_0
    move-object v10, v2

    move-object/from16 p0, v3

    :cond_1
    :goto_1
    move/from16 v2, p1

    goto/16 :goto_5

    .line 94
    :cond_2
    iget-object v6, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v6, v6, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v8, v8, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v6, v8

    .line 96
    iget-object v10, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v11, v10, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double v13, v11, v6

    move-wide v15, v8

    iget-wide v8, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    cmpl-double v17, v13, v8

    if-gtz v17, :cond_0

    iget-wide v13, v10, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double v17, v13, v6

    move-object v10, v2

    move-object/from16 p0, v3

    iget-wide v2, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    cmpl-double v19, v17, v2

    if-gtz v19, :cond_1

    move-wide/from16 v17, v15

    iget-object v15, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    move-wide/from16 v19, v2

    iget v2, v15, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    move-wide/from16 v21, v2

    iget-object v2, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    move-object/from16 v16, v4

    iget-wide v3, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    mul-double v3, v3, v21

    add-double/2addr v11, v3

    add-double/2addr v11, v6

    cmpg-double v3, v11, v8

    if-ltz v3, :cond_1

    iget v3, v15, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    iget-wide v8, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    mul-double v3, v3, v8

    add-double/2addr v13, v3

    add-double/2addr v13, v6

    cmpg-double v2, v13, v19

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v4, v16

    .line 103
    :goto_2
    iget-object v2, v4, Lorg/locationtech/proj4j/datum/Grid;->child:Lorg/locationtech/proj4j/datum/Grid;

    if-eqz v2, :cond_7

    :goto_3
    if-eqz v2, :cond_5

    .line 106
    iget-object v3, v2, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    .line 107
    iget-object v6, v3, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v6, v6, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, v3, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v8, v8, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double v6, v6, v17

    .line 109
    iget-object v8, v3, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v9, v8, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double v11, v9, v6

    iget-wide v13, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    cmpl-double v15, v11, v13

    if-gtz v15, :cond_4

    iget-wide v11, v8, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double v15, v11, v6

    move-wide/from16 v19, v6

    iget-wide v6, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    cmpl-double v8, v15, v6

    if-gtz v8, :cond_4

    iget-object v8, v3, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v15, v8, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v21, v6

    int-to-double v6, v15

    iget-object v3, v3, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    move-wide v15, v6

    iget-wide v6, v3, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    mul-double v6, v6, v15

    add-double/2addr v9, v6

    add-double v9, v9, v19

    cmpg-double v6, v9, v13

    if-ltz v6, :cond_4

    iget v6, v8, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    iget-wide v8, v3, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    mul-double v6, v6, v8

    add-double/2addr v11, v6

    add-double v11, v11, v19

    cmpg-double v3, v11, v21

    if-gez v3, :cond_5

    .line 105
    :cond_4
    iget-object v2, v2, Lorg/locationtech/proj4j/datum/Grid;->next:Lorg/locationtech/proj4j/datum/Grid;

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v2

    goto :goto_2

    .line 123
    :cond_7
    :goto_4
    iget-object v2, v4, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    iget-object v2, v2, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    move/from16 v2, p1

    .line 130
    invoke-static {v1, v2, v5}, Lorg/locationtech/proj4j/datum/Grid;->nad_cvt(Lorg/locationtech/proj4j/util/PolarCoordinate;ZLorg/locationtech/proj4j/datum/Grid$ConversionTable;)Lorg/locationtech/proj4j/util/PolarCoordinate;

    move-result-object v3

    .line 132
    iget-wide v4, v3, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_8

    move-object v2, v3

    goto :goto_6

    :cond_8
    move-object v2, v3

    move-object/from16 v3, p0

    goto/16 :goto_0

    :goto_5
    move-object/from16 v3, p0

    move-object v2, v10

    goto/16 :goto_0

    :cond_9
    move-object v10, v2

    .line 135
    :goto_6
    iget-wide v3, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a

    .line 136
    iget-wide v3, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 137
    iget-wide v1, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_a
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 399
    instance-of v0, p1, Lorg/locationtech/proj4j/datum/Grid;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 400
    check-cast p1, Lorg/locationtech/proj4j/datum/Grid;

    .line 401
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->gridName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->gridName:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 402
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->gridName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 403
    :cond_1
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->fileName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    .line 404
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 405
    :cond_3
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    .line 406
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 407
    :cond_5
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    if-nez v0, :cond_6

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    if-eqz v2, :cond_6

    return v1

    :cond_6
    if-eqz v0, :cond_7

    .line 408
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    invoke-virtual {v0, v2}, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 409
    :cond_7
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->next:Lorg/locationtech/proj4j/datum/Grid;

    if-nez v0, :cond_8

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->next:Lorg/locationtech/proj4j/datum/Grid;

    if-eqz v2, :cond_8

    return v1

    :cond_8
    if-eqz v0, :cond_9

    .line 410
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->next:Lorg/locationtech/proj4j/datum/Grid;

    invoke-virtual {v0, v2}, Lorg/locationtech/proj4j/datum/Grid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 411
    :cond_9
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->child:Lorg/locationtech/proj4j/datum/Grid;

    if-nez v0, :cond_a

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid;->child:Lorg/locationtech/proj4j/datum/Grid;

    if-eqz v2, :cond_a

    return v1

    :cond_a
    if-eqz v0, :cond_b

    .line 412
    iget-object p1, p1, Lorg/locationtech/proj4j/datum/Grid;->child:Lorg/locationtech/proj4j/datum/Grid;

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/Grid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    const/4 p1, 0x1

    return p1

    :cond_c
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 388
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid;->gridName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 389
    :goto_0
    iget-object v2, p0, Lorg/locationtech/proj4j/datum/Grid;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 390
    :goto_1
    iget-object v3, p0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 391
    :goto_2
    iget-object v4, p0, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->hashCode()I

    move-result v4

    .line 392
    :goto_3
    iget-object v5, p0, Lorg/locationtech/proj4j/datum/Grid;->next:Lorg/locationtech/proj4j/datum/Grid;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lorg/locationtech/proj4j/datum/Grid;->hashCode()I

    move-result v5

    .line 393
    :goto_4
    iget-object v6, p0, Lorg/locationtech/proj4j/datum/Grid;->next:Lorg/locationtech/proj4j/datum/Grid;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Lorg/locationtech/proj4j/datum/Grid;->hashCode()I

    move-result v1

    :goto_5
    mul-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    mul-int/lit8 v3, v3, 0xb

    or-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x11

    or-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x17

    or-int/2addr v0, v5

    mul-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Grid;->gridName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Grid;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
