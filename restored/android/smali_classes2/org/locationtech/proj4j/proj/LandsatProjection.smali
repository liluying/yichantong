.class public Lorg/locationtech/proj4j/proj/LandsatProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LandsatProjection.java"


# static fields
.field private static final PI_HALFPI:D = 4.71238898038469

.field private static final TOL:D = 1.0E-7

.field private static final TWOPI_HALFPI:D = 7.853981633974483


# instance fields
.field private a2:D

.field private a4:D

.field private b:D

.field private c1:D

.field private c3:D

.field private ca:D

.field private p22:D

.field private q:D

.field private rlm:D

.field private rlm2:D

.field private sa:D

.field private t:D

.field private u:D

.field private w:D

.field private xj:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method

.method private seraz0(DD)V
    .locals 14

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, p1

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v2

    .line 138
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->p22:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->sa:D

    mul-double v4, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->t:D

    mul-double v6, v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    iget-wide v10, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->w:D

    mul-double v10, v10, v2

    add-double/2addr v10, v8

    iget-wide v12, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->q:D

    mul-double v12, v12, v2

    add-double/2addr v12, v8

    mul-double v10, v10, v12

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    .line 140
    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->q:D

    mul-double v10, v6, v2

    add-double/2addr v10, v8

    mul-double v6, v6, v2

    add-double/2addr v6, v8

    .line 141
    iget-wide v12, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->w:D

    mul-double v12, v12, v2

    add-double/2addr v12, v8

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget-wide v12, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->w:D

    mul-double v12, v12, v2

    add-double/2addr v12, v8

    mul-double v10, v10, v10

    div-double/2addr v12, v10

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->p22:D

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->ca:D

    mul-double v2, v2, v8

    sub-double/2addr v12, v2

    mul-double v6, v6, v12

    .line 143
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->xj:D

    mul-double v2, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 144
    iget-wide v10, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->b:D

    iget-wide v12, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->xj:D

    mul-double v12, v12, v6

    sub-double/2addr v12, v8

    mul-double v12, v12, p3

    div-double/2addr v12, v2

    add-double/2addr v10, v12

    iput-wide v10, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->b:D

    .line 145
    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a2:D

    add-double v10, v0, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a2:D

    .line 146
    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a4:D

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v12, v12, v10

    add-double/2addr v8, v12

    iput-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a4:D

    mul-double v4, v4, p3

    .line 147
    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->xj:D

    add-double/2addr v6, v8

    mul-double v4, v4, v6

    div-double/2addr v4, v2

    .line 148
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    add-double/2addr v2, v6

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c1:D

    .line 149
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c3:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c3:D

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 12

    .line 153
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide v0, 0x3f99a22612a153bbL    # 0.025032610785576042

    const/16 v2, 0x78

    int-to-double v2, v2

    mul-double v2, v2, v0

    const-wide v0, 0x4001fe5f9d39db0dL    # 2.2492058070450924

    sub-double/2addr v0, v2

    .line 166
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v0, 0x4096800000000000L    # 1440.0

    const-wide v2, 0x4059d1156b36afbfL    # 103.2669323

    div-double/2addr v2, v0

    .line 174
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->p22:D

    const-wide v0, 0x3ffbabf4f6afb043L    # 1.729481662386221

    .line 175
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->sa:D

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->ca:D

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 178
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->ca:D

    .line 179
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->ca:D

    mul-double v4, v0, v2

    mul-double v4, v4, v2

    .line 180
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->sa:D

    mul-double v6, v0, v2

    mul-double v6, v6, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v4

    .line 181
    iget-wide v10, p0, Lorg/locationtech/proj4j/proj/Projection;->rone_es:D

    mul-double v8, v8, v10

    mul-double v8, v8, v8

    sub-double/2addr v8, v2

    .line 182
    iput-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->w:D

    mul-double v8, v6, v10

    .line 183
    iput-wide v8, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->q:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v0, v8, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v10

    mul-double v6, v6, v10

    .line 184
    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->t:D

    mul-double v4, v4, v10

    .line 185
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->u:D

    .line 186
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    mul-double v4, v0, v0

    mul-double v4, v4, v0

    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->xj:D

    const-wide v0, 0x3ffa256a9fec1623L    # 1.6341348883592068

    .line 187
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->rlm:D

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v4

    .line 188
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->rlm2:D

    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c3:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->b:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a4:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a2:D

    .line 190
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/proj/LandsatProjection;->seraz0(DD)V

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    :goto_0
    const-wide v4, 0x40544001a36e2eb2L    # 81.0001

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    cmpg-double v10, v0, v4

    if-gtz v10, :cond_1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 192
    invoke-direct {p0, v0, v1, v4, v5}, Lorg/locationtech/proj4j/proj/LandsatProjection;->seraz0(DD)V

    add-double/2addr v0, v6

    goto :goto_0

    :cond_1
    move-wide v0, v6

    :goto_1
    const-wide v4, 0x40520001a36e2eb2L    # 72.0001

    cmpg-double v10, v0, v4

    if-gtz v10, :cond_2

    .line 194
    invoke-direct {p0, v0, v1, v8, v9}, Lorg/locationtech/proj4j/proj/LandsatProjection;->seraz0(DD)V

    add-double/2addr v0, v6

    goto :goto_1

    :cond_2
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 195
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/proj/LandsatProjection;->seraz0(DD)V

    .line 196
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a2:D

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a2:D

    .line 197
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a4:D

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a4:D

    .line 198
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->b:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->b:D

    .line 199
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c1:D

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c1:D

    .line 200
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c3:D

    const-wide v2, 0x4046800000000000L    # 45.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c3:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v6, p3, v4

    if-lez v6, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    cmpg-double v6, p3, v2

    if-gez v6, :cond_1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide/from16 v6, p3

    :goto_0
    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_2

    move-wide v10, v4

    goto :goto_1

    :cond_2
    const-wide v10, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 45
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    const/4 v14, 0x0

    move-wide v15, v8

    move-wide/from16 v17, v15

    .line 48
    :goto_2
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->p22:D

    mul-double v2, v2, v10

    add-double v2, p1, v2

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 52
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    cmpg-double v21, v2, v8

    if-gez v21, :cond_3

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_3

    :cond_3
    move-wide v2, v4

    :goto_3
    mul-double v19, v19, v2

    sub-double v2, v10, v19

    const/16 v19, 0x32

    move-wide/from16 v20, v10

    :goto_4
    if-lez v19, :cond_6

    .line 54
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->p22:D

    mul-double v4, v4, v20

    add-double v4, p1, v4

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide v22, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v24, v17, v22

    if-gez v24, :cond_4

    sub-double v4, v4, v22

    :cond_4
    move-wide/from16 v17, v4

    .line 57
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    mul-double v4, v4, v12

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->sa:D

    mul-double v4, v4, v8

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-wide/from16 v24, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->ca:D

    mul-double v8, v8, v2

    add-double/2addr v4, v8

    div-double/2addr v4, v15

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    add-double v15, v2, v24

    .line 59
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v22

    if-gez v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v19, v19, -0x1

    move-wide/from16 v20, v15

    move-wide/from16 v2, v24

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v19, :cond_a

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x3

    if-ge v14, v2, :cond_a

    .line 63
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->rlm:D

    cmpl-double v4, v15, v2

    if-lez v4, :cond_7

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->rlm2:D

    cmpg-double v8, v15, v4

    if-gez v8, :cond_7

    goto :goto_6

    :cond_7
    cmpg-double v4, v15, v2

    if-gtz v4, :cond_9

    const-wide v10, 0x401f6a7a2955385eL    # 7.853981633974483

    :cond_8
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v8, 0x0

    goto/16 :goto_2

    .line 67
    :cond_9
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->rlm2:D

    cmpl-double v4, v15, v2

    if-ltz v4, :cond_8

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v8, 0x0

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto/16 :goto_2

    :cond_a
    :goto_6
    if-eqz v19, :cond_b

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 72
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->ca:D

    mul-double v4, v4, v8

    mul-double v4, v4, v2

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->sa:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v8, v8, v6

    .line 73
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v8, v8, v6

    sub-double/2addr v4, v8

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v6, v6, v2

    mul-double v6, v6, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 72
    invoke-static {v4, v5}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v4, v6

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 75
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v8, v6, v6

    .line 77
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->p22:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->sa:D

    mul-double v10, v10, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->t:D

    mul-double v12, v12, v8

    add-double/2addr v12, v2

    move-wide/from16 p1, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->w:D

    mul-double v2, v2, v8

    add-double v2, v2, p1

    move-wide/from16 p3, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->q:D

    mul-double v2, v2, v8

    add-double v2, v2, p1

    mul-double v2, v2, p3

    div-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v10, v10, v2

    .line 79
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->xj:D

    mul-double v2, v2, v2

    mul-double v8, v10, v10

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 80
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->b:D

    mul-double v8, v8, v15

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a2:D

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v17, v17, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v12, v12, v17

    add-double/2addr v8, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->a4:D

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    mul-double v17, v17, v15

    .line 81
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v12, v12, v17

    add-double/2addr v8, v12

    mul-double v10, v10, v4

    div-double/2addr v10, v2

    sub-double/2addr v8, v10

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 82
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c1:D

    mul-double v8, v8, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->c3:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v15, v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v6, v6, v10

    add-double/2addr v8, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/LandsatProjection;->xj:D

    mul-double v4, v4, v6

    div-double/2addr v4, v2

    add-double/2addr v8, v4

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    :cond_b
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 84
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    const-string v0, "Landsat"

    return-object v0
.end method
