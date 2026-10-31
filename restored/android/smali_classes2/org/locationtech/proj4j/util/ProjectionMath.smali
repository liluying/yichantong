.class public Lorg/locationtech/proj4j/util/ProjectionMath;
.super Ljava/lang/Object;
.source "ProjectionMath.java"


# static fields
.field private static final C00:D = 1.0

.field private static final C02:D = 0.25

.field private static final C04:D = 0.046875

.field private static final C06:D = 0.01953125

.field private static final C08:D = 0.01068115234375

.field private static final C22:D = 0.75

.field private static final C44:D = 0.46875

.field private static final C46:D = 0.013020833333333334

.field private static final C48:D = 0.007120768229166667

.field private static final C66:D = 0.3645833333333333

.field private static final C68:D = 0.005696614583333333

.field private static final C88:D = 0.3076171875

.field public static final DTR:D = 0.017453292519943295

.field public static final EPS10:D = 1.0E-10

.field public static final FORTPI:D = 0.7853981633974483

.field public static final HALFPI:D = 1.5707963267948966

.field private static final MAX_ITER:I = 0xa

.field public static final MILLION:D = 1000000.0

.field private static final N_ITER:I = 0xf

.field private static final P00:D = 0.3333333333333333

.field private static final P01:D = 0.17222222222222222

.field private static final P02:D = 0.10257936507936508

.field private static final P10:D = 0.06388888888888888

.field private static final P11:D = 0.0664021164021164

.field private static final P20:D = 0.016415012942191543

.field public static final PI:D = 3.141592653589793

.field public static final QUARTERPI:D = 0.7853981633974483

.field public static final RTD:D = 57.29577951308232

.field public static final SECONDS_TO_RAD:D = 4.84813681109536E-6

.field public static final TWOPI:D = 6.283185307179586


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acos(D)D
    .locals 5

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    return-wide p0

    :cond_0
    return-wide v0

    .line 81
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static acosd(D)D
    .locals 2

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static asin(D)D
    .locals 5

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide p0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    return-wide p0

    :cond_0
    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    return-wide p0

    .line 75
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static asind(D)D
    .locals 2

    .line 57
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static atan2(DD)D
    .locals 0

    .line 111
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static atan2d(DD)D
    .locals 0

    .line 69
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static atand(D)D
    .locals 2

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static authlat(D[D)D
    .locals 8

    add-double v0, p0, p0

    const/4 v2, 0x0

    .line 433
    aget-wide v2, p2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr p0, v2

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    add-double v4, v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    add-double/2addr p0, v2

    const/4 v2, 0x2

    aget-wide v2, p2, v2

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    add-double/2addr p0, v2

    return-wide p0
.end method

.method public static authset(D)[D
    .locals 9

    const/4 v0, 0x3

    .line 419
    new-array v0, v0, [D

    const-wide v1, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v1, v1, p0

    const/4 v3, 0x0

    .line 420
    aput-wide v1, v0, v3

    mul-double v4, p0, p0

    const-wide v6, 0x3fc60b60b60b60b6L    # 0.17222222222222222

    mul-double v6, v6, v4

    add-double/2addr v1, v6

    .line 422
    aput-wide v1, v0, v3

    const-wide v6, 0x3fb05b05b05b05b0L    # 0.06388888888888888

    mul-double v6, v6, v4

    const/4 v8, 0x1

    .line 423
    aput-wide v6, v0, v8

    mul-double v4, v4, p0

    const-wide p0, 0x3fba42a42a42a42aL    # 0.10257936507936508

    mul-double p0, p0, v4

    add-double/2addr v1, p0

    .line 425
    aput-wide v1, v0, v3

    const-wide p0, 0x3fb0ffbaa6550ffcL    # 0.0664021164021164

    mul-double p0, p0, v4

    add-double/2addr v6, p0

    .line 426
    aput-wide v6, v0, v8

    const-wide p0, 0x3f90cf18df0021edL    # 0.016415012942191543

    mul-double v4, v4, p0

    const/4 p0, 0x2

    .line 427
    aput-wide v4, v0, p0

    return-object v0
.end method

.method public static cosd(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static cross(DDDD)D
    .locals 0

    .line 0
    mul-double p0, p0, p6

    mul-double p4, p4, p2

    sub-double/2addr p0, p4

    return-wide p0
.end method

.method public static degToRad(D)D
    .locals 2

    .line 0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static distance(DD)D
    .locals 0

    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double/2addr p0, p2

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dmsToDeg(DDD)D
    .locals 7

    .line 0
    const-wide/16 v0, 0x0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v6, p0, v0

    if-ltz v6, :cond_0

    div-double/2addr p2, v4

    add-double/2addr p0, p2

    div-double/2addr p4, v2

    add-double/2addr p0, p4

    return-wide p0

    :cond_0
    div-double/2addr p2, v4

    sub-double/2addr p0, p2

    div-double/2addr p4, v2

    sub-double/2addr p0, p4

    return-wide p0
.end method

.method public static dmsToRad(DDD)D
    .locals 11

    .line 0
    const-wide/16 v0, 0x0

    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-wide v6, 0x40ac200000000000L    # 3600.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    cmpl-double v10, p0, v0

    if-ltz v10, :cond_0

    div-double/2addr p2, v8

    add-double/2addr p0, p2

    div-double p2, p4, v6

    add-double/2addr p0, p2

    :goto_0
    mul-double p0, p0, v4

    div-double/2addr p0, v2

    return-wide p0

    :cond_0
    div-double/2addr p2, v8

    sub-double/2addr p0, p2

    div-double p2, p4, v6

    sub-double/2addr p0, p2

    goto :goto_0
.end method

.method public static enfn(D)[D
    .locals 12

    const-wide v0, 0x3f85e00000000000L    # 0.01068115234375

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3f94000000000000L    # 0.01953125

    add-double/2addr v0, v2

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fa8000000000000L    # 0.046875

    add-double/2addr v0, v2

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    add-double/2addr v2, v0

    mul-double v2, v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    sub-double/2addr v2, v0

    mul-double v2, v2, p0

    mul-double v0, p0, p0

    const-wide v6, 0x3f7d2aaaaaaaaaabL    # 0.007120768229166667

    mul-double v6, v6, p0

    const-wide v8, 0x3f8aaaaaaaaaaaabL    # 0.013020833333333334

    add-double/2addr v6, v8

    mul-double v6, v6, p0

    const-wide/high16 v8, 0x3fde000000000000L    # 0.46875

    sub-double/2addr v8, v6

    mul-double v8, v8, v0

    mul-double v0, v0, p0

    const-wide v6, 0x3f77555555555555L    # 0.005696614583333333

    mul-double v6, v6, p0

    const-wide v10, 0x3fd7555555555555L    # 0.3645833333333333

    sub-double/2addr v10, v6

    mul-double v10, v10, v0

    mul-double v0, v0, p0

    const-wide p0, 0x3fd3b00000000000L    # 0.3076171875

    mul-double v0, v0, p0

    const/4 p0, 0x5

    .line 386
    new-array p0, p0, [D

    const/4 p1, 0x0

    aput-wide v4, p0, p1

    const/4 p1, 0x1

    aput-wide v2, p0, p1

    const/4 p1, 0x2

    aput-wide v8, p0, p1

    const/4 p1, 0x3

    aput-wide v10, p0, p1

    const/4 p1, 0x4

    aput-wide v0, p0, p1

    return-object p0
.end method

.method public static frac(D)D
    .locals 2

    .line 119
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/util/ProjectionMath;->trunc(D)D

    move-result-wide v0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static geocentricLatitude(DD)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    mul-double v0, v0, v0

    .line 328
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static geographicLatitude(DD)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 333
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    mul-double v0, v0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static greatCircleDistance(DDDD)D
    .locals 4

    sub-double v0, p6, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double/2addr p4, p0

    div-double/2addr p4, v2

    .line 192
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v0, v0, v0

    .line 193
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    mul-double p2, p2, p0

    mul-double p2, p2, p0

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 194
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    mul-double p0, p0, v2

    return-wide p0
.end method

.method public static hypot(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    neg-double p0, p0

    goto :goto_0

    :cond_0
    cmpl-double v2, p0, v0

    if-nez v2, :cond_2

    cmpg-double p0, p2, v0

    if-gez p0, :cond_1

    neg-double p0, p2

    return-wide p0

    :cond_1
    return-wide p2

    :cond_2
    :goto_0
    cmpg-double v2, p2, v0

    if-gez v2, :cond_3

    neg-double p2, p2

    goto :goto_1

    :cond_3
    cmpl-double v2, p2, v0

    if-nez v2, :cond_4

    return-wide p0

    :cond_4
    :goto_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, p2

    if-gez v2, :cond_5

    div-double/2addr p0, p2

    mul-double p0, p0, p0

    add-double/2addr p0, v0

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    return-wide p2

    :cond_5
    div-double/2addr p2, p0

    mul-double p2, p2, p2

    add-double/2addr p2, v0

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static inv_mlfn(DD[D)D
    .locals 14

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p2

    div-double v2, v0, v2

    const/16 v4, 0xa

    move-wide v5, p0

    :goto_0
    if-eqz v4, :cond_1

    .line 401
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v9, p2, v7

    mul-double v9, v9, v7

    sub-double v12, v0, v9

    .line 403
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    move-object/from16 v11, p4

    invoke-static/range {v5 .. v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v7

    sub-double/2addr v7, p0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v12, v12, v9

    mul-double v7, v7, v12

    mul-double v7, v7, v2

    sub-double/2addr v5, v7

    .line 404
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3da5fd7fe1796495L    # 1.0E-11

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    return-wide v5

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    return-wide v5
.end method

.method public static isIdentity([D)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 538
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 541
    aget-wide v5, p0, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v5, v7

    if-eqz v2, :cond_1

    cmpl-double v2, v5, v3

    if-eqz v2, :cond_1

    return v0

    .line 543
    :cond_0
    aget-wide v5, p0, v1

    cmpl-double v2, v5, v3

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static longitudeDistance(DD)D
    .locals 7

    sub-double v0, p0, p2

    .line 321
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v4, 0x0

    cmpg-double v6, p0, v4

    if-gez v6, :cond_0

    add-double/2addr p0, v2

    goto :goto_0

    :cond_0
    sub-double p0, v2, p0

    :goto_0
    cmpg-double v6, p2, v4

    if-gez v6, :cond_1

    add-double/2addr p2, v2

    goto :goto_1

    :cond_1
    sub-double p2, v2, p2

    :goto_1
    add-double/2addr p0, p2

    .line 320
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mlfn(DDD[D)D
    .locals 8

    mul-double p4, p4, p2

    mul-double p2, p2, p2

    const/4 v0, 0x0

    .line 393
    aget-wide v0, p6, v0

    mul-double v0, v0, p0

    const/4 p0, 0x1

    aget-wide p0, p6, p0

    const/4 v2, 0x2

    aget-wide v2, p6, v2

    const/4 v4, 0x3

    aget-wide v4, p6, v4

    const/4 v6, 0x4

    aget-wide v6, p6, v6

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    mul-double v4, v4, p2

    add-double/2addr v2, v4

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p4, p4, p0

    sub-double/2addr v0, p4

    return-wide v0
.end method

.method public static msfn(DDD)D
    .locals 0

    mul-double p4, p4, p0

    mul-double p4, p4, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, p4

    .line 343
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr p2, p0

    return-wide p2
.end method

.method public static niceNumber(DZ)D
    .locals 12

    .line 457
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    .line 458
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr p0, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_3

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpg-double p2, p0, v10

    if-gez p2, :cond_0

    :goto_0
    move-wide v4, v8

    goto :goto_2

    :cond_0
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpg-double p2, p0, v8

    if-gez p2, :cond_1

    :goto_1
    move-wide v4, v6

    goto :goto_2

    :cond_1
    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpg-double p2, p0, v6

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v2

    goto :goto_2

    :cond_3
    cmpg-double p2, p0, v8

    if-gtz p2, :cond_4

    goto :goto_0

    :cond_4
    cmpg-double p2, p0, v6

    if-gtz p2, :cond_5

    goto :goto_1

    :cond_5
    cmpg-double p2, p0, v4

    if-gtz p2, :cond_2

    .line 476
    :goto_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double v4, v4, p0

    return-wide v4
.end method

.method public static normalizeAngle(D)D
    .locals 5

    .line 167
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    sub-double/2addr p0, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_1

    add-double/2addr p0, v0

    goto :goto_1

    :cond_1
    return-wide p0

    .line 168
    :cond_2
    new-instance p0, Lorg/locationtech/proj4j/InvalidValueException;

    const-string p1, "Infinite angle"

    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static normalizeLatitude(D)D
    .locals 5

    .line 145
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    sub-double/2addr p0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v4, p0, v0

    if-gez v4, :cond_1

    add-double/2addr p0, v2

    goto :goto_1

    :cond_1
    return-wide p0

    .line 146
    :cond_2
    new-instance p0, Lorg/locationtech/proj4j/InvalidValueException;

    const-string p1, "Infinite latitude"

    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static normalizeLongitude(D)D
    .locals 5

    .line 156
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    sub-double/2addr p0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v4, p0, v0

    if-gez v4, :cond_1

    add-double/2addr p0, v2

    goto :goto_1

    :cond_1
    return-wide p0

    .line 157
    :cond_2
    new-instance p0, Lorg/locationtech/proj4j/InvalidValueException;

    const-string p1, "Infinite longitude"

    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static phi2(DD)D
    .locals 15

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p2

    .line 353
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v6, v2

    const/16 v8, 0xf

    .line 356
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, p2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v13, v11, v9

    add-double/2addr v9, v11

    div-double/2addr v13, v9

    .line 357
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, p0

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    mul-double v9, v9, v4

    sub-double v9, v6, v9

    sub-double/2addr v9, v2

    add-double/2addr v2, v9

    .line 359
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_0

    :cond_1
    if-lez v8, :cond_2

    return-wide v2

    .line 361
    :cond_2
    new-instance v0, Lorg/locationtech/proj4j/ConvergenceFailureException;

    const-string v1, "Computation of phi2 failed to converage after 15 iterations"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ConvergenceFailureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static qsfn(DDD)D
    .locals 6

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    mul-double v0, p2, p0

    mul-double v2, v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    div-double/2addr p0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    div-double/2addr v2, p2

    sub-double p2, v4, v0

    add-double/2addr v0, v4

    div-double/2addr p2, v0

    .line 442
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    mul-double v2, v2, p2

    sub-double/2addr p0, v2

    mul-double p4, p4, p0

    return-wide p4

    :cond_0
    add-double/2addr p0, p0

    return-wide p0
.end method

.method public static radToDeg(D)D
    .locals 2

    .line 0
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static sameSigns(DD)Z
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    cmpg-double p1, p2, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static sameSigns(II)Z
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static sind(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    .line 45
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sphericalAzimuth(DDDD)D
    .locals 4

    sub-double/2addr p6, p2

    .line 199
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    .line 202
    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p2

    .line 203
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double v2, v2, p4

    .line 204
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, p2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    sub-double/2addr v2, p0

    .line 201
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sqrt(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    return-wide v0

    .line 85
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static takeSign(DD)D
    .locals 3

    .line 217
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    neg-double p0, p0

    :cond_0
    return-wide p0
.end method

.method public static takeSign(II)I
    .locals 0

    .line 224
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gez p1, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method public static tand(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static trunc(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 115
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tsfn(DDD)D
    .locals 6

    mul-double p2, p2, p4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p0

    .line 338
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p2

    add-double/2addr p2, v2

    div-double/2addr v4, p2

    mul-double p4, p4, p0

    .line 339
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static zpoly1(Lorg/locationtech/proj4j/util/Complex;[Lorg/locationtech/proj4j/util/Complex;)Lorg/locationtech/proj4j/util/Complex;
    .locals 13

    .line 484
    new-instance v0, Lorg/locationtech/proj4j/util/Complex;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/util/Complex;-><init>(Lorg/locationtech/proj4j/util/Complex;)V

    .line 486
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 488
    aget-object v1, p1, v2

    .line 489
    iget-wide v3, v1, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v5, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v11, v5, v9

    sub-double/2addr v3, v11

    iput-wide v3, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 490
    iget-wide v3, v1, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v11, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v11, v11, v9

    add-double/2addr v3, v11

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    move v1, v2

    goto :goto_0

    .line 492
    :cond_0
    iget-wide v1, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v3, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v1, v1, v3

    iget-wide v5, p0, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v9, v5, v7

    sub-double/2addr v1, v9

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 493
    iget-wide p0, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double p0, p0, v7

    mul-double v5, v5, v3

    add-double/2addr p0, v5

    iput-wide p0, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    return-object v0
.end method

.method public static zpoly1d(Lorg/locationtech/proj4j/util/Complex;[Lorg/locationtech/proj4j/util/Complex;Lorg/locationtech/proj4j/util/Complex;)Lorg/locationtech/proj4j/util/Complex;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 505
    new-instance v3, Lorg/locationtech/proj4j/util/Complex;

    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v1, v4

    invoke-direct {v3, v4}, Lorg/locationtech/proj4j/util/Complex;-><init>(Lorg/locationtech/proj4j/util/Complex;)V

    .line 506
    new-instance v4, Lorg/locationtech/proj4j/util/Complex;

    invoke-direct {v4, v3}, Lorg/locationtech/proj4j/util/Complex;-><init>(Lorg/locationtech/proj4j/util/Complex;)V

    .line 507
    array-length v6, v1

    sub-int/2addr v6, v5

    :goto_0
    if-lez v6, :cond_1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v15, v6

    goto :goto_1

    .line 511
    :cond_0
    iget-wide v7, v3, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v11, v4, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v13, v4, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v15, v9, v13

    sub-double/2addr v7, v15

    iput-wide v7, v4, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 512
    iget-wide v7, v3, Lorg/locationtech/proj4j/util/Complex;->i:D

    move/from16 v16, v5

    move v15, v6

    iget-wide v5, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v5, v5, v13

    add-double/2addr v7, v5

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    iput-wide v7, v4, Lorg/locationtech/proj4j/util/Complex;->i:D

    move/from16 v5, v16

    :goto_1
    add-int/lit8 v6, v15, -0x1

    .line 514
    aget-object v6, v1, v6

    .line 515
    iget-wide v7, v6, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v11, v3, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v13, v3, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v16, v9, v13

    sub-double v7, v7, v16

    iput-wide v7, v3, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 516
    iget-wide v6, v6, Lorg/locationtech/proj4j/util/Complex;->i:D

    move v8, v5

    move-wide/from16 v16, v6

    iget-wide v5, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v5, v5, v13

    add-double v6, v16, v5

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    iput-wide v6, v3, Lorg/locationtech/proj4j/util/Complex;->i:D

    add-int/lit8 v6, v15, -0x1

    move v5, v8

    goto :goto_0

    .line 519
    :cond_1
    iget-wide v5, v3, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v9, v4, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v11, v4, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v13, v7, v11

    sub-double/2addr v5, v13

    iput-wide v5, v4, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 520
    iget-wide v5, v3, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v13, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v11, v11, v13

    add-double/2addr v5, v11

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    iput-wide v5, v4, Lorg/locationtech/proj4j/util/Complex;->i:D

    .line 521
    iget-wide v5, v3, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v13, v13, v5

    iget-wide v7, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v9, v3, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v11, v7, v9

    sub-double/2addr v13, v11

    iput-wide v13, v3, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 522
    iget-wide v0, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v0, v0, v9

    mul-double v7, v7, v5

    add-double/2addr v0, v7

    iput-wide v0, v3, Lorg/locationtech/proj4j/util/Complex;->i:D

    .line 523
    iget-wide v0, v4, Lorg/locationtech/proj4j/util/Complex;->i:D

    iput-wide v0, v2, Lorg/locationtech/proj4j/util/Complex;->i:D

    .line 524
    iget-wide v0, v4, Lorg/locationtech/proj4j/util/Complex;->r:D

    iput-wide v0, v2, Lorg/locationtech/proj4j/util/Complex;->r:D

    return-object v3
.end method
