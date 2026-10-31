.class public Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "NewZealandMapGridProjection.java"


# static fields
.field private static final RAD_TO_SECS:D = 2.0626480624709638

.field private static final SECS_TO_RAD:D = 0.484813681109536

.field private static final bf:[Lorg/locationtech/proj4j/util/Complex;

.field private static final tphi:[D

.field private static final tpsi:[D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 39
    new-instance v0, Lorg/locationtech/proj4j/util/Complex;

    const-wide v1, 0x3fe82f64b3872134L    # 0.7557853228

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v1, Lorg/locationtech/proj4j/util/Complex;

    const-wide v2, 0x3fcfe5f0164a66a3L    # 0.249204646

    const-wide v4, 0x3f6b9e9009b41a0aL    # 0.003371507

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v2, Lorg/locationtech/proj4j/util/Complex;

    const-wide v3, -0x40a6bd7a5aa045c1L    # -0.001541739

    const-wide v5, 0x3fa505a0a8d77a25L    # 0.04105856

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v3, Lorg/locationtech/proj4j/util/Complex;

    const-wide v4, -0x4045fba32406f05fL    # -0.10162907

    const-wide v6, 0x3f91b0d2c63604caL    # 0.01727609

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v4, Lorg/locationtech/proj4j/util/Complex;

    const-wide v5, -0x402ef601ef99557cL    # -0.26623489

    const-wide v7, -0x4028cced99760845L    # -0.36249218

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v5, Lorg/locationtech/proj4j/util/Complex;

    const-wide v6, -0x401a034a6d0b9c15L    # -0.6870983

    const-wide v8, -0x400d5b5ab4817c6cL    # -1.1651967

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    const/4 v6, 0x6

    new-array v6, v6, [Lorg/locationtech/proj4j/util/Complex;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->bf:[Lorg/locationtech/proj4j/util/Complex;

    const/16 v0, 0x9

    .line 48
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->tphi:[D

    const/16 v0, 0xa

    .line 50
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->tpsi:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff900d3356c7f77L    # 1.5627014243
        0x3fe097e28a32d035L    # 0.5185406398
        -0x405eef3de5e9a951L    # -0.03333098
        -0x40450bacdc6c7d01L    # -0.1052906
        -0x405d20c3c4e64e7eL    # -0.0368594
        0x3f7df86e3b46fdebL    # 0.007317
        0x3f88fc504816f007L    # 0.0122
        0x3f702363b256ffc1L    # 0.00394
        -0x40aab367a0f9096cL    # -0.0013
    .end array-data

    :array_1
    .array-data 8
        0x3fe47a3447bfb911L    # 0.6399175073
        -0x403e9b7df2839c80L    # -0.1358797613
        0x3fb0340ff8acb5bcL    # 0.063294409
        -0x40662001a820c5f3L    # -0.02526853
        0x3f88244127e87c56L    # 0.0117879
        -0x408967f32e60659bL    # -0.0055161
        0x3f660a98e036361dL    # 0.0026906
        -0x40aa28fe260b2c84L    # -0.001333
        0x3f45f45e0b4e11dcL    # 6.7E-4
        -0x40c9b7bf1e8e6080L    # -3.4E-4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    .line 56
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 105
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide v0, 0x415854e500000000L    # 6378388.0

    .line 107
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    const-wide v0, 0x400827c57763a87fL    # 3.01941960595019

    .line 108
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v0, -0x401919ed8006268fL    # -0.7155849933176751

    .line 109
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide v0, 0x4143265800000000L    # 2510000.0

    .line 110
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    const-wide v0, 0x4156f9fb80000000L    # 6023150.0

    .line 111
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 7

    .line 61
    new-instance v0, Lorg/locationtech/proj4j/util/Complex;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    .line 63
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr p3, v1

    const-wide v1, 0x4000804da09bc3b2L    # 2.0626480624709638

    mul-double p3, p3, v1

    .line 64
    sget-object v1, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->tpsi:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 65
    sget-object v2, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->tpsi:[D

    aget-wide v3, v2, v1

    iget-wide v5, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v5, v5, p3

    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-wide v1, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v1, v1, p3

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 67
    iput-wide p1, v0, Lorg/locationtech/proj4j/util/Complex;->i:D

    .line 68
    sget-object p1, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->bf:[Lorg/locationtech/proj4j/util/Complex;

    invoke-static {v0, p1}, Lorg/locationtech/proj4j/util/ProjectionMath;->zpoly1(Lorg/locationtech/proj4j/util/Complex;[Lorg/locationtech/proj4j/util/Complex;)Lorg/locationtech/proj4j/util/Complex;

    move-result-object p1

    .line 69
    iget-wide p2, p1, Lorg/locationtech/proj4j/util/Complex;->i:D

    iput-wide p2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 70
    iget-wide p1, p1, Lorg/locationtech/proj4j/util/Complex;->r:D

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method protected projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 20

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    .line 77
    new-instance v5, Lorg/locationtech/proj4j/util/Complex;

    invoke-direct {v5, v2, v3, v0, v1}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v6, Lorg/locationtech/proj4j/util/Complex;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8, v7, v8}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    new-instance v9, Lorg/locationtech/proj4j/util/Complex;

    invoke-direct {v9, v7, v8, v7, v8}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    const/16 v7, 0x14

    :goto_0
    if-lez v7, :cond_1

    .line 82
    sget-object v8, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->bf:[Lorg/locationtech/proj4j/util/Complex;

    invoke-static {v5, v8, v6}, Lorg/locationtech/proj4j/util/ProjectionMath;->zpoly1d(Lorg/locationtech/proj4j/util/Complex;[Lorg/locationtech/proj4j/util/Complex;Lorg/locationtech/proj4j/util/Complex;)Lorg/locationtech/proj4j/util/Complex;

    move-result-object v8

    .line 83
    iget-wide v10, v8, Lorg/locationtech/proj4j/util/Complex;->r:D

    sub-double/2addr v10, v2

    iput-wide v10, v8, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 84
    iget-wide v12, v8, Lorg/locationtech/proj4j/util/Complex;->i:D

    sub-double/2addr v12, v0

    iput-wide v12, v8, Lorg/locationtech/proj4j/util/Complex;->i:D

    .line 85
    iget-wide v14, v6, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v16, v14, v14

    iget-wide v0, v6, Lorg/locationtech/proj4j/util/Complex;->i:D

    mul-double v18, v0, v0

    add-double v16, v16, v18

    move-wide/from16 v18, v0

    .line 86
    iget-wide v0, v5, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v10, v10, v14

    mul-double v14, v12, v18

    add-double/2addr v10, v14

    neg-double v10, v10

    div-double v10, v10, v16

    iput-wide v10, v9, Lorg/locationtech/proj4j/util/Complex;->r:D

    add-double/2addr v0, v10

    iput-wide v0, v5, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 87
    iget-wide v0, v5, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v10, v6, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v12, v12, v10

    iget-wide v10, v8, Lorg/locationtech/proj4j/util/Complex;->r:D

    mul-double v10, v10, v18

    sub-double/2addr v12, v10

    neg-double v10, v12

    div-double v10, v10, v16

    iput-wide v10, v9, Lorg/locationtech/proj4j/util/Complex;->i:D

    add-double/2addr v0, v10

    iput-wide v0, v5, Lorg/locationtech/proj4j/util/Complex;->i:D

    .line 88
    iget-wide v0, v9, Lorg/locationtech/proj4j/util/Complex;->r:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v10, v9, Lorg/locationtech/proj4j/util/Complex;->i:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v0, v10

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v8, v0, v10

    if-gtz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    move-wide/from16 v0, p1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v7, :cond_3

    .line 92
    iget-wide v0, v5, Lorg/locationtech/proj4j/util/Complex;->i:D

    iput-wide v0, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 93
    sget-object v0, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->tphi:[D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 94
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lez v0, :cond_2

    .line 95
    sget-object v1, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;->tphi:[D

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    iget-wide v6, v5, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v8, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    .line 97
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iget-wide v5, v5, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v7, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v5, v5, v7

    const-wide v7, 0x3fdf072ff6413483L    # 0.484813681109536

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    iput-wide v1, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4

    :cond_3
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 99
    iput-wide v1, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v1, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "New Zealand Map Grid"

    return-object v0
.end method
