.class public Lorg/locationtech/proj4j/proj/Eckert6Projection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "Eckert6Projection.java"


# static fields
.field private static final C_x:D

.field private static final C_y:D

.field private static final LOOP_TOL:D = 1.0E-7

.field private static final MAX_ITER:I = 0x8

.field private static final n:D = 2.5707963267948966


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8e51f5e5f5530L    # 0.7779690592966855

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/proj4j/proj/Eckert6Projection;->C_y:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 38
    sput-wide v0, Lorg/locationtech/proj4j/proj/Eckert6Projection;->C_x:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

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
    .locals 10

    const-wide v0, 0x400490fdaa22168cL    # 2.5707963267948966

    .line 46
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    const/16 v0, 0x8

    :goto_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_1

    .line 48
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    add-double/2addr v6, p3

    sub-double/2addr v6, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    add-double/2addr v8, v4

    div-double/2addr v6, v8

    sub-double/2addr p3, v6

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v1, v6, v8

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 58
    sget-wide v0, Lorg/locationtech/proj4j/proj/Eckert6Projection;->C_x:D

    mul-double v0, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    add-double/2addr p1, v4

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 59
    sget-wide p1, Lorg/locationtech/proj4j/proj/Eckert6Projection;->C_y:D

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 55
    :cond_2
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    const-string p2, "F_ERROR"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 64
    sget-wide v0, Lorg/locationtech/proj4j/proj/Eckert6Projection;->C_y:D

    div-double/2addr p3, v0

    .line 65
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    add-double/2addr v0, p3

    const-wide v2, 0x400490fdaa22168cL    # 2.5707963267948966

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 66
    sget-wide v0, Lorg/locationtech/proj4j/proj/Eckert6Projection;->C_x:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    add-double/2addr p3, v2

    mul-double v0, v0, p3

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "Eckert VI"

    return-object v0
.end method
