.class public Lorg/locationtech/proj4j/geodesic/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field public first:D

.field public second:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    return-void
.end method
