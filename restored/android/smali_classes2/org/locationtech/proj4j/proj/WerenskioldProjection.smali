.class public Lorg/locationtech/proj4j/proj/WerenskioldProjection;
.super Lorg/locationtech/proj4j/proj/PutninsP4Projection;
.source "WerenskioldProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PutninsP4Projection;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 26
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_x:D

    const-wide v0, 0x4011c5831adaaa64L    # 4.442882938

    .line 27
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_y:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "Werenskiold I"

    return-object v0
.end method
