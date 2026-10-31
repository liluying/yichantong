.class public Lorg/locationtech/proj4j/proj/MolleweideProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "MolleweideProjection.java"


# static fields
.field private static final MAX_ITER:I = 0xa

.field public static final MOLLEWEIDE:I = 0x0

.field private static final TOLERANCE:D = 1.0E-7

.field public static final WAGNER4:I = 0x1

.field public static final WAGNER5:I = 0x2


# instance fields
.field private cp:D

.field private cx:D

.field private cy:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 39
    invoke-direct {p0, v0, v1}, Lorg/locationtech/proj4j/proj/MolleweideProjection;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/proj4j/proj/MolleweideProjection;->init(D)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    .line 75
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    .line 76
    iput-wide p3, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    .line 77
    iput-wide p5, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 42
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    .line 43
    iput p1, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/proj4j/proj/MolleweideProjection;->init(D)V

    const-wide v0, 0x3fed1cd5f99c38b0L    # 0.90977

    .line 53
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    const-wide v0, 0x3ffa66f9335d249eL    # 1.65014

    .line 54
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    const-wide v0, 0x400812599ed7c6fcL    # 3.00896

    .line 55
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    return-void

    :cond_1
    const-wide v0, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 49
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/proj4j/proj/MolleweideProjection;->init(D)V

    return-void

    .line 46
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/proj4j/proj/MolleweideProjection;->init(D)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/MolleweideProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 135
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/MolleweideProjection;

    .line 136
    iget v3, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    iget v4, v1, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    .line 141
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
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 148
    iget v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init(D)V
    .locals 8

    add-double v0, p1, p1

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, p1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 69
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    div-double/2addr v2, p1

    .line 70
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    return-void
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 9

    .line 84
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const/16 v2, 0xa

    :goto_0
    if-eqz v2, :cond_1

    .line 86
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, p3

    sub-double/2addr v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    add-double/2addr v7, v5

    div-double/2addr v3, v7

    sub-double/2addr p3, v3

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_2

    const-wide p3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_2

    :cond_2
    const-wide p3, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_2

    :cond_3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, v0

    .line 94
    :goto_2
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    mul-double v0, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 95
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 102
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cy:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    .line 103
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cx:D

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    add-double/2addr p3, p3

    .line 105
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    add-double/2addr p3, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->cp:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    .line 106
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 107
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    iget v0, p0, Lorg/locationtech/proj4j/proj/MolleweideProjection;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 126
    const-string v0, "Molleweide"

    return-object v0

    .line 124
    :cond_0
    const-string v0, "Wagner V"

    return-object v0

    .line 122
    :cond_1
    const-string v0, "Wagner IV"

    return-object v0
.end method
