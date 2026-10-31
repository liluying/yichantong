.class public Lorg/locationtech/proj4j/proj/GeocentProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "GeocentProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public inverseProjectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 1

    .line 17
    new-instance p1, Lorg/locationtech/proj4j/datum/GeocentricConverter;

    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-direct {p1, v0}, Lorg/locationtech/proj4j/datum/GeocentricConverter;-><init>(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 18
    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->convertGeocentricToGeodetic(Lorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p2
.end method

.method public projectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 1

    .line 10
    new-instance p1, Lorg/locationtech/proj4j/datum/GeocentricConverter;

    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-direct {p1, v0}, Lorg/locationtech/proj4j/datum/GeocentricConverter;-><init>(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 11
    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->convertGeodeticToGeocentric(Lorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p2
.end method
