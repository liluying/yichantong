.class public Lorg/locationtech/proj4j/geodesic/GeodesicData;
.super Ljava/lang/Object;
.source "GeodesicData.java"


# instance fields
.field public M12:D

.field public M21:D

.field public S12:D

.field public a12:D

.field public azi1:D

.field public azi2:D

.field public lat1:D

.field public lat2:D

.field public lon1:D

.field public lon2:D

.field public m12:D

.field public s12:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 75
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->S12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M21:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->M12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->m12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->a12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat1:D

    return-void
.end method
