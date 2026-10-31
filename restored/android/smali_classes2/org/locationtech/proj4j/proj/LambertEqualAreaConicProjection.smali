.class public Lorg/locationtech/proj4j/proj/LambertEqualAreaConicProjection;
.super Lorg/locationtech/proj4j/proj/AlbersProjection;
.source "LambertEqualAreaConicProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/proj/LambertEqualAreaConicProjection;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/AlbersProjection;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    if-eqz p1, :cond_0

    const-wide v0, -0x4016de04abbbd2e8L    # -0.7853981633974483

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 33
    :goto_0
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    if-eqz p1, :cond_1

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_1

    :cond_1
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 34
    :goto_1
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    .line 35
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/AlbersProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "Lambert Equal Area Conic"

    return-object v0
.end method
