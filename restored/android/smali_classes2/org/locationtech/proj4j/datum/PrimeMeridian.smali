.class public final Lorg/locationtech/proj4j/datum/PrimeMeridian;
.super Ljava/lang/Object;
.source "PrimeMeridian.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static GREENWICH:Lorg/locationtech/proj4j/datum/PrimeMeridian;

.field private static wellKnownMeridians:[Lorg/locationtech/proj4j/datum/PrimeMeridian;


# instance fields
.field private final name:Ljava/lang/String;

.field private final offsetFromGreenwich:D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 34
    new-instance v0, Lorg/locationtech/proj4j/datum/PrimeMeridian;

    const-string v1, "greenwich"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/locationtech/proj4j/datum/PrimeMeridian;-><init>(Ljava/lang/String;D)V

    sput-object v0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->GREENWICH:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    .line 36
    const-string v4, "greenwich"

    const-wide/16 v5, 0x0

    invoke-static/range {v4 .. v10}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v0

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    const-wide v6, 0x404b6e5604189375L    # 54.862

    .line 37
    const-string v1, "lisbon"

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    invoke-static/range {v1 .. v7}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->west(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v1

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    const-wide v7, 0x402c0ccccccccccdL    # 14.025

    .line 38
    const-string v2, "paris"

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static/range {v2 .. v8}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v2

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide v8, 0x4049a66666666666L    # 51.3

    .line 39
    const-string v3, "bogota"

    const-wide v4, 0x4052800000000000L    # 74.0

    invoke-static/range {v3 .. v9}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->west(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v3

    const-wide v7, 0x4044800000000000L    # 41.0

    const-wide v9, 0x4030947ae147ae14L    # 16.58

    .line 40
    const-string v4, "madrid"

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static/range {v4 .. v10}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->west(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v4

    const-wide/high16 v8, 0x403b000000000000L    # 27.0

    const-wide v10, 0x4020cccccccccccdL    # 8.4

    .line 41
    const-string v5, "rome"

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-static/range {v5 .. v11}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v5

    const-wide/high16 v9, 0x403a000000000000L    # 26.0

    const-wide v11, 0x4036800000000000L    # 22.5

    .line 42
    const-string v6, "bern"

    const-wide/high16 v7, 0x401c000000000000L    # 7.0

    invoke-static/range {v6 .. v12}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v6

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    const-wide v12, 0x403bca3d70a3d70aL    # 27.79

    .line 43
    const-string v7, "jakarta"

    const-wide v8, 0x405a800000000000L    # 106.0

    invoke-static/range {v7 .. v13}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v7

    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    const-wide/16 v13, 0x0

    .line 44
    const-string v8, "ferro"

    const-wide/high16 v9, 0x4031000000000000L    # 17.0

    invoke-static/range {v8 .. v14}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->west(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v8

    const-wide/high16 v12, 0x4036000000000000L    # 22.0

    const-wide v14, 0x4012d70a3d70a3d7L    # 4.71

    .line 45
    const-string v9, "brussels"

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static/range {v9 .. v15}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v9

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const-wide v15, 0x403dcccccccccccdL    # 29.8

    .line 46
    const-string v10, "stockholm"

    const-wide/high16 v11, 0x4032000000000000L    # 18.0

    invoke-static/range {v10 .. v16}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v10

    const-wide/high16 v14, 0x4045000000000000L    # 42.0

    const-wide v16, 0x404d6851eb851eb8L    # 58.815

    .line 47
    const-string v11, "athens"

    const-wide/high16 v12, 0x4037000000000000L    # 23.0

    invoke-static/range {v11 .. v17}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v11

    const-wide v15, 0x4045800000000000L    # 43.0

    const-wide v17, 0x4036800000000000L    # 22.5

    .line 48
    const-string v12, "oslo"

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static/range {v12 .. v18}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object v12

    const/16 v13, 0xd

    new-array v13, v13, [Lorg/locationtech/proj4j/datum/PrimeMeridian;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    sput-object v13, Lorg/locationtech/proj4j/datum/PrimeMeridian;->wellKnownMeridians:[Lorg/locationtech/proj4j/datum/PrimeMeridian;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->name:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    return-void
.end method

.method private static east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;
    .locals 2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    div-double/2addr p5, v0

    add-double/2addr p5, p3

    div-double/2addr p5, v0

    add-double/2addr p5, p1

    const-wide p1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p5, p5, p1

    .line 53
    new-instance p1, Lorg/locationtech/proj4j/datum/PrimeMeridian;

    invoke-direct {p1, p0, p5, p6}, Lorg/locationtech/proj4j/datum/PrimeMeridian;-><init>(Ljava/lang/String;D)V

    return-object p1
.end method

.method public static forName(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/PrimeMeridian;
    .locals 6

    .line 61
    sget-object v0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->wellKnownMeridians:[Lorg/locationtech/proj4j/datum/PrimeMeridian;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 62
    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    :try_start_0
    new-instance v0, Lorg/locationtech/proj4j/datum/PrimeMeridian;

    const-string v1, "user-provided"

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v2, v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/locationtech/proj4j/datum/PrimeMeridian;-><init>(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    sget-object p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->GREENWICH:Lorg/locationtech/proj4j/datum/PrimeMeridian;

    return-object p0
.end method

.method private static west(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;
    .locals 0

    neg-double p1, p1

    neg-double p3, p3

    neg-double p5, p5

    .line 57
    invoke-static/range {p0 .. p6}, Lorg/locationtech/proj4j/datum/PrimeMeridian;->east(Ljava/lang/String;DDD)Lorg/locationtech/proj4j/datum/PrimeMeridian;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 98
    instance-of v0, p1, Lorg/locationtech/proj4j/datum/PrimeMeridian;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    iget-wide v2, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    check-cast p1, Lorg/locationtech/proj4j/datum/PrimeMeridian;

    iget-wide v4, p1, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public fromGreenwich(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 4

    .line 88
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    sub-double/2addr v0, v2

    iput-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public toGreenwich(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 4

    .line 84
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    add-double/2addr v0, v2

    iput-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/locationtech/proj4j/datum/PrimeMeridian;->offsetFromGreenwich:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
