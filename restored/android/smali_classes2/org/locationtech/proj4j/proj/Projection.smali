.class public abstract Lorg/locationtech/proj4j/proj/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field protected static final DTR:D = 0.017453292519943295

.field protected static final EPS10:D = 1.0E-10

.field protected static final RTD:D = 57.29577951308232


# instance fields
.field protected a:D

.field protected alpha:D

.field private axes:Lorg/locationtech/proj4j/datum/AxisOrder;

.field protected e:D

.field protected ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field protected es:D

.field protected falseEasting:D

.field protected falseNorthing:D

.field protected fromMetres:D

.field protected geocentric:Z

.field protected lonc:D

.field protected maxLatitude:D

.field protected maxLongitude:D

.field protected minLatitude:D

.field protected minLongitude:D

.field protected name:Ljava/lang/String;

.field protected one_es:D

.field private primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

.field protected projectionLatitude:D

.field protected projectionLatitude1:D

.field protected projectionLatitude2:D

.field protected projectionLongitude:D

.field protected rone_es:D

.field protected scaleFactor:D

.field protected spherical:Z

.field private totalFalseEasting:D

.field private totalFalseNorthing:D

.field protected totalScale:D

.field protected trueScaleLatitude:D

.field protected unit:Lorg/locationtech/proj4j/units/Unit;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 46
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    .line 51
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 56
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 61
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 71
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 76
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    .line 81
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 86
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    .line 91
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 96
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 101
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 106
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 111
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 116
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    .line 121
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    .line 126
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    .line 131
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    .line 136
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->rone_es:D

    const/4 v4, 0x0

    .line 156
    iput-object v4, p0, Lorg/locationtech/proj4j/proj/Projection;->name:Ljava/lang/String;

    .line 161
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    .line 166
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalScale:D

    .line 171
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalFalseEasting:D

    .line 176
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalFalseNorthing:D

    .line 181
    iput-object v4, p0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    .line 186
    const-string v0, "greenwich"

    invoke-static {v0}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->forName(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    .line 192
    sget-object v0, Lorg/locationtech/proj4j/datum/AxisOrder;->ENU:Lorg/locationtech/proj4j/datum/AxisOrder;

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->axes:Lorg/locationtech/proj4j/datum/AxisOrder;

    .line 200
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->SPHERE:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {p0, v0}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    return-void
.end method

.method public static normalizeLongitude(F)F
    .locals 3

    float-to-double v0, p0

    .line 814
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    sub-float/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    add-float/2addr p0, v1

    goto :goto_1

    :cond_1
    return p0

    .line 815
    :cond_2
    new-instance p0, Lorg/locationtech/proj4j/InvalidValueException;

    const-string v0, "Infinite or NaN longitude"

    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static normalizeLongitudeRadians(D)D
    .locals 5

    .line 824
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    sub-double/2addr p0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v4, p0, v0

    if-gez v4, :cond_1

    add-double/2addr p0, v2

    goto :goto_1

    :cond_1
    return-wide p0

    .line 825
    :cond_2
    new-instance p0, Lorg/locationtech/proj4j/InvalidValueException;

    const-string p1, "Infinite or NaN longitude"

    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private projectRadians(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 254
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/Projection;->project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-object p1, p0

    .line 255
    iget-object p2, p1, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    if-eqz p2, :cond_0

    sget-object p3, Lorg/locationtech/proj4j/units/Units;->DEGREES:Lorg/locationtech/proj4j/units/Unit;

    invoke-virtual {p2, p3}, Lorg/locationtech/proj4j/units/Unit;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 257
    iget-wide p2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p2, p2, v0

    iput-wide p2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 258
    iget-wide p2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double p2, p2, v0

    iput-wide p2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 262
    :cond_0
    iget-wide p2, p1, Lorg/locationtech/proj4j/proj/Projection;->totalScale:D

    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v0, v0, p2

    iget-wide v2, p1, Lorg/locationtech/proj4j/proj/Projection;->totalFalseEasting:D

    add-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 263
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double p2, p2, v0

    iget-wide v0, p1, Lorg/locationtech/proj4j/proj/Projection;->totalFalseNorthing:D

    add-double/2addr p2, v0

    iput-wide p2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 205
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/proj/Projection;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 209
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 861
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/Projection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 862
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/Projection;

    .line 866
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iget-object v3, v1, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 867
    invoke-virtual {p1, v3}, Lorg/locationtech/proj4j/datum/Ellipsoid;->isEqual(Lorg/locationtech/proj4j/datum/Ellipsoid;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->axes:Lorg/locationtech/proj4j/datum/AxisOrder;

    iget-object v3, v1, Lorg/locationtech/proj4j/proj/Projection;->axes:Lorg/locationtech/proj4j/datum/AxisOrder;

    .line 881
    invoke-virtual {p1, v3}, Lorg/locationtech/proj4j/datum/AxisOrder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    iget-object v3, v1, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    .line 882
    invoke-virtual {p1, v3}, Lorg/locationtech/proj4j/units/Unit;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    iget-object v1, v1, Lorg/locationtech/proj4j/proj/Projection;->primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    .line 883
    invoke-virtual {p1, v1}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getAlpha()D
    .locals 2

    .line 663
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    return-wide v0
.end method

.method public getAxisOrder()Lorg/locationtech/proj4j/datum/AxisOrder;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->axes:Lorg/locationtech/proj4j/datum/AxisOrder;

    return-object v0
.end method

.method public getEPSGCode()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;
    .locals 1

    .line 761
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    return-object v0
.end method

.method public getEquatorRadius()D
    .locals 2

    .line 739
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    return-wide v0
.end method

.method public getFalseEasting()D
    .locals 2

    .line 709
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    return-wide v0
.end method

.method public getFalseNorthing()D
    .locals 2

    .line 698
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    return-wide v0
.end method

.method public getFromMetres()D
    .locals 2

    .line 750
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    return-wide v0
.end method

.method public getHeightOfOrbit()D
    .locals 1

    .line 789
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLonC()D
    .locals 2

    .line 687
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    return-wide v0
.end method

.method public getMaxLatitude()D
    .locals 2

    .line 489
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    return-wide v0
.end method

.method public getMaxLatitudeDegrees()D
    .locals 4

    .line 493
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getMaxLongitude()D
    .locals 2

    .line 521
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    return-wide v0
.end method

.method public getMaxLongitudeDegrees()D
    .locals 4

    .line 529
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getMinLatitude()D
    .locals 2

    .line 478
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    return-wide v0
.end method

.method public getMinLatitudeDegrees()D
    .locals 4

    .line 497
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getMinLongitude()D
    .locals 2

    .line 505
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    return-wide v0
.end method

.method public getMinLongitudeDegrees()D
    .locals 4

    .line 513
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/Projection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPROJ4Description()Ljava/lang/String;
    .locals 7

    .line 427
    new-instance v0, Lorg/locationtech/proj4j/units/AngleFormat;

    const-string v1, "DdM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/locationtech/proj4j/units/AngleFormat;-><init>(Ljava/lang/String;Z)V

    .line 428
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+proj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/Projection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " +a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " +es="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    :cond_0
    const-string v2, " +lon_0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/locationtech/proj4j/units/AngleFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 437
    const-string v2, " +lat_0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/locationtech/proj4j/units/AngleFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 439
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " +x_0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " +y_0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    :cond_2
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " +k="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_3
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " +fr_meters="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeMeridian()Lorg/locationtech/proj4j/datum/PrimeMeridian;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    return-object v0
.end method

.method public getProjectionLatitude()D
    .locals 2

    .line 540
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    return-wide v0
.end method

.method public getProjectionLatitude1()D
    .locals 2

    .line 606
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    return-wide v0
.end method

.method public getProjectionLatitude1Degrees()D
    .locals 4

    .line 617
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getProjectionLatitude2()D
    .locals 2

    .line 628
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    return-wide v0
.end method

.method public getProjectionLatitude2Degrees()D
    .locals 4

    .line 639
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getProjectionLatitudeDegrees()D
    .locals 4

    .line 551
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getProjectionLongitude()D
    .locals 2

    .line 562
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    return-wide v0
.end method

.method public getProjectionLongitudeDegrees()D
    .locals 4

    .line 573
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getScaleFactor()D
    .locals 2

    .line 735
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    return-wide v0
.end method

.method public getSouthernHemisphere()Z
    .locals 1

    .line 717
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getTrueScaleLatitude()D
    .locals 2

    .line 584
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    return-wide v0
.end method

.method public getTrueScaleLatitudeDegrees()D
    .locals 4

    .line 595
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getUnits()Lorg/locationtech/proj4j/units/Unit;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/locationtech/proj4j/units/Units;->METRES:Lorg/locationtech/proj4j/units/Unit;

    return-object v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 20

    move-object/from16 v0, p0

    .line 894
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 895
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 896
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    .line 897
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, v0, Lorg/locationtech/proj4j/proj/Projection;->axes:Lorg/locationtech/proj4j/datum/AxisOrder;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    move-object/from16 v18, v1

    iget-object v1, v0, Lorg/locationtech/proj4j/proj/Projection;->primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v15, v0, v19

    const/4 v15, 0x1

    aput-object v16, v0, v15

    const/4 v15, 0x2

    aput-object v3, v0, v15

    const/4 v3, 0x3

    aput-object v4, v0, v3

    const/4 v3, 0x4

    aput-object v5, v0, v3

    const/4 v3, 0x5

    aput-object v6, v0, v3

    const/4 v3, 0x6

    aput-object v7, v0, v3

    const/4 v3, 0x7

    aput-object v8, v0, v3

    const/16 v3, 0x8

    aput-object v9, v0, v3

    const/16 v3, 0x9

    aput-object v10, v0, v3

    const/16 v3, 0xa

    aput-object v11, v0, v3

    const/16 v3, 0xb

    aput-object v12, v0, v3

    const/16 v3, 0xc

    aput-object v13, v0, v3

    const/16 v3, 0xd

    aput-object v14, v0, v3

    const/16 v3, 0xe

    aput-object v17, v0, v3

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const/16 v2, 0x10

    aput-object v18, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 894
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 5

    .line 805
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    .line 806
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    div-double/2addr v2, v0

    .line 807
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->rone_es:D

    .line 808
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalScale:D

    .line 809
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalFalseEasting:D

    .line 810
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalFalseNorthing:D

    return-void
.end method

.method public inside(DD)Z
    .locals 3

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 403
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    sub-double/2addr p1, v0

    double-to-float p1, p1

    invoke-static {p1}, Lorg/locationtech/proj4j/proj/Projection;->normalizeLongitude(F)F

    move-result p1

    float-to-double p1, p1

    .line 404
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    cmpg-double v0, p3, p1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inverseProject(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 293
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/proj4j/proj/Projection;->inverseProjectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    .line 294
    iget-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 295
    iget-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v0, v0, v2

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p2
.end method

.method public inverseProjectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 12

    .line 311
    iget-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/locationtech/proj4j/units/Units;->DEGREES:Lorg/locationtech/proj4j/units/Unit;

    invoke-virtual {v0, v1}, Lorg/locationtech/proj4j/units/Unit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    .line 314
    iget-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v4, v4, v2

    :goto_0
    move-object v6, p0

    move-object v11, p2

    move-wide v7, v0

    move-wide v9, v4

    goto :goto_1

    .line 317
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->totalFalseEasting:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->totalScale:D

    div-double/2addr v0, v2

    .line 318
    iget-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->totalFalseNorthing:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    goto :goto_0

    .line 321
    :goto_1
    invoke-virtual/range {v6 .. v11}, Lorg/locationtech/proj4j/proj/Projection;->projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    .line 323
    iget-wide p1, v11, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 324
    iput-wide v0, v11, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    goto :goto_2

    :cond_1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    .line 326
    iput-wide v0, v11, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 327
    :cond_2
    :goto_2
    iget-wide p1, v6, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_3

    .line 328
    iget-wide v0, v11, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide p1

    iput-wide p1, v11, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    :cond_3
    return-object v11
.end method

.method public isConformal()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isGeographic()Ljava/lang/Boolean;
    .locals 1

    .line 847
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public parallelsAreParallel()Z
    .locals 1

    .line 396
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/Projection;->isRectilinear()Z

    move-result v0

    return v0
.end method

.method protected project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 279
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 280
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public project(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 10

    .line 222
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    .line 223
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    sub-double/2addr v0, v4

    .line 224
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    .line 225
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v7, v0, v2

    move-object v4, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/locationtech/proj4j/proj/Projection;->projectRadians(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1
.end method

.method protected projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 344
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 345
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectRadians(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    .line 238
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 239
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    sub-double/2addr v0, v2

    .line 240
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v0

    :cond_0
    move-wide v3, v0

    .line 241
    iget-wide v5, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/locationtech/proj4j/proj/Projection;->projectRadians(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1
.end method

.method public setAlpha(D)V
    .locals 0

    .line 646
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    return-void
.end method

.method public setAlphaDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 653
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    return-void
.end method

.method public setAxisOrder(Ljava/lang/String;)V
    .locals 0

    .line 455
    invoke-static {p1}, Lorg/locationtech/proj4j/datum/AxisOrder;->fromString(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/AxisOrder;

    move-result-object p1

    iput-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->axes:Lorg/locationtech/proj4j/datum/AxisOrder;

    return-void
.end method

.method public setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V
    .locals 2

    .line 754
    iput-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 755
    iget-wide v0, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    .line 756
    iget-wide v0, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    .line 757
    iget-wide v0, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    return-void
.end method

.method public setFalseEasting(D)V
    .locals 0

    .line 705
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    return-void
.end method

.method public setFalseNorthing(D)V
    .locals 0

    .line 694
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    return-void
.end method

.method public setFromMetres(D)V
    .locals 0

    .line 746
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->fromMetres:D

    return-void
.end method

.method public setGamma(D)V
    .locals 0

    .line 0
    return-void
.end method

.method public setGammaDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 838
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/proj4j/proj/Projection;->setGamma(D)V

    return-void
.end method

.method public setHeightOfOrbit(D)V
    .locals 0

    .line 797
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public setLonC(D)V
    .locals 0

    .line 670
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    return-void
.end method

.method public setLonCDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 677
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    return-void
.end method

.method public setMaxLatitude(D)V
    .locals 0

    .line 485
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    return-void
.end method

.method public setMaxLongitude(D)V
    .locals 0

    .line 517
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    return-void
.end method

.method public setMaxLongitudeDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 525
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    return-void
.end method

.method public setMinLatitude(D)V
    .locals 0

    .line 474
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    return-void
.end method

.method public setMinLongitude(D)V
    .locals 0

    .line 501
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    return-void
.end method

.method public setMinLongitudeDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 509
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoUoff(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPrimeMeridian(Ljava/lang/String;)V
    .locals 0

    .line 463
    invoke-static {p1}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->forName(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object p1

    iput-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->primeMeridian:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    return-void
.end method

.method public setProjectionLatitude(D)V
    .locals 0

    .line 536
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    return-void
.end method

.method public setProjectionLatitude1(D)V
    .locals 0

    .line 602
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    return-void
.end method

.method public setProjectionLatitude1Degrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 613
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    return-void
.end method

.method public setProjectionLatitude2(D)V
    .locals 0

    .line 624
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    return-void
.end method

.method public setProjectionLatitude2Degrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 635
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    return-void
.end method

.method public setProjectionLatitudeDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 547
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    return-void
.end method

.method public setProjectionLongitude(D)V
    .locals 0

    .line 558
    invoke-static {p1, p2}, Lorg/locationtech/proj4j/proj/Projection;->normalizeLongitudeRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    return-void
.end method

.method public setProjectionLongitudeDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 569
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    .line 765
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    return-void
.end method

.method public setScaleFactor(D)V
    .locals 0

    .line 725
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    return-void
.end method

.method public setSouthernHemisphere(Z)V
    .locals 0

    .line 713
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public setTrueScaleLatitude(D)V
    .locals 0

    .line 580
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    return-void
.end method

.method public setTrueScaleLatitudeDegrees(D)V
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v0

    .line 591
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    return-void
.end method

.method public setUnits(Lorg/locationtech/proj4j/units/Unit;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 451
    const-string v0, "None"

    return-object v0
.end method
