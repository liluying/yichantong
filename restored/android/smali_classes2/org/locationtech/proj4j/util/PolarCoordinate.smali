.class public final Lorg/locationtech/proj4j/util/PolarCoordinate;
.super Ljava/lang/Object;
.source "PolarCoordinate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lam:D

.field public phi:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 30
    iput-wide p3, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/util/PolarCoordinate;)V
    .locals 4

    .line 25
    iget-wide v0, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 45
    instance-of v0, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 47
    iget-wide v2, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-wide v4, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-wide v4, p1, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 35
    iget-wide v0, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "<\u03bb%f, \u03c6%f>"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
