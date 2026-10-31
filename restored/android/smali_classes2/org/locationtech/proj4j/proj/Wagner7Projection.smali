.class public Lorg/locationtech/proj4j/proj/Wagner7Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Wagner7Projection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3fed0079302dd767L    # 0.9063077870366499

    .line 29
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    .line 30
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    const-wide v0, 0x4005567caea747d8L    # 2.66723

    mul-double v0, v0, p3

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 31
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double p3, p3, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    const-wide p3, 0x3ff3db4cc2507208L    # 1.24104

    mul-double p3, p3, p1

    mul-double v0, v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 32
    iget-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double p3, p3, p1

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "Wagner VII"

    return-object v0
.end method
