.class public Lorg/locationtech/proj4j/BasicCoordinateTransform;
.super Ljava/lang/Object;
.source "BasicCoordinateTransform.java"

# interfaces
.implements Lorg/locationtech/proj4j/CoordinateTransform;


# instance fields
.field private final doDatumTransform:Z

.field private final doForwardProjection:Z

.field private final doInverseProjection:Z

.field private final srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

.field private srcGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

.field private final tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

.field private tgtGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

.field private final transformViaGeocentric:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/proj4j/CoordinateReferenceSystem;Lorg/locationtech/proj4j/CoordinateReferenceSystem;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    .line 72
    iput-object p2, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    .line 77
    sget-object v0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->CS_GEO:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->doInverseProjection:Z

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_1
    iput-boolean v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->doForwardProjection:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {p2}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v3

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->doDatumTransform:Z

    if-eqz v0, :cond_9

    .line 86
    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v0

    invoke-virtual {p2}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/Datum;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/locationtech/proj4j/datum/Ellipsoid;->isEqual(Lorg/locationtech/proj4j/datum/Ellipsoid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->hasTransformToWGS84()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    invoke-virtual {p2}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->hasTransformToWGS84()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_3
    if-eqz v1, :cond_8

    .line 91
    new-instance v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/Datum;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/locationtech/proj4j/datum/GeocentricConverter;-><init>(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    iput-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    .line 92
    new-instance v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {p2}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/Datum;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/locationtech/proj4j/datum/GeocentricConverter;-><init>(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    iput-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    .line 94
    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result p1

    .line 95
    invoke-virtual {p2}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object p2

    invoke-virtual {p2}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result p2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    if-ne p2, v0, :cond_8

    :cond_5
    if-ne p1, v0, :cond_6

    .line 100
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->overrideWithWGS84Params()V

    :cond_6
    if-ne p2, v0, :cond_7

    .line 104
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->overrideWithWGS84Params()V

    .line 109
    :cond_7
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    iget-object p2, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->isEqual(Lorg/locationtech/proj4j/datum/GeocentricConverter;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    .line 112
    iput-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    goto :goto_4

    :cond_8
    move v2, v1

    .line 120
    :cond_9
    :goto_4
    iput-boolean v2, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->transformViaGeocentric:Z

    return-void
.end method

.method private datumTransform(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/proj4j/datum/Datum;->isEqual(Lorg/locationtech/proj4j/datum/Datum;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    .line 188
    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    .line 189
    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/Datum;->shift(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 203
    :cond_1
    iget-boolean v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->transformViaGeocentric:Z

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->convertGeodeticToGeocentric(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 212
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->hasTransformToWGS84()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/Datum;->transformFromGeocentricToWgs84(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 216
    :cond_2
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->hasTransformToWGS84()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/Datum;->transformToGeocentricFromWgs84(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 223
    :cond_3
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtGeoConv:Lorg/locationtech/proj4j/datum/GeocentricConverter;

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->convertGeocentricToGeodetic(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 229
    :cond_4
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 230
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/datum/Datum;->inverseShift(Lorg/locationtech/proj4j/ProjCoordinate;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getSourceCRS()Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    return-object v0
.end method

.method public getTargetCRS()Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    return-object v0
.end method

.method public transform(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 147
    invoke-virtual {p2, p1}, Lorg/locationtech/proj4j/ProjCoordinate;->setValue(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 148
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/locationtech/proj4j/proj/Projection;->getAxisOrder()Lorg/locationtech/proj4j/datum/AxisOrder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/AxisOrder;->toENU(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 151
    iget-boolean p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->doInverseProjection:Z

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/locationtech/proj4j/proj/Projection;->inverseProjectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    .line 156
    :cond_0
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->srcCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/locationtech/proj4j/proj/Projection;->getPrimeMeridian()Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->toGreenwich(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 159
    invoke-virtual {p2}, Lorg/locationtech/proj4j/ProjCoordinate;->clearZ()V

    .line 161
    iget-boolean p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->doDatumTransform:Z

    if-eqz p1, :cond_1

    .line 162
    invoke-direct {p0, p2}, Lorg/locationtech/proj4j/BasicCoordinateTransform;->datumTransform(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 165
    :cond_1
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/locationtech/proj4j/proj/Projection;->getPrimeMeridian()Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->fromGreenwich(Lorg/locationtech/proj4j/ProjCoordinate;)V

    .line 167
    iget-boolean p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->doForwardProjection:Z

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/locationtech/proj4j/proj/Projection;->projectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    .line 172
    :cond_2
    iget-object p1, p0, Lorg/locationtech/proj4j/BasicCoordinateTransform;->tgtCRS:Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-virtual {p1}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;->getProjection()Lorg/locationtech/proj4j/proj/Projection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/locationtech/proj4j/proj/Projection;->getAxisOrder()Lorg/locationtech/proj4j/datum/AxisOrder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/locationtech/proj4j/datum/AxisOrder;->fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p2
.end method
