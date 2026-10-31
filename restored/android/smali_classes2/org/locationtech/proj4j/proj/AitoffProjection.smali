.class public Lorg/locationtech/proj4j/proj/AitoffProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "AitoffProjection.java"


# static fields
.field protected static final AITOFF:I = 0x0

.field protected static final WINKEL:I = 0x1


# instance fields
.field private cosphi1:D

.field private winkel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->cosphi1:D

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 3

    .line 38
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    const-wide/16 v1, 0x0

    .line 33
    iput-wide v1, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->cosphi1:D

    .line 39
    iput-wide p2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 40
    :cond_0
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/AitoffProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 85
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/AitoffProjection;

    .line 86
    iget-boolean v3, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    iget-boolean v1, v1, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    if-ne v3, v1, :cond_1

    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 93
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2

    .line 60
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 61
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3fe45f306dc9c883L    # 0.6366197723675814

    .line 67
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->cosphi1:D

    :cond_0
    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 10

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, p1, v0

    .line 45
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v4

    .line 48
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v2, v8

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v6, v6, v2

    iput-wide v6, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    mul-double v2, v2, v4

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 51
    :cond_0
    iput-wide v6, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v6, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 52
    :goto_0
    iget-boolean v2, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    if-eqz v2, :cond_1

    .line 53
    iget-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->cosphi1:D

    mul-double p1, p1, v4

    add-double/2addr v2, p1

    mul-double v2, v2, v0

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 54
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    add-double/2addr p1, p3

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_1
    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/AitoffProjection;->winkel:Z

    if-eqz v0, :cond_0

    const-string v0, "Winkel Tripel"

    return-object v0

    :cond_0
    const-string v0, "Aitoff"

    return-object v0
.end method
