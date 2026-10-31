.class public Lorg/locationtech/proj4j/datum/Datum;
.super Ljava/lang/Object;
.source "Datum.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CARTHAGE:Lorg/locationtech/proj4j/datum/Datum;

.field private static final DEFAULT_TRANSFORM:[D

.field public static final ELLIPSOID_E2_TOLERANCE:D = 5.0E-11

.field public static final GGRS87:Lorg/locationtech/proj4j/datum/Datum;

.field public static final HERMANNSKOGEL:Lorg/locationtech/proj4j/datum/Datum;

.field public static final IRE65:Lorg/locationtech/proj4j/datum/Datum;

.field public static final NAD27:Lorg/locationtech/proj4j/datum/Datum;

.field public static final NAD83:Lorg/locationtech/proj4j/datum/Datum;

.field public static final NZGD49:Lorg/locationtech/proj4j/datum/Datum;

.field public static final OSGB36:Lorg/locationtech/proj4j/datum/Datum;

.field public static final POTSDAM:Lorg/locationtech/proj4j/datum/Datum;

.field public static final TYPE_3PARAM:I = 0x2

.field public static final TYPE_7PARAM:I = 0x3

.field public static final TYPE_GRIDSHIFT:I = 0x4

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WGS84:I = 0x1

.field public static final WGS84:Lorg/locationtech/proj4j/datum/Datum;


# instance fields
.field private code:Ljava/lang/String;

.field private ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field private grids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private transform:[D


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/locationtech/proj4j/datum/Datum;->DEFAULT_TRANSFORM:[D

    .line 66
    new-instance v1, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v9, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v10, "WGS84"

    const-string v2, "WGS84"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v1, Lorg/locationtech/proj4j/datum/Datum;->WGS84:Lorg/locationtech/proj4j/datum/Datum;

    .line 67
    new-instance v2, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v10, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v11, "Greek_Geodetic_Reference_System_1987"

    const-string v3, "GGRS87"

    const-wide v4, -0x3f970428f5c28f5cL    # -199.87

    const-wide v6, 0x4052b28f5c28f5c3L    # 74.79

    const-wide v8, 0x406ed3d70a3d70a4L    # 246.62

    invoke-direct/range {v2 .. v11}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v2, Lorg/locationtech/proj4j/datum/Datum;->GGRS87:Lorg/locationtech/proj4j/datum/Datum;

    .line 68
    new-instance v3, Lorg/locationtech/proj4j/datum/Datum;

    move-object v11, v10

    const-wide/16 v9, 0x0

    const-string v12, "North_American_Datum_1983"

    const-string v4, "NAD83"

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v3, Lorg/locationtech/proj4j/datum/Datum;->NAD83:Lorg/locationtech/proj4j/datum/Datum;

    .line 70
    new-instance v4, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v20, Lorg/locationtech/proj4j/datum/Ellipsoid;->BESSEL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v21, "Potsdam Rauenberg 1950 DHDN"

    const-string v5, "potsdam"

    const-wide v6, 0x4082b0cccccccccdL    # 598.1

    const-wide v8, 0x40526ccccccccccdL    # 73.7

    const-wide v10, 0x407a233333333333L    # 418.2

    const-wide v12, 0x3fc9db22d0e56042L    # 0.202

    const-wide v14, 0x3fa70a3d70a3d70aL    # 0.045

    const-wide v16, -0x3ffc5c28f5c28f5cL    # -2.455

    const-wide v18, 0x401acccccccccccdL    # 6.7

    invoke-direct/range {v4 .. v21}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDDDDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v4, Lorg/locationtech/proj4j/datum/Datum;->POTSDAM:Lorg/locationtech/proj4j/datum/Datum;

    .line 71
    new-instance v5, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v13, Lorg/locationtech/proj4j/datum/Ellipsoid;->CLARKE_1880:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v14, "Carthage 1934 Tunisia"

    const-string v6, "carthage"

    const-wide v7, -0x3f8f900000000000L    # -263.0

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    const-wide v11, 0x407af00000000000L    # 431.0

    invoke-direct/range {v5 .. v14}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v5, Lorg/locationtech/proj4j/datum/Datum;->CARTHAGE:Lorg/locationtech/proj4j/datum/Datum;

    .line 72
    new-instance v5, Lorg/locationtech/proj4j/datum/Datum;

    move-object/from16 v21, v20

    const-wide v19, 0x400362b6ae7d566dL    # 2.4232

    const-string v22, "Hermannskogel"

    const-string v6, "hermannskogel"

    const-wide v7, 0x40820a9ba5e353f8L    # 577.326

    const-wide v9, 0x4056884189374bc7L    # 90.129

    const-wide v11, 0x407cfeb439581062L    # 463.919

    const-wide v13, 0x40148c49ba5e353fL    # 5.137

    const-wide v15, 0x3ff795810624dd2fL    # 1.474

    const-wide v17, 0x40153020c49ba5e3L    # 5.297

    invoke-direct/range {v5 .. v22}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDDDDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v5, Lorg/locationtech/proj4j/datum/Datum;->HERMANNSKOGEL:Lorg/locationtech/proj4j/datum/Datum;

    .line 73
    new-instance v6, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v22, Lorg/locationtech/proj4j/datum/Ellipsoid;->MOD_AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v23, "Ireland 1965"

    const-string v7, "ire65"

    const-wide v8, 0x407e287ae147ae14L    # 482.53

    const-wide v10, -0x3f9faced916872b0L    # -130.596

    const-wide v12, 0x4081a474bc6a7efaL    # 564.557

    const-wide v14, -0x400f53f7ced91687L    # -1.042

    const-wide v16, -0x40349ba5e353f7cfL    # -0.214

    const-wide v18, -0x401bced916872b02L    # -0.631

    const-wide v20, 0x40204ccccccccccdL    # 8.15

    invoke-direct/range {v6 .. v23}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDDDDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v6, Lorg/locationtech/proj4j/datum/Datum;->IRE65:Lorg/locationtech/proj4j/datum/Datum;

    .line 74
    new-instance v7, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v23, Lorg/locationtech/proj4j/datum/Ellipsoid;->INTERNATIONAL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v24, "New Zealand Geodetic Datum 1949"

    const-string v8, "nzgd49"

    const-wide v9, 0x404dbc28f5c28f5cL    # 59.47

    const-wide v11, -0x3febd70a3d70a3d7L    # -5.04

    const-wide v13, 0x40676e147ae147aeL    # 187.44

    const-wide v15, 0x3fde147ae147ae14L    # 0.47

    const-wide v17, -0x4046666666666666L    # -0.1

    const-wide v19, 0x3ff0624dd2f1a9fcL    # 1.024

    const-wide v21, -0x3fed9a5119ce075fL    # -4.5993

    invoke-direct/range {v7 .. v24}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDDDDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v7, Lorg/locationtech/proj4j/datum/Datum;->NZGD49:Lorg/locationtech/proj4j/datum/Datum;

    .line 75
    new-instance v8, Lorg/locationtech/proj4j/datum/Datum;

    sget-object v24, Lorg/locationtech/proj4j/datum/Ellipsoid;->AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v25, "Airy 1830"

    const-string v9, "OSGB36"

    const-wide v10, 0x407be72b020c49baL    # 446.448

    const-wide v12, -0x3fa0b5f3b645a1cbL    # -125.157

    const-wide v14, 0x4080f07ae147ae14L    # 542.06

    const-wide v16, 0x3fc3333333333333L    # 0.15

    const-wide v18, 0x3fcf9db22d0e5604L    # 0.247

    const-wide v20, 0x3feaf1a9fbe76c8bL    # 0.842

    const-wide v22, -0x3fcb82d0e5604189L    # -20.489

    invoke-direct/range {v8 .. v25}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;DDDDDDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    sput-object v8, Lorg/locationtech/proj4j/datum/Datum;->OSGB36:Lorg/locationtech/proj4j/datum/Datum;

    .line 78
    new-instance v0, Lorg/locationtech/proj4j/datum/Datum;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->CLARKE_1866:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-string v3, "NAD27"

    const-string v4, "North_American_Datum_1927"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    .line 80
    :try_start_0
    new-instance v1, Lorg/locationtech/proj4j/datum/Datum;

    const-string v5, "@conus,@alaska,@ntv2_0.gsb,@ntv1_can.dat"

    invoke-static {v5}, Lorg/locationtech/proj4j/datum/Grid;->fromNadGrids(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v3, v5, v2, v4}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 84
    :catch_0
    sput-object v0, Lorg/locationtech/proj4j/datum/Datum;->NAD27:Lorg/locationtech/proj4j/datum/Datum;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;DDDDDDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    .line 109
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    aput-wide p4, v0, p2

    const/4 p2, 0x2

    aput-wide p6, v0, p2

    const/4 p2, 0x3

    aput-wide p8, v0, p2

    const/4 p2, 0x4

    aput-wide p10, v0, p2

    const/4 p2, 0x5

    aput-wide p12, v0, p2

    const/4 p2, 0x6

    aput-wide p14, v0, p2

    const/4 p5, 0x0

    move-object p2, p0

    move-object p3, p1

    move-object/from16 p6, p16

    move-object/from16 p7, p17

    move-object p4, v0

    invoke-direct/range {p2 .. p7}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;[DLjava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDLorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 101
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    aput-wide p4, v0, p2

    const/4 p2, 0x2

    aput-wide p6, v0, p2

    const/4 p4, 0x0

    move-object p2, p1

    move-object p5, p8

    move-object p6, p9

    move-object p3, v0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;[DLjava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;",
            "Lorg/locationtech/proj4j/datum/Ellipsoid;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 94
    invoke-direct/range {v0 .. v5}, Lorg/locationtech/proj4j/datum/Datum;-><init>(Ljava/lang/String;[DLjava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[DLjava/util/List;Lorg/locationtech/proj4j/datum/Ellipsoid;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;",
            "Lorg/locationtech/proj4j/datum/Ellipsoid;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lorg/locationtech/proj4j/datum/Datum;->DEFAULT_TRANSFORM:[D

    iput-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    .line 117
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/Datum;->code:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lorg/locationtech/proj4j/datum/Datum;->name:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 120
    iput-object p3, p0, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 121
    array-length p1, p2

    const/4 p3, 0x3

    if-le p1, p3, :cond_0

    .line 122
    aget-wide p4, p2, p3

    const-wide v0, 0x3ed455a5b2ff8f9dL    # 4.84813681109536E-6

    mul-double p4, p4, v0

    aput-wide p4, p2, p3

    const/4 p1, 0x4

    .line 123
    aget-wide p3, p2, p1

    mul-double p3, p3, v0

    aput-wide p3, p2, p1

    const/4 p1, 0x5

    .line 124
    aget-wide p3, p2, p1

    mul-double p3, p3, v0

    aput-wide p3, p2, p1

    const/4 p1, 0x6

    .line 125
    aget-wide p3, p2, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v0

    aput-wide p3, p2, p1

    .line 127
    :cond_0
    iput-object p2, p0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEllipsoid()Lorg/locationtech/proj4j/datum/Ellipsoid;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformToWGS84()[D
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    return-object v0
.end method

.method public getTransformType()I
    .locals 4

    .line 151
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 153
    :cond_0
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v0, v1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v0, v1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    const/4 v1, 0x1

    if-nez v0, :cond_2

    return v1

    .line 156
    :cond_2
    invoke-static {v0}, Lorg/locationtech/proj4j/util/ProjectionMath;->isIdentity([D)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 159
    :cond_3
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    const/4 v1, 0x0

    if-nez v0, :cond_4

    return v1

    .line 160
    :cond_4
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    const/4 v0, 0x2

    return v0

    .line 161
    :cond_5
    array-length v0, v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    return v3

    :cond_6
    return v1
.end method

.method public hasTransformToWGS84()Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public inverseShift(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/locationtech/proj4j/datum/Grid;->shift(Ljava/util/List;ZLorg/locationtech/proj4j/ProjCoordinate;)V

    return-void
.end method

.method public isEqual(Lorg/locationtech/proj4j/datum/Datum;)Z
    .locals 8

    .line 187
    invoke-virtual {p0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getEquatorRadius()D

    move-result-wide v0

    iget-object v3, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getEquatorRadius()D

    move-result-wide v3

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    .line 192
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getEccentricitySquared()D

    move-result-wide v0

    iget-object v3, p1, Lorg/locationtech/proj4j/datum/Datum;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 193
    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getEccentricitySquared()D

    move-result-wide v3

    sub-double/2addr v0, v3

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v3, 0x3dcb7cdfd9d7bdbbL    # 5.0E-11

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    return v2

    .line 198
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lorg/locationtech/proj4j/datum/Datum;->getTransformType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 205
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    iget-object p1, p1, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v3

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 199
    :goto_1
    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    array-length v4, v1

    if-ge v0, v4, :cond_6

    .line 200
    aget-wide v4, v1, v0

    iget-object v1, p1, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    aget-wide v6, v1, v0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v3
.end method

.method public setGrids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/datum/Grid;",
            ">;)V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    return-void
.end method

.method public shift(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Datum;->grids:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/locationtech/proj4j/datum/Grid;->shift(Ljava/util/List;ZLorg/locationtech/proj4j/ProjCoordinate;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Datum-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Datum;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformFromGeocentricToWgs84(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 212
    iget-object v2, v0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    .line 213
    iget-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    aget-wide v9, v2, v6

    add-double/2addr v7, v9

    iput-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 214
    iget-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    aget-wide v8, v2, v5

    add-double/2addr v6, v8

    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 215
    iget-wide v5, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    aget-wide v3, v2, v4

    add-double/2addr v5, v3

    iput-wide v5, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void

    .line 217
    :cond_0
    array-length v3, v2

    const/4 v8, 0x7

    if-ne v3, v8, :cond_1

    .line 218
    aget-wide v8, v2, v6

    .line 219
    aget-wide v5, v2, v5

    .line 220
    aget-wide v3, v2, v4

    .line 221
    aget-wide v10, v2, v7

    const/4 v7, 0x4

    .line 222
    aget-wide v12, v2, v7

    const/4 v7, 0x5

    .line 223
    aget-wide v14, v2, v7

    const/4 v7, 0x6

    .line 224
    aget-wide v16, v2, v7

    move-wide/from16 v18, v3

    .line 226
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v22, v14, v2

    sub-double v22, v20, v22

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    mul-double v26, v12, v2

    add-double v22, v22, v26

    mul-double v22, v22, v16

    add-double v7, v22, v8

    mul-double v14, v14, v20

    add-double v14, v14, v24

    mul-double v22, v10, v2

    sub-double v14, v14, v22

    mul-double v14, v14, v16

    add-double/2addr v14, v5

    neg-double v4, v12

    mul-double v4, v4, v20

    mul-double v10, v10, v24

    add-double/2addr v4, v10

    add-double/2addr v4, v2

    mul-double v16, v16, v4

    add-double v2, v16, v18

    .line 230
    iput-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 231
    iput-wide v14, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 232
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    :cond_1
    return-void
.end method

.method public transformToGeocentricFromWgs84(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 237
    iget-object v2, v0, Lorg/locationtech/proj4j/datum/Datum;->transform:[D

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    .line 238
    iget-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    aget-wide v9, v2, v6

    sub-double/2addr v7, v9

    iput-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 239
    iget-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    aget-wide v8, v2, v5

    sub-double/2addr v6, v8

    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 240
    iget-wide v5, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    aget-wide v3, v2, v4

    sub-double/2addr v5, v3

    iput-wide v5, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void

    .line 242
    :cond_0
    array-length v3, v2

    const/4 v8, 0x7

    if-ne v3, v8, :cond_1

    .line 243
    aget-wide v8, v2, v6

    .line 244
    aget-wide v5, v2, v5

    .line 245
    aget-wide v3, v2, v4

    .line 246
    aget-wide v10, v2, v7

    const/4 v7, 0x4

    .line 247
    aget-wide v12, v2, v7

    const/4 v7, 0x5

    .line 248
    aget-wide v14, v2, v7

    const/4 v7, 0x6

    .line 249
    aget-wide v16, v2, v7

    move-wide/from16 v18, v3

    .line 251
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    sub-double/2addr v2, v8

    div-double v2, v2, v16

    .line 252
    iget-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v7, v5

    div-double v7, v7, v16

    .line 253
    iget-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    sub-double v4, v4, v18

    div-double v4, v4, v16

    mul-double v16, v14, v7

    add-double v16, v2, v16

    mul-double v18, v12, v4

    move-wide/from16 v20, v2

    sub-double v2, v16, v18

    .line 255
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double v2, v14

    mul-double v2, v2, v20

    add-double/2addr v2, v7

    mul-double v14, v10, v4

    add-double/2addr v2, v14

    .line 256
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v12, v12, v20

    mul-double v10, v10, v7

    sub-double/2addr v12, v10

    add-double/2addr v12, v4

    .line 257
    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    :cond_1
    return-void
.end method
