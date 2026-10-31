.class public Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "ExtendedTransverseMercatorProjection.java"


# static fields
.field private static final HUGE_VAL:D = Infinity

.field private static final PROJ_ETMERC_ORDER:I = 0x6

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field Qn:D

.field Zb:D

.field cbg:[D

.field cgb:[D

.field gtu:[D

.field protected isSouth:Z

.field utg:[D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    const/4 v0, 0x6

    .line 16
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cgb:[D

    .line 17
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cbg:[D

    .line 18
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->utg:[D

    .line 19
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->isSouth:Z

    .line 29
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v0, 0x0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    .line 34
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->initialize()V

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/datum/Ellipsoid;DDDDD)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    const/4 v0, 0x6

    .line 16
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cgb:[D

    .line 17
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cbg:[D

    .line 18
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->utg:[D

    .line 19
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->isSouth:Z

    .line 38
    invoke-virtual {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 39
    iput-wide p2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 40
    iput-wide p4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 41
    iput-wide p6, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 42
    iput-wide p8, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 43
    iput-wide p10, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 44
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->initialize()V

    return-void
.end method

.method static asinhy(D)D
    .locals 6

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 69
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v4, v2

    div-double v4, v0, v4

    add-double/2addr v4, v2

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->log1py(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    neg-double p0, v0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method static clenS([DIDD[D[D)D
    .locals 23

    .line 91
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 92
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 93
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    .line 94
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v2

    mul-double v8, v8, v6

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    mul-double v10, v10, v0

    mul-double v10, v10, v4

    add-int/lit8 v12, p1, -0x1

    .line 99
    aget-wide v13, p0, v12

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v0

    move-wide/from16 p2, v2

    move-wide v0, v15

    move-wide v2, v0

    :goto_0
    if-lez v12, :cond_0

    neg-double v0, v0

    mul-double v19, v8, v13

    add-double v0, v0, v19

    mul-double v19, v10, v15

    sub-double v0, v0, v19

    add-int/lit8 v12, v12, -0x1

    .line 104
    aget-wide v19, p0, v12

    add-double v0, v0, v19

    neg-double v2, v2

    mul-double v19, v10, v13

    add-double v2, v2, v19

    mul-double v19, v8, v15

    add-double v2, v2, v19

    move-wide/from16 v21, v13

    move-wide v13, v0

    move-wide/from16 v0, v21

    move-wide/from16 v21, v15

    move-wide v15, v2

    move-wide/from16 v2, v21

    goto :goto_0

    :cond_0
    mul-double v0, v17, v6

    mul-double v2, p2, v4

    mul-double v4, v0, v13

    mul-double v6, v2, v15

    sub-double/2addr v4, v6

    const/4 v6, 0x0

    .line 110
    aput-wide v4, p6, v6

    mul-double v0, v0, v15

    mul-double v2, v2, v13

    add-double/2addr v0, v2

    .line 111
    aput-wide v0, p7, v6

    .line 112
    aget-wide v0, p6, v6

    return-wide v0
.end method

.method static clens([DID)D
    .locals 10

    .line 120
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    add-int/lit8 p1, p1, -0x1

    .line 124
    aget-wide v2, p0, p1

    const-wide/16 v4, 0x0

    :goto_0
    if-lez p1, :cond_0

    neg-double v4, v4

    mul-double v6, v0, v2

    add-double/2addr v4, v6

    add-int/lit8 p1, p1, -0x1

    .line 127
    aget-wide v6, p0, p1

    add-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v8

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v2

    return-wide p0
.end method

.method static gatg([DID)D
    .locals 10

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p2, v0

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    add-int/lit8 p1, p1, -0x1

    .line 79
    aget-wide v0, p0, p1

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    if-lez p1, :cond_0

    neg-double v6, v8

    mul-double v8, v4, v0

    add-double/2addr v6, v8

    add-int/lit8 p1, p1, -0x1

    .line 80
    aget-wide v8, p0, p1

    add-double/2addr v6, v8

    move-wide v8, v0

    move-wide v0, v6

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v6, v6, p0

    add-double/2addr p2, v6

    return-wide p2
.end method

.method static log1py(D)D
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p0, v0

    sub-double v0, v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    return-wide p0

    .line 64
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double p0, p0, v2

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 296
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;

    .line 297
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cgb:[D

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cgb:[D

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cbg:[D

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cbg:[D

    .line 303
    :cond_1
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->utg:[D

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->utg:[D

    .line 306
    :cond_2
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    :cond_3
    return-object v0
.end method

.method public getSouthernHemisphere()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->isSouth:Z

    return v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 21

    move-object/from16 v0, p0

    .line 202
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 206
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    return-void

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    .line 212
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double/2addr v3, v1

    div-double/2addr v1, v3

    .line 222
    iget-object v3, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cgb:[D

    const-wide v4, -0x3fef166054f43e33L    # -4.228148148148148

    mul-double v4, v4, v1

    const-wide v6, 0x3fe27d27d27d27d2L    # 0.5777777777777777

    add-double/2addr v4, v6

    mul-double v4, v4, v1

    const-wide v6, 0x40049f49f49f49f5L    # 2.577777777777778

    add-double/2addr v4, v6

    mul-double v4, v4, v1

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    add-double/2addr v4, v6

    mul-double v4, v4, v1

    const-wide v6, -0x401aaaaaaaaaaaabL    # -0.6666666666666666

    add-double/2addr v4, v6

    mul-double v4, v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v6

    mul-double v4, v4, v1

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 224
    iget-object v4, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cbg:[D

    const-wide v5, 0x3fef701923b45d68L    # 0.9824338624338624

    mul-double v5, v5, v1

    const-wide v7, 0x3fe6c16c16c16c17L    # 0.7111111111111111

    add-double/2addr v5, v7

    mul-double v5, v5, v1

    const-wide v7, -0x4002d82d82d82d83L    # -1.8222222222222222

    add-double/2addr v5, v7

    mul-double v5, v5, v1

    const-wide v7, 0x3ff5555555555555L    # 1.3333333333333333

    add-double/2addr v5, v7

    mul-double v5, v5, v1

    const-wide v7, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v5, v7

    mul-double v5, v5, v1

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    add-double/2addr v5, v7

    mul-double v5, v5, v1

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    mul-double v5, v1, v1

    const-wide v7, 0x4003aa6550ffbaa6L    # 2.458201058201058

    mul-double v7, v7, v1

    const-wide v9, 0x40212b12b12b12b1L    # 8.584126984126984

    add-double/2addr v7, v9

    mul-double v7, v7, v1

    const-wide v9, -0x3febd27d27d27d28L    # -5.044444444444444

    add-double/2addr v7, v9

    mul-double v7, v7, v1

    const-wide v9, -0x4006666666666666L    # -1.6

    add-double/2addr v7, v9

    mul-double v7, v7, v1

    const-wide v9, 0x4002aaaaaaaaaaabL    # 2.3333333333333335

    add-double/2addr v7, v9

    mul-double v7, v7, v5

    const/4 v9, 0x1

    .line 227
    aput-wide v7, v3, v9

    const-wide v7, -0x40063b0e5b9063b1L    # -1.6105820105820106

    mul-double v7, v7, v1

    const-wide v9, 0x4006f56f56f56f57L    # 2.86984126984127

    add-double/2addr v7, v9

    mul-double v7, v7, v1

    const-wide v9, -0x4008e38e38e38e39L    # -1.4444444444444444

    add-double/2addr v7, v9

    mul-double v7, v7, v1

    const-wide v9, -0x400eeeeeeeeeeeefL    # -1.0666666666666667

    add-double/2addr v7, v9

    mul-double v7, v7, v1

    const-wide v9, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    add-double/2addr v7, v9

    mul-double v7, v7, v5

    const/4 v9, 0x1

    .line 229
    aput-wide v7, v4, v9

    mul-double v7, v5, v1

    const-wide v9, 0x403a0964247b2b41L    # 26.03668430335097

    mul-double v9, v9, v1

    const-wide v11, -0x3fd7f63f63f63f64L    # -12.019047619047619

    add-double/2addr v9, v11

    mul-double v9, v9, v1

    const-wide v11, -0x3ff0ea0ea0ea0ea1L    # -3.8857142857142857

    add-double/2addr v9, v11

    mul-double v9, v9, v1

    const-wide v11, 0x400ddddddddddddeL    # 3.7333333333333334

    add-double/2addr v9, v11

    mul-double v9, v9, v7

    const/4 v11, 0x2

    .line 233
    aput-wide v9, v3, v11

    const-wide v9, -0x3fee19d36452b6f3L    # -4.474779541446208

    mul-double v9, v9, v1

    const-wide v11, 0x3ff999999999999aL    # 1.6

    add-double/2addr v9, v11

    mul-double v9, v9, v1

    const-wide v11, 0x3ff9e79e79e79e7aL    # 1.619047619047619

    add-double/2addr v9, v11

    mul-double v9, v9, v1

    const-wide v11, -0x4004444444444444L    # -1.7333333333333334

    add-double/2addr v9, v11

    mul-double v9, v9, v7

    const/4 v11, 0x2

    .line 235
    aput-wide v9, v4, v11

    mul-double v9, v7, v1

    const-wide v11, -0x3fc3cfbe67fd4140L    # -28.188500881834216

    mul-double v11, v11, v1

    const-wide v13, -0x3fdd075075075075L    # -9.485714285714286

    add-double/2addr v11, v13

    mul-double v11, v11, v1

    const-wide v13, 0x401b2b12b12b12b1L    # 6.792063492063492

    add-double/2addr v11, v13

    mul-double v11, v11, v9

    const/4 v13, 0x3

    .line 239
    aput-wide v11, v3, v13

    const-wide v11, -0x4003f88f2ded2e78L    # -1.7518165784832451

    mul-double v11, v11, v1

    const-wide v13, -0x3ffccccccccccccdL    # -2.4

    add-double/2addr v11, v13

    mul-double v11, v11, v1

    const-wide v13, 0x3fff6a76a76a76a7L    # 1.9634920634920634

    add-double/2addr v11, v13

    mul-double v11, v11, v9

    const/4 v13, 0x3

    .line 240
    aput-wide v11, v4, v13

    mul-double v11, v9, v1

    const-wide v13, -0x3fc8c711efd3ffd6L    # -23.22238255571589

    mul-double v13, v13, v1

    const-wide v15, 0x402a806806806807L    # 13.250793650793652

    add-double/2addr v13, v15

    mul-double v13, v13, v11

    const/4 v15, 0x4

    .line 242
    aput-wide v13, v3, v15

    const-wide v13, 0x400c1d95e3b626b3L    # 3.5144460477793813

    mul-double v13, v13, v1

    const-wide v15, -0x3ffd5bd5bd5bd5bdL    # -2.3301587301587303

    add-double/2addr v13, v15

    mul-double v13, v13, v11

    const/4 v15, 0x4

    .line 243
    aput-wide v13, v4, v15

    mul-double v13, v11, v1

    const-wide v15, 0x403b02e279a969f9L    # 27.011268237934903

    mul-double v15, v15, v13

    const/16 v17, 0x5

    .line 245
    aput-wide v15, v3, v17

    const-wide v15, 0x4006cc27333184cfL    # 2.8496841430174764

    mul-double v15, v15, v13

    const/4 v3, 0x5

    .line 246
    aput-wide v15, v4, v3

    move-wide v15, v1

    .line 252
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v17, v15, v17

    div-double v1, v1, v17

    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    div-double v17, v5, v17

    const-wide/high16 v19, 0x3f90000000000000L    # 0.015625

    add-double v17, v17, v19

    mul-double v17, v17, v5

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    add-double v17, v17, v19

    mul-double v17, v17, v5

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v19

    mul-double v1, v1, v17

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Qn:D

    .line 256
    iget-object v1, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->utg:[D

    const-wide v2, -0x403ba3f2c7b503d9L    # -0.15905919312169312

    mul-double v2, v2, v15

    const-wide v17, 0x3fc4400000000000L    # 0.158203125

    add-double v2, v2, v17

    mul-double v2, v2, v15

    const-wide v17, 0x3f66c16c16c16c17L    # 0.002777777777777778

    add-double v2, v2, v17

    mul-double v2, v2, v15

    const-wide v17, -0x4027555555555555L    # -0.3854166666666667

    add-double v2, v2, v17

    mul-double v2, v2, v15

    const-wide v17, 0x3fe5555555555555L    # 0.6666666666666666

    add-double v2, v2, v17

    mul-double v2, v2, v15

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    add-double v2, v2, v17

    mul-double v2, v2, v15

    const/16 v17, 0x0

    aput-wide v2, v1, v17

    .line 258
    iget-object v2, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    const-wide v17, 0x3fcab88966744522L    # 0.20875661375661375

    mul-double v17, v17, v15

    const-wide v19, -0x4023c71c71c71c72L    # -0.4409722222222222

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, 0x3fcd27d27d27d27dL    # 0.22777777777777777

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide/high16 v19, 0x3fd4000000000000L    # 0.3125

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, -0x401aaaaaaaaaaaabL    # -0.6666666666666666

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const/4 v3, 0x0

    aput-wide v17, v2, v3

    const-wide v17, 0x3fd27f48df389e35L    # 0.2890188388723545

    mul-double v17, v17, v15

    const-wide v19, -0x4023f63f63f63f64L    # -0.4380952380952381

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, 0x3fd36c16c16c16c1L    # 0.3034722222222222

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, -0x404eeeeeeeeeeeefL    # -0.06666666666666667

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, -0x406aaaaaaaaaaaabL    # -0.020833333333333332

    add-double v17, v17, v19

    mul-double v17, v17, v5

    const/4 v3, 0x1

    .line 260
    aput-wide v17, v1, v3

    const-wide v17, -0x400f9a421976ecc4L    # -1.0248393063822752

    mul-double v17, v17, v15

    const-wide v19, 0x3fdc8bc8bc8bc8bdL    # 0.44603174603174606

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, 0x3fd8c16c16c16c17L    # 0.38680555555555557

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, -0x401ccccccccccccdL    # -0.6

    add-double v17, v17, v19

    mul-double v17, v17, v15

    const-wide v19, 0x3fd1555555555555L    # 0.2708333333333333

    add-double v17, v17, v19

    mul-double v5, v5, v17

    .line 262
    aput-wide v5, v2, v3

    const-wide v5, -0x405091ecad03b3c9L    # -0.06138668430335097

    mul-double v5, v5, v15

    const-wide v17, 0x3fa7e2be2be2be2cL    # 0.046651785714285715

    add-double v5, v5, v17

    mul-double v5, v5, v15

    const-wide v17, 0x3fa68d68d68d68d7L    # 0.04404761904761905

    add-double v5, v5, v17

    mul-double v5, v5, v15

    const-wide v17, -0x405ddddddddddddeL    # -0.035416666666666666

    add-double v5, v5, v17

    mul-double v5, v5, v7

    const/4 v3, 0x2

    .line 265
    aput-wide v5, v1, v3

    const-wide v5, 0x3fed8f42bb48264aL    # 0.9237378747795415

    mul-double v5, v5, v15

    const-wide v17, 0x3fe1ee04e04e04e0L    # 0.5603050595238095

    add-double v5, v5, v17

    mul-double v5, v5, v15

    const-wide v17, -0x4018750750750750L    # -0.7357142857142858

    add-double v5, v5, v17

    mul-double v5, v5, v15

    const-wide v17, 0x3fd0444444444444L    # 0.25416666666666665

    add-double v5, v5, v17

    mul-double v7, v7, v5

    .line 267
    aput-wide v7, v2, v3

    const-wide v5, 0x3fbd4926e2131b81L    # 0.11439745921516754

    mul-double v5, v5, v15

    const-wide v7, 0x3f96596596596596L    # 0.021825396825396824

    add-double/2addr v5, v7

    mul-double v5, v5, v15

    const-wide v7, -0x4064152152152152L    # -0.02726314484126984

    add-double/2addr v5, v7

    mul-double v5, v5, v9

    const/4 v3, 0x3

    .line 270
    aput-wide v5, v1, v3

    const-wide v5, 0x3fed1b9c3c9bf742L    # 0.9096203979276896

    mul-double v5, v5, v15

    const-wide v7, -0x400ef3cf3cf3cf3dL    # -1.0654761904761905

    add-double/2addr v5, v7

    mul-double v5, v5, v15

    const-wide v7, 0x3fd3aac4ac4ac4acL    # 0.30729786706349205

    add-double/2addr v5, v7

    mul-double v9, v9, v5

    .line 271
    aput-wide v9, v2, v3

    const-wide v5, 0x3f9bec43f034ab5fL    # 0.027268468414301746

    mul-double v5, v5, v15

    const-wide v7, -0x4062e6ce6ce6ce6dL    # -0.02841641865079365

    add-double/2addr v5, v7

    mul-double v5, v5, v11

    const/4 v3, 0x4

    .line 273
    aput-wide v5, v1, v3

    const-wide v5, -0x4004978563a663c6L    # -1.713007555715889

    mul-double v5, v5, v15

    const-wide v7, 0x3fdb900d00d00d01L    # 0.4306671626984127

    add-double/2addr v5, v7

    mul-double v11, v11, v5

    .line 274
    aput-wide v11, v2, v3

    const-wide v5, -0x405f725554e9bc40L    # -0.03233083094085698

    mul-double v5, v5, v13

    const/4 v3, 0x5

    .line 276
    aput-wide v5, v1, v3

    const-wide v5, 0x3fe5483bb3f52bacL    # 0.6650675310896665

    mul-double v13, v13, v5

    const/4 v1, 0x5

    .line 277
    aput-wide v13, v2, v1

    .line 280
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const/4 v3, 0x6

    invoke-static {v4, v3, v1, v2}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gatg([DID)D

    move-result-wide v1

    .line 284
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Qn:D

    neg-double v3, v3

    iget-object v5, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v1

    const/4 v8, 0x6

    invoke-static {v5, v8, v6, v7}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->clens([DID)D

    move-result-wide v5

    add-double/2addr v1, v5

    mul-double v3, v3, v1

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Zb:D

    return-void
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 14

    move-object/from16 v0, p5

    const/4 v1, 0x1

    .line 134
    new-array v8, v1, [D

    .line 135
    new-array v9, v1, [D

    .line 139
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cbg:[D

    const/4 v2, 0x6

    move-wide/from16 v3, p3

    invoke-static {v1, v2, v3, v4}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gatg([DID)D

    move-result-wide v1

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 143
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 144
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v1

    .line 146
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    mul-double v5, v5, v1

    .line 147
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->asinhy(D)D

    move-result-wide v10

    .line 151
    iget-object v2, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gtu:[D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-wide v6, v3

    mul-double v4, v12, v6

    mul-double v6, v6, v10

    const/4 v3, 0x6

    invoke-static/range {v2 .. v9}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->clenS([DIDD[D[D)D

    move-result-wide v1

    add-double/2addr v12, v1

    const/4 v1, 0x0

    .line 152
    aget-wide v1, v9, v1

    add-double/2addr v10, v1

    .line 153
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4004fcb69a64edc9L    # 2.623395162778

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    .line 154
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Qn:D

    mul-double v12, v12, v1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Zb:D

    add-double/2addr v12, v3

    iput-wide v12, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, v1, v10

    .line 155
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v0

    :cond_0
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 157
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 9

    const/4 v0, 0x1

    .line 163
    new-array v7, v0, [D

    .line 164
    new-array v8, v0, [D

    .line 168
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Zb:D

    sub-double/2addr p3, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->Qn:D

    div-double/2addr p3, v0

    div-double/2addr p1, v0

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4004fcb69a64edc9L    # 2.623395162778

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 173
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->utg:[D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-wide v5, v2

    mul-double v3, p3, v5

    mul-double v5, v5, p1

    const/4 v2, 0x6

    invoke-static/range {v1 .. v8}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->clenS([DIDD[D[D)D

    move-result-wide v0

    add-double/2addr p3, v0

    const/4 v0, 0x0

    .line 174
    aget-wide v0, v8, v0

    add-double/2addr p1, v0

    .line 175
    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    .line 177
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 178
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    .line 179
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double p3, p3, p1

    .line 181
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    mul-double v0, v0, p1

    .line 182
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 184
    iget-object p3, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->cgb:[D

    const/4 p4, 0x6

    invoke-static {p3, p4, p1, p2}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->gatg([DID)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 185
    iput-wide v4, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    :cond_0
    return-object p5
.end method

.method public setSouthernHemisphere(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->isSouth:Z

    return-void
.end method

.method public setUTMZone(I)V
    .locals 6

    add-int/lit8 p1, p1, -0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v4

    sub-double/2addr v0, v2

    .line 193
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide/16 v0, 0x0

    .line 194
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide v2, 0x3feffcb923a29c78L    # 0.9996

    .line 195
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    const-wide v2, 0x411e848000000000L    # 500000.0

    .line 196
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 197
    iget-boolean p1, p0, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->isSouth:Z

    if-eqz p1, :cond_0

    const-wide v0, 0x416312d000000000L    # 1.0E7

    :cond_0
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 198
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->initialize()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 313
    const-string v0, "Extended Transverse Mercator"

    return-object v0
.end method
