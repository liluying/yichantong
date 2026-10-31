.class public Lorg/locationtech/proj4j/proj/Eckert1Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Eckert1Projection.java"


# static fields
.field private static final FC:D = 0.9213177319235613

.field private static final RP:D = 0.3183098861837907


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
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    const-wide v0, 0x3fed7b6f52fac55aL    # 0.9213177319235613

    mul-double p1, p1, v0

    const-wide v2, 0x3fd45f306dc9c883L    # 0.3183098861837907

    .line 30
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double p1, p1, v2

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double p3, p3, v0

    .line 31
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3fed7b6f52fac55aL    # 0.9213177319235613

    div-double/2addr p3, v0

    .line 36
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v2, 0x3fd45f306dc9c883L    # 0.3183098861837907

    .line 37
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    mul-double p3, p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p3

    mul-double v2, v2, v0

    div-double/2addr p1, v2

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "Eckert I"

    return-object v0
.end method
