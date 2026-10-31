.class public Lorg/locationtech/proj4j/proj/DenoyerProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "DenoyerProjection.java"


# static fields
.field public static final C0:D = 0.95

.field public static final C1:D = -0.08333333333333333

.field public static final C3:D = 0.0016666666666666666

.field public static final D1:D = 0.9

.field public static final D5:D = 0.03


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
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

.method public parallelsAreParallel()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 34
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 35
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 37
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v2, p1, p1

    const-wide v4, 0x3f5b4e81b4e81b4eL    # 0.0016666666666666666

    mul-double v2, v2, v4

    const-wide v4, -0x404aaaaaaaaaaaabL    # -0.08333333333333333

    add-double/2addr v2, v4

    mul-double p1, p1, v2

    const-wide v2, 0x3fee666666666666L    # 0.95

    add-double/2addr p1, v2

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v2, v2, p3

    mul-double v2, v2, p3

    mul-double v2, v2, p3

    mul-double v2, v2, p3

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v2, v4

    mul-double p3, p3, v2

    mul-double p1, p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "Denoyer Semi-elliptical"

    return-object v0
.end method
