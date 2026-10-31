.class public Lorg/locationtech/proj4j/geodesic/Geodesic;
.super Ljava/lang/Object;
.source "Geodesic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;,
        Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;,
        Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;,
        Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;
    }
.end annotation


# static fields
.field protected static final GEOGRAPHICLIB_GEODESIC_ORDER:I = 0x6

.field public static final WGS84:Lorg/locationtech/proj4j/geodesic/Geodesic;

.field private static final maxit1_:I = 0x14

.field private static final maxit2_:I = 0x53

.field protected static final nA1_:I = 0x6

.field protected static final nA2_:I = 0x6

.field protected static final nA3_:I = 0x6

.field protected static final nA3x_:I = 0x6

.field protected static final nC1_:I = 0x6

.field protected static final nC1p_:I = 0x6

.field protected static final nC2_:I = 0x6

.field protected static final nC3_:I = 0x6

.field protected static final nC3x_:I = 0xf

.field protected static final nC4_:I = 0x6

.field protected static final nC4x_:I = 0x15

.field protected static final tiny_:D

.field private static final tol0_:D

.field private static final tol1_:D

.field private static final tol2_:D

.field private static final tolb_:D

.field private static final xthresh_:D


# instance fields
.field private _A3x:[D

.field private _C3x:[D

.field private _C4x:[D

.field protected _a:D

.field protected _b:D

.field protected _c2:D

.field protected _e2:D

.field protected _ep2:D

.field private _etol2:D

.field protected _f:D

.field protected _f1:D

.field private _n:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/high16 v0, 0x10000000000000L

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->tiny_:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 228
    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol0_:D

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    mul-double v2, v2, v0

    .line 232
    sput-wide v2, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol1_:D

    .line 233
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sput-wide v2, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol2_:D

    .line 235
    sput-wide v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->tolb_:D

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v0

    .line 236
    sput-wide v2, Lorg/locationtech/proj4j/geodesic/Geodesic;->xthresh_:D

    .line 1205
    new-instance v0, Lorg/locationtech/proj4j/geodesic/Geodesic;

    const-wide v1, 0x415854a640000000L    # 6378137.0

    const-wide v3, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;-><init>(DD)V

    sput-object v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->WGS84:Lorg/locationtech/proj4j/geodesic/Geodesic;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 10

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    .line 253
    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    sub-double v0, p1, p3

    .line 254
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v4, v2, p3

    mul-double p3, p3, v4

    .line 255
    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_e2:D

    .line 256
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v0

    div-double/2addr p3, v0

    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    .line 257
    iget-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    sub-double v0, v2, p3

    div-double/2addr p3, v0

    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    .line 258
    iget-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    mul-double v0, v0, p3

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    .line 259
    invoke-static {p3, p4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide p3

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_e2:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_0

    move-wide v4, p1

    goto :goto_1

    :cond_0
    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atanh(D)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    neg-double v4, v4

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    :goto_0
    iget-wide v8, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_e2:D

    .line 263
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    :goto_1
    mul-double v0, v0, v4

    add-double/2addr p3, v0

    div-double/2addr p3, v2

    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_c2:D

    const-wide p3, 0x3fb999999999999aL    # 0.1

    .line 274
    sget-wide v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol2_:D

    mul-double v0, v0, p3

    iget-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    .line 275
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iget-wide v4, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    div-double/2addr v4, v2

    sub-double v4, p1, v4

    .line 276
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    mul-double p3, p3, p1

    div-double/2addr p3, v2

    .line 275
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_etol2:D

    .line 277
    iget-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    invoke-static {p1, p2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    cmpl-double p3, p1, v6

    if-lez p3, :cond_3

    .line 279
    iget-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    invoke-static {p1, p2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    cmpl-double p3, p1, v6

    if-lez p3, :cond_2

    const/4 p1, 0x6

    .line 281
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_A3x:[D

    const/16 p1, 0xf

    .line 282
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_C3x:[D

    const/16 p1, 0x15

    .line 283
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_C4x:[D

    .line 285
    invoke-virtual {p0}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A3coeff()V

    .line 286
    invoke-virtual {p0}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C3coeff()V

    .line 287
    invoke-virtual {p0}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C4coeff()V

    return-void

    .line 280
    :cond_2
    new-instance p1, Lorg/locationtech/proj4j/geodesic/GeographicErr;

    const-string p2, "Polar semi-axis is not positive"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/geodesic/GeographicErr;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_3
    new-instance p1, Lorg/locationtech/proj4j/geodesic/GeographicErr;

    const-string p2, "Equatorial radius is not positive"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/geodesic/GeographicErr;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static A1m1f(D)D
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x5

    .line 1668
    new-array v2, v2, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    .line 1673
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v4

    const/4 v6, 0x3

    invoke-static {v6, v2, v3, v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v3

    const/4 v5, 0x4

    aget-wide v5, v2, v5

    div-double/2addr v3, v5

    add-double/2addr v3, p0

    sub-double/2addr v0, p0

    div-double/2addr v3, v0

    return-wide v3

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4050000000000000L    # 64.0
        0x0
        0x4070000000000000L    # 256.0
    .end array-data
.end method

.method protected static A2m1f(D)D
    .locals 5

    const/4 v0, 0x5

    .line 1735
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    .line 1740
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    const/4 v4, 0x3

    invoke-static {v4, v0, v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v1

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    div-double/2addr v1, v3

    sub-double/2addr v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v3

    div-double/2addr v1, p0

    return-wide v1

    :array_0
    .array-data 8
        -0x3fda000000000000L    # -11.0
        -0x3fc4000000000000L    # -28.0
        -0x3f98000000000000L    # -192.0
        0x0
        0x4070000000000000L    # 256.0
    .end array-data
.end method

.method private static Astroid(DD)D
    .locals 17

    .line 1326
    invoke-static/range {p0 .. p1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v0

    .line 1327
    invoke-static/range {p2 .. p3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    add-double v4, v0, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-nez v8, :cond_1

    cmpg-double v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    return-wide v6

    :cond_1
    :goto_0
    mul-double v0, v0, v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v8

    .line 1334
    invoke-static {v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v8

    mul-double v10, v4, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v10, v12

    add-double/2addr v14, v0

    mul-double v14, v14, v0

    cmpl-double v16, v14, v6

    if-ltz v16, :cond_4

    add-double/2addr v0, v10

    cmpg-double v10, v0, v6

    if-gez v10, :cond_2

    .line 1345
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    neg-double v10, v10

    goto :goto_1

    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    :goto_1
    add-double/2addr v0, v10

    .line 1347
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    cmpl-double v10, v0, v6

    if-eqz v10, :cond_3

    div-double/2addr v8, v0

    goto :goto_2

    :cond_3
    move-wide v8, v6

    :goto_2
    add-double/2addr v0, v8

    add-double/2addr v4, v0

    goto :goto_3

    :cond_4
    neg-double v8, v14

    .line 1352
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v0, v10

    neg-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v8, v4, v12

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v10

    .line 1355
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v8, v8, v0

    add-double/2addr v4, v8

    .line 1358
    :goto_3
    invoke-static {v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_5

    sub-double v4, v0, v4

    div-double v4, v2, v4

    goto :goto_4

    :cond_5
    add-double/2addr v4, v0

    :goto_4
    sub-double v2, v4, v2

    mul-double v0, v0, v12

    div-double/2addr v2, v0

    .line 1364
    invoke-static {v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    return-wide v4
.end method

.method protected static C1f(D[D)V
    .locals 14

    const/4 v0, 0x6

    const/16 v1, 0x12

    .line 1679
    new-array v1, v1, [D

    fill-array-data v1, :array_0

    .line 1694
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v7, p0

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v0, :cond_0

    rsub-int/lit8 v9, v6, 0x6

    .line 1698
    div-int/lit8 v9, v9, 0x2

    .line 1699
    invoke-static {v9, v1, v4, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v10

    mul-double v10, v10, v7

    add-int v12, v4, v9

    add-int/2addr v12, v5

    aget-wide v12, v1, v12

    div-double/2addr v10, v12

    aput-wide v10, p2, v6

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    mul-double v7, v7, p0

    add-int/2addr v6, v5

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x4018000000000000L    # 6.0
        -0x3fd0000000000000L    # -16.0
        0x4040000000000000L    # 32.0
        -0x3fde000000000000L    # -9.0
        0x4050000000000000L    # 64.0
        -0x3fa0000000000000L    # -128.0
        0x40a0000000000000L    # 2048.0
        0x4022000000000000L    # 9.0
        -0x3fd0000000000000L    # -16.0
        0x4088000000000000L    # 768.0
        0x4008000000000000L    # 3.0
        -0x3fec000000000000L    # -5.0
        0x4080000000000000L    # 512.0
        -0x3fe4000000000000L    # -7.0
        0x4094000000000000L    # 1280.0
        -0x3fe4000000000000L    # -7.0
        0x40a0000000000000L    # 2048.0
    .end array-data
.end method

.method protected static C1pf(D[D)V
    .locals 14

    const/4 v0, 0x6

    const/16 v1, 0x12

    .line 1707
    new-array v1, v1, [D

    fill-array-data v1, :array_0

    .line 1722
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v7, p0

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v0, :cond_0

    rsub-int/lit8 v9, v6, 0x6

    .line 1726
    div-int/lit8 v9, v9, 0x2

    .line 1727
    invoke-static {v9, v1, v4, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v10

    mul-double v10, v10, v7

    add-int v12, v4, v9

    add-int/2addr v12, v5

    aget-wide v12, v1, v12

    div-double/2addr v10, v12

    aput-wide v10, p2, v6

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    mul-double v7, v7, p0

    add-int/2addr v6, v5

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 8
        0x4069a00000000000L    # 205.0
        -0x3f85000000000000L    # -432.0
        0x4088000000000000L    # 768.0
        0x4098000000000000L    # 1536.0
        0x40af4a0000000000L    # 4005.0
        -0x3f4d800000000000L    # -4736.0
        0x40ae000000000000L    # 3840.0
        0x40c8000000000000L    # 12288.0
        -0x3f93e00000000000L    # -225.0
        0x405d000000000000L    # 116.0
        0x4078000000000000L    # 384.0
        -0x3f43fb0000000000L    # -7173.0
        0x40a50e0000000000L    # 2695.0
        0x40be000000000000L    # 7680.0
        0x40ab160000000000L    # 3467.0
        0x40be000000000000L    # 7680.0
        0x40e2982000000000L    # 38081.0
        0x40ee000000000000L    # 61440.0
    .end array-data
.end method

.method protected static C2f(D[D)V
    .locals 14

    const/4 v0, 0x6

    const/16 v1, 0x12

    .line 1746
    new-array v1, v1, [D

    fill-array-data v1, :array_0

    .line 1761
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v7, p0

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v0, :cond_0

    rsub-int/lit8 v9, v6, 0x6

    .line 1765
    div-int/lit8 v9, v9, 0x2

    .line 1766
    invoke-static {v9, v1, v4, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v10

    mul-double v10, v10, v7

    add-int v12, v4, v9

    add-int/2addr v12, v5

    aget-wide v12, v1, v12

    div-double/2addr v10, v12

    aput-wide v10, p2, v6

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    mul-double v7, v7, p0

    add-int/2addr v6, v5

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4030000000000000L    # 16.0
        0x4040000000000000L    # 32.0
        0x4041800000000000L    # 35.0
        0x4050000000000000L    # 64.0
        0x4078000000000000L    # 384.0
        0x40a0000000000000L    # 2048.0
        0x402e000000000000L    # 15.0
        0x4054000000000000L    # 80.0
        0x4088000000000000L    # 768.0
        0x401c000000000000L    # 7.0
        0x4041800000000000L    # 35.0
        0x4080000000000000L    # 512.0
        0x404f800000000000L    # 63.0
        0x4094000000000000L    # 1280.0
        0x4053400000000000L    # 77.0
        0x40a0000000000000L    # 2048.0
    .end array-data
.end method

.method private InverseInt(DDDDI)Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;
    .locals 86

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p9

    .line 633
    new-instance v4, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V

    .line 634
    new-instance v6, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {v6}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>()V

    .line 635
    invoke-static {v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object v7

    .line 639
    invoke-static/range {p1 .. p2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->LatFix(D)D

    move-result-wide v8

    iput-wide v8, v7, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat1:D

    invoke-static/range {p5 .. p6}, Lorg/locationtech/proj4j/geodesic/GeoMath;->LatFix(D)D

    move-result-wide v10

    iput-wide v10, v7, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat2:D

    .line 641
    invoke-static {v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngRound(D)D

    move-result-wide v8

    .line 642
    invoke-static {v10, v11}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngRound(D)D

    move-result-wide v10

    move-wide/from16 v12, p7

    .line 644
    invoke-static {v6, v1, v2, v12, v13}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngDiff(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    iget-wide v14, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    move-wide/from16 p1, v8

    iget-wide v8, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    const v16, 0x8000

    and-int v16, v3, v16

    if-eqz v16, :cond_0

    .line 646
    iput-wide v1, v7, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon1:D

    add-double/2addr v1, v14

    add-double/2addr v1, v8

    iput-wide v1, v7, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon2:D

    goto :goto_0

    .line 648
    :cond_0
    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v1

    iput-wide v1, v7, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon1:D

    invoke-static {v12, v13}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v1

    iput-wide v1, v7, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon2:D

    :goto_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 651
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v1, v12

    mul-double v13, v14, v1

    mul-double v8, v8, v1

    .line 653
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    .line 655
    invoke-static {v6, v13, v14, v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosde(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 656
    iget-wide v1, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    move-wide/from16 v16, v1

    iget-wide v1, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    const-wide v27, 0x4066800000000000L    # 180.0

    sub-double v18, v27, v13

    sub-double v29, v18, v8

    .line 661
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const/16 v31, 0x1

    cmpg-double v15, v8, v18

    if-ltz v15, :cond_2

    cmpl-double v8, v10, v10

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/16 v32, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, -0x1

    const/16 v32, -0x1

    :goto_2
    if-gez v32, :cond_3

    mul-int/lit8 v12, v12, -0x1

    move-wide v8, v10

    move-wide/from16 v10, p1

    :goto_3
    move-object/from16 v22, v6

    move/from16 v33, v12

    goto :goto_4

    :cond_3
    move-wide/from16 v8, p1

    goto :goto_3

    :goto_4
    neg-double v5, v8

    move-wide/from16 p1, v13

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 667
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-double v12, v5

    mul-double v8, v8, v12

    mul-double v10, v10, v12

    move-object/from16 v6, v22

    .line 685
    invoke-static {v6, v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V

    .line 686
    iget-wide v12, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    iget-wide v14, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    mul-double v12, v12, v14

    iget-wide v14, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    .line 689
    invoke-static {v6, v12, v13, v14, v15}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    iget-wide v12, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v14, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    move-wide/from16 v18, v1

    .line 690
    sget-wide v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->tiny_:D

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 692
    invoke-static {v6, v10, v11}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V

    .line 693
    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    move-object/from16 v20, v4

    move/from16 v21, v5

    iget-wide v4, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    mul-double v10, v10, v4

    iget-wide v4, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    .line 695
    invoke-static {v6, v10, v11, v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    iget-wide v4, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v10, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    .line 696
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide/from16 p6, v1

    neg-double v1, v12

    cmpg-double v22, v14, v1

    if-gez v22, :cond_4

    cmpl-double v1, v10, v14

    if-nez v1, :cond_5

    .line 708
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v4

    goto :goto_5

    .line 710
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpl-double v24, v22, v1

    if-nez v24, :cond_5

    move-wide v10, v14

    .line 715
    :cond_5
    :goto_5
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    invoke-static {v12, v13}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v22

    mul-double v1, v1, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    move-wide/from16 v34, v1

    .line 716
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    invoke-static {v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v36

    mul-double v1, v1, v36

    add-double v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    move-wide/from16 v22, v1

    const/4 v1, 0x7

    .line 721
    new-array v2, v1, [D

    .line 722
    new-array v1, v1, [D

    move-object/from16 v24, v1

    const/4 v1, 0x6

    move-object/from16 v36, v2

    .line 723
    new-array v2, v1, [D

    const-wide v37, -0x3fa9800000000000L    # -90.0

    const/16 v39, 0x0

    move-object/from16 v40, v2

    const-wide/16 v1, 0x0

    cmpl-double v41, v8, v37

    if-eqz v41, :cond_7

    cmpl-double v8, v16, v1

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    const/16 v37, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/16 v37, 0x1

    .line 726
    :goto_7
    new-instance v8, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V

    const-wide/high16 v41, 0x7ff8000000000000L    # Double.NaN

    if-eqz v37, :cond_d

    move-object/from16 v43, v8

    move-object/from16 v38, v9

    mul-double v8, v18, v14

    move-wide/from16 v46, v18

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v14

    mul-double v14, v10, v44

    mul-double v48, v8, v4

    mul-double v50, v12, v14

    move-wide/from16 p3, v4

    sub-double v4, v48, v50

    .line 742
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double v48, v8, v14

    mul-double v50, v12, p3

    add-double v1, v48, v50

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 744
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    or-int/lit16 v0, v3, 0x1405

    move-wide/from16 v48, p1

    move-wide v2, v1

    move-object/from16 v58, v7

    move-wide/from16 v50, v16

    move-object/from16 v56, v20

    move/from16 v38, v21

    move-wide/from16 v16, v22

    move-object/from16 v23, v36

    move-object/from16 v1, v43

    move/from16 v22, v0

    move-object/from16 v36, v6

    move-wide/from16 v20, v10

    move-wide v6, v12

    move-wide/from16 v10, v34

    move-object/from16 v0, p0

    move-wide/from16 v12, p3

    move-wide/from16 v34, p6

    invoke-direct/range {v0 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Lengths(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;DDDDDDDDDDI[D[D)V

    move-wide v2, v6

    move-wide v6, v10

    move-wide v8, v12

    move-wide/from16 v12, v16

    move-wide/from16 v10, v20

    .line 748
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$300(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v14

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$400(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v16

    move-wide/from16 p1, v2

    move/from16 v1, p9

    and-int/lit16 v2, v1, 0x2005

    if-eqz v2, :cond_8

    .line 750
    invoke-static/range {v43 .. v43}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$500(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v2

    move-wide/from16 p3, v4

    move-object/from16 v4, v58

    iput-wide v2, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    invoke-static/range {v43 .. v43}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$600(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v2

    iput-wide v2, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    goto :goto_8

    :cond_8
    move-wide/from16 p3, v4

    move-object/from16 v4, v58

    :goto_8
    cmpg-double v2, p3, v44

    const-wide/16 v54, 0x0

    if-ltz v2, :cond_a

    cmpl-double v2, v16, v54

    if-ltz v2, :cond_9

    goto :goto_9

    :cond_9
    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v65, v41

    move-wide/from16 v61, v44

    move-wide/from16 v52, v46

    move-wide/from16 v59, v50

    move-wide/from16 v63, v54

    const/16 v37, 0x0

    goto/16 :goto_a

    :cond_a
    :goto_9
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v2, v2, v34

    cmpg-double v5, p3, v2

    if-ltz v5, :cond_b

    .line 761
    sget-wide v2, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol0_:D

    cmpg-double v5, p3, v2

    if-gez v5, :cond_c

    cmpg-double v2, v14, v54

    if-ltz v2, :cond_b

    cmpg-double v2, v16, v54

    if-gez v2, :cond_c

    :cond_b
    move-wide/from16 p3, v54

    move-wide/from16 v14, p3

    move-wide/from16 v16, v14

    .line 765
    :cond_c
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    mul-double v16, v16, v2

    mul-double v14, v14, v2

    .line 767
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    move-wide/from16 v65, v2

    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v61, v44

    move-wide/from16 v52, v46

    move-wide/from16 v59, v50

    move-wide/from16 v63, v54

    goto :goto_a

    :cond_d
    move-wide/from16 v48, p1

    move-wide/from16 v54, v1

    move v1, v3

    move-object/from16 v43, v8

    move-wide/from16 p1, v12

    move-wide/from16 v50, v16

    move-wide/from16 v46, v18

    move-object/from16 v56, v20

    move/from16 v38, v21

    move-wide/from16 v12, v22

    move-object/from16 v23, v36

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-wide v8, v4

    move-object/from16 v36, v6

    move-object v4, v7

    move-wide/from16 v18, v14

    move-wide/from16 v6, v34

    move-wide/from16 v34, p6

    move-wide/from16 v52, v41

    move-wide/from16 v59, v52

    move-wide/from16 v61, v59

    move-wide/from16 v63, v61

    move-wide/from16 v65, v63

    move-wide/from16 v67, v65

    move-wide/from16 v69, v67

    :goto_a
    const-wide/high16 v71, -0x4010000000000000L    # -1.0

    const-wide/high16 v73, 0x4000000000000000L    # 2.0

    if-nez v37, :cond_10

    cmpl-double v2, p1, v54

    if-nez v2, :cond_10

    .line 774
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    cmpg-double v5, v2, v54

    if-lez v5, :cond_e

    mul-double v2, v2, v27

    cmpl-double v5, v29, v2

    if-ltz v5, :cond_10

    .line 781
    :cond_e
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    mul-double v67, v2, v25

    .line 782
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    div-double v25, v25, v2

    .line 783
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v69, v2, v5

    and-int/lit16 v2, v1, 0x2005

    if-eqz v2, :cond_f

    .line 785
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    iput-wide v2, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    .line 786
    :cond_f
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    div-double v65, v48, v2

    move-wide/from16 v82, p1

    move v5, v1

    move-object v12, v4

    move-wide/from16 v84, v8

    move-object/from16 v81, v36

    move-wide/from16 v6, v41

    move-wide/from16 v1, v44

    move-wide/from16 v57, v1

    move-wide/from16 v3, v54

    move-wide/from16 v59, v3

    move-wide/from16 v13, v65

    move-wide/from16 v8, v73

    move-wide/from16 v41, v25

    goto/16 :goto_1a

    :cond_10
    if-nez v37, :cond_24

    move v2, v1

    move-object v1, v0

    move v0, v2

    move-wide/from16 v2, p1

    move-object/from16 v75, v4

    move-wide/from16 v4, v18

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-wide/from16 v14, v25

    move-object/from16 v22, v36

    move-object/from16 v23, v43

    move-wide/from16 v18, v46

    move-wide/from16 v16, v50

    .line 797
    invoke-direct/range {v1 .. v23}, Lorg/locationtech/proj4j/geodesic/Geodesic;->InverseStart(DDDDDDDDD[D[DLorg/locationtech/proj4j/geodesic/Pair;Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;

    move-result-object v24

    move-wide/from16 v18, v4

    move-object/from16 v23, v20

    .line 800
    invoke-static/range {v24 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$700(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v4

    .line 801
    invoke-static/range {v24 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v25

    invoke-static/range {v24 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$900(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v27

    .line 802
    invoke-static/range {v24 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1000(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v29

    invoke-static/range {v24 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v48

    .line 803
    invoke-static/range {v24 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1200(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v50

    const-wide/16 v2, 0x0

    cmpl-double v20, v4, v2

    if-ltz v20, :cond_12

    .line 808
    iget-wide v6, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    mul-double v6, v6, v4

    mul-double v67, v6, v50

    .line 809
    invoke-static/range {v50 .. v51}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v6

    iget-wide v12, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    mul-double v6, v6, v12

    div-double v12, v4, v50

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v69, v6, v16

    and-int/lit16 v6, v0, 0x2005

    if-eqz v6, :cond_11

    .line 811
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move-object/from16 v12, v75

    iput-wide v6, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    iput-wide v6, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    goto :goto_b

    :cond_11
    move-object/from16 v12, v75

    .line 812
    :goto_b
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v65

    .line 813
    iget-wide v4, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    mul-double v4, v4, v50

    div-double v4, v14, v4

    move-wide/from16 v82, p1

    move-wide/from16 v84, v8

    move-object/from16 v81, v22

    move-wide/from16 v57, v29

    move-wide/from16 v6, v41

    move-wide/from16 v59, v48

    move-wide/from16 v13, v65

    move-wide/from16 v8, v73

    move-wide/from16 v41, v4

    move-wide/from16 v3, v27

    move v5, v0

    move-object v0, v1

    move-wide/from16 v1, v25

    goto/16 :goto_1a

    :cond_12
    move-object/from16 v58, v75

    .line 832
    new-instance v4, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V

    move-wide/from16 v50, v16

    move-wide/from16 v14, v25

    move-wide/from16 v16, v27

    move-wide/from16 v28, v34

    move-wide/from16 v48, v44

    move-wide/from16 v52, v71

    const/4 v5, 0x0

    const/16 v30, 0x0

    const/16 v36, 0x0

    :goto_c
    const/16 v0, 0x14

    move-object/from16 v26, v22

    if-ge v5, v0, :cond_13

    const/16 v22, 0x1

    :goto_d
    move-wide/from16 v2, p1

    move-object v0, v1

    move-object v1, v4

    move/from16 v78, v5

    move-wide/from16 v4, v18

    move-object/from16 v24, v21

    move-object/from16 v25, v40

    move-object/from16 v27, v43

    move-wide/from16 v20, v46

    move-wide/from16 v18, v50

    move-object/from16 v77, v58

    goto :goto_e

    :cond_13
    const/16 v22, 0x0

    goto :goto_d

    .line 837
    :goto_e
    invoke-direct/range {v0 .. v27}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Lambda12(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;DDDDDDDDDDZ[D[D[DLorg/locationtech/proj4j/geodesic/Pair;Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)V

    move-wide/from16 v46, v16

    move-wide/from16 v50, v18

    move-wide/from16 v54, v20

    move-object/from16 v40, v25

    move-object/from16 v0, v26

    move-object/from16 v43, v27

    move-wide/from16 v18, v4

    move-wide/from16 v25, v14

    .line 839
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1400(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v4

    .line 840
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1500(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v57

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1600(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v59

    .line 841
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1700(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v14

    move-wide/from16 v20, v10

    move-wide v10, v6

    .line 842
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v6

    move-wide/from16 v16, v8

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v8

    move-wide/from16 v61, v16

    move-wide/from16 v16, v12

    .line 843
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v12

    move-wide/from16 v63, v14

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v14

    move-wide/from16 v65, v2

    .line 844
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2200(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v2

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2300(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v67

    .line 845
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2400(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v69

    if-nez v30, :cond_20

    .line 848
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v75

    if-eqz v36, :cond_14

    const/16 v22, 0x8

    move-object/from16 p1, v1

    const/16 v1, 0x8

    :goto_f
    move-wide/from16 p2, v2

    goto :goto_10

    :cond_14
    move-object/from16 p1, v1

    const/4 v1, 0x1

    goto :goto_f

    :goto_10
    int-to-double v1, v1

    sget-wide v79, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol0_:D

    mul-double v1, v1, v79

    cmpl-double v3, v75, v1

    if-ltz v3, :cond_15

    const/16 v1, 0x53

    move/from16 v2, v78

    if-ne v2, v1, :cond_16

    :cond_15
    :goto_11
    move-wide/from16 p4, v6

    const-wide/16 v6, 0x0

    goto/16 :goto_17

    :cond_16
    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_18

    const/16 v1, 0x14

    if-gt v2, v1, :cond_17

    div-double v8, v46, v25

    div-double v12, v52, v34

    cmpl-double v3, v8, v12

    if-lez v3, :cond_19

    :cond_17
    move-wide/from16 v34, v25

    move-wide/from16 v52, v46

    goto :goto_12

    :cond_18
    const/16 v1, 0x14

    :cond_19
    cmpg-double v3, v4, v6

    if-gez v3, :cond_1b

    if-gt v2, v1, :cond_1a

    div-double v8, v46, v25

    div-double v12, v48, v28

    cmpg-double v3, v8, v12

    if-gez v3, :cond_1b

    :cond_1a
    move-wide/from16 v28, v25

    move-wide/from16 v48, v46

    :cond_1b
    :goto_12
    if-ge v2, v1, :cond_1d

    cmpl-double v1, v69, v6

    if-lez v1, :cond_1d

    neg-double v8, v4

    div-double v8, v8, v69

    .line 860
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    cmpg-double v1, v12, v14

    if-gez v1, :cond_1d

    .line 862
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v14, v25, v8

    mul-double v57, v46, v12

    add-double v14, v14, v57

    cmpl-double v1, v14, v6

    if-lez v1, :cond_1d

    mul-double v8, v8, v46

    mul-double v12, v12, v25

    sub-double/2addr v8, v12

    .line 867
    invoke-static {v0, v14, v15, v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 868
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    .line 872
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    mul-double v79, v79, v14

    cmpg-double v1, v3, v79

    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_13

    :cond_1c
    const/4 v1, 0x0

    :goto_13
    move/from16 v36, v1

    move-wide v14, v8

    move-wide v8, v12

    goto :goto_16

    :cond_1d
    add-double v3, v28, v34

    div-double v3, v3, v73

    add-double v8, v48, v52

    div-double v8, v8, v73

    .line 887
    invoke-static {v0, v3, v4, v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    iget-wide v3, v0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    sub-double v12, v28, v3

    .line 889
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v14, v48, v8

    add-double/2addr v12, v14

    sget-wide v14, Lorg/locationtech/proj4j/geodesic/Geodesic;->tolb_:D

    cmpg-double v1, v12, v14

    if-ltz v1, :cond_1f

    sub-double v12, v3, v34

    .line 890
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v25, v8, v52

    add-double v12, v12, v25

    cmpg-double v1, v12, v14

    if-gez v1, :cond_1e

    goto :goto_14

    :cond_1e
    const/16 v30, 0x0

    goto :goto_15

    :cond_1f
    :goto_14
    const/16 v30, 0x1

    :goto_15
    move-wide v14, v3

    const/16 v36, 0x0

    :goto_16
    add-int/lit8 v5, v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v22, v0

    move-wide v2, v6

    move-wide v6, v10

    move-wide/from16 v12, v16

    move-wide/from16 v10, v20

    move-object/from16 v21, v24

    move-wide/from16 v46, v54

    move-wide/from16 p1, v65

    move-object/from16 v58, v77

    move-wide/from16 v16, v8

    move-wide/from16 v8, v61

    goto/16 :goto_c

    :cond_20
    move-wide/from16 p2, v2

    goto/16 :goto_11

    :goto_17
    move/from16 v1, p9

    and-int/lit16 v2, v1, 0x3005

    if-eqz v2, :cond_21

    const/16 v39, 0x401

    :cond_21
    or-int v22, v1, v39

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v81, v0

    move-object/from16 v1, v43

    move-wide/from16 v84, v61

    move-wide/from16 v4, v63

    move-wide/from16 v82, v65

    move-object/from16 v0, p0

    .line 899
    invoke-direct/range {v0 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Lengths(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;DDDDDDDDDDI[D[D)V

    move-wide/from16 v10, v20

    .line 902
    invoke-static/range {v43 .. v43}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$300(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v1

    invoke-static/range {v43 .. v43}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$400(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v3

    move/from16 v5, p9

    and-int/lit16 v6, v5, 0x2005

    if-eqz v6, :cond_22

    .line 904
    invoke-static/range {v43 .. v43}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$500(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v6

    move-object/from16 v12, v77

    iput-wide v6, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    invoke-static/range {v43 .. v43}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$600(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v6

    iput-wide v6, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    goto :goto_18

    :cond_22
    move-object/from16 v12, v77

    .line 907
    :goto_18
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    mul-double v69, v3, v6

    mul-double v1, v1, v6

    .line 909
    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v65

    and-int/lit16 v3, v5, 0x4010

    if-eqz v3, :cond_23

    .line 912
    invoke-static/range {v67 .. v68}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static/range {v67 .. v68}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v8, v50, v6

    mul-double v13, v54, v3

    sub-double/2addr v8, v13

    mul-double v6, v6, v54

    mul-double v3, v3, v50

    add-double/2addr v6, v3

    move-wide/from16 v67, v1

    move-wide/from16 v1, v25

    move-wide/from16 v3, v46

    move-wide/from16 v13, v65

    goto :goto_1a

    :cond_23
    move-wide/from16 v67, v1

    move-wide/from16 v1, v25

    move-wide/from16 v6, v41

    move-wide/from16 v3, v46

    :goto_19
    move-wide/from16 v13, v65

    move-wide/from16 v8, v73

    goto :goto_1a

    :cond_24
    move-wide/from16 v82, p1

    move v5, v1

    move-object v12, v4

    move-wide/from16 v84, v8

    move-object/from16 v81, v36

    move-wide/from16 v6, v41

    move-wide/from16 v3, v52

    move-wide/from16 v1, v59

    move-wide/from16 v59, v61

    move-wide/from16 v57, v63

    goto :goto_19

    :goto_1a
    and-int/lit16 v15, v5, 0x401

    move-wide/from16 p1, v1

    const-wide/16 v52, 0x0

    if-eqz v15, :cond_25

    add-double v1, v67, v52

    .line 920
    iput-wide v1, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    :cond_25
    and-int/lit16 v1, v5, 0x1005

    if-eqz v1, :cond_26

    add-double v1, v69, v52

    .line 923
    iput-wide v1, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->m12:D

    :cond_26
    and-int/lit16 v1, v5, 0x4010

    if-eqz v1, :cond_2b

    mul-double v1, p1, v18

    move-wide/from16 p3, v1

    move-wide/from16 p5, v6

    move-wide/from16 v1, v82

    mul-double v6, p1, v1

    .line 929
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    cmpl-double v15, v6, v52

    if-eqz v15, :cond_27

    cmpl-double v15, p3, v52

    if-eqz v15, :cond_27

    move-wide v15, v3

    mul-double v3, v15, v18

    move-wide/from16 p7, v6

    mul-double v6, v59, v10

    .line 936
    invoke-static/range {p7 .. p8}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v20

    move-wide/from16 v22, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    mul-double v20, v20, v8

    add-double v8, v20, v44

    .line 937
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double v8, v8, v44

    mul-double v8, v8, v73

    add-double v8, v8, v20

    div-double v8, v20, v8

    move-wide/from16 v20, v10

    .line 939
    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    invoke-static {v10, v11}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v10

    mul-double v10, v10, p7

    mul-double v10, v10, p3

    move-wide/from16 p3, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_e2:D

    mul-double v10, v10, p3

    move-wide/from16 p3, v10

    move-object/from16 v10, v81

    .line 940
    invoke-static {v10, v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    iget-wide v3, v10, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    move-wide/from16 v65, v1

    iget-wide v1, v10, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    move-wide/from16 v27, v1

    move-wide/from16 v1, v84

    .line 941
    invoke-static {v10, v1, v2, v6, v7}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    iget-wide v6, v10, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v10, v10, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    move-wide/from16 v61, v1

    const/4 v1, 0x6

    .line 942
    new-array v1, v1, [D

    .line 943
    invoke-virtual {v0, v8, v9, v1}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C4f(D[D)V

    const/16 v24, 0x0

    move-object/from16 v29, v1

    move-wide/from16 v25, v3

    .line 945
    invoke-static/range {v24 .. v29}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v1

    const/16 v46, 0x0

    move-wide/from16 v47, v6

    move-wide/from16 v49, v10

    move-object/from16 v51, v29

    .line 946
    invoke-static/range {v46 .. v51}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    mul-double v10, p3, v3

    .line 947
    iput-wide v10, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->S12:D

    goto :goto_1b

    :cond_27
    move-wide/from16 v65, v1

    move-wide v15, v3

    move-wide/from16 v22, v8

    move-wide/from16 v20, v10

    move-wide/from16 v61, v84

    move-wide/from16 v6, v52

    .line 950
    iput-wide v6, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->S12:D

    :goto_1b
    if-nez v37, :cond_28

    cmpl-double v1, v22, v73

    if-nez v1, :cond_28

    .line 953
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    goto :goto_1c

    :cond_28
    move-wide/from16 v6, p5

    move-wide/from16 v8, v22

    :goto_1c
    if-nez v37, :cond_29

    const-wide v1, -0x40195f6fd21ff2e5L    # -0.7071

    cmpl-double v3, v6, v1

    if-lez v3, :cond_29

    sub-double v1, v61, v65

    const-wide/high16 v3, 0x3ffc000000000000L    # 1.75

    cmpg-double v10, v1, v3

    if-gez v10, :cond_29

    add-double v6, v6, v44

    add-double v1, v18, v44

    add-double v10, v20, v44

    mul-double v3, v65, v10

    mul-double v17, v61, v1

    add-double v3, v3, v17

    mul-double v8, v8, v3

    mul-double v3, v65, v61

    mul-double v1, v1, v10

    add-double/2addr v3, v1

    mul-double v6, v6, v3

    .line 964
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    mul-double v1, v1, v73

    goto :goto_1d

    :cond_29
    mul-double v3, v57, v15

    mul-double v1, v59, p1

    sub-double/2addr v3, v1

    mul-double v1, v59, v15

    mul-double v6, v57, p1

    add-double/2addr v1, v6

    const-wide/16 v52, 0x0

    cmpl-double v6, v3, v52

    if-nez v6, :cond_2a

    cmpg-double v6, v1, v52

    if-gez v6, :cond_2a

    .line 976
    sget-wide v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->tiny_:D

    mul-double v3, v1, v15

    move-wide/from16 v1, v71

    .line 979
    :cond_2a
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 981
    :goto_1d
    iget-wide v3, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->S12:D

    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_c2:D

    mul-double v6, v6, v1

    add-double/2addr v3, v6

    mul-int v1, v32, v33

    mul-int v1, v1, v38

    int-to-double v1, v1

    mul-double v3, v3, v1

    const-wide/16 v52, 0x0

    add-double v3, v3, v52

    .line 984
    iput-wide v3, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->S12:D

    goto :goto_1e

    :cond_2b
    move-wide v15, v3

    :goto_1e
    if-gez v32, :cond_2d

    and-int/lit16 v1, v5, 0x2005

    if-eqz v1, :cond_2c

    .line 992
    iget-wide v1, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    iget-wide v3, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    iput-wide v3, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    iput-wide v1, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    :cond_2c
    move-wide/from16 v1, v57

    move-wide/from16 v3, v59

    move-wide/from16 v57, p1

    move-wide/from16 v59, v15

    goto :goto_1f

    :cond_2d
    move-wide/from16 v1, p1

    move-wide v3, v15

    :goto_1f
    mul-int v5, v32, v33

    int-to-double v5, v5

    mul-double v1, v1, v5

    mul-int v7, v32, v38

    int-to-double v7, v7

    mul-double v3, v3, v7

    mul-double v5, v5, v57

    mul-double v7, v7, v59

    .line 999
    iput-wide v13, v12, Lorg/locationtech/proj4j/geodesic/GeodesicData;->a12:D

    move-object/from16 v9, v56

    .line 1000
    invoke-static {v9, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2502(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D

    invoke-static {v9, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2602(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D

    .line 1001
    invoke-static {v9, v5, v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2702(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D

    invoke-static {v9, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D

    return-object v9
.end method

.method private InverseStart(DDDDDDDDD[D[DLorg/locationtech/proj4j/geodesic/Pair;Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;
    .locals 40

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p21

    .line 1396
    new-instance v4, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 1397
    invoke-static {v4, v5, v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$702(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    mul-double v7, p7, v1

    mul-double v25, p9, p1

    sub-double v9, v7, v25

    mul-double v27, p9, v1

    mul-double v11, p7, p1

    add-double v13, v27, v11

    add-double v5, v7, v25

    move-wide/from16 v17, v7

    const-wide/16 v7, 0x0

    cmpl-double v19, v13, v7

    if-ltz v19, :cond_0

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpg-double v19, v9, v13

    if-gez v19, :cond_0

    mul-double v19, p9, p13

    cmpg-double v21, v19, v13

    if-gez v21, :cond_0

    const/4 v13, 0x1

    :goto_0
    move-wide/from16 v19, v7

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :goto_1
    if-eqz v13, :cond_1

    add-double v21, p1, p7

    .line 1407
    invoke-static/range {v21 .. v22}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v21

    add-double v23, v1, p9

    .line 1410
    invoke-static/range {v23 .. v24}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v23

    add-double v23, v21, v23

    div-double v21, v21, v23

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 1411
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    mul-double v7, v7, v21

    add-double v7, v7, v23

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v4, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1202(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1412
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    invoke-static {v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1200(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v21

    mul-double v7, v7, v21

    div-double v7, p13, v7

    .line 1413
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    move-wide/from16 p13, v7

    goto :goto_2

    :cond_1
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, p15

    move-wide/from16 p13, p17

    :goto_2
    mul-double v7, p9, v21

    .line 1418
    invoke-static {v4, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    cmpl-double v7, p13, v19

    if-ltz v7, :cond_2

    .line 1420
    invoke-static/range {v21 .. v22}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v29

    mul-double v29, v29, v25

    add-double v31, p13, v23

    div-double v29, v29, v31

    add-double v29, v9, v29

    :goto_3
    move v14, v7

    move-wide/from16 v7, v29

    goto :goto_4

    .line 1421
    :cond_2
    invoke-static/range {v21 .. v22}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v29

    mul-double v29, v29, v25

    sub-double v31, v23, p13

    div-double v29, v29, v31

    sub-double v29, v5, v29

    goto :goto_3

    .line 1419
    :goto_4
    invoke-static {v4, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1424
    invoke-static {v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v7

    move-wide/from16 v29, v9

    invoke-static {v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$900(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    mul-double v9, v27, p13

    add-double/2addr v9, v11

    move-wide/from16 v31, v11

    if-eqz v13, :cond_5

    .line 1427
    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_etol2:D

    cmpg-double v13, v7, v11

    if-gez v13, :cond_5

    mul-double v1, v1, v21

    .line 1429
    invoke-static {v4, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1002(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    if-ltz v14, :cond_3

    .line 1431
    invoke-static/range {v21 .. v22}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v1

    add-double v5, p13, v23

    div-double/2addr v1, v5

    goto :goto_5

    :cond_3
    sub-double v1, v23, p13

    :goto_5
    mul-double v1, v1, v17

    sub-double v1, v29, v1

    .line 1430
    invoke-static {v4, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1102(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1432
    invoke-static {v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1000(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v1

    invoke-static {v4}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v5

    invoke-static {v3, v1, v2, v5, v6}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 1433
    iget-wide v1, v3, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    invoke-static {v4, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1002(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    iget-wide v1, v3, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    invoke-static {v4, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$1102(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1435
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v4, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$702(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    :cond_4
    :goto_6
    move-object v13, v4

    move-wide/from16 v7, v19

    move-wide/from16 v11, v23

    goto/16 :goto_c

    .line 1436
    :cond_5
    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpl-double v17, v11, v13

    if-gtz v17, :cond_4

    cmpl-double v11, v9, v19

    if-gez v11, :cond_4

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    .line 1438
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    mul-double v9, v9, v11

    const-wide v29, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v29

    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v7, p15

    neg-double v7, v7

    move-wide/from16 v9, p17

    neg-double v9, v9

    .line 1444
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v33

    .line 1445
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    cmpl-double v9, v7, v19

    if-ltz v9, :cond_7

    .line 1449
    invoke-static/range {p1 .. p2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v7

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    mul-double v7, v7, v9

    add-double v9, v7, v23

    .line 1450
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    add-double v9, v9, v23

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    add-double/2addr v9, v7

    div-double/2addr v7, v9

    .line 1451
    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    mul-double v9, v9, v1

    invoke-virtual {v0, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A3f(D)D

    move-result-wide v7

    mul-double v9, v9, v7

    mul-double v9, v9, v29

    mul-double v1, v1, v9

    div-double v33, v33, v9

    div-double v1, v5, v1

    move-object/from16 v35, v4

    move-wide/from16 v36, v5

    move-wide/from16 v3, v33

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    goto/16 :goto_8

    :cond_7
    sub-double v7, v27, v31

    .line 1461
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    .line 1465
    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    add-double v7, v7, v29

    move-wide v12, v5

    move-wide v10, v9

    move-object v6, v4

    move-wide v4, v7

    neg-double v8, v1

    const/16 v22, 0x1005

    move-wide/from16 v17, v19

    move-wide/from16 v20, p9

    move-wide/from16 v14, p9

    move-wide/from16 v16, p11

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-wide/from16 v18, v1

    move-object/from16 v35, v6

    move-wide v2, v10

    move-wide/from16 v36, v12

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    move-wide/from16 v6, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v1, p22

    invoke-direct/range {v0 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Lengths(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;DDDDDDDDDDI[D[D)V

    .line 1468
    invoke-static/range {p22 .. p22}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$400(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v1

    invoke-static/range {p22 .. p22}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$2900(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v3

    mul-double v27, v27, v3

    mul-double v27, v27, v29

    div-double v1, v1, v27

    add-double v1, v1, v31

    const-wide v3, -0x407b851eb851eb85L    # -0.01

    cmpg-double v5, v1, v3

    if-gez v5, :cond_8

    div-double v5, v36, v1

    goto :goto_7

    .line 1471
    :cond_8
    iget-wide v3, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    neg-double v3, v3

    .line 1472
    invoke-static/range {p3 .. p4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    mul-double v5, v3, v29

    :goto_7
    div-double v9, v5, p3

    div-double v3, v33, v9

    move-wide/from16 v38, v3

    move-wide v3, v1

    move-wide/from16 v1, v38

    .line 1477
    :goto_8
    sget-wide v5, Lorg/locationtech/proj4j/geodesic/Geodesic;->tol1_:D

    neg-double v7, v5

    cmpl-double v11, v1, v7

    if-lez v11, :cond_b

    sget-wide v7, Lorg/locationtech/proj4j/geodesic/Geodesic;->xthresh_:D

    sub-double v7, v31, v7

    cmpl-double v11, v3, v7

    if-lez v11, :cond_b

    .line 1479
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v1, v7

    if-ltz v9, :cond_9

    neg-double v1, v3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 1480
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    move-object/from16 v13, v35

    invoke-static {v13, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1481
    invoke-static {v13}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v1

    sub-double v1, v11, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    neg-double v1, v1

    invoke-static {v13, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    goto :goto_c

    :cond_9
    move-object/from16 v13, v35

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    neg-double v1, v5

    cmpl-double v5, v3, v1

    if-lez v5, :cond_a

    move-wide v5, v7

    goto :goto_9

    :cond_a
    move-wide/from16 v5, v31

    .line 1483
    :goto_9
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v13, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1484
    invoke-static {v13}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$900(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v1

    sub-double v1, v11, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v13, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    goto :goto_c

    :cond_b
    move-object/from16 v13, v35

    const-wide/16 v7, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 1521
    invoke-static {v3, v4, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Astroid(DD)D

    move-result-wide v5

    .line 1523
    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    cmpl-double v16, v14, v7

    if-ltz v16, :cond_c

    neg-double v1, v3

    mul-double v1, v1, v5

    add-double/2addr v5, v11

    :goto_a
    div-double/2addr v1, v5

    goto :goto_b

    :cond_c
    neg-double v1, v1

    add-double v3, v5, v11

    mul-double v1, v1, v3

    goto :goto_a

    :goto_b
    mul-double v9, v9, v1

    .line 1524
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    neg-double v3, v3

    mul-double v5, p9, v1

    .line 1526
    invoke-static {v13, v5, v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1527
    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v1

    mul-double v25, v25, v1

    sub-double v1, v11, v3

    div-double v25, v25, v1

    sub-double v5, v36, v25

    invoke-static {v13, v5, v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    .line 1531
    :goto_c
    invoke-static {v13}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v1

    cmpg-double v3, v1, v7

    if-lez v3, :cond_d

    .line 1532
    invoke-static {v13}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v1

    invoke-static {v13}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$900(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D

    move-result-wide v3

    move-object/from16 v5, p21

    invoke-static {v5, v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 1533
    iget-wide v1, v5, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    invoke-static {v13, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    iget-wide v1, v5, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    invoke-static {v13, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    return-object v13

    .line 1535
    :cond_d
    invoke-static {v13, v11, v12}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    invoke-static {v13, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D

    return-object v13
.end method

.method private Lambda12(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;DDDDDDDDDDZ[D[D[DLorg/locationtech/proj4j/geodesic/Pair;Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p8

    move-object/from16 v6, p26

    const-wide/16 v7, 0x0

    cmpl-double v9, v2, v7

    if-nez v9, :cond_0

    cmpl-double v9, p16, v7

    if-nez v9, :cond_0

    .line 1564
    sget-wide v9, Lorg/locationtech/proj4j/geodesic/Geodesic;->tiny_:D

    neg-double v9, v9

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p16

    :goto_0
    mul-double v11, p14, p4

    mul-double v13, p14, v2

    .line 1569
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    .line 1574
    invoke-static/range {p1 .. p3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1802(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    mul-double v15, v11, v2

    mul-double v7, v9, p4

    .line 1575
    invoke-static {v1, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1902(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    move-wide/from16 p16, v7

    .line 1576
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v7

    move-wide/from16 v19, v9

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v9

    invoke-static {v6, v7, v8, v9, v10}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 1577
    iget-wide v7, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    invoke-static {v1, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1802(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    iget-wide v7, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    invoke-static {v1, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1902(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    cmpl-double v7, p10, p4

    if-eqz v7, :cond_1

    div-double v8, v11, p10

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p14

    .line 1584
    :goto_1
    invoke-static {v1, v8, v9}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1502(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    if-nez v7, :cond_3

    .line 1589
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    neg-double v9, v2

    cmpl-double v21, v7, v9

    if-eqz v21, :cond_2

    goto :goto_2

    .line 1594
    :cond_2
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    goto :goto_5

    .line 1590
    :cond_3
    :goto_2
    invoke-static/range {p16 .. p17}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v7

    neg-double v9, v2

    cmpg-double v19, p4, v9

    if-gez v19, :cond_4

    sub-double v9, p10, p4

    add-double v19, p4, p10

    :goto_3
    mul-double v9, v9, v19

    goto :goto_4

    :cond_4
    sub-double v9, v2, v4

    add-double v19, v2, v4

    goto :goto_3

    :goto_4
    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double v7, v7, p10

    .line 1589
    :goto_5
    invoke-static {v1, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1602(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    .line 1597
    invoke-static {v1, v4, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2002(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    mul-double v4, v4, v11

    .line 1598
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1600(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v7

    mul-double v7, v7, p10

    invoke-static {v1, v7, v8}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2102(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    .line 1599
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v9

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v2

    invoke-static {v6, v9, v10, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 1600
    iget-wide v2, v6, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    invoke-static {v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2002(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    iget-wide v2, v6, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    invoke-static {v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2102(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    .line 1604
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v2

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v9

    mul-double v2, v2, v9

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v9

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v19

    mul-double v9, v9, v19

    sub-double/2addr v2, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1605
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v9

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v19

    mul-double v9, v9, v19

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v19

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v9, v9, v19

    .line 1604
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1702(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    mul-double v2, p16, v4

    mul-double v9, v15, v7

    sub-double/2addr v2, v9

    const-wide/16 v9, 0x0

    .line 1608
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    mul-double v7, v7, p16

    mul-double v15, v15, v4

    add-double/2addr v7, v15

    mul-double v4, v2, p20

    mul-double v9, v7, p18

    sub-double/2addr v4, v9

    mul-double v7, v7, p20

    mul-double v2, v2, p18

    add-double/2addr v7, v2

    .line 1611
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 1614
    invoke-static {v13, v14}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v4, v6

    .line 1615
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v8, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v6

    add-double/2addr v8, v4

    div-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2202(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    .line 1616
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2200(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v4

    move-object/from16 v6, p25

    invoke-virtual {v0, v4, v5, v6}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C3f(D[D)V

    .line 1617
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v4

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v7

    const/4 v9, 0x1

    move-wide/from16 p15, v4

    move-object/from16 p19, v6

    move-wide/from16 p17, v7

    const/16 p14, 0x1

    invoke-static/range {p14 .. p19}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v4

    .line 1618
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v6

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 p19, p25

    move-wide/from16 p15, v6

    move-wide/from16 p17, v8

    const/16 p14, 0x1

    invoke-static/range {p14 .. p19}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 1619
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    neg-double v6, v6

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2200(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A3f(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    mul-double v6, v6, v11

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1700(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v8

    add-double/2addr v8, v4

    mul-double v6, v6, v8

    invoke-static {v1, v6, v7}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2302(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    .line 1620
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2300(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1402(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    if-eqz p22, :cond_6

    .line 1623
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1600(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v2

    const-wide/16 v17, 0x0

    cmpl-double v4, v2, v17

    if-nez v4, :cond_5

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 1624
    iget-wide v4, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    mul-double v4, v4, v2

    mul-double v4, v4, p6

    div-double v4, v4, p2

    invoke-static {v1, v4, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2402(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    return-void

    .line 1626
    :cond_5
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2200(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v2

    .line 1627
    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1700(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v4

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v6

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v8

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v12

    invoke-static {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v14

    const/16 v22, 0x1005

    move-wide/from16 v18, p4

    move-wide/from16 v10, p6

    move-wide/from16 v20, p10

    move-wide/from16 v16, p12

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v1, p27

    .line 1626
    invoke-direct/range {v0 .. v24}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Lengths(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;DDDDDDDDDDI[D[D)V

    .line 1629
    invoke-static/range {p27 .. p27}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$400(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D

    move-result-wide v1

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2402(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    .line 1630
    invoke-static {v3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2400(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v1

    iget-wide v4, v0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    invoke-static {v3}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$1600(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D

    move-result-wide v6

    mul-double v6, v6, p10

    div-double/2addr v4, v6

    mul-double v1, v1, v4

    invoke-static {v3, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->access$2402(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D

    :cond_6
    return-void
.end method

.method private Lengths(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;DDDDDDDDDDI[D[D)V
    .locals 21

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p22

    move-object/from16 v9, p23

    move-object/from16 v10, p24

    and-int/lit16 v4, v3, 0x3400

    const-wide/16 v11, 0x0

    if-eqz v4, :cond_1

    .line 1275
    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A1m1f(D)D

    move-result-wide v4

    .line 1276
    invoke-static {v1, v2, v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C1f(D[D)V

    and-int/lit16 v6, v3, 0x3000

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_0

    .line 1279
    invoke-static {v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A2m1f(D)D

    move-result-wide v13

    .line 1280
    invoke-static {v1, v2, v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C2f(D[D)V

    sub-double v1, v4, v13

    add-double/2addr v13, v7

    goto :goto_0

    :cond_0
    move-wide v1, v11

    move-wide v13, v1

    :goto_0
    add-double/2addr v4, v7

    move-wide v15, v13

    move-wide v13, v4

    goto :goto_1

    :cond_1
    move-wide v1, v11

    move-wide v13, v1

    move-wide v15, v13

    :goto_1
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    .line 1287
    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v17

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p23

    .line 1288
    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v19

    sub-double v17, v17, v19

    add-double v4, p4, v17

    mul-double v4, v4, v13

    .line 1290
    invoke-static {v0, v4, v5}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$302(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D

    and-int/lit16 v4, v3, 0x3000

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-object v9, v10

    .line 1293
    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v10

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p24

    .line 1294
    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v19

    sub-double v10, v10, v19

    mul-double v4, v1, p4

    mul-double v13, v13, v17

    mul-double v15, v15, v10

    sub-double/2addr v13, v15

    add-double v11, v4, v13

    goto :goto_3

    :cond_2
    and-int/lit16 v4, v3, 0x3000

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x6

    if-gt v4, v5, :cond_3

    .line 1301
    aget-wide v5, p23, v4

    mul-double v5, v5, v13

    aget-wide v7, p24, v4

    mul-double v7, v7, v15

    sub-double/2addr v5, v7

    aput-wide v5, p24, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    mul-double v10, v1, p4

    const/4 v4, 0x1

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-object/from16 v9, p24

    .line 1302
    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v12

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 1303
    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    add-double v11, v10, v12

    :cond_4
    :goto_3
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_5

    .line 1306
    invoke-static {v0, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$2902(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D

    mul-double v1, p8, p12

    mul-double v1, v1, p16

    mul-double v4, p6, p14

    mul-double v4, v4, p10

    sub-double/2addr v1, v4

    mul-double v4, p8, p14

    mul-double v4, v4, v11

    sub-double/2addr v1, v4

    .line 1310
    invoke-static {v0, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$402(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D

    :cond_5
    and-int/lit16 v1, v3, 0x2000

    if-eqz v1, :cond_6

    mul-double v1, p8, p14

    mul-double v3, p6, p12

    add-double/2addr v1, v3

    move-object/from16 v3, p0

    .line 1315
    iget-wide v4, v3, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    sub-double v6, p18, p20

    mul-double v4, v4, v6

    add-double v6, p18, p20

    mul-double v4, v4, v6

    add-double v6, p10, p16

    div-double/2addr v4, v6

    mul-double v6, v4, p12

    mul-double v8, p14, v11

    sub-double/2addr v6, v8

    mul-double v6, v6, p6

    div-double v6, v6, p10

    add-double/2addr v6, v1

    .line 1316
    invoke-static {v0, v6, v7}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$502(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D

    mul-double v4, v4, p6

    mul-double v6, p8, v11

    sub-double/2addr v4, v6

    mul-double v4, v4, p12

    div-double v4, v4, p16

    sub-double/2addr v1, v4

    .line 1317
    invoke-static {v0, v1, v2}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->access$602(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D

    return-void

    :cond_6
    move-object/from16 v3, p0

    return-void
.end method

.method protected static SinCosSeries(ZDD[D)D
    .locals 14

    move-object/from16 v0, p5

    .line 1236
    array-length v1, v0

    sub-int v2, v1, p0

    sub-double v3, p3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v5

    add-double v7, p3, p1

    mul-double v3, v3, v7

    and-int/lit8 v7, v2, 0x1

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 1240
    aget-wide v10, v0, v1

    goto :goto_0

    :cond_0
    move-wide v10, v8

    .line 1242
    :goto_0
    div-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-eqz v2, :cond_1

    mul-double v12, v3, v10

    sub-double/2addr v12, v8

    add-int/lit8 v2, v1, -0x1

    .line 1245
    aget-wide v8, v0, v2

    add-double/2addr v8, v12

    mul-double v12, v3, v8

    sub-double/2addr v12, v10

    add-int/lit8 v1, v1, -0x2

    .line 1246
    aget-wide v10, v0, v1

    add-double/2addr v10, v12

    move v2, v7

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    mul-double v0, p1, v5

    mul-double v0, v0, p3

    mul-double v0, v0, v10

    return-wide v0

    :cond_2
    sub-double/2addr v10, v8

    mul-double v0, p3, v10

    return-wide v0
.end method


# virtual methods
.method protected A3coeff()V
    .locals 12

    const/16 v0, 0x12

    .line 1774
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_0
    if-ltz v4, :cond_0

    rsub-int/lit8 v5, v4, 0x5

    .line 1790
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1791
    iget-object v6, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_A3x:[D

    add-int/lit8 v7, v1, 0x1

    iget-wide v8, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    invoke-static {v5, v0, v3, v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v8

    add-int v10, v3, v5

    add-int/lit8 v10, v10, 0x1

    aget-wide v10, v0, v10

    div-double/2addr v8, v10

    aput-wide v8, v6, v1

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    move v1, v7

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4060000000000000L    # 128.0
        -0x4000000000000000L    # -2.0
        -0x3ff8000000000000L    # -3.0
        0x4050000000000000L    # 64.0
        -0x4010000000000000L    # -1.0
        -0x3ff8000000000000L    # -3.0
        -0x4010000000000000L    # -1.0
        0x4030000000000000L    # 16.0
        0x4008000000000000L    # 3.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        0x4020000000000000L    # 8.0
        0x3ff0000000000000L    # 1.0
        -0x4010000000000000L    # -1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method protected A3f(D)D
    .locals 3

    .line 1637
    iget-object v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_A3x:[D

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v2, v0, v1, p1, p2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide p1

    return-wide p1
.end method

.method public ArcDirect(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 11

    const/4 v7, 0x1

    const/16 v10, 0x789

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    .line 369
    invoke-virtual/range {v0 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Direct(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public ArcDirect(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 11

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 394
    invoke-virtual/range {v0 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Direct(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public ArcDirectLine(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 10

    const/16 v9, 0x7f9f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 526
    invoke-virtual/range {v0 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->ArcDirectLine(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-result-object p1

    return-object p1
.end method

.method public ArcDirectLine(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 11

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 552
    invoke-virtual/range {v0 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->GenDirectLine(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-result-object p1

    return-object p1
.end method

.method protected C3coeff()V
    .locals 14

    const/4 v0, 0x5

    const/16 v1, 0x2d

    .line 1798
    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    const/4 v6, 0x5

    :goto_1
    if-lt v6, v5, :cond_0

    rsub-int/lit8 v7, v6, 0x5

    .line 1833
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1834
    iget-object v8, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_C3x:[D

    add-int/lit8 v9, v4, 0x1

    iget-wide v10, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    invoke-static {v7, v1, v2, v10, v11}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v10

    add-int v12, v2, v7

    add-int/2addr v12, v3

    aget-wide v12, v1, v12

    div-double/2addr v10, v12

    aput-wide v10, v8, v4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, -0x1

    move v4, v9

    goto :goto_1

    :cond_0
    add-int/2addr v5, v3

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 8
        0x4008000000000000L    # 3.0
        0x4060000000000000L    # 128.0
        0x4000000000000000L    # 2.0
        0x4014000000000000L    # 5.0
        0x4060000000000000L    # 128.0
        -0x4010000000000000L    # -1.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4050000000000000L    # 64.0
        -0x4010000000000000L    # -1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x4020000000000000L    # 8.0
        -0x4010000000000000L    # -1.0
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4014000000000000L    # 5.0
        0x4070000000000000L    # 256.0
        0x3ff0000000000000L    # 1.0
        0x4008000000000000L    # 3.0
        0x4060000000000000L    # 128.0
        -0x3ff8000000000000L    # -3.0
        -0x4000000000000000L    # -2.0
        0x4008000000000000L    # 3.0
        0x4050000000000000L    # 64.0
        0x3ff0000000000000L    # 1.0
        -0x3ff8000000000000L    # -3.0
        0x4000000000000000L    # 2.0
        0x4040000000000000L    # 32.0
        0x401c000000000000L    # 7.0
        0x4080000000000000L    # 512.0
        -0x3fdc000000000000L    # -10.0
        0x4022000000000000L    # 9.0
        0x4078000000000000L    # 384.0
        0x4014000000000000L    # 5.0
        -0x3fde000000000000L    # -9.0
        0x4014000000000000L    # 5.0
        0x4068000000000000L    # 192.0
        0x401c000000000000L    # 7.0
        0x4080000000000000L    # 512.0
        -0x3fd4000000000000L    # -14.0
        0x401c000000000000L    # 7.0
        0x4080000000000000L    # 512.0
        0x4035000000000000L    # 21.0
        0x40a4000000000000L    # 2560.0
    .end array-data
.end method

.method protected C3f(D[D)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    rsub-int/lit8 v4, v3, 0x5

    mul-double v0, v0, p1

    .line 1648
    iget-object v5, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_C3x:[D

    invoke-static {v4, v5, v2, p1, p2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v4

    mul-double v4, v4, v0

    aput-wide v4, p3, v3

    rsub-int/lit8 v4, v3, 0x6

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected C4coeff()V
    .locals 13

    const/4 v0, 0x5

    const/16 v1, 0x4d

    .line 1841
    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_1

    const/4 v5, 0x5

    :goto_1
    if-lt v5, v2, :cond_0

    rsub-int/lit8 v6, v5, 0x5

    .line 1889
    iget-object v7, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_C4x:[D

    add-int/lit8 v8, v4, 0x1

    iget-wide v9, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_n:D

    invoke-static {v6, v1, v3, v9, v10}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v9

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    aget-wide v11, v1, v6

    div-double/2addr v9, v11

    aput-wide v9, v7, v4

    rsub-int/lit8 v4, v5, 0x7

    add-int/2addr v3, v4

    add-int/lit8 v5, v5, -0x1

    move v4, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 8
        0x4058400000000000L    # 97.0
        0x40cd538000000000L    # 15015.0
        0x4091000000000000L    # 1088.0
        0x4063800000000000L    # 156.0
        0x40e5fea000000000L    # 45045.0
        -0x3f94000000000000L    # -224.0
        -0x3f4d500000000000L    # -4784.0
        0x4098940000000000L    # 1573.0
        0x40e5fea000000000L    # 45045.0
        -0x3f3b300000000000L    # -10656.0
        0x40cba00000000000L    # 14144.0
        -0x3f4e200000000000L    # -4576.0
        -0x3f75300000000000L    # -858.0
        0x40e5fea000000000L    # 45045.0
        0x4050000000000000L    # 64.0
        0x4083800000000000L    # 624.0
        -0x3f4e200000000000L    # -4576.0
        0x40bad00000000000L    # 6864.0
        -0x3f588a0000000000L    # -3003.0
        0x40cd538000000000L    # 15015.0
        0x4059000000000000L    # 100.0
        0x406a000000000000L    # 208.0
        0x4081e00000000000L    # 572.0
        0x40aad00000000000L    # 3432.0
        -0x3f388a0000000000L    # -12012.0
        0x40dd538000000000L    # 30030.0
        0x40e5fea000000000L    # 45045.0
        0x3ff0000000000000L    # 1.0
        0x40c1988000000000L    # 9009.0
        -0x3f59000000000000L    # -2944.0
        0x407d400000000000L    # 468.0
        0x41007ef800000000L    # 135135.0
        0x40b6a00000000000L    # 5792.0
        0x4090400000000000L    # 1040.0
        -0x3f6be40000000000L    # -1287.0
        0x41007ef800000000L    # 135135.0
        0x40b7400000000000L    # 5952.0
        -0x3f39400000000000L    # -11648.0
        0x40c1e00000000000L    # 9152.0
        -0x3f5be40000000000L    # -2574.0
        0x41007ef800000000L    # 135135.0
        -0x3fb0000000000000L    # -64.0
        -0x3f7c800000000000L    # -624.0
        0x40b1e00000000000L    # 4576.0
        -0x3f45300000000000L    # -6864.0
        0x40a7760000000000L    # 3003.0
        0x41007ef800000000L    # 135135.0
        0x4020000000000000L    # 8.0
        0x40c4f28000000000L    # 10725.0
        0x409d000000000000L    # 1856.0
        -0x3f72c00000000000L    # -936.0
        0x410b7e4800000000L    # 225225.0
        -0x3f3f800000000000L    # -8448.0
        0x40b3800000000000L    # 4992.0
        -0x3f6e200000000000L    # -1144.0
        0x410b7e4800000000L    # 225225.0
        -0x3f69800000000000L    # -1440.0
        0x40b0400000000000L    # 4160.0
        -0x3f4e200000000000L    # -4576.0
        0x409ad00000000000L    # 1716.0
        0x410b7e4800000000L    # 225225.0
        -0x3f9f000000000000L    # -136.0
        0x40eecae000000000L    # 63063.0
        0x4090000000000000L    # 1024.0
        -0x3f96000000000000L    # -208.0
        0x40f9a91000000000L    # 105105.0
        0x40ac000000000000L    # 3584.0
        -0x3f56000000000000L    # -3328.0
        0x4091e00000000000L    # 1144.0
        0x41133ecc00000000L    # 315315.0
        -0x3fa0000000000000L    # -128.0
        0x41007ef800000000L    # 135135.0
        -0x3f5c000000000000L    # -2560.0
        0x408a000000000000L    # 832.0
        0x4118be7400000000L    # 405405.0
        0x4060000000000000L    # 128.0
        0x40f831b000000000L    # 99099.0
    .end array-data
.end method

.method protected C4f(D[D)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    rsub-int/lit8 v4, v2, 0x5

    .line 1660
    iget-object v5, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_C4x:[D

    invoke-static {v4, v5, v3, p1, p2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->polyval(I[DID)D

    move-result-wide v4

    mul-double v4, v4, v0

    aput-wide v4, p3, v2

    rsub-int/lit8 v4, v2, 0x6

    add-int/2addr v3, v4

    mul-double v0, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Direct(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 11

    const/4 v7, 0x0

    const/16 v10, 0x789

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    .line 316
    invoke-virtual/range {v0 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Direct(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public Direct(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 11

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 340
    invoke-virtual/range {v0 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Direct(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public Direct(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 11

    move/from16 v0, p7

    if-nez v0, :cond_0

    move/from16 v1, p10

    or-int/lit16 v1, v1, 0x803

    :goto_0
    move v10, v1

    goto :goto_1

    :cond_0
    move/from16 v1, p10

    goto :goto_0

    .line 457
    :goto_1
    new-instance v2, Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDI)V

    move-wide/from16 p1, p8

    .line 459
    invoke-virtual {v2, v0, p1, p2, v10}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public DirectLine(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 10

    const/16 v9, 0x7f9f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 480
    invoke-virtual/range {v0 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->DirectLine(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-result-object p1

    return-object p1
.end method

.method public DirectLine(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 11

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 505
    invoke-virtual/range {v0 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->GenDirectLine(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-result-object p1

    return-object p1
.end method

.method public EllipsoidArea()D
    .locals 4

    const-wide v0, 0x402921fb54442d18L    # 12.566370614359172

    .line 1199
    iget-wide v2, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_c2:D

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public EquatorialRadius()D
    .locals 2

    .line 1186
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    return-wide v0
.end method

.method public Flattening()D
    .locals 2

    .line 1192
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    return-wide v0
.end method

.method public GenDirectLine(DDDZDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 16

    .line 581
    invoke-static/range {p5 .. p6}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v6

    .line 584
    new-instance v0, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {v0}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>()V

    .line 585
    invoke-static {v6, v7}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngRound(D)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V

    .line 586
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    if-nez p7, :cond_0

    move/from16 v0, p10

    or-int/lit16 v0, v0, 0x803

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    move/from16 v0, p10

    goto :goto_0

    .line 589
    :goto_1
    new-instance v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v13, p7

    move-wide/from16 v14, p8

    invoke-direct/range {v0 .. v15}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDDDIZD)V

    return-object v0
.end method

.method public Inverse(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 10

    const/16 v9, 0x789

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 619
    invoke-virtual/range {v0 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Inverse(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public Inverse(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 12

    move/from16 v0, p9

    const v1, 0xff80

    and-int v11, v0, v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 1050
    invoke-direct/range {v2 .. v11}, Lorg/locationtech/proj4j/geodesic/Geodesic;->InverseInt(DDDDI)Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;

    move-result-object p1

    .line 1051
    invoke-static {p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p2

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2500(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D

    move-result-wide v0

    invoke-static {p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2600(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi1:D

    .line 1054
    invoke-static {p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2700(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D

    move-result-wide v0

    invoke-static {p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi2:D

    :cond_0
    return-object p2
.end method

.method public InverseLine(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 10

    const/16 v9, 0x7f9f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 1077
    invoke-virtual/range {v0 .. v9}, Lorg/locationtech/proj4j/geodesic/Geodesic;->InverseLine(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-result-object p1

    return-object p1
.end method

.method public InverseLine(DDDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 23

    move/from16 v0, p9

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 1102
    invoke-direct/range {v1 .. v10}, Lorg/locationtech/proj4j/geodesic/Geodesic;->InverseInt(DDDDI)Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;

    move-result-object v6

    .line 1103
    invoke-static {v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2500(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D

    move-result-wide v1

    invoke-static {v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$2600(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D

    move-result-wide v3

    .line 1104
    invoke-static {v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v13

    invoke-static {v6}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->access$100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object v5

    iget-wide v5, v5, Lorg/locationtech/proj4j/geodesic/GeodesicData;->a12:D

    and-int/lit16 v7, v0, 0x800

    if-eqz v7, :cond_0

    or-int/lit16 v0, v0, 0x401

    :cond_0
    move/from16 v19, v0

    .line 1108
    new-instance v7, Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    const/16 v20, 0x1

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v21, v5

    invoke-direct/range {v7 .. v22}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDDDIZD)V

    return-object v7
.end method

.method public Line(DDD)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 8

    const/16 v7, 0x7f9f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 1129
    invoke-virtual/range {v0 .. v7}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Line(DDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-result-object p1

    return-object p1
.end method

.method public Line(DDDI)Lorg/locationtech/proj4j/geodesic/GeodesicLine;
    .locals 9

    .line 1179
    new-instance v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDI)V

    return-object v0
.end method
