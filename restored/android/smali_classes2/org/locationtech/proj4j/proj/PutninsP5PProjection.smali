.class public Lorg/locationtech/proj4j/proj/PutninsP5PProjection;
.super Lorg/locationtech/proj4j/proj/PutninsP5Projection;
.source "PutninsP5PProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PutninsP5Projection;-><init>()V

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 26
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->A:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 27
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->B:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "Putnins P5P"

    return-object v0
.end method
