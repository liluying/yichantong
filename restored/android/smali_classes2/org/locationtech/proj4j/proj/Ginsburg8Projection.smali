.class public Lorg/locationtech/proj4j/proj/Ginsburg8Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Ginsburg8Projection.java"


# static fields
.field private static final C12:D = 0.08333333333333333

.field private static final Cl:D = 9.52426E-4

.field private static final Cp:D = 0.162388


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    mul-double v0, p3, p3

    const-wide v2, 0x3fb5555555555555L    # 0.08333333333333333

    mul-double v2, v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    mul-double p3, p3, v2

    .line 33
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide p3, 0x3fc4c92146a1a501L    # 0.162388

    mul-double v0, v0, p3

    sub-double/2addr v4, v0

    mul-double v4, v4, p1

    mul-double p1, p1, p1

    const-wide p3, 0x3f4f358742cc4fc7L    # 9.52426E-4

    mul-double p3, p3, p1

    mul-double p3, p3, p1

    const-wide p1, 0x3febd70a3d70a3d7L    # 0.87

    sub-double/2addr p1, p3

    mul-double v4, v4, p1

    .line 36
    iput-wide v4, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Ginsburg VIII (TsNIIGAiK)"

    return-object v0
.end method
