.class public Lorg/locationtech/proj4j/parser/DatumParameters;
.super Ljava/lang/Object;
.source "DatumParameters.java"


# static fields
.field private static final RA4:D = 0.04722222222222222

.field private static final RA6:D = 0.022156084656084655

.field private static final RV4:D = 0.06944444444444445

.field private static final RV6:D = 0.04243827160493827

.field private static final SIXTH:D = 0.16666666666666666


# instance fields
.field private a:D

.field private datum:Lorg/locationtech/proj4j/datum/Datum;

.field private datumTransform:[D

.field private ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field private es:D

.field private grids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datum:Lorg/locationtech/proj4j/datum/Datum;

    .line 47
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datumTransform:[D

    .line 48
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->grids:Ljava/util/List;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 51
    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    .line 52
    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    return-void
.end method

.method private isDefinedExplicitly()Z
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getA()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    return-wide v0
.end method

.method public getDatum()Lorg/locationtech/proj4j/datum/Datum;
    .locals 7

    .line 60
    iget-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datum:Lorg/locationtech/proj4j/datum/Datum;

    if-eqz v0, :cond_0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/locationtech/proj4j/parser/DatumParameters;->isDefinedExplicitly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    sget-object v0, Lorg/locationtech/proj4j/datum/Datum;->WGS84:Lorg/locationtech/proj4j/datum/Datum;

    return-object v0

    .line 67
    :cond_1
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iget-object v1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v0, v1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->grids:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datumTransform:[D

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/locationtech/proj4j/util/ProjectionMath;->isIdentity([D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    :cond_2
    sget-object v0, Lorg/locationtech/proj4j/datum/Datum;->WGS84:Lorg/locationtech/proj4j/datum/Datum;

    return-object v0

    .line 71
    :cond_3
    new-instance v1, Lorg/locationtech/proj4j/datum/Datum;

    iget-object v3, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datumTransform:[D

    iget-object v4, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->grids:Ljava/util/List;

    invoke-virtual {p0}, Lorg/locationtech/proj4j/parser/DatumParameters;->getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;

    move-result-object v5

    const-string v6, "User-defined"

    const-string v2, "User"

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;[DLjava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    return-object v1
.end method

.method public getES()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    return-wide v0
.end method

.method public getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;
    .locals 8

    .line 79
    iget-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    if-eqz v0, :cond_0

    return-object v0

    .line 81
    :cond_0
    new-instance v1, Lorg/locationtech/proj4j/datum/Ellipsoid;

    iget-wide v3, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    iget-wide v5, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    const-string v7, "User-defined"

    const-string v2, "user"

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    return-object v1
.end method

.method public getGrids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->grids:Ljava/util/List;

    return-object v0
.end method

.method public setA(D)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 106
    iput-wide p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    return-void
.end method

.method public setB(D)V
    .locals 2

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    mul-double p1, p1, p1

    .line 111
    iget-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    mul-double v0, v0, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    return-void
.end method

.method public setDatum(Lorg/locationtech/proj4j/datum/Datum;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datum:Lorg/locationtech/proj4j/datum/Datum;

    return-void
.end method

.method public setDatumTransform([D)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datumTransform:[D

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->datum:Lorg/locationtech/proj4j/datum/Datum;

    return-void
.end method

.method public setES(D)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 116
    iput-wide p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    return-void
.end method

.method public setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 96
    iget-wide v0, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    .line 97
    iget-wide v0, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    return-void
.end method

.method public setF(D)V
    .locals 2

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    sub-double/2addr p1, v0

    mul-double v0, v0, p1

    .line 132
    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    return-void
.end method

.method public setGrids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->grids:Ljava/util/List;

    return-void
.end method

.method public setRF(D)V
    .locals 2

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, p1

    mul-double p1, p1, v0

    .line 121
    iput-wide p1, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    return-void
.end method

.method public setR_A()V
    .locals 8

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 126
    iget-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->es:D

    const-wide v4, 0x3f96b015ac056b01L    # 0.022156084656084655

    mul-double v4, v4, v2

    const-wide v6, 0x3fa82d82d82d82d8L    # 0.04722222222222222

    add-double/2addr v4, v6

    mul-double v4, v4, v2

    const-wide v6, 0x3fc5555555555555L    # 0.16666666666666666

    add-double/2addr v4, v6

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double v0, v0, v4

    iput-wide v0, p0, Lorg/locationtech/proj4j/parser/DatumParameters;->a:D

    return-void
.end method
