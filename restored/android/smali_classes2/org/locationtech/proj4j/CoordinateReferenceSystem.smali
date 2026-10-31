.class public Lorg/locationtech/proj4j/CoordinateReferenceSystem;
.super Ljava/lang/Object;
.source "CoordinateReferenceSystem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CS_GEO:Lorg/locationtech/proj4j/CoordinateReferenceSystem;


# instance fields
.field private datum:Lorg/locationtech/proj4j/datum/Datum;

.field private name:Ljava/lang/String;

.field private params:[Ljava/lang/String;

.field private proj:Lorg/locationtech/proj4j/proj/Projection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    const-string v1, "CS_GEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;-><init>(Ljava/lang/String;[Ljava/lang/String;Lorg/locationtech/proj4j/datum/Datum;Lorg/locationtech/proj4j/proj/Projection;)V

    sput-object v0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->CS_GEO:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lorg/locationtech/proj4j/datum/Datum;Lorg/locationtech/proj4j/proj/Projection;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->params:[Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->datum:Lorg/locationtech/proj4j/datum/Datum;

    .line 62
    iput-object p4, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->proj:Lorg/locationtech/proj4j/proj/Projection;

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    .line 67
    invoke-virtual {p4}, Lorg/locationtech/proj4j/proj/Projection;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 66
    :cond_0
    const-string p1, "null-proj"

    .line 68
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-CS"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->name:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public createGeographic()Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 5

    .line 114
    invoke-virtual {p0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    .line 115
    new-instance v1, Lorg/locationtech/proj4j/proj/LongLatProjection;

    invoke-direct {v1}, Lorg/locationtech/proj4j/proj/LongLatProjection;-><init>()V

    .line 116
    invoke-virtual {p0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/proj4j/proj/Projection;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 117
    sget-object v2, Lorg/locationtech/proj4j/units/Units;->DEGREES:Lorg/locationtech/proj4j/units/Unit;

    invoke-virtual {v1, v2}, Lorg/locationtech/proj4j/proj/Projection;->setUnits(Lorg/locationtech/proj4j/units/Unit;)V

    .line 118
    invoke-virtual {v1}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 119
    new-instance v2, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GEO-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;-><init>(Ljava/lang/String;[Ljava/lang/String;Lorg/locationtech/proj4j/datum/Datum;Lorg/locationtech/proj4j/proj/Projection;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 131
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 132
    check-cast p1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    .line 134
    iget-object v1, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->datum:Lorg/locationtech/proj4j/datum/Datum;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/locationtech/proj4j/datum/Datum;->isEqual(Lorg/locationtech/proj4j/datum/Datum;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->proj:Lorg/locationtech/proj4j/proj/Projection;

    iget-object p1, p1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->proj:Lorg/locationtech/proj4j/proj/Projection;

    invoke-virtual {v1, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getDatum()Lorg/locationtech/proj4j/datum/Datum;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->datum:Lorg/locationtech/proj4j/datum/Datum;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterString()Ljava/lang/String;
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->params:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->params:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 93
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()[Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public getProjection()Lorg/locationtech/proj4j/proj/Projection;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->proj:Lorg/locationtech/proj4j/proj/Projection;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 141
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->datum:Lorg/locationtech/proj4j/datum/Datum;

    iget-object v1, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->proj:Lorg/locationtech/proj4j/proj/Projection;

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

.method public isGeographic()Ljava/lang/Boolean;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->proj:Lorg/locationtech/proj4j/proj/Projection;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/proj/Projection;->isGeographic()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->name:Ljava/lang/String;

    return-object v0
.end method
