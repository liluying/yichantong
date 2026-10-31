.class public Lorg/locationtech/proj4j/parser/Proj4Keyword;
.super Ljava/lang/Object;
.source "Proj4Keyword.java"


# static fields
.field public static final R:Ljava/lang/String; = "R"

.field public static final R_A:Ljava/lang/String; = "R_A"

.field public static final R_V:Ljava/lang/String; = "R_V"

.field public static final R_a:Ljava/lang/String; = "R_a"

.field public static final R_g:Ljava/lang/String; = "R_g"

.field public static final R_h:Ljava/lang/String; = "R_h"

.field public static final R_lat_a:Ljava/lang/String; = "R_lat_a"

.field public static final R_lat_g:Ljava/lang/String; = "R_lat_g"

.field public static final a:Ljava/lang/String; = "a"

.field public static final alpha:Ljava/lang/String; = "alpha"

.field public static final axis:Ljava/lang/String; = "axis"

.field public static final azi:Ljava/lang/String; = "azi"

.field public static final b:Ljava/lang/String; = "b"

.field public static final datum:Ljava/lang/String; = "datum"

.field public static final ellps:Ljava/lang/String; = "ellps"

.field public static final es:Ljava/lang/String; = "es"

.field public static final f:Ljava/lang/String; = "f"

.field public static final gamma:Ljava/lang/String; = "gamma"

.field public static final h:Ljava/lang/String; = "h"

.field public static final k:Ljava/lang/String; = "k"

.field public static final k_0:Ljava/lang/String; = "k_0"

.field public static final lat_0:Ljava/lang/String; = "lat_0"

.field public static final lat_1:Ljava/lang/String; = "lat_1"

.field public static final lat_2:Ljava/lang/String; = "lat_2"

.field public static final lat_ts:Ljava/lang/String; = "lat_ts"

.field public static final lon_0:Ljava/lang/String; = "lon_0"

.field public static final lonc:Ljava/lang/String; = "lonc"

.field public static final nadgrids:Ljava/lang/String; = "nadgrids"

.field public static final no_defs:Ljava/lang/String; = "no_defs"

.field public static final no_uoff:Ljava/lang/String; = "no_uoff"

.field public static final pm:Ljava/lang/String; = "pm"

.field public static final proj:Ljava/lang/String; = "proj"

.field public static final rf:Ljava/lang/String; = "rf"

.field public static final south:Ljava/lang/String; = "south"

.field private static supportedParams:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final title:Ljava/lang/String; = "title"

.field public static final to_meter:Ljava/lang/String; = "to_meter"

.field public static final towgs84:Ljava/lang/String; = "towgs84"

.field public static final units:Ljava/lang/String; = "units"

.field public static final wktext:Ljava/lang/String; = "wktext"

.field public static final x_0:Ljava/lang/String; = "x_0"

.field public static final y_0:Ljava/lang/String; = "y_0"

.field public static final zone:Ljava/lang/String; = "zone"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUnsupported(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-static {p0}, Lorg/locationtech/proj4j/parser/Proj4Keyword;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/UnsupportedParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " parameter is not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/locationtech/proj4j/UnsupportedParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkUnsupported(Ljava/util/Collection;)V
    .locals 1

    .line 135
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/locationtech/proj4j/parser/Proj4Keyword;->checkUnsupported(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 125
    invoke-static {}, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParameters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized supportedParameters()Ljava/util/Set;
    .locals 3

    const-class v0, Lorg/locationtech/proj4j/parser/Proj4Keyword;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    sput-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    .line 79
    const-string v2, "a"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "rf"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "f"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "alpha"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "es"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "b"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "datum"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "ellps"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "h"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "R"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "R_A"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "k"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "k_0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "lat_ts"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "lat_0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "lat_1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "lat_2"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "lon_0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "lonc"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "x_0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "y_0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "proj"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "south"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "towgs84"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "to_meter"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "units"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "nadgrids"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "pm"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "axis"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "gamma"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "no_uoff"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "zone"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "no_defs"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;

    const-string v2, "wktext"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    sget-object v1, Lorg/locationtech/proj4j/parser/Proj4Keyword;->supportedParams:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
