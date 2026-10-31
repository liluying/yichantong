.class public Lorg/locationtech/proj4j/proj/LarriveeProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LarriveeProjection.java"


# static fields
.field private static final SIXTH:D = 0.16666666666666666


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, p1, v0

    .line 29
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double v2, v2, v4

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v0, v0, p3

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    div-double/2addr p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "Larrivee"

    return-object v0
.end method
