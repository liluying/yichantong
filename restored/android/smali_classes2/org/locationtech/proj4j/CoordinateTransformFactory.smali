.class public Lorg/locationtech/proj4j/CoordinateTransformFactory;
.super Ljava/lang/Object;
.source "CoordinateTransformFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTransform(Lorg/locationtech/proj4j/CoordinateReferenceSystem;Lorg/locationtech/proj4j/CoordinateReferenceSystem;)Lorg/locationtech/proj4j/CoordinateTransform;
    .locals 1

    .line 38
    new-instance v0, Lorg/locationtech/proj4j/BasicCoordinateTransform;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/proj4j/BasicCoordinateTransform;-><init>(Lorg/locationtech/proj4j/CoordinateReferenceSystem;Lorg/locationtech/proj4j/CoordinateReferenceSystem;)V

    return-object v0
.end method
