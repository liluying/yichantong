.class public Lorg/locationtech/proj4j/proj/AiryProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "AiryProjection.java"


# static fields
.field private static final EPS:D = 1.0E-10

.field private static final EQUIT:I = 0x2

.field private static final N_POLE:I = 0x0

.field private static final OBLIQ:I = 0x3

.field private static final S_POLE:I = 0x1


# instance fields
.field private Cb:D

.field private cosph0:D

.field private mode:I

.field private no_cut:Z

.field private p_halfpi:D

.field private sinph0:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->no_cut:Z

    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    .line 46
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/AiryProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 9

    .line 96
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->no_cut:Z

    const-wide v1, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    .line 105
    iput-wide v1, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->Cb:D

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->Cb:D

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    mul-double v1, v1, v3

    mul-double v3, v3, v1

    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->Cb:D

    .line 110
    :goto_0
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v7, v1, v5

    if-gez v7, :cond_2

    .line 111
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-gez v7, :cond_1

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 112
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->p_halfpi:D

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    return-void

    .line 115
    :cond_1
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->p_halfpi:D

    .line 116
    iput v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    return-void

    .line 119
    :cond_2
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_3

    const/4 v0, 0x2

    .line 120
    iput v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 122
    iput v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    .line 123
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->sinph0:D

    .line 124
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AiryProjection;->cosph0:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 52
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 53
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 54
    iget v6, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    const-string v7, "F"

    if-eqz v6, :cond_6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_6

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eq v6, v12, :cond_0

    if-eq v6, v13, :cond_0

    goto/16 :goto_4

    .line 57
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 58
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v18, v16, v4

    .line 60
    iget v6, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    if-ne v6, v13, :cond_1

    .line 61
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->sinph0:D

    mul-double v8, v8, v14

    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->cosph0:D

    mul-double v10, v10, v18

    add-double v18, v8, v10

    goto :goto_0

    :cond_1
    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 62
    :goto_0
    iget-boolean v6, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->no_cut:Z

    if-nez v6, :cond_3

    const-wide v8, -0x4224832026284245L    # -1.0E-10

    cmpg-double v6, v18, v8

    if-ltz v6, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v7}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v8, v6, v18

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v12, v10, v20

    if-lez v12, :cond_4

    add-double v18, v18, v6

    mul-double v18, v18, p1

    .line 67
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    neg-double v6, v6

    div-double/2addr v6, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->Cb:D

    div-double v8, v8, v18

    sub-double/2addr v6, v8

    goto :goto_2

    .line 69
    :cond_4
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->Cb:D

    sub-double v6, p1, v6

    :goto_2
    mul-double v8, v6, v16

    mul-double v8, v8, v2

    .line 70
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 71
    iget v2, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    if-ne v2, v13, :cond_5

    .line 72
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->cosph0:D

    mul-double v2, v2, v14

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->sinph0:D

    mul-double v8, v8, v16

    mul-double v8, v8, v4

    sub-double/2addr v2, v8

    mul-double v6, v6, v2

    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    :cond_5
    mul-double v6, v6, v14

    .line 75
    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    :cond_6
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 79
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->p_halfpi:D

    sub-double v8, v8, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 80
    iget-boolean v6, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->no_cut:Z

    if-nez v6, :cond_8

    sub-double v10, p3, v20

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v6, v10, v12

    if-gtz v6, :cond_7

    goto :goto_3

    .line 81
    :cond_7
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v7}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_3
    mul-double v8, v8, p1

    .line 82
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double v6, v8, v20

    if-lez v6, :cond_a

    .line 83
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 84
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->Cb:D

    mul-double v6, v6, v10

    add-double/2addr v8, v6

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    mul-double v8, v8, v6

    mul-double v2, v2, v8

    .line 85
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v8, v8, v4

    .line 86
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 87
    iget v2, v0, Lorg/locationtech/proj4j/proj/AiryProjection;->mode:I

    if-nez v2, :cond_9

    neg-double v2, v8

    .line 88
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_9
    :goto_4
    return-object v1

    :cond_a
    const-wide/16 v2, 0x0

    .line 90
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "Airy"

    return-object v0
.end method
