.class public Lorg/locationtech/proj4j/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# static fields
.field public static final datums:[Lorg/locationtech/proj4j/datum/Datum;

.field public static final ellipsoids:[Lorg/locationtech/proj4j/datum/Ellipsoid;


# instance fields
.field private projRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 50

    const/16 v0, 0xa

    .line 40
    new-array v1, v0, [Lorg/locationtech/proj4j/datum/Datum;

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->WGS84:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->GGRS87:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->NAD27:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->NAD83:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->POTSDAM:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->CARTHAGE:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->HERMANNSKOGEL:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->IRE65:Lorg/locationtech/proj4j/datum/Datum;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->NZGD49:Lorg/locationtech/proj4j/datum/Datum;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lorg/locationtech/proj4j/datum/Datum;->OSGB36:Lorg/locationtech/proj4j/datum/Datum;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sput-object v1, Lorg/locationtech/proj4j/Registry;->datums:[Lorg/locationtech/proj4j/datum/Datum;

    .line 62
    new-instance v13, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v19, 0x4072a41cac083127L    # 298.257

    const-string v21, "MERIT 1983"

    const-string v14, "MERIT"

    const-wide v15, 0x415854a640000000L    # 6378137.0

    const-wide/16 v17, 0x0

    invoke-direct/range {v13 .. v21}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v14, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v20, 0x4072a41cac083127L    # 298.257

    const-string v22, "Soviet Geodetic System 85"

    const-string v15, "SGS85"

    const-wide v16, 0x415854a600000000L    # 6378136.0

    const-wide/16 v18, 0x0

    invoke-direct/range {v14 .. v22}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v15, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v21, 0x4072a41cac083127L    # 298.257

    const-string v23, "IAU 1976"

    const-string v16, "IAU76"

    const-wide v17, 0x415854a700000000L    # 6378140.0

    const-wide/16 v19, 0x0

    invoke-direct/range {v15 .. v23}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v16, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v22, 0x4072a40000000000L    # 298.25

    const-string v24, "Appl. Physics. 1965"

    const-string v17, "APL4.9"

    const-wide v18, 0x415854a640000000L    # 6378137.0

    const-wide/16 v20, 0x0

    invoke-direct/range {v16 .. v24}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v17, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v23, 0x0

    const-string v25, "Naval Weapons Lab., 1965"

    const-string v18, "NWL9D"

    const-wide v19, 0x415854a840000000L    # 6378145.0

    const-wide v21, 0x4072a40000000000L    # 298.25

    invoke-direct/range {v17 .. v25}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v18, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v24, 0x0

    const-string v26, "Andrae 1876 (Den., Iclnd.)"

    const-string v19, "andrae"

    const-wide v20, 0x415853a41b851eb8L    # 6377104.43

    const-wide v22, 0x4072c00000000000L    # 300.0

    invoke-direct/range {v18 .. v26}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v19, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v25, 0x4072a40000000000L    # 298.25

    const-string v27, "Australian Natl & S. Amer. 1969"

    const-string v20, "aust_SA"

    const-wide v21, 0x415854ac00000000L    # 6378160.0

    const-wide/16 v23, 0x0

    invoke-direct/range {v19 .. v27}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v20, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v26, 0x4072a3f465d4f9a0L    # 298.247167427

    const-string v28, "GRS 67 (IUGG 1967)"

    const-string v21, "GRS67"

    const-wide v22, 0x415854ac00000000L    # 6378160.0

    const-wide/16 v24, 0x0

    invoke-direct/range {v20 .. v28}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v21, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v27, 0x4072b271ebd5a690L    # 299.1528128

    const-string v29, "Bessel 1841 (Namibia)"

    const-string v22, "bess_nam"

    const-wide v23, 0x41585402f75c28f6L    # 6377483.865

    const-wide/16 v25, 0x0

    invoke-direct/range {v21 .. v29}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v22, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v28, 0x4074e4a3d70a3d71L    # 334.29

    const-string v30, "Comm. des Poids et Mesures 1799"

    const-string v23, "CPM"

    const-wide v24, 0x4158524eaccccccdL    # 6375738.7

    const-wide/16 v26, 0x0

    invoke-direct/range {v22 .. v30}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v23, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v29, 0x4073780000000000L    # 311.5

    const-string v31, "Delambre 1810 (Belgium)"

    const-string v24, "delmbr"

    const-wide v25, 0x415852fb00000000L    # 6376428.0

    const-wide/16 v27, 0x0

    invoke-direct/range {v23 .. v31}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v24, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v30, 0x4072a41b089a0275L    # 298.2566

    const-string v32, "Engelis 1985"

    const-string v25, "engelis"

    const-wide v26, 0x415854a603333333L    # 6378136.05

    const-wide/16 v28, 0x0

    invoke-direct/range {v24 .. v32}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v25, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v31, 0x4072ccd3c3611340L    # 300.8017

    const-string v33, "Everest 1948"

    const-string v26, "evrst48"

    const-wide v27, 0x415853d604083127L    # 6377304.063

    const-wide/16 v29, 0x0

    invoke-direct/range {v25 .. v33}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v26, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v32, 0x4072ccd3c3611340L    # 300.8017

    const-string v34, "Everest 1956"

    const-string v27, "evrst56"

    const-wide v28, 0x415853d54f8d4fdfL    # 6377301.243

    const-wide/16 v30, 0x0

    invoke-direct/range {v26 .. v34}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v27, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v33, 0x4072ccd3c3611340L    # 300.8017

    const-string v35, "Everest 1969"

    const-string v28, "evrst69"

    const-wide v29, 0x415853d3ea7ef9dbL    # 6377295.664

    const-wide/16 v31, 0x0

    invoke-direct/range {v27 .. v35}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v28, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v34, 0x4072ccd3c3611340L    # 300.8017

    const-string v36, "Everest (Sabah & Sarawak)"

    const-string v29, "evrstSS"

    const-wide v30, 0x415853d4a3958106L    # 6377298.556

    const-wide/16 v32, 0x0

    invoke-direct/range {v28 .. v36}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v29, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v35, 0x4072a4cccccccccdL    # 298.3

    const-string v37, "Fischer (Mercury Datum) 1960"

    const-string v30, "fschr60"

    const-wide v31, 0x415854ad80000000L    # 6378166.0

    const-wide/16 v33, 0x0

    invoke-direct/range {v29 .. v37}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v30, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v36, 0x4072a4cccccccccdL    # 298.3

    const-string v38, "Modified Fischer 1960"

    const-string v31, "fschr60m"

    const-wide v32, 0x415854aac0000000L    # 6378155.0

    const-wide/16 v34, 0x0

    invoke-direct/range {v30 .. v38}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v31, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v37, 0x4072a4cccccccccdL    # 298.3

    const-string v39, "Fischer 1968"

    const-string v32, "fschr68"

    const-wide v33, 0x415854a980000000L    # 6378150.0

    const-wide/16 v35, 0x0

    invoke-direct/range {v31 .. v39}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v32, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v38, 0x4072a4cccccccccdL    # 298.3

    const-string v40, "Helmert 1906"

    const-string v33, "helmert"

    const-wide v34, 0x415854b600000000L    # 6378200.0

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v40}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v33, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v39, 0x4072900000000000L    # 297.0

    const-string v41, "Hough"

    const-string v34, "hough"

    const-wide v35, 0x415854c780000000L    # 6378270.0

    const-wide/16 v37, 0x0

    invoke-direct/range {v33 .. v41}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v34, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v40, 0x4072a3d70a3d70a4L    # 298.24

    const-string v42, "Kaula 1961"

    const-string v35, "kaula"

    const-wide v36, 0x415854acc0000000L    # 6378163.0

    const-wide/16 v38, 0x0

    invoke-direct/range {v34 .. v42}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v35, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v41, 0x4072a41cac083127L    # 298.257

    const-string v43, "Lerch 1979"

    const-string v36, "lerch"

    const-wide v37, 0x415854a6c0000000L    # 6378139.0

    const-wide/16 v39, 0x0

    invoke-direct/range {v35 .. v43}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v36, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v42, 0x4067e00000000000L    # 191.0

    const-string v44, "Maupertius 1738"

    const-string v37, "mprts"

    const-wide v38, 0x4158675d00000000L    # 6397300.0

    const-wide/16 v40, 0x0

    invoke-direct/range {v36 .. v44}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v37, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v43, 0x0

    const-string v45, "Plessis 1817 France)"

    const-string v38, "plessis"

    const-wide v39, 0x41585312c0000000L    # 6376523.0

    const-wide v41, 0x41583ee5c0000000L    # 6355863.0

    invoke-direct/range {v37 .. v45}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v38, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v44, 0x0

    const-string v46, "Southeast Asia"

    const-string v39, "SEasia"

    const-wide v40, 0x415854aac0000000L    # 6378155.0

    const-wide v42, 0x41583fc95483126fL    # 6356773.3205

    invoke-direct/range {v38 .. v46}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v39, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v45, 0x0

    const-string v47, "Walbeck"

    const-string v40, "walbeck"

    const-wide v41, 0x4158537000000000L    # 6376896.0

    const-wide v43, 0x41583edeb6305532L    # 6355834.8467

    invoke-direct/range {v39 .. v47}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v40, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v46, 0x40725775f6fd21ffL    # 293.4663

    const-string v48, "NAD27: Clarke 1880 mod."

    const-string v41, "NAD27"

    const-wide v42, 0x415854c24947ae14L    # 6378249.145

    const-wide/16 v44, 0x0

    invoke-direct/range {v40 .. v48}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    new-instance v41, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v47, 0x4072a41d94ebf9a8L    # 298.257222101

    const-string v49, "NAD83: GRS 1980 (IUGG, 1980)"

    const-string v42, "NAD83"

    const-wide v43, 0x415854a640000000L    # 6378137.0

    const-wide/16 v45, 0x0

    invoke-direct/range {v41 .. v49}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    const/16 v1, 0x2c

    new-array v1, v1, [Lorg/locationtech/proj4j/datum/Ellipsoid;

    sget-object v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->SPHERE:Lorg/locationtech/proj4j/datum/Ellipsoid;

    aput-object v2, v1, v3

    aput-object v13, v1, v4

    aput-object v14, v1, v5

    sget-object v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

    aput-object v2, v1, v6

    aput-object v15, v1, v7

    sget-object v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    aput-object v2, v1, v8

    sget-object v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->MOD_AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    aput-object v2, v1, v9

    aput-object v16, v1, v10

    aput-object v17, v1, v11

    aput-object v18, v1, v12

    aput-object v19, v1, v0

    const/16 v0, 0xb

    aput-object v20, v1, v0

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->BESSEL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const/16 v0, 0xd

    aput-object v21, v1, v0

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->CLARKE_1866:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->CLARKE_1880:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v0, 0x10

    aput-object v22, v1, v0

    const/16 v0, 0x11

    aput-object v23, v1, v0

    const/16 v0, 0x12

    aput-object v24, v1, v0

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->EVEREST:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v0, 0x14

    aput-object v25, v1, v0

    const/16 v0, 0x15

    aput-object v26, v1, v0

    const/16 v0, 0x16

    aput-object v27, v1, v0

    const/16 v0, 0x17

    aput-object v28, v1, v0

    const/16 v0, 0x18

    aput-object v29, v1, v0

    const/16 v0, 0x19

    aput-object v30, v1, v0

    const/16 v0, 0x1a

    aput-object v31, v1, v0

    const/16 v0, 0x1b

    aput-object v32, v1, v0

    const/16 v0, 0x1c

    aput-object v33, v1, v0

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->INTERNATIONAL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->INTERNATIONAL_1967:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->KRASSOVSKY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v0, 0x20

    aput-object v34, v1, v0

    const/16 v0, 0x21

    aput-object v35, v1, v0

    const/16 v0, 0x22

    aput-object v36, v1, v0

    const/16 v0, 0x23

    aput-object v37, v1, v0

    const/16 v0, 0x24

    aput-object v38, v1, v0

    const/16 v0, 0x25

    aput-object v39, v1, v0

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS60:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x26

    aput-object v0, v1, v2

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS66:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x27

    aput-object v0, v1, v2

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS72:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x28

    aput-object v0, v1, v2

    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v0, 0x2a

    aput-object v40, v1, v0

    const/16 v0, 0x2b

    aput-object v41, v1, v0

    sput-object v1, Lorg/locationtech/proj4j/Registry;->ellipsoids:[Lorg/locationtech/proj4j/datum/Ellipsoid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lorg/locationtech/proj4j/Registry;->initialize()V

    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 3

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/locationtech/proj4j/Registry;->projRegistry:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/proj4j/Registry;->projRegistry:Ljava/util/Map;

    .line 163
    const-string v0, "aea"

    const-class v1, Lorg/locationtech/proj4j/proj/AlbersProjection;

    const-string v2, "Albers Equal Area"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 164
    const-string v0, "aeqd"

    const-class v1, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;

    const-string v2, "Azimuthal Equidistant"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 165
    const-string v0, "airy"

    const-class v1, Lorg/locationtech/proj4j/proj/AiryProjection;

    const-string v2, "Airy"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    const-string v0, "aitoff"

    const-class v1, Lorg/locationtech/proj4j/proj/AitoffProjection;

    const-string v2, "Aitoff"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 167
    const-string v0, "alsk"

    const-class v1, Lorg/locationtech/proj4j/proj/Projection;

    const-string v2, "Mod. Stereographics of Alaska"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 168
    const-string v0, "apian"

    const-class v1, Lorg/locationtech/proj4j/proj/Projection;

    const-string v2, "Apian Globular I"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 169
    const-string v0, "august"

    const-class v1, Lorg/locationtech/proj4j/proj/AugustProjection;

    const-string v2, "August Epicycloidal"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 170
    const-string v0, "bacon"

    const-class v1, Lorg/locationtech/proj4j/proj/Projection;

    const-string v2, "Bacon Globular"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 171
    const-string v0, "bipc"

    const-class v1, Lorg/locationtech/proj4j/proj/BipolarProjection;

    const-string v2, "Bipolar conic of western hemisphere"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    const-string v0, "boggs"

    const-class v1, Lorg/locationtech/proj4j/proj/BoggsProjection;

    const-string v2, "Boggs Eumorphic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 173
    const-string v0, "bonne"

    const-class v1, Lorg/locationtech/proj4j/proj/BonneProjection;

    const-string v2, "Bonne (Werner lat_1=90)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 174
    const-string v0, "cass"

    const-class v1, Lorg/locationtech/proj4j/proj/CassiniProjection;

    const-string v2, "Cassini"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    const-string v0, "cc"

    const-class v1, Lorg/locationtech/proj4j/proj/CentralCylindricalProjection;

    const-string v2, "Central Cylindrical"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 176
    const-string v0, "cea"

    const-class v1, Lorg/locationtech/proj4j/proj/CylindricalEqualAreaProjection;

    const-string v2, "Equal Area Cylindrical"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 178
    const-string v0, "collg"

    const-class v1, Lorg/locationtech/proj4j/proj/CollignonProjection;

    const-string v2, "Collignon"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 179
    const-string v0, "crast"

    const-class v1, Lorg/locationtech/proj4j/proj/CrasterProjection;

    const-string v2, "Craster Parabolic (Putnins P4)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    const-string v0, "denoy"

    const-class v1, Lorg/locationtech/proj4j/proj/DenoyerProjection;

    const-string v2, "Denoyer Semi-Elliptical"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 181
    const-string v0, "eck1"

    const-class v1, Lorg/locationtech/proj4j/proj/Eckert1Projection;

    const-string v2, "Eckert I"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 182
    const-string v0, "eck2"

    const-class v1, Lorg/locationtech/proj4j/proj/Eckert2Projection;

    const-string v2, "Eckert II"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 184
    const-string v0, "eck4"

    const-class v1, Lorg/locationtech/proj4j/proj/Eckert4Projection;

    const-string v2, "Eckert IV"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 185
    const-string v0, "eck5"

    const-class v1, Lorg/locationtech/proj4j/proj/Eckert5Projection;

    const-string v2, "Eckert V"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    const-string v0, "eck6"

    const-class v1, Lorg/locationtech/proj4j/proj/Eckert6Projection;

    const-string v2, "Eckert VI"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 187
    const-string v0, "eqc"

    const-class v1, Lorg/locationtech/proj4j/proj/PlateCarreeProjection;

    const-string v2, "Equidistant Cylindrical (Plate Caree)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 188
    const-string v0, "eqdc"

    const-class v1, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;

    const-string v2, "Equidistant Conic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 189
    const-string v0, "euler"

    const-class v1, Lorg/locationtech/proj4j/proj/EulerProjection;

    const-string v2, "Euler"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 190
    const-string v0, "fahey"

    const-class v1, Lorg/locationtech/proj4j/proj/FaheyProjection;

    const-string v2, "Fahey"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 191
    const-string v0, "fouc"

    const-class v1, Lorg/locationtech/proj4j/proj/FoucautProjection;

    const-string v2, "Foucaut"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 192
    const-string v0, "fouc_s"

    const-class v1, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;

    const-string v2, "Foucaut Sinusoidal"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 193
    const-string v0, "gall"

    const-class v1, Lorg/locationtech/proj4j/proj/GallProjection;

    const-string v2, "Gall (Gall Stereographic)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 194
    const-string v0, "geocent"

    const-class v1, Lorg/locationtech/proj4j/proj/GeocentProjection;

    const-string v2, "Geocentric"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    const-string v0, "geos"

    const-class v1, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;

    const-string v2, "Geostationary Satellite"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 198
    const-string v0, "gnom"

    const-class v1, Lorg/locationtech/proj4j/proj/GnomonicAzimuthalProjection;

    const-string v2, "Gnomonic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 199
    const-string v0, "goode"

    const-class v1, Lorg/locationtech/proj4j/proj/GoodeProjection;

    const-string v2, "Goode Homolosine"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 202
    const-string v0, "hammer"

    const-class v1, Lorg/locationtech/proj4j/proj/HammerProjection;

    const-string v2, "Hammer & Eckert-Greifendorff"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 203
    const-string v0, "hatano"

    const-class v1, Lorg/locationtech/proj4j/proj/HatanoProjection;

    const-string v2, "Hatano Asymmetrical Equal Area"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 205
    const-string v0, "kav5"

    const-class v1, Lorg/locationtech/proj4j/proj/KavraiskyVProjection;

    const-string v2, "Kavraisky V"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 207
    const-string v0, "krovak"

    const-class v1, Lorg/locationtech/proj4j/proj/KrovakProjection;

    const-string v2, "Krovak"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    const-string v0, "laea"

    const-class v1, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;

    const-string v2, "Lambert Azimuthal Equal Area"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 210
    const-string v0, "lagrng"

    const-class v1, Lorg/locationtech/proj4j/proj/LagrangeProjection;

    const-string v2, "Lagrange"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 211
    const-string v0, "larr"

    const-class v1, Lorg/locationtech/proj4j/proj/LarriveeProjection;

    const-string v2, "Larrivee"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 212
    const-string v0, "lask"

    const-class v1, Lorg/locationtech/proj4j/proj/LaskowskiProjection;

    const-string v2, "Laskowski"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 213
    const-string v0, "latlong"

    const-class v1, Lorg/locationtech/proj4j/proj/LongLatProjection;

    const-string v2, "Lat/Long (Geodetic alias)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 214
    const-string v0, "longlat"

    const-class v1, Lorg/locationtech/proj4j/proj/LongLatProjection;

    const-string v2, "Lat/Long (Geodetic alias)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 215
    const-string v0, "latlon"

    const-class v1, Lorg/locationtech/proj4j/proj/LongLatProjection;

    const-string v2, "Lat/Long (Geodetic alias)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 216
    const-string v0, "lonlat"

    const-class v1, Lorg/locationtech/proj4j/proj/LongLatProjection;

    const-string v2, "Lat/Long (Geodetic)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 217
    const-string v0, "lcc"

    const-class v1, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;

    const-string v2, "Lambert Conformal Conic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 218
    const-string v0, "leac"

    const-class v1, Lorg/locationtech/proj4j/proj/LambertEqualAreaConicProjection;

    const-string v2, "Lambert Equal Area Conic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    const-string v0, "loxim"

    const-class v1, Lorg/locationtech/proj4j/proj/LoximuthalProjection;

    const-string v2, "Loximuthal"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 221
    const-string v0, "lsat"

    const-class v1, Lorg/locationtech/proj4j/proj/LandsatProjection;

    const-string v2, "Space oblique for LANDSAT"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    const-string v0, "mbt_fps"

    const-class v1, Lorg/locationtech/proj4j/proj/McBrydeThomasFlatPolarSine2Projection;

    const-string v2, "McBryde-Thomas Flat-Pole Sine (No. 2)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 224
    const-string v0, "mbtfpp"

    const-class v1, Lorg/locationtech/proj4j/proj/McBrydeThomasFlatPolarParabolicProjection;

    const-string v2, "McBride-Thomas Flat-Polar Parabolic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 225
    const-string v0, "mbtfpq"

    const-class v1, Lorg/locationtech/proj4j/proj/McBrydeThomasFlatPolarQuarticProjection;

    const-string v2, "McBryde-Thomas Flat-Polar Quartic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 227
    const-string v0, "merc"

    const-class v1, Lorg/locationtech/proj4j/proj/MercatorProjection;

    const-string v2, "Mercator"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 229
    const-string v0, "mill"

    const-class v1, Lorg/locationtech/proj4j/proj/MillerProjection;

    const-string v2, "Miller Cylindrical"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 231
    const-string v0, "moll"

    const-class v1, Lorg/locationtech/proj4j/proj/MolleweideProjection;

    const-string v2, "Mollweide"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    const-string v0, "murd1"

    const-class v1, Lorg/locationtech/proj4j/proj/Murdoch1Projection;

    const-string v2, "Murdoch I"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 233
    const-string v0, "murd2"

    const-class v1, Lorg/locationtech/proj4j/proj/Murdoch2Projection;

    const-string v2, "Murdoch II"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 234
    const-string v0, "murd3"

    const-class v1, Lorg/locationtech/proj4j/proj/Murdoch3Projection;

    const-string v2, "Murdoch III"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    const-string v0, "nell"

    const-class v1, Lorg/locationtech/proj4j/proj/NellProjection;

    const-string v2, "Nell"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 237
    const-string v0, "nicol"

    const-class v1, Lorg/locationtech/proj4j/proj/NicolosiProjection;

    const-string v2, "Nicolosi Globular"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    const-string v0, "nsper"

    const-class v1, Lorg/locationtech/proj4j/proj/PerspectiveProjection;

    const-string v2, "Near-sided perspective"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 239
    const-string v0, "nzmg"

    const-class v1, Lorg/locationtech/proj4j/proj/NewZealandMapGridProjection;

    const-string v2, "New Zealand Map Grid"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 243
    const-string v0, "omerc"

    const-class v1, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;

    const-string v2, "Oblique Mercator"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 245
    const-string v0, "ortho"

    const-class v1, Lorg/locationtech/proj4j/proj/OrthographicAzimuthalProjection;

    const-string v2, "Orthographic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 246
    const-string v0, "pconic"

    const-class v1, Lorg/locationtech/proj4j/proj/PerspectiveConicProjection;

    const-string v2, "Perspective Conic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 247
    const-string v0, "poly"

    const-class v1, Lorg/locationtech/proj4j/proj/PolyconicProjection;

    const-string v2, "Polyconic (American)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 249
    const-string v0, "putp2"

    const-class v1, Lorg/locationtech/proj4j/proj/PutninsP2Projection;

    const-string v2, "Putnins P2"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 252
    const-string v0, "putp4p"

    const-class v1, Lorg/locationtech/proj4j/proj/PutninsP4Projection;

    const-string v2, "Putnins P4\'"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 253
    const-string v0, "putp5"

    const-class v1, Lorg/locationtech/proj4j/proj/PutninsP5Projection;

    const-string v2, "Putnins P5"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 254
    const-string v0, "putp5p"

    const-class v1, Lorg/locationtech/proj4j/proj/PutninsP5PProjection;

    const-string v2, "Putnins P5\'"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 257
    const-string v0, "qua_aut"

    const-class v1, Lorg/locationtech/proj4j/proj/QuarticAuthalicProjection;

    const-string v2, "Quartic Authalic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 258
    const-string v0, "robin"

    const-class v1, Lorg/locationtech/proj4j/proj/RobinsonProjection;

    const-string v2, "Robinson"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 259
    const-string v0, "rpoly"

    const-class v1, Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;

    const-string v2, "Rectangular Polyconic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 260
    const-string v0, "sinu"

    const-class v1, Lorg/locationtech/proj4j/proj/SinusoidalProjection;

    const-string v2, "Sinusoidal (Sanson-Flamsteed)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 261
    const-string v0, "somerc"

    const-class v1, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;

    const-string v2, "Swiss Oblique Mercator"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 262
    const-string v0, "stere"

    const-class v1, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;

    const-string v2, "Stereographic"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 263
    const-string v0, "sterea"

    const-class v1, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;

    const-string v2, "Oblique Stereographic Alternative"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 264
    const-string v0, "tcc"

    const-class v1, Lorg/locationtech/proj4j/proj/TranverseCentralCylindricalProjection;

    const-string v2, "Transverse Central Cylindrical"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 265
    const-string v0, "tcea"

    const-class v1, Lorg/locationtech/proj4j/proj/TransverseCylindricalEqualArea;

    const-string v2, "Transverse Cylindrical Equal Area"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 267
    const-string v0, "tmerc"

    const-class v1, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;

    const-string v2, "Transverse Mercator"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 268
    const-string v0, "etmerc"

    const-class v1, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;

    const-string v2, "Extended Transverse Mercator"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 273
    const-string v0, "urmfps"

    const-class v1, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;

    const-string v2, "Urmaev Flat-Polar Sinusoidal"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 274
    const-string v0, "utm"

    const-class v1, Lorg/locationtech/proj4j/proj/ExtendedTransverseMercatorProjection;

    const-string v2, "Universal Transverse Mercator (UTM)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 275
    const-string v0, "vandg"

    const-class v1, Lorg/locationtech/proj4j/proj/VanDerGrintenProjection;

    const-string v2, "van der Grinten (I)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 279
    const-string v0, "vitk1"

    const-class v1, Lorg/locationtech/proj4j/proj/VitkovskyProjection;

    const-string v2, "Vitkovsky I"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 280
    const-string v0, "wag1"

    const-class v1, Lorg/locationtech/proj4j/proj/Wagner1Projection;

    const-string v2, "Wagner I (Kavraisky VI)"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 281
    const-string v0, "wag2"

    const-class v1, Lorg/locationtech/proj4j/proj/Wagner2Projection;

    const-string v2, "Wagner II"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 282
    const-string v0, "wag3"

    const-class v1, Lorg/locationtech/proj4j/proj/Wagner3Projection;

    const-string v2, "Wagner III"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 283
    const-string v0, "wag4"

    const-class v1, Lorg/locationtech/proj4j/proj/Wagner4Projection;

    const-string v2, "Wagner IV"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 284
    const-string v0, "wag5"

    const-class v1, Lorg/locationtech/proj4j/proj/Wagner5Projection;

    const-string v2, "Wagner V"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 286
    const-string v0, "wag7"

    const-class v1, Lorg/locationtech/proj4j/proj/Wagner7Projection;

    const-string v2, "Wagner VII"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 287
    const-string v0, "weren"

    const-class v1, Lorg/locationtech/proj4j/proj/WerenskioldProjection;

    const-string v2, "Werenskiold I"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 290
    const-string v0, "wintri"

    const-class v1, Lorg/locationtech/proj4j/proj/WinkelTripelProjection;

    const-string v2, "Winkel Tripel"

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/proj4j/Registry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 121
    iget-object p3, p0, Lorg/locationtech/proj4j/Registry;->projRegistry:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDatum(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/Datum;
    .locals 3

    const/4 v0, 0x0

    .line 54
    :goto_0
    sget-object v1, Lorg/locationtech/proj4j/Registry;->datums:[Lorg/locationtech/proj4j/datum/Datum;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 55
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/locationtech/proj4j/datum/Datum;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    aget-object p1, v1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEllipsoid(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/Ellipsoid;
    .locals 3

    const/4 v0, 0x0

    .line 110
    :goto_0
    sget-object v1, Lorg/locationtech/proj4j/Registry;->ellipsoids:[Lorg/locationtech/proj4j/datum/Ellipsoid;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 111
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    aget-object p1, v1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProjection(Ljava/lang/String;)Lorg/locationtech/proj4j/proj/Projection;
    .locals 5

    .line 127
    iget-object v0, p0, Lorg/locationtech/proj4j/Registry;->projRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/proj4j/proj/Projection;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1, p1}, Lorg/locationtech/proj4j/proj/Projection;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    return-object v1

    .line 137
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot instantiate projection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 135
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProjections()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/locationtech/proj4j/proj/Projection;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v1, p0, Lorg/locationtech/proj4j/Registry;->projRegistry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    invoke-virtual {p0, v2}, Lorg/locationtech/proj4j/Registry;->getProjection(Ljava/lang/String;)Lorg/locationtech/proj4j/proj/Projection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
