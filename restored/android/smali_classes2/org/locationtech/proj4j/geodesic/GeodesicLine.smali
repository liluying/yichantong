.class public Lorg/locationtech/proj4j/geodesic/GeodesicLine;
.super Ljava/lang/Object;
.source "GeodesicLine.java"


# static fields
.field private static final nC1_:I = 0x6

.field private static final nC1p_:I = 0x6

.field private static final nC2_:I = 0x6

.field private static final nC3_:I = 0x6

.field private static final nC4_:I = 0x6


# instance fields
.field private _A1m1:D

.field private _A2m1:D

.field private _A3c:D

.field private _A4:D

.field private _B11:D

.field private _B21:D

.field private _B31:D

.field private _B41:D

.field private _C1a:[D

.field private _C1pa:[D

.field private _C2a:[D

.field private _C3a:[D

.field private _C4a:[D

.field private _a:D

.field private _a13:D

.field private _azi1:D

.field private _b:D

.field private _c2:D

.field private _calp0:D

.field private _calp1:D

.field private _caps:I

.field private _comg1:D

.field private _csig1:D

.field private _ctau1:D

.field private _dn1:D

.field private _f:D

.field private _f1:D

.field private _k2:D

.field private _lat1:D

.field private _lon1:D

.field private _s13:D

.field private _salp0:D

.field private _salp1:D

.field private _somg1:D

.field private _ssig1:D

.field private _stau1:D


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDD)V
    .locals 9

    const/16 v8, 0x7f9f

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 129
    invoke-direct/range {v0 .. v8}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDI)V

    return-void
.end method

.method protected constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDDDIZD)V
    .locals 14

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v13, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {v13}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    .line 282
    invoke-direct/range {v0 .. v13}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->LineInit(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDDDILorg/locationtech/proj4j/geodesic/Pair;)V

    move/from16 p1, p13

    move-wide/from16 v1, p14

    .line 283
    invoke-virtual {p0, p1, v1, v2}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->GenSetDistance(ZD)V

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDI)V
    .locals 14

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-static/range {p6 .. p7}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v6

    .line 182
    new-instance v13, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {v13}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>()V

    .line 184
    invoke-static {v6, v7}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngRound(D)D

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V

    .line 185
    iget-wide v8, v13, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v10, v13, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v12, p8

    .line 186
    invoke-direct/range {v0 .. v13}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->LineInit(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDDDILorg/locationtech/proj4j/geodesic/Pair;)V

    return-void
.end method

.method private Init()Z
    .locals 1

    .line 642
    iget v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private LineInit(Lorg/locationtech/proj4j/geodesic/Geodesic;DDDDDILorg/locationtech/proj4j/geodesic/Pair;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p13

    .line 193
    iget-wide v3, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_a:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_a:D

    .line 194
    iget-wide v3, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f:D

    .line 195
    iget-wide v3, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_b:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_b:D

    .line 196
    iget-wide v3, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_c2:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_c2:D

    .line 197
    iget-wide v3, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_f1:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f1:D

    const v3, 0x8280

    or-int v3, p12, v3

    .line 199
    iput v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    .line 202
    invoke-static/range {p2 .. p3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->LatFix(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lat1:D

    move-wide/from16 v5, p4

    .line 203
    iput-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lon1:D

    move-wide/from16 v5, p6

    .line 204
    iput-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_azi1:D

    move-wide/from16 v5, p8

    iput-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp1:D

    move-wide/from16 v5, p10

    iput-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp1:D

    .line 206
    invoke-static {v3, v4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngRound(D)D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V

    .line 207
    iget-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f1:D

    iget-wide v5, v2, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    mul-double v3, v3, v5

    iget-wide v5, v2, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    .line 209
    invoke-static {v2, v3, v4, v5, v6}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 210
    iget-wide v3, v2, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    sget-wide v5, Lorg/locationtech/proj4j/geodesic/Geodesic;->tiny_:D

    iget-wide v7, v2, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 211
    iget-wide v7, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    invoke-static {v3, v4}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_dn1:D

    .line 214
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp1:D

    mul-double v11, v7, v5

    iput-wide v11, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    .line 217
    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp1:D

    mul-double v7, v7, v3

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    .line 227
    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    mul-double v7, v7, v3

    iput-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_somg1:D

    const-wide/16 v7, 0x0

    cmpl-double v11, v3, v7

    if-nez v11, :cond_1

    .line 228
    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp1:D

    cmpl-double v13, v11, v7

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v9

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp1:D

    mul-double v5, v5, v7

    :goto_1
    iput-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_comg1:D

    iput-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    .line 229
    invoke-static {v2, v3, v4, v5, v6}, Lorg/locationtech/proj4j/geodesic/GeoMath;->norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 230
    iget-wide v3, v2, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v2, v2, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    iput-wide v2, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    .line 233
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    invoke-static {v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    iget-wide v4, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_ep2:D

    mul-double v2, v2, v4

    iput-wide v2, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_k2:D

    add-double v4, v2, v9

    .line 234
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v9

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_k2:D

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 236
    iget v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x7

    if-eqz v4, :cond_2

    .line 237
    invoke-static {v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A1m1f(D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A1m1:D

    .line 238
    new-array v4, v5, [D

    iput-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C1a:[D

    .line 239
    invoke-static {v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C1f(D[D)V

    .line 240
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    iget-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C1a:[D

    const/4 v10, 0x1

    move-object/from16 p7, v4

    move-wide/from16 p3, v6

    move-wide/from16 p5, v8

    const/16 p2, 0x1

    invoke-static/range {p2 .. p7}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B11:D

    .line 241
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B11:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 243
    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    mul-double v12, v10, v8

    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v16, v14, v6

    add-double v12, v12, v16

    iput-wide v12, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_stau1:D

    mul-double v14, v14, v8

    mul-double v10, v10, v6

    sub-double/2addr v14, v10

    .line 244
    iput-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ctau1:D

    .line 249
    :cond_2
    iget v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 250
    new-array v4, v5, [D

    iput-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C1pa:[D

    .line 251
    invoke-static {v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C1pf(D[D)V

    .line 254
    :cond_3
    iget v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 255
    new-array v4, v5, [D

    iput-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C2a:[D

    .line 256
    invoke-static {v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A2m1f(D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A2m1:D

    .line 257
    iget-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C2a:[D

    invoke-static {v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C2f(D[D)V

    .line 258
    iget-wide v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    iget-object v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C2a:[D

    const/4 v9, 0x1

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    const/16 p2, 0x1

    invoke-static/range {p2 .. p7}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B21:D

    .line 261
    :cond_4
    iget v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x6

    if-eqz v4, :cond_5

    .line 262
    new-array v4, v5, [D

    iput-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C3a:[D

    .line 263
    invoke-virtual {v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C3f(D[D)V

    .line 264
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f:D

    neg-double v6, v6

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    mul-double v6, v6, v8

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/Geodesic;->A3f(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    iput-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A3c:D

    .line 265
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    iget-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C3a:[D

    const/4 v10, 0x1

    move-object/from16 p7, v4

    move-wide/from16 p3, v6

    move-wide/from16 p5, v8

    const/16 p2, 0x1

    invoke-static/range {p2 .. p7}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B31:D

    .line 268
    :cond_5
    iget v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 269
    new-array v4, v5, [D

    iput-object v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C4a:[D

    .line 270
    invoke-virtual {v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;->C4f(D[D)V

    .line 272
    iget-wide v2, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_a:D

    invoke-static {v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v2

    iget-wide v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    mul-double v2, v2, v4

    iget-wide v4, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    mul-double v2, v2, v4

    iget-wide v4, v1, Lorg/locationtech/proj4j/geodesic/Geodesic;->_e2:D

    mul-double v2, v2, v4

    iput-wide v2, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A4:D

    .line 273
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    iget-object v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C4a:[D

    const/4 v6, 0x0

    move-wide/from16 p2, v1

    move-wide/from16 p4, v3

    move-object/from16 p6, v5

    const/16 p1, 0x0

    invoke-static/range {p1 .. p6}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B41:D

    :cond_6
    return-void
.end method


# virtual methods
.method public Arc()D
    .locals 2

    const/4 v0, 0x1

    .line 746
    invoke-virtual {p0, v0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->GenDistance(Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public ArcPosition(D)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x789

    .line 358
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public ArcPosition(DI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 1

    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public Azimuth()D
    .locals 2

    .line 660
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_azi1:D

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public AzimuthCosines()Lorg/locationtech/proj4j/geodesic/Pair;
    .locals 6

    .line 667
    new-instance v0, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp1:D

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 668
    :goto_0
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp1:D

    :cond_1
    invoke-direct {v0, v4, v5, v2, v3}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>(DD)V

    return-object v0
.end method

.method public Capabilities()I
    .locals 1

    .line 716
    iget v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    return v0
.end method

.method public Capabilities(I)Z
    .locals 1

    and-int/lit16 p1, p1, 0x7f80

    .line 724
    iget v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public Distance()D
    .locals 2

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, v0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->GenDistance(Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public EquatorialArc()D
    .locals 4

    .line 694
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    .line 695
    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public EquatorialAzimuth()D
    .locals 4

    .line 676
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    .line 677
    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public EquatorialAzimuthCosines()Lorg/locationtech/proj4j/geodesic/Pair;
    .locals 6

    .line 685
    new-instance v0, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 686
    :goto_0
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    :cond_1
    invoke-direct {v0, v4, v5, v2, v3}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>(DD)V

    return-object v0
.end method

.method public EquatorialRadius()D
    .locals 2

    .line 703
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_a:D

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public Flattening()D
    .locals 2

    .line 710
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f:D

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public GenDistance(Z)D
    .locals 2

    .line 736
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_a13:D

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_s13:D

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public GenSetDistance(ZD)V
    .locals 0

    if-eqz p1, :cond_0

    .line 634
    invoke-virtual {p0, p2, p3}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->SetArc(D)V

    return-void

    .line 636
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->SetDistance(D)V

    return-void
.end method

.method public Latitude()D
    .locals 2

    .line 648
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lat1:D

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public Longitude()D
    .locals 2

    .line 654
    invoke-direct {p0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lon1:D

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public Position(D)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x789

    .line 314
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public Position(DI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    return-object p1
.end method

.method public Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 44

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 427
    iget v3, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    const v4, 0xff80

    and-int/2addr v3, v4

    and-int v3, p4, v3

    .line 428
    new-instance v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;

    invoke-direct {v4}, Lorg/locationtech/proj4j/geodesic/GeodesicData;-><init>()V

    .line 429
    invoke-direct {v0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Init()Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez p1, :cond_0

    iget v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_caps:I

    and-int/lit16 v5, v5, 0x800

    if-nez v5, :cond_0

    goto/16 :goto_12

    .line 435
    :cond_0
    iget-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lat1:D

    iput-wide v5, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat1:D

    iget-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_azi1:D

    iput-wide v5, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi1:D

    const v5, 0x8000

    and-int/2addr v5, v3

    .line 436
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lon1:D

    if-eqz v5, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {v6, v7}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v6

    :goto_0
    iput-wide v6, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon1:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_2

    .line 443
    iput-wide v1, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->a12:D

    .line 444
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 445
    new-instance v14, Lorg/locationtech/proj4j/geodesic/Pair;

    invoke-direct {v14}, Lorg/locationtech/proj4j/geodesic/Pair;-><init>()V

    .line 446
    invoke-static {v14, v1, v2}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V

    iget-wide v1, v14, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v14, v14, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    move-wide/from16 v16, v10

    const-wide/16 v6, 0x0

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v22, 0x0

    goto/16 :goto_2

    .line 449
    :cond_2
    iput-wide v1, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    .line 451
    iget-wide v12, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_b:D

    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A1m1:D

    add-double/2addr v14, v10

    mul-double v12, v12, v14

    div-double v12, v1, v12

    .line 452
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 453
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    .line 455
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_stau1:D

    mul-double v20, v6, v16

    const-wide/16 v22, 0x0

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ctau1:D

    mul-double v24, v8, v14

    add-double v27, v20, v24

    mul-double v8, v8, v16

    mul-double v6, v6, v14

    sub-double v29, v8, v6

    iget-object v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C1pa:[D

    const/16 v26, 0x1

    move-object/from16 v31, v6

    invoke-static/range {v26 .. v31}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v6

    neg-double v6, v6

    .line 459
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B11:D

    sub-double v8, v6, v8

    sub-double/2addr v12, v8

    .line 460
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-wide/from16 v16, v10

    .line 461
    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v20, v10, v18

    if-lez v20, :cond_3

    .line 485
    iget-wide v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    mul-double v10, v6, v14

    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v20, v1, v8

    add-double v25, v10, v20

    mul-double v1, v1, v14

    mul-double v6, v6, v8

    sub-double v27, v1, v6

    const/16 v24, 0x1

    .line 487
    iget-object v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C1a:[D

    move-object/from16 v29, v1

    invoke-static/range {v24 .. v29}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v6

    .line 488
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A1m1:D

    add-double v1, v1, v16

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B11:D

    sub-double v8, v6, v8

    add-double/2addr v8, v12

    mul-double v1, v1, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_b:D

    div-double v8, p2, v8

    sub-double/2addr v1, v8

    .line 489
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_k2:D

    invoke-static/range {v25 .. v26}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v1, v8

    sub-double/2addr v12, v1

    .line 490
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-wide v14, v8

    goto :goto_1

    :cond_3
    move-wide v1, v8

    .line 493
    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    iput-wide v8, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->a12:D

    .line 498
    :goto_2
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    mul-double v10, v8, v14

    move-wide/from16 p2, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v20, v1, p2

    add-double v25, v10, v20

    mul-double v1, v1, v14

    mul-double v8, v8, p2

    sub-double v27, v1, v8

    .line 500
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_k2:D

    invoke-static/range {v25 .. v26}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v8

    mul-double v1, v1, v8

    add-double v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    and-int/lit16 v8, v3, 0x3405

    if-eqz v8, :cond_6

    if-nez p1, :cond_5

    .line 503
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v18

    if-lez v10, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move-wide/from16 v10, v25

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v24, 0x1

    .line 504
    iget-object v6, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C1a:[D

    move-object/from16 v29, v6

    invoke-static/range {v24 .. v29}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v6

    goto :goto_3

    .line 505
    :goto_5
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A1m1:D

    add-double v8, v8, v16

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B11:D

    sub-double/2addr v6, v1

    mul-double v8, v8, v6

    goto :goto_6

    :cond_6
    move-wide/from16 v18, v1

    move-wide/from16 v10, v25

    move-wide/from16 v8, v22

    .line 508
    :goto_6
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    mul-double v6, v1, v10

    move-wide/from16 v20, v1

    .line 510
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    move-wide/from16 v30, v8

    mul-double v8, v20, v27

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    cmpl-double v8, v1, v22

    if-nez v8, :cond_7

    .line 513
    sget-wide v27, Lorg/locationtech/proj4j/geodesic/Geodesic;->tiny_:D

    move-wide/from16 v8, v27

    move-wide/from16 v20, v8

    goto :goto_7

    :cond_7
    move-wide/from16 v20, v1

    move-wide/from16 v8, v27

    .line 515
    :goto_7
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    move-wide/from16 v32, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    mul-double v12, v12, v8

    move/from16 p4, v5

    and-int/lit16 v5, v3, 0x401

    if-eqz v5, :cond_8

    if-eqz p1, :cond_8

    move-wide/from16 v34, v14

    .line 518
    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_b:D

    move-wide/from16 v24, v14

    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A1m1:D

    add-double v14, v14, v16

    mul-double v14, v14, v32

    add-double v14, v14, v30

    mul-double v14, v14, v24

    iput-wide v14, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    goto :goto_8

    :cond_8
    move-wide/from16 v34, v14

    :goto_8
    and-int/lit16 v5, v3, 0x108

    if-eqz v5, :cond_b

    mul-double v25, v1, v10

    move-wide/from16 v14, v16

    .line 523
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v27

    if-eqz p4, :cond_9

    .line 527
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    move-wide/from16 v36, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    move-wide/from16 v38, v14

    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    sub-double v14, v38, v10

    sub-double v10, v32, v14

    mul-double v14, v27, v25

    .line 528
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    move-wide/from16 v38, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_somg1:D

    mul-double v8, v8, v27

    move-wide/from16 v40, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_comg1:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    sub-double/2addr v14, v8

    add-double v10, v40, v14

    mul-double v27, v27, v10

    :goto_9
    move-wide/from16 v8, v27

    goto :goto_a

    :cond_9
    move-wide/from16 v38, v8

    move-wide/from16 v36, v10

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_comg1:D

    mul-double v10, v25, v8

    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_somg1:D

    mul-double v27, v38, v14

    sub-double v10, v10, v27

    mul-double v8, v8, v38

    mul-double v25, v25, v14

    add-double v8, v8, v25

    .line 529
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    goto :goto_9

    .line 531
    :goto_a
    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A3c:D

    const/16 v24, 0x1

    iget-object v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C3a:[D

    move-object/from16 v29, v5

    move-wide/from16 v25, v36

    move-wide/from16 v27, v38

    .line 532
    invoke-static/range {v24 .. v29}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v14

    move-wide/from16 v36, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B31:D

    sub-double/2addr v14, v8

    add-double v8, v32, v14

    mul-double v10, v10, v8

    add-double v8, v36, v10

    .line 534
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    if-eqz p4, :cond_a

    .line 535
    iget-wide v10, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_lon1:D

    add-double/2addr v10, v8

    goto :goto_b

    :cond_a
    iget-wide v10, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon1:D

    .line 536
    invoke-static {v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v8

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngNormalize(D)D

    move-result-wide v10

    :goto_b
    iput-wide v10, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon2:D

    goto :goto_c

    :cond_b
    move-wide/from16 v27, v8

    move-wide/from16 v25, v10

    :goto_c
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_c

    .line 540
    iget-wide v8, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_f1:D

    mul-double v8, v8, v20

    invoke-static {v6, v7, v8, v9}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v5

    iput-wide v5, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat2:D

    :cond_c
    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_d

    .line 543
    invoke-static {v1, v2, v12, v13}, Lorg/locationtech/proj4j/geodesic/GeoMath;->atan2d(DD)D

    move-result-wide v5

    iput-wide v5, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi2:D

    :cond_d
    and-int/lit16 v5, v3, 0x3005

    if-eqz v5, :cond_f

    const/16 v24, 0x1

    .line 548
    iget-object v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C2a:[D

    move-object/from16 v29, v5

    invoke-static/range {v24 .. v29}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v5

    .line 549
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A2m1:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v10, v7, v16

    iget-wide v14, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B21:D

    sub-double/2addr v5, v14

    mul-double v10, v10, v5

    .line 550
    iget-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A1m1:D

    sub-double/2addr v5, v7

    mul-double v5, v5, v32

    sub-double v8, v30, v10

    add-double/2addr v5, v8

    and-int/lit16 v7, v3, 0x1005

    if-eqz v7, :cond_e

    .line 554
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_b:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v14, v9, v25

    mul-double v14, v14, v18

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_dn1:D

    move-wide/from16 v29, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    mul-double v1, v1, v27

    mul-double v1, v1, v29

    sub-double/2addr v14, v1

    mul-double v9, v9, v27

    mul-double v9, v9, v5

    sub-double/2addr v14, v9

    mul-double v7, v7, v14

    iput-wide v7, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->m12:D

    goto :goto_d

    :cond_e
    move-wide/from16 v20, v1

    :goto_d
    and-int/lit16 v1, v3, 0x2005

    if-eqz v1, :cond_10

    .line 557
    iget-wide v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_k2:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    sub-double v9, v25, v7

    mul-double v1, v1, v9

    add-double v9, v25, v7

    mul-double v1, v1, v9

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_dn1:D

    add-double v14, v9, v18

    div-double/2addr v1, v14

    mul-double v14, v1, v25

    mul-double v29, v27, v5

    sub-double v14, v14, v29

    mul-double v14, v14, v7

    div-double/2addr v14, v9

    add-double v14, v34, v14

    .line 558
    iput-wide v14, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    mul-double v1, v1, v7

    .line 559
    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v7, v7, v5

    sub-double/2addr v1, v7

    mul-double v1, v1, v25

    div-double v1, v1, v18

    sub-double v14, v34, v1

    iput-wide v14, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    goto :goto_e

    :cond_f
    move-wide/from16 v20, v1

    :cond_10
    :goto_e
    and-int/lit16 v1, v3, 0x4010

    if-eqz v1, :cond_14

    const/16 v24, 0x0

    .line 565
    iget-object v1, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_C4a:[D

    move-object/from16 v29, v1

    invoke-static/range {v24 .. v29}, Lorg/locationtech/proj4j/geodesic/Geodesic;->SinCosSeries(ZDD[D)D

    move-result-wide v1

    .line 567
    iget-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    cmpl-double v3, v5, v22

    if-eqz v3, :cond_13

    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp0:D

    cmpl-double v3, v7, v22

    if-nez v3, :cond_11

    goto :goto_10

    :cond_11
    mul-double v5, v5, v7

    cmpg-double v3, v34, v22

    if-gtz v3, :cond_12

    .line 580
    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v11, v16, v34

    mul-double v9, v9, v11

    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    mul-double v11, v11, p2

    add-double/2addr v9, v11

    goto :goto_f

    :cond_12
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v9, v9, p2

    add-double v14, v34, v16

    div-double/2addr v9, v14

    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_ssig1:D

    add-double/2addr v9, v11

    mul-double v9, v9, p2

    :goto_f
    mul-double v5, v5, v9

    .line 583
    invoke-static {v7, v8}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v7

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp0:D

    invoke-static {v9, v10}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sq(D)D

    move-result-wide v9

    iget-wide v11, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_csig1:D

    mul-double v9, v9, v11

    mul-double v9, v9, v27

    add-double/2addr v7, v9

    goto :goto_11

    .line 569
    :cond_13
    :goto_10
    iget-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_calp1:D

    mul-double v7, v20, v5

    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_salp1:D

    mul-double v14, v12, v9

    sub-double/2addr v7, v14

    mul-double v12, v12, v5

    mul-double v5, v20, v9

    add-double/2addr v5, v12

    move-wide/from16 v42, v7

    move-wide v7, v5

    move-wide/from16 v5, v42

    .line 585
    :goto_11
    iget-wide v9, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_c2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double v9, v9, v5

    iget-wide v5, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_A4:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_B41:D

    sub-double/2addr v1, v7

    mul-double v5, v5, v1

    add-double/2addr v9, v5

    iput-wide v9, v4, Lorg/locationtech/proj4j/geodesic/GeodesicData;->S12:D

    :cond_14
    :goto_12
    return-object v4
.end method

.method SetArc(D)V
    .locals 2

    .line 616
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_a13:D

    const/4 v0, 0x1

    const/16 v1, 0x401

    .line 617
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    .line 618
    iget-wide p1, p1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_s13:D

    return-void
.end method

.method public SetDistance(D)V
    .locals 1

    .line 601
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_s13:D

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, v0, p1, p2, v0}, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->Position(ZDI)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object p1

    .line 603
    iget-wide p1, p1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->a12:D

    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/GeodesicLine;->_a13:D

    return-void
.end method
