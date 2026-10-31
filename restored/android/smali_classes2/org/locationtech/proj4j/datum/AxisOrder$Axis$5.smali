.class final enum Lorg/locationtech/proj4j/datum/AxisOrder$Axis$5;
.super Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
.source "AxisOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;-><init>(Ljava/lang/String;ILorg/locationtech/proj4j/datum/AxisOrder$1;)V

    return-void
.end method


# virtual methods
.method public fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)D
    .locals 2

    .line 58
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-wide v0
.end method

.method public toENU(DLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 0

    .line 61
    iput-wide p1, p3, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method
