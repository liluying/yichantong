.class public Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "CylindricalEqualAreaProjection.java"


# instance fields
.field private apa:[D

.field private qp:D


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    .line 32
    invoke-direct/range {v0 .. v6}, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    .line 36
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 37
    iput-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 38
    iput-wide p5, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 39
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;->initialize()V

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
    .locals 7

    .line 43
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 44
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 47
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 50
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->authset(D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;->apa:[D

    .line 51
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v5, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v1 .. v6}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;->qp:D

    :cond_0
    return-void
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    .line 56
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 60
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 61
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v2 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide p1

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, p3

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 7

    .line 67
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_3

    .line 70
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double p3, p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sub-double v2, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    const-wide p3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_0
    const-wide p3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 72
    :goto_0
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 74
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 75
    :goto_1
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5

    .line 76
    :cond_2
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {p1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw p1

    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p3, p3, v0

    .line 78
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double p3, p3, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;->qp:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    iget-object v0, p0, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;->apa:[D

    invoke-static {p3, p4, v0}, Lorg/locationtech/proj4j/util/ProjectionMath;->authlat(D[D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 79
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method
