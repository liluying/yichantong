.class public Lorg/locationtech/proj4j/proj/Eckert5Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Eckert5Projection.java"


# static fields
.field private static final RXF:D = 2.267508027238226

.field private static final RYF:D = 1.133754013619113

.field private static final XF:D = 0.4410127717245515

.field private static final YF:D = 0.882025543449103


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
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 32
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v2, v0

    const-wide v0, 0x3fdc398da1eb377fL    # 0.4410127717245515

    mul-double v2, v2, v0

    mul-double v2, v2, p1

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fec398da1eb377fL    # 0.882025543449103

    mul-double p3, p3, p1

    .line 33
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    const-wide v0, 0x400223db3fa33ecaL    # 2.267508027238226

    mul-double p1, p1, v0

    const-wide v0, 0x3ff223db3fa33ecaL    # 1.133754013619113

    mul-double p3, p3, v0

    .line 38
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v0

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "Eckert V"

    return-object v0
.end method
