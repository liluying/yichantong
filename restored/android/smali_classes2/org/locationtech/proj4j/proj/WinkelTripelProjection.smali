.class public Lorg/locationtech/proj4j/proj/WinkelTripelProjection;
.super Lorg/locationtech/proj4j/proj/AitoffProjection;
.source "WinkelTripelProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const-wide v1, 0x3fe45f306dc9c883L    # 0.6366197723675814

    .line 26
    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/proj/AitoffProjection;-><init>(ID)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "Winkel Tripel"

    return-object v0
.end method
