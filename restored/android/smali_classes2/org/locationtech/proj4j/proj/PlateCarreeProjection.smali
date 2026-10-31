.class public Lorg/locationtech/proj4j/proj/PlateCarreeProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "PlateCarreeProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "Plate Carr\u00e9e"

    return-object v0
.end method
