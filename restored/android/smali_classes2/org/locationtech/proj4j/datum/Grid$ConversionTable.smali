.class public final Lorg/locationtech/proj4j/datum/Grid$ConversionTable;
.super Ljava/lang/Object;
.source "Grid.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/datum/Grid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversionTable"
.end annotation


# instance fields
.field public cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

.field public del:Lorg/locationtech/proj4j/util/PolarCoordinate;

.field public id:Ljava/lang/String;

.field public lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

.field public ll:Lorg/locationtech/proj4j/util/PolarCoordinate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 183
    instance-of v0, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 184
    check-cast p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    .line 185
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v1

    .line 186
    :cond_0
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    if-nez v0, :cond_2

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    if-eqz v2, :cond_2

    return v1

    .line 188
    :cond_2
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    invoke-virtual {v0, v2}, Lorg/locationtech/proj4j/util/PolarCoordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 189
    :cond_3
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    if-nez v0, :cond_4

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    if-eqz v2, :cond_4

    return v1

    .line 190
    :cond_4
    iget-object v2, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    invoke-virtual {v0, v2}, Lorg/locationtech/proj4j/util/PolarCoordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 191
    :cond_5
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    iget-object p1, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 174
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 175
    :goto_0
    iget-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/proj4j/util/PolarCoordinate;->hashCode()I

    move-result v2

    .line 176
    :goto_1
    iget-object v3, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/locationtech/proj4j/util/PolarCoordinate;->hashCode()I

    move-result v1

    .line 177
    :goto_2
    iget-object v3, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    mul-int/lit8 v2, v2, 0xb

    or-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x17

    or-int/2addr v0, v1

    mul-int/lit8 v3, v3, 0x25

    or-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Grid: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
