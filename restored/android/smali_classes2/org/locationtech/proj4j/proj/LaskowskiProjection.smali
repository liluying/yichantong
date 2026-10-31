.class public Lorg/locationtech/proj4j/proj/LaskowskiProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LaskowskiProjection.java"


# static fields
.field private static final a10:D = 0.975534

.field private static final a12:D = -0.119161

.field private static final a14:D = -0.0547009

.field private static final a32:D = -0.0143059

.field private static final b01:D = 1.00384

.field private static final b03:D = 0.0998909

.field private static final b05:D = -0.0491032

.field private static final b21:D = 0.0802894

.field private static final b23:D = -0.02855

.field private static final b41:D = 1.99025E-4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    const-wide v4, -0x4072b3969ae19836L    # -0.0143059

    mul-double v4, v4, v0

    const-wide v6, -0x40417eaa2a0a9585L    # -0.119161

    add-double/2addr v4, v6

    const-wide v6, -0x4053fe3e5ee06028L    # -0.0547009

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    mul-double v4, v4, v2

    const-wide v6, 0x3fef379314445aa3L    # 0.975534

    add-double/2addr v4, v6

    mul-double p1, p1, v4

    .line 43
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, -0x4062c3c9eecbfb16L    # -0.02855

    mul-double p1, p1, v2

    const-wide v4, 0x3fb48dd89b37288bL    # 0.0802894

    add-double/2addr p1, v4

    const-wide v4, 0x3f2a162bbb6fad37L    # 1.99025E-4

    mul-double v4, v4, v0

    add-double/2addr p1, v4

    mul-double v0, v0, p1

    const-wide p1, 0x3ff00fba8826aa8fL    # 1.00384

    add-double/2addr v0, p1

    const-wide p1, -0x4056dbf203bdfaa2L    # -0.0491032

    mul-double p1, p1, v2

    const-wide v4, 0x3fb9927334ab0278L    # 0.0998909

    add-double/2addr p1, v4

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    mul-double p3, p3, v0

    .line 44
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "Laskowski"

    return-object v0
.end method
