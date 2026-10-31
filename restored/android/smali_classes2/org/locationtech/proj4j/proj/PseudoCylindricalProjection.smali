.class public Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "PseudoCylindricalProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "Pseudo Cylindrical"

    return-object v0
.end method
