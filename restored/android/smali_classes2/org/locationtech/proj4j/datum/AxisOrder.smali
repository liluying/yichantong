.class public final Lorg/locationtech/proj4j/datum/AxisOrder;
.super Ljava/lang/Object;
.source "AxisOrder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
    }
.end annotation


# static fields
.field public static final ENU:Lorg/locationtech/proj4j/datum/AxisOrder;


# instance fields
.field private final x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field private final y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field private final z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 89
    new-instance v0, Lorg/locationtech/proj4j/datum/AxisOrder;

    sget-object v1, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Easting:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    sget-object v2, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Northing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    sget-object v3, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Up:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-direct {v0, v1, v2, v3}, Lorg/locationtech/proj4j/datum/AxisOrder;-><init>(Lorg/locationtech/proj4j/datum/AxisOrder$Axis;Lorg/locationtech/proj4j/datum/AxisOrder$Axis;Lorg/locationtech/proj4j/datum/AxisOrder$Axis;)V

    sput-object v0, Lorg/locationtech/proj4j/datum/AxisOrder;->ENU:Lorg/locationtech/proj4j/datum/AxisOrder;

    return-void
.end method

.method private constructor <init>(Lorg/locationtech/proj4j/datum/AxisOrder$Axis;Lorg/locationtech/proj4j/datum/AxisOrder$Axis;Lorg/locationtech/proj4j/datum/AxisOrder$Axis;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 96
    iput-object p2, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 97
    iput-object p3, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/AxisOrder;
    .locals 3

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->fromChar(C)Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    move-result-object v0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->fromChar(C)Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    move-result-object v1

    const/4 v2, 0x2

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->fromChar(C)Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    move-result-object p0

    .line 109
    new-instance v2, Lorg/locationtech/proj4j/datum/AxisOrder;

    invoke-direct {v2, v0, v1, p0}, Lorg/locationtech/proj4j/datum/AxisOrder;-><init>(Lorg/locationtech/proj4j/datum/AxisOrder$Axis;Lorg/locationtech/proj4j/datum/AxisOrder$Axis;Lorg/locationtech/proj4j/datum/AxisOrder$Axis;)V

    return-object v2

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 137
    instance-of v0, p1, Lorg/locationtech/proj4j/datum/AxisOrder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Lorg/locationtech/proj4j/datum/AxisOrder;

    .line 139
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/AxisOrder;->x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    iget-object v2, p1, Lorg/locationtech/proj4j/datum/AxisOrder;->y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    iget-object p1, p1, Lorg/locationtech/proj4j/datum/AxisOrder;->z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 6

    .line 113
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)D

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v2, p1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)D

    move-result-wide v2

    .line 115
    iget-object v4, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v4, p1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)D

    move-result-wide v4

    .line 116
    iput-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 117
    iput-wide v2, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 118
    iput-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    or-int/2addr v0, v1

    return v0
.end method

.method public toENU(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 7

    .line 122
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 123
    iget-wide v2, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 124
    iget-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    .line 125
    iget-object v6, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->x:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v6, v0, v1, p1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->toENU(DLorg/locationtech/proj4j/ProjCoordinate;)V

    .line 126
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->y:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v0, v2, v3, p1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->toENU(DLorg/locationtech/proj4j/ProjCoordinate;)V

    .line 127
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/AxisOrder;->z:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v0, v4, v5, p1}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->toENU(DLorg/locationtech/proj4j/ProjCoordinate;)V

    return-void
.end method
