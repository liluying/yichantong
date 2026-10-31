.class public interface abstract Lorg/locationtech/proj4j/CoordinateTransform;
.super Ljava/lang/Object;
.source "CoordinateTransform.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getSourceCRS()Lorg/locationtech/proj4j/CoordinateReferenceSystem;
.end method

.method public abstract getTargetCRS()Lorg/locationtech/proj4j/CoordinateReferenceSystem;
.end method

.method public abstract transform(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
.end method
