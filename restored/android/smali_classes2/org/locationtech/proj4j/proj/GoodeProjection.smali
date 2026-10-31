.class public Lorg/locationtech/proj4j/proj/GoodeProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "GoodeProjection.java"


# static fields
.field private static final PHI_LIM:D = 0.7109307819790236

.field private static final Y_COR:D = 0.0528


# instance fields
.field private moll:Lorg/locationtech/proj4j/proj/MolleweideProjection;

.field private sinu:Lorg/locationtech/proj4j/proj/SinusoidalProjection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    .line 29
    new-instance v0, Lorg/locationtech/proj4j/proj/SinusoidalProjection;

    invoke-direct {v0}, Lorg/locationtech/proj4j/proj/SinusoidalProjection;-><init>()V

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/GoodeProjection;->sinu:Lorg/locationtech/proj4j/proj/SinusoidalProjection;

    .line 30
    new-instance v0, Lorg/locationtech/proj4j/proj/MolleweideProjection;

    invoke-direct {v0}, Lorg/locationtech/proj4j/proj/MolleweideProjection;-><init>()V

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/GoodeProjection;->moll:Lorg/locationtech/proj4j/proj/MolleweideProjection;

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
    .locals 11

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fe6bff1e94a3a44L    # 0.7109307819790236

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 34
    iget-object v5, p0, Lorg/locationtech/proj4j/proj/GoodeProjection;->sinu:Lorg/locationtech/proj4j/proj/SinusoidalProjection;

    move-wide v6, p1

    move-wide v8, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lorg/locationtech/proj4j/proj/SinusoidalProjection;->project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/GoodeProjection;->moll:Lorg/locationtech/proj4j/proj/MolleweideProjection;

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/locationtech/proj4j/proj/MolleweideProjection;->project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    .line 37
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/16 v2, 0x0

    cmpl-double p2, p3, v2

    if-ltz p2, :cond_1

    const-wide p2, 0x3fab089a02752546L    # 0.0528

    goto :goto_0

    :cond_1
    const-wide p2, -0x4054f765fd8adabaL    # -0.0528

    :goto_0
    sub-double/2addr v0, p2

    iput-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 11

    .line 43
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fe6bff1e94a3a44L    # 0.7109307819790236

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 44
    iget-object v5, p0, Lorg/locationtech/proj4j/proj/GoodeProjection;->sinu:Lorg/locationtech/proj4j/proj/SinusoidalProjection;

    move-wide v6, p1

    move-wide v8, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lorg/locationtech/proj4j/proj/SinusoidalProjection;->projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x3fab089a02752546L    # 0.0528

    goto :goto_0

    :cond_1
    const-wide v0, -0x4054f765fd8adabaL    # -0.0528

    :goto_0
    add-double v3, p3, v0

    .line 47
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/GoodeProjection;->moll:Lorg/locationtech/proj4j/proj/MolleweideProjection;

    move-wide v1, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/locationtech/proj4j/proj/MolleweideProjection;->projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "Goode Homolosine"

    return-object v0
.end method
