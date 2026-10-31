.class public Lorg/locationtech/proj4j/parser/Proj4Parser;
.super Ljava/lang/Object;
.source "Proj4Parser.java"


# instance fields
.field private registry:Lorg/locationtech/proj4j/Registry;


# direct methods
.method public constructor <init>(Lorg/locationtech/proj4j/Registry;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/locationtech/proj4j/parser/Proj4Parser;->registry:Lorg/locationtech/proj4j/Registry;

    return-void
.end method

.method private createParameterMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 342
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 343
    aget-object v3, p1, v2

    .line 345
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/16 v4, 0x3d

    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 351
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 357
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static parseAngle(Ljava/lang/String;)D
    .locals 2

    .line 364
    invoke-static {p0}, Lorg/locationtech/proj4j/units/Angle;->parse(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private parseDatum(Ljava/util/Map;Lorg/locationtech/proj4j/parser/DatumParameters;)V
    .locals 2

    .line 189
    const-string v0, "towgs84"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseToWGS84(Ljava/lang/String;)[D

    move-result-object v0

    .line 192
    invoke-virtual {p2, v0}, Lorg/locationtech/proj4j/parser/DatumParameters;->setDatumTransform([D)V

    .line 195
    :cond_0
    const-string v0, "datum"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lorg/locationtech/proj4j/parser/Proj4Parser;->registry:Lorg/locationtech/proj4j/Registry;

    invoke-virtual {v1, v0}, Lorg/locationtech/proj4j/Registry;->getDatum(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p2, v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->setDatum(Lorg/locationtech/proj4j/datum/Datum;)V

    goto :goto_0

    .line 199
    :cond_1
    new-instance p1, Lorg/locationtech/proj4j/InvalidValueException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown datum: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_2
    :goto_0
    const-string v0, "nadgrids"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 206
    :try_start_0
    invoke-static {p1}, Lorg/locationtech/proj4j/datum/Grid;->fromNadGrids(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/locationtech/proj4j/parser/DatumParameters;->setGrids(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 208
    :catch_0
    new-instance p2, Lorg/locationtech/proj4j/InvalidValueException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown nadgrid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method

.method private parseEllipsoid(Ljava/util/Map;Lorg/locationtech/proj4j/parser/DatumParameters;)V
    .locals 5

    .line 252
    const-string v0, "ellps"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 254
    iget-object v1, p0, Lorg/locationtech/proj4j/parser/Proj4Parser;->registry:Lorg/locationtech/proj4j/Registry;

    invoke-virtual {v1, v0}, Lorg/locationtech/proj4j/Registry;->getEllipsoid(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p2, v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Lorg/locationtech/proj4j/InvalidValueException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ellipsoid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_1
    :goto_0
    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 265
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 266
    invoke-virtual {p2, v0, v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->setA(D)V

    .line 269
    :cond_2
    const-string v0, "es"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 271
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 272
    invoke-virtual {p2, v0, v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->setES(D)V

    .line 275
    :cond_3
    const-string v0, "rf"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 277
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 278
    invoke-virtual {p2, v0, v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->setRF(D)V

    .line 281
    :cond_4
    const-string v0, "f"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 283
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 284
    invoke-virtual {p2, v0, v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->setF(D)V

    .line 287
    :cond_5
    const-string v0, "b"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    .line 289
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 290
    invoke-virtual {p2, v3, v4}, Lorg/locationtech/proj4j/parser/DatumParameters;->setB(D)V

    goto :goto_1

    :cond_6
    move-wide v3, v1

    :goto_1
    cmpl-double v0, v3, v1

    if-nez v0, :cond_7

    .line 294
    invoke-virtual {p2}, Lorg/locationtech/proj4j/parser/DatumParameters;->getA()D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2}, Lorg/locationtech/proj4j/parser/DatumParameters;->getES()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 297
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseEllipsoidModifiers(Ljava/util/Map;Lorg/locationtech/proj4j/parser/DatumParameters;)V

    return-void
.end method

.method private parseEllipsoidModifiers(Ljava/util/Map;Lorg/locationtech/proj4j/parser/DatumParameters;)V
    .locals 1

    .line 333
    const-string v0, "R_A"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p2}, Lorg/locationtech/proj4j/parser/DatumParameters;->setR_A()V

    :cond_0
    return-void
.end method

.method private parseProjection(Ljava/util/Map;Lorg/locationtech/proj4j/datum/Ellipsoid;)Lorg/locationtech/proj4j/proj/Projection;
    .locals 6

    .line 70
    const-string v0, "proj"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 72
    iget-object v1, p0, Lorg/locationtech/proj4j/parser/Proj4Parser;->registry:Lorg/locationtech/proj4j/Registry;

    invoke-virtual {v1, v0}, Lorg/locationtech/proj4j/Registry;->getProjection(Ljava/lang/String;)Lorg/locationtech/proj4j/proj/Projection;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 79
    invoke-virtual {v1, p2}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 85
    const-string p2, "alpha"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 87
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setAlphaDegrees(D)V

    .line 89
    :cond_0
    const-string p2, "lonc"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 91
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setLonCDegrees(D)V

    .line 93
    :cond_1
    const-string p2, "lat_0"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 95
    invoke-static {p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseAngle(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setProjectionLatitudeDegrees(D)V

    .line 97
    :cond_2
    const-string p2, "lon_0"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 99
    invoke-static {p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseAngle(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setProjectionLongitudeDegrees(D)V

    .line 101
    :cond_3
    const-string p2, "lat_1"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 103
    invoke-static {p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseAngle(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setProjectionLatitude1Degrees(D)V

    .line 105
    :cond_4
    const-string p2, "lat_2"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 107
    invoke-static {p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseAngle(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setProjectionLatitude2Degrees(D)V

    .line 109
    :cond_5
    const-string p2, "lat_ts"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 111
    invoke-static {p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseAngle(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setTrueScaleLatitudeDegrees(D)V

    .line 113
    :cond_6
    const-string p2, "x_0"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 115
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setFalseEasting(D)V

    .line 117
    :cond_7
    const-string p2, "y_0"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 119
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setFalseNorthing(D)V

    .line 121
    :cond_8
    const-string p2, "k_0"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_9

    .line 123
    const-string p2, "k"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_9
    if-eqz p2, :cond_a

    .line 125
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setScaleFactor(D)V

    .line 126
    :cond_a
    const-string p2, "no_uoff"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 127
    invoke-virtual {v1, v0}, Lorg/locationtech/proj4j/proj/Projection;->setNoUoff(Z)V

    .line 128
    :cond_b
    const-string p2, "gamma"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 130
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setGammaDegrees(D)V

    .line 132
    :cond_c
    const-string p2, "units"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_d

    .line 134
    invoke-static {p2}, Lorg/locationtech/proj4j/units/Units;->findUnits(Ljava/lang/String;)Lorg/locationtech/proj4j/units/Unit;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 137
    iget-wide v4, p2, Lorg/locationtech/proj4j/units/Unit;->value:D

    div-double v4, v2, v4

    invoke-virtual {v1, v4, v5}, Lorg/locationtech/proj4j/proj/Projection;->setFromMetres(D)V

    .line 138
    invoke-virtual {v1, p2}, Lorg/locationtech/proj4j/proj/Projection;->setUnits(Lorg/locationtech/proj4j/units/Unit;)V

    .line 142
    :cond_d
    const-string p2, "to_meter"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 144
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setFromMetres(D)V

    .line 146
    :cond_e
    const-string p2, "h"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 148
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setHeightOfOrbit(D)V

    .line 151
    :cond_f
    const-string p2, "south"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 152
    invoke-virtual {v1, v0}, Lorg/locationtech/proj4j/proj/Projection;->setSouthernHemisphere(Z)V

    .line 154
    :cond_10
    const-string p2, "pm"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_11

    .line 156
    invoke-virtual {v1, p2}, Lorg/locationtech/proj4j/proj/Projection;->setPrimeMeridian(Ljava/lang/String;)V

    .line 158
    :cond_11
    const-string p2, "axis"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_12

    .line 160
    invoke-virtual {v1, p2}, Lorg/locationtech/proj4j/proj/Projection;->setAxisOrder(Ljava/lang/String;)V

    .line 163
    :cond_12
    const-string p2, "R"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_13

    .line 165
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/proj4j/proj/Projection;->setRadius(D)V

    .line 170
    :cond_13
    instance-of p2, v1, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;

    const-string v0, "zone"

    if-eqz p2, :cond_14

    .line 171
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_14

    .line 173
    move-object v2, v1

    check-cast v2, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 173
    invoke-virtual {v2, p2}, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->setUTMZone(I)V

    .line 176
    :cond_14
    instance-of p2, v1, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;

    if-eqz p2, :cond_15

    .line 177
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 179
    move-object p2, v1

    check-cast p2, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 179
    invoke-virtual {p2, p1}, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;->setUTMZone(I)V

    .line 183
    :cond_15
    invoke-virtual {v1}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    return-object v1

    .line 74
    :cond_16
    new-instance p1, Lorg/locationtech/proj4j/InvalidValueException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown projection: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_17
    new-instance p1, Lorg/locationtech/proj4j/InvalidValueException;

    const-string p2, "Keyword \'proj\' is a required parameter"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseToWGS84(Ljava/lang/String;)[D
    .locals 8

    .line 214
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    array-length v1, v0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of values (must be 3 or 7) in +towgs84: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/locationtech/proj4j/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    :goto_0
    array-length p1, v0

    new-array v1, p1, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 220
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 222
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-le p1, v2, :cond_3

    .line 226
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    cmpl-double p1, v4, v6

    if-nez p1, :cond_3

    const/4 p1, 0x4

    aget-wide v4, v1, p1

    cmpl-double p1, v4, v6

    if-nez p1, :cond_3

    const/4 p1, 0x5

    aget-wide v4, v1, p1

    cmpl-double p1, v4, v6

    if-nez p1, :cond_3

    const/4 p1, 0x6

    aget-wide v4, v1, p1

    cmpl-double p1, v4, v6

    if-nez p1, :cond_3

    .line 231
    new-array p1, v2, [D

    aget-wide v4, v1, v3

    aput-wide v4, p1, v3

    const/4 v0, 0x1

    aget-wide v2, v1, v0

    aput-wide v2, p1, v0

    const/4 v0, 0x2

    aget-wide v2, v1, v0

    aput-wide v2, p1, v0

    return-object p1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public parse(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-direct {p0, p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->createParameterMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/locationtech/proj4j/parser/Proj4Keyword;->checkUnsupported(Ljava/util/Collection;)V

    .line 49
    new-instance v1, Lorg/locationtech/proj4j/parser/DatumParameters;

    invoke-direct {v1}, Lorg/locationtech/proj4j/parser/DatumParameters;-><init>()V

    .line 50
    invoke-direct {p0, v0, v1}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseDatum(Ljava/util/Map;Lorg/locationtech/proj4j/parser/DatumParameters;)V

    .line 51
    invoke-direct {p0, v0, v1}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseEllipsoid(Ljava/util/Map;Lorg/locationtech/proj4j/parser/DatumParameters;)V

    .line 52
    invoke-virtual {v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->getDatum()Lorg/locationtech/proj4j/datum/Datum;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lorg/locationtech/proj4j/parser/DatumParameters;->getGrids()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/locationtech/proj4j/datum/Datum;->setGrids(Ljava/util/List;)V

    .line 54
    invoke-virtual {v2}, Lorg/locationtech/proj4j/datum/Datum;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v1

    .line 58
    invoke-direct {p0, v0, v1}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parseProjection(Ljava/util/Map;Lorg/locationtech/proj4j/datum/Ellipsoid;)Lorg/locationtech/proj4j/proj/Projection;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    invoke-direct {v1, p1, p2, v2, v0}, Lorg/locationtech/proj4j/CoordinateReferenceSystem;-><init>(Ljava/lang/String;[Ljava/lang/String;Lorg/locationtech/proj4j/datum/Datum;Lorg/locationtech/proj4j/proj/Projection;)V

    return-object v1
.end method
