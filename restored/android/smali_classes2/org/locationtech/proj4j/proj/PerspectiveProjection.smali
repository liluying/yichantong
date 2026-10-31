.class public Lorg/locationtech/proj4j/proj/PerspectiveProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "PerspectiveProjection.java"


# static fields
.field private static final EPS10:D = 1.0E-10

.field private static final EQUIT:I = 0x2

.field private static final N_POLE:I = 0x0

.field private static final OBLIQ:I = 0x3

.field private static final S_POLE:I = 0x1


# instance fields
.field private cg:D

.field private cw:D

.field private h:D

.field private height:D

.field private mode:I

.field private p:D

.field private pcosph0:D

.field private pfact:D

.field private pn1:D

.field private psinph0:D

.field private rp:D

.field private sg:D

.field private sw:D

.field private tilt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize()V
    .locals 8

    .line 147
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const/4 v0, 0x2

    .line 148
    iput v0, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->mode:I

    .line 149
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->height:D

    const/4 v2, 0x0

    .line 150
    iput v2, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->tilt:I

    div-double/2addr v0, v0

    .line 163
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->pn1:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    .line 164
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->p:D

    div-double v6, v2, v4

    .line 165
    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->rp:D

    div-double v0, v2, v0

    .line 166
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->h:D

    add-double/2addr v4, v2

    mul-double v4, v4, v0

    .line 167
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->pfact:D

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 50
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 51
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 52
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 53
    iget v8, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->mode:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->psinph0:D

    mul-double v12, v12, v2

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->pcosph0:D

    mul-double v14, v14, v4

    mul-double v14, v14, v6

    add-double/2addr v12, v14

    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_1
    mul-double v12, v4, v6

    .line 58
    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_2
    neg-double v12, v2

    .line 61
    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 64
    :cond_3
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 69
    :goto_0
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->pn1:D

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->p:D

    iget-wide v9, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v14, v9

    div-double/2addr v12, v14

    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v12, v12, v4

    .line 70
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v12, v12, v8

    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 71
    iget v8, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->mode:I

    if-eqz v8, :cond_6

    if-eq v8, v11, :cond_7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    goto :goto_1

    .line 73
    :cond_4
    iget-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->pcosph0:D

    mul-double v10, v10, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->psinph0:D

    mul-double v2, v2, v4

    mul-double v2, v2, v6

    sub-double/2addr v10, v2

    mul-double v8, v8, v10

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 77
    :cond_5
    iget-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v4, v4, v2

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    :cond_6
    neg-double v6, v6

    .line 82
    :cond_7
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v4, v4, v6

    mul-double v2, v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 85
    :goto_1
    iget v2, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->tilt:I

    if-eqz v2, :cond_8

    .line 88
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->cg:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->sg:D

    mul-double v10, v12, v8

    add-double/2addr v6, v10

    .line 89
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->sw:D

    mul-double v10, v10, v6

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->h:D

    mul-double v10, v10, v14

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/PerspectiveProjection;->cw:D

    add-double/2addr v10, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v10

    mul-double v12, v12, v4

    mul-double v2, v2, v8

    sub-double/2addr v12, v2

    mul-double v12, v12, v14

    mul-double v12, v12, v16

    .line 90
    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v6, v6, v16

    .line 91
    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_8
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "Perspective"

    return-object v0
.end method
