.class public final Lorg/locationtech/proj4j/util/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field public i:D

.field public r:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    .line 26
    iput-wide p3, p0, Lorg/locationtech/proj4j/util/Complex;->i:D

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/util/Complex;)V
    .locals 4

    .line 30
    iget-wide v0, p1, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/util/Complex;->i:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/util/Complex;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 38
    instance-of v0, p1, Lorg/locationtech/proj4j/util/Complex;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lorg/locationtech/proj4j/util/Complex;

    iget-wide v2, p1, Lorg/locationtech/proj4j/util/Complex;->r:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p1, Lorg/locationtech/proj4j/util/Complex;->i:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/util/Complex;->i:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 34
    iget-wide v0, p0, Lorg/locationtech/proj4j/util/Complex;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/util/Complex;->i:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    or-int/2addr v0, v1

    return v0
.end method
