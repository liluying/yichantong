.class public Lorg/locationtech/proj4j/proj/LongLatProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LongLatProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 44
    sget-object v0, Lorg/locationtech/proj4j/units/Units;->DEGREES:Lorg/locationtech/proj4j/units/Unit;

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->unit:Lorg/locationtech/proj4j/units/Unit;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 45
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->totalScale:D

    return-void
.end method

.method public isGeographic()Ljava/lang/Boolean;
    .locals 1

    .line 49
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "LongLat"

    return-object v0
.end method
