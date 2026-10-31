.class public abstract Lorg/locationtech/proj4j/proj/AzimuthalProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "AzimuthalProjection.java"


# static fields
.field public static final EQUATOR:I = 0x3

.field public static final NORTH_POLE:I = 0x1

.field public static final OBLIQUE:I = 0x4

.field public static final SOUTH_POLE:I = 0x2


# instance fields
.field protected cosphi0:D

.field private mapRadius:D

.field protected mode:I

.field protected sinphi0:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 35
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    .line 42
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 43
    iput-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 44
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/AzimuthalProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 80
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/AzimuthalProjection;

    .line 81
    iget v3, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    iget v4, v1, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    .line 86
    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getMapRadius()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 93
    iget v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 5

    .line 48
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 49
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 50
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    return-void

    .line 51
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x4

    .line 52
    iput v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    .line 53
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    .line 54
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    return-void

    :cond_2
    const/4 v0, 0x3

    .line 56
    iput v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    return-void
.end method

.method public inside(DD)Z
    .locals 8

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static/range {v0 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->greatCircleDistance(DDDD)D

    move-result-wide p1

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMapRadius(D)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mapRadius:D

    return-void
.end method
