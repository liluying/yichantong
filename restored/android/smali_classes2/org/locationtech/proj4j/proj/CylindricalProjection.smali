.class public abstract Lorg/locationtech/proj4j/proj/CylindricalProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "CylindricalProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "Cylindrical"

    return-object v0
.end method
