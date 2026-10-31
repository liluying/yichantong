.class public final Lorg/locationtech/proj4j/util/IntPolarCoordinate;
.super Ljava/lang/Object;
.source "IntPolarCoordinate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lam:I

.field public phi:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    .line 30
    iput p2, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/util/IntPolarCoordinate;)V
    .locals 1

    .line 25
    iget v0, p1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    iget p1, p1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    invoke-direct {p0, v0, p1}, Lorg/locationtech/proj4j/util/IntPolarCoordinate;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 45
    instance-of v0, p1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    .line 47
    iget v0, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    iget v2, p1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    iget p1, p1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 40
    iget v0, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    iget v1, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    mul-int/lit8 v1, v1, 0x11

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 35
    iget v0, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "ILP %x:%x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
