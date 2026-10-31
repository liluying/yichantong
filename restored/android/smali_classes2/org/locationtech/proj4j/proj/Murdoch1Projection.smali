.class public Lorg/locationtech/proj4j/proj/Murdoch1Projection;
.super Lorg/locationtech/proj4j/proj/SimpleConicProjection;
.source "Murdoch1Projection.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/proj/SimpleConicProjection;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "Murdoch I"

    return-object v0
.end method
