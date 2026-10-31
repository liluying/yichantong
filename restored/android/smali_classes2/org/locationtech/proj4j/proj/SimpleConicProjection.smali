.class public Lorg/locationtech/proj4j/proj/SimpleConicProjection;
.super Lorg/locationtech/proj4j/proj/ConicProjection;
.source "SimpleConicProjection.java"


# static fields
.field private static final EPS:D = 1.0E-10

.field private static final EPS10:D = 1.0E-10

.field public static final EULER:I = 0x0

.field public static final MURD1:I = 0x1

.field public static final MURD2:I = 0x2

.field public static final MURD3:I = 0x3

.field public static final PCONIC:I = 0x4

.field public static final TISSOT:I = 0x5

.field public static final VITK1:I = 0x6


# instance fields
.field private c1:D

.field private c2:D

.field private n:D

.field private rho_0:D

.field private rho_c:D

.field private sig:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/proj/SimpleConicProjection;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/ConicProjection;-><init>()V

    .line 51
    iput p1, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    const-wide/16 v0, 0x0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 187
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/SimpleConicProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 188
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/SimpleConicProjection;

    .line 189
    iget v3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    iget v1, v1, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    if-ne v3, v1, :cond_1

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
    .locals 4

    .line 196
    iget v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 11

    .line 107
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 128
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    sub-double v6, v4, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v8

    add-double/2addr v4, v0

    mul-double v4, v4, v8

    .line 130
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v10, v0, v4

    if-ltz v10, :cond_1

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v10, v0, v4

    if-gez v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, -0x2a

    :goto_1
    if-nez v0, :cond_3

    .line 137
    iget v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 175
    :pswitch_0
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    div-double/2addr v2, v6

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    .line 176
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double/2addr v6, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    add-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    .line 177
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    return-void

    .line 139
    :pswitch_1
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    .line 140
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 141
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    div-double v4, v2, v0

    div-double/2addr v0, v2

    add-double/2addr v4, v0

    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    .line 142
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    sub-double/2addr v4, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    return-void

    .line 166
    :pswitch_2
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    .line 167
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c2:D

    .line 168
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c1:D

    .line 169
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double/2addr v6, v4

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v8, v6, v4

    if-gez v8, :cond_2

    .line 171
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c2:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sub-double/2addr v6, v0

    mul-double v4, v4, v6

    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    return-void

    .line 170
    :cond_2
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "-43"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_3
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double v0, v6, v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    .line 156
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    mul-double v6, v6, v6

    div-double/2addr v0, v6

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    return-void

    .line 150
    :pswitch_4
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double v2, v0, v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    .line 151
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    .line 152
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    return-void

    .line 145
    :pswitch_5
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    div-double/2addr v0, v6

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    .line 146
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    return-void

    .line 160
    :pswitch_6
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double/2addr v0, v6

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    mul-double v6, v6, v8

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double/2addr v6, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    add-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    .line 163
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    return-void

    .line 135
    :cond_3
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 63
    iget v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 71
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    sub-double/2addr v0, p3

    goto :goto_0

    .line 68
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c2:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c1:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    sub-double/2addr p3, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    sub-double/2addr v2, p3

    mul-double v0, v0, v2

    goto :goto_0

    .line 65
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    sub-double/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    add-double/2addr v0, p3

    .line 74
    :goto_0
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    mul-double p1, p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 75
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    sub-double/2addr p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 7

    .line 82
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_0:D

    sub-double/2addr v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2, v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    neg-double v0, v0

    neg-double v2, p1

    .line 85
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double v2, p3

    .line 86
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 88
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->n:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 89
    iget p1, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->type:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 97
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    sub-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 91
    :cond_1
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c1:D

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->c2:D

    div-double/2addr v0, p3

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    add-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 94
    :cond_2
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->sig:D

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/SimpleConicProjection;->rho_c:D

    sub-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    sub-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "Simple Conic"

    return-object v0
.end method
