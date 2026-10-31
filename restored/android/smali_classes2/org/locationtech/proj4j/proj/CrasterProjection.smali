.class public Lorg/locationtech/proj4j/proj/CrasterProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "CrasterProjection.java"


# static fields
.field private static final RXM:D = 1.0233267079464885

.field private static final RYM:D = 0.32573500793527993

.field private static final THIRD:D = 0.3333333333333333

.field private static final XM:D = 0.9772050238058398

.field private static final YM:D = 3.0699801238394655


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

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double p3, p3, v0

    const-wide v0, 0x3fef45437857749aL    # 0.9772050238058398

    mul-double p1, p1, v0

    add-double v0, p3, p3

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x40088f51bd3a1593L    # 3.0699801238394655

    .line 35
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p3, p3, p1

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    const-wide v0, 0x3fd4d8d7a58fa311L    # 0.32573500793527993

    mul-double p3, p3, v0

    .line 40
    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double p3, p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3ff05f8bd37c0e62L    # 1.0233267079464885

    mul-double p1, p1, v0

    add-double/2addr p3, p3

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double p3, p3, v0

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p3, p3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, v0

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "Craster Parabolic (Putnins P4)"

    return-object v0
.end method
