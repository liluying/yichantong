.class public final Lorg/locationtech/proj4j/util/FloatPolarCoordinate;
.super Ljava/lang/Object;
.source "FloatPolarCoordinate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lam:F

.field public phi:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    .line 30
    iput p2, p0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/util/FloatPolarCoordinate;)V
    .locals 1

    .line 25
    iget v0, p1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    iget p1, p1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    invoke-direct {p0, v0, p1}, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 40
    instance-of v0, p1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    .line 42
    iget v0, p0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    iget v2, p1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    iget p1, p1, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->lam:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;->phi:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    or-int/2addr v0, v1

    return v0
.end method
