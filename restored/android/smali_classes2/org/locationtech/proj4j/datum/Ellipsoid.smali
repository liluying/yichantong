.class public final Lorg/locationtech/proj4j/datum/Ellipsoid;
.super Ljava/lang/Object;
.source "Ellipsoid.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final ANDRAE:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final APL4_9:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final AUSTRALIAN:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final AUST_SA:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final BESSEL:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final BESS_NAM:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final CLARKE_1866:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final CLARKE_1880:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final CPM:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final DELMBR:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final ENGELIS:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final EVEREST:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final EVRST48:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final EVRST56:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final EVRTS69:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final EVRTSTSS:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final FRSCH60:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final FSCHR68:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final FSRCH60M:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final GRS67:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final HELMERT:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final HOUGH:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final IAU76:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final INTERNATIONAL:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final INTERNATIONAL_1967:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final INTL:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final KAULA:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final KRASSOVSKY:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final LERCH:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final MERIT:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final MOD_AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final MPRTS:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final NAD27:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final NAD83:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final NWL9D:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final PLESSIS:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final SEASIA:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final SGS85:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final SPHERE:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final WALBECK:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final WGS60:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final WGS66:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final WGS72:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

.field public static final ellipsoids:[Lorg/locationtech/proj4j/datum/Ellipsoid;


# instance fields
.field public eccentricity:D

.field public eccentricity2:D

.field public equatorRadius:D

.field public name:Ljava/lang/String;

.field public poleRadius:D

.field public shortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 68
    new-instance v0, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v6, 0x4072900000000000L    # 297.0

    const-string v8, "International 1909 (Hayford)"

    const-string v1, "intl"

    const-wide v2, 0x415854e500000000L    # 6378388.0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->INTERNATIONAL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 71
    new-instance v1, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v7, 0x4072b271ebd5a690L    # 299.1528128

    const-string v9, "Bessel 1841"

    const-string v2, "bessel"

    const-wide v3, 0x415853ed49eb851fL    # 6377397.155

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v1, Lorg/locationtech/proj4j/datum/Ellipsoid;->BESSEL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 74
    new-instance v2, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v8, 0x0

    const-string v10, "Clarke 1866"

    const-string v3, "clrk66"

    const-wide v4, 0x415854b79999999aL    # 6378206.4

    const-wide v6, 0x41583f99f3333333L    # 6356583.8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v2, Lorg/locationtech/proj4j/datum/Ellipsoid;->CLARKE_1866:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 77
    new-instance v3, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v9, 0x40725775f6fd21ffL    # 293.4663

    const-string v11, "Clarke 1880 mod."

    const-string v4, "clrk80"

    const-wide v5, 0x415854c24947ae14L    # 6378249.145

    const-wide/16 v7, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v3, Lorg/locationtech/proj4j/datum/Ellipsoid;->CLARKE_1880:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 80
    new-instance v4, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v10, 0x0

    const-string v12, "Airy 1830"

    const-string v5, "airy"

    const-wide v6, 0x41585416d9581062L    # 6377563.396

    const-wide v8, 0x41583f483a3d70a4L    # 6356256.91

    invoke-direct/range {v4 .. v12}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v4, Lorg/locationtech/proj4j/datum/Ellipsoid;->AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 83
    new-instance v5, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v11, 0x4072a4cccccccccdL    # 298.3

    const-string v13, "WGS 60"

    const-string v6, "WGS60"

    const-wide v7, 0x415854ad40000000L    # 6378165.0

    const-wide/16 v9, 0x0

    invoke-direct/range {v5 .. v13}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v5, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS60:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 86
    new-instance v6, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v12, 0x4072a40000000000L    # 298.25

    const-string v14, "WGS 66"

    const-string v7, "WGS66"

    const-wide v8, 0x415854a840000000L    # 6378145.0

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v14}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v6, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS66:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 89
    new-instance v7, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v13, 0x4072a428f5c28f5cL    # 298.26

    const-string v15, "WGS 72"

    const-string v8, "WGS72"

    const-wide v9, 0x415854a5c0000000L    # 6378135.0

    const-wide/16 v11, 0x0

    invoke-direct/range {v7 .. v15}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v7, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS72:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 92
    new-instance v8, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v14, 0x4072a41d96746d88L    # 298.257223563

    const-string v16, "WGS 84"

    const-string v9, "WGS84"

    const-wide v10, 0x415854a640000000L    # 6378137.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v8 .. v16}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v8, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 95
    new-instance v9, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v15, 0x4072a4cccccccccdL    # 298.3

    const-string v17, "Krassovsky, 1942"

    const-string v10, "krass"

    const-wide v11, 0x415854c140000000L    # 6378245.0

    const-wide/16 v13, 0x0

    invoke-direct/range {v9 .. v17}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v9, Lorg/locationtech/proj4j/datum/Ellipsoid;->KRASSOVSKY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 98
    new-instance v10, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v16, 0x4072ccd3c3611340L    # 300.8017

    const-string v18, "Everest 1830"

    const-string v11, "evrst30"

    const-wide v12, 0x415853cf16147ae1L    # 6377276.345

    const-wide/16 v14, 0x0

    invoke-direct/range {v10 .. v18}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v10, Lorg/locationtech/proj4j/datum/Ellipsoid;->EVEREST:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 101
    new-instance v11, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v17, 0x0

    const-string v19, "New International 1967"

    const-string v12, "new_intl"

    const-wide v13, 0x415854ab60000000L    # 6378157.5

    const-wide v15, 0x41583fc90ccccccdL    # 6356772.2

    invoke-direct/range {v11 .. v19}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v11, Lorg/locationtech/proj4j/datum/Ellipsoid;->INTERNATIONAL_1967:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 104
    new-instance v12, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v18, 0x4072a41d94ebf9a8L    # 298.257222101

    const-string v20, "GRS 1980 (IUGG, 1980)"

    const-string v13, "GRS80"

    const-wide v14, 0x415854a640000000L    # 6378137.0

    const-wide/16 v16, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v12, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 107
    new-instance v13, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v19, 0x4072a40000000000L    # 298.25

    const-string v21, "Australian"

    const-string v14, "australian"

    const-wide v15, 0x415854ac00000000L    # 6378160.0

    const-wide v17, 0x41583fc9accccccdL    # 6356774.7

    invoke-direct/range {v13 .. v21}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v13, Lorg/locationtech/proj4j/datum/Ellipsoid;->AUSTRALIAN:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 110
    new-instance v14, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v20, 0x4072a41cac083127L    # 298.257

    const-string v22, "MERIT 1983"

    const-string v15, "MERIT"

    const-wide v16, 0x415854a640000000L    # 6378137.0

    const-wide/16 v18, 0x0

    invoke-direct/range {v14 .. v22}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v14, Lorg/locationtech/proj4j/datum/Ellipsoid;->MERIT:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 113
    new-instance v15, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v21, 0x4072a41cac083127L    # 298.257

    const-string v23, "Soviet Geodetic System 85"

    const-string v16, "SGS85"

    const-wide v17, 0x415854a600000000L    # 6378136.0

    const-wide/16 v19, 0x0

    invoke-direct/range {v15 .. v23}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v15, Lorg/locationtech/proj4j/datum/Ellipsoid;->SGS85:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 116
    new-instance v16, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v22, 0x4072a41cac083127L    # 298.257

    const-string v24, "IAU 1976"

    const-string v17, "IAU76"

    const-wide v18, 0x415854a700000000L    # 6378140.0

    const-wide/16 v20, 0x0

    invoke-direct/range {v16 .. v24}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v16, Lorg/locationtech/proj4j/datum/Ellipsoid;->IAU76:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 119
    new-instance v17, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v23, 0x4072a40000000000L    # 298.25

    const-string v25, "Appl. Physics. 1965"

    const-string v18, "APL4.9"

    const-wide v19, 0x415854a640000000L    # 6378137.0

    const-wide/16 v21, 0x0

    invoke-direct/range {v17 .. v25}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v17, Lorg/locationtech/proj4j/datum/Ellipsoid;->APL4_9:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 122
    new-instance v18, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v24, 0x4072a40000000000L    # 298.25

    const-string v26, "Naval Weapons Lab., 1965"

    const-string v19, "NWL9D"

    const-wide v20, 0x415854a840000000L    # 6378145.0

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v26}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v18, Lorg/locationtech/proj4j/datum/Ellipsoid;->NWL9D:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 125
    new-instance v19, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v25, 0x0

    const-string v27, "Modified Airy"

    const-string v20, "mod_airy"

    const-wide v21, 0x415853df0c189375L    # 6377340.189

    const-wide v23, 0x41583f109c8b4396L    # 6356034.446

    invoke-direct/range {v19 .. v27}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v19, Lorg/locationtech/proj4j/datum/Ellipsoid;->MOD_AIRY:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 128
    new-instance v20, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v26, 0x4072c00000000000L    # 300.0

    const-string v28, "Andrae 1876 (Den., Iclnd.)"

    const-string v21, "andrae"

    const-wide v22, 0x415853a41b851eb8L    # 6377104.43

    const-wide/16 v24, 0x0

    invoke-direct/range {v20 .. v28}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v20, Lorg/locationtech/proj4j/datum/Ellipsoid;->ANDRAE:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 131
    new-instance v21, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v27, 0x4072a40000000000L    # 298.25

    const-string v29, "Australian Natl & S. Amer. 1969"

    const-string v22, "aust_SA"

    const-wide v23, 0x415854ac00000000L    # 6378160.0

    const-wide/16 v25, 0x0

    invoke-direct/range {v21 .. v29}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v21, Lorg/locationtech/proj4j/datum/Ellipsoid;->AUST_SA:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 134
    new-instance v22, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v28, 0x4072a3f465d4f9a0L    # 298.247167427

    const-string v30, "GRS 67 (IUGG 1967)"

    const-string v23, "GRS67"

    const-wide v24, 0x415854ac00000000L    # 6378160.0

    const-wide/16 v26, 0x0

    invoke-direct/range {v22 .. v30}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v22, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS67:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 137
    new-instance v23, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v29, 0x4072b271ebd5a690L    # 299.1528128

    const-string v31, "Bessel 1841 (Namibia)"

    const-string v24, "bess_nam"

    const-wide v25, 0x41585402f75c28f6L    # 6377483.865

    const-wide/16 v27, 0x0

    invoke-direct/range {v23 .. v31}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v23, Lorg/locationtech/proj4j/datum/Ellipsoid;->BESS_NAM:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 140
    new-instance v24, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v30, 0x4074e4a3d70a3d71L    # 334.29

    const-string v32, "Comm. des Poids et Mesures 1799"

    const-string v25, "CPM"

    const-wide v26, 0x4158524eaccccccdL    # 6375738.7

    const-wide/16 v28, 0x0

    invoke-direct/range {v24 .. v32}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v24, Lorg/locationtech/proj4j/datum/Ellipsoid;->CPM:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 143
    new-instance v25, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v31, 0x4073780000000000L    # 311.5

    const-string v33, "Delambre 1810 (Belgium)"

    const-string v26, "delmbr"

    const-wide v27, 0x415852fb00000000L    # 6376428.0

    const-wide/16 v29, 0x0

    invoke-direct/range {v25 .. v33}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v25, Lorg/locationtech/proj4j/datum/Ellipsoid;->DELMBR:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 146
    new-instance v26, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v32, 0x4072a41b089a0275L    # 298.2566

    const-string v34, "Engelis 1985"

    const-string v27, "engelis"

    const-wide v28, 0x415854a603333333L    # 6378136.05

    const-wide/16 v30, 0x0

    invoke-direct/range {v26 .. v34}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v26, Lorg/locationtech/proj4j/datum/Ellipsoid;->ENGELIS:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 149
    new-instance v27, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v33, 0x4072ccd3c3611340L    # 300.8017

    const-string v35, "Everest 1948"

    const-string v28, "evrst48"

    const-wide v29, 0x415853d604083127L    # 6377304.063

    const-wide/16 v31, 0x0

    invoke-direct/range {v27 .. v35}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v27, Lorg/locationtech/proj4j/datum/Ellipsoid;->EVRST48:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 152
    new-instance v28, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v34, 0x4072ccd3c3611340L    # 300.8017

    const-string v36, "Everest 1956"

    const-string v29, "evrst56"

    const-wide v30, 0x415853d54f8d4fdfL    # 6377301.243

    const-wide/16 v32, 0x0

    invoke-direct/range {v28 .. v36}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v28, Lorg/locationtech/proj4j/datum/Ellipsoid;->EVRST56:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 155
    new-instance v29, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v35, 0x4072ccd3c3611340L    # 300.8017

    const-string v37, "Everest 1969"

    const-string v30, "evrst69"

    const-wide v31, 0x415853d3ea7ef9dbL    # 6377295.664

    const-wide/16 v33, 0x0

    invoke-direct/range {v29 .. v37}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v29, Lorg/locationtech/proj4j/datum/Ellipsoid;->EVRTS69:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 158
    new-instance v30, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v36, 0x4072ccd3c3611340L    # 300.8017

    const-string v38, "Everest (Sabah & Sarawak)"

    const-string v31, "evrstSS"

    const-wide v32, 0x415853d4a3958106L    # 6377298.556

    const-wide/16 v34, 0x0

    invoke-direct/range {v30 .. v38}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v30, Lorg/locationtech/proj4j/datum/Ellipsoid;->EVRTSTSS:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 161
    new-instance v31, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v37, 0x4072a4cccccccccdL    # 298.3

    const-string v39, "Fischer (Mercury Datum) 1960"

    const-string v32, "fschr60"

    const-wide v33, 0x415854ad80000000L    # 6378166.0

    const-wide/16 v35, 0x0

    invoke-direct/range {v31 .. v39}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v31, Lorg/locationtech/proj4j/datum/Ellipsoid;->FRSCH60:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 164
    new-instance v32, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v38, 0x4072a4cccccccccdL    # 298.3

    const-string v40, "Modified Fischer 1960"

    const-string v33, "fschr60m"

    const-wide v34, 0x415854aac0000000L    # 6378155.0

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v40}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v32, Lorg/locationtech/proj4j/datum/Ellipsoid;->FSRCH60M:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 167
    new-instance v33, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v39, 0x4072a4cccccccccdL    # 298.3

    const-string v41, "Fischer 1968"

    const-string v34, "fschr68"

    const-wide v35, 0x415854a980000000L    # 6378150.0

    const-wide/16 v37, 0x0

    invoke-direct/range {v33 .. v41}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v33, Lorg/locationtech/proj4j/datum/Ellipsoid;->FSCHR68:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 170
    new-instance v34, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v40, 0x4072a4cccccccccdL    # 298.3

    const-string v42, "Helmert 1906"

    const-string v35, "helmert"

    const-wide v36, 0x415854b600000000L    # 6378200.0

    const-wide/16 v38, 0x0

    invoke-direct/range {v34 .. v42}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v34, Lorg/locationtech/proj4j/datum/Ellipsoid;->HELMERT:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 173
    new-instance v35, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v41, 0x4072900000000000L    # 297.0

    const-string v43, "Hough"

    const-string v36, "hough"

    const-wide v37, 0x415854c780000000L    # 6378270.0

    const-wide/16 v39, 0x0

    invoke-direct/range {v35 .. v43}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v35, Lorg/locationtech/proj4j/datum/Ellipsoid;->HOUGH:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 176
    new-instance v36, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v42, 0x4072900000000000L    # 297.0

    const-string v44, "International 1909 (Hayford)"

    const-string v37, "intl"

    const-wide v38, 0x415854e500000000L    # 6378388.0

    const-wide/16 v40, 0x0

    invoke-direct/range {v36 .. v44}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v36, Lorg/locationtech/proj4j/datum/Ellipsoid;->INTL:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 179
    new-instance v37, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v43, 0x4072a3d70a3d70a4L    # 298.24

    const-string v45, "Kaula 1961"

    const-string v38, "kaula"

    const-wide v39, 0x415854acc0000000L    # 6378163.0

    const-wide/16 v41, 0x0

    invoke-direct/range {v37 .. v45}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v37, Lorg/locationtech/proj4j/datum/Ellipsoid;->KAULA:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 182
    new-instance v38, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v44, 0x4072a41cac083127L    # 298.257

    const-string v46, "Lerch 1979"

    const-string v39, "lerch"

    const-wide v40, 0x415854a6c0000000L    # 6378139.0

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v46}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v38, Lorg/locationtech/proj4j/datum/Ellipsoid;->LERCH:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 185
    new-instance v39, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v45, 0x4067e00000000000L    # 191.0

    const-string v47, "Maupertius 1738"

    const-string v40, "mprts"

    const-wide v41, 0x4158675d00000000L    # 6397300.0

    const-wide/16 v43, 0x0

    invoke-direct/range {v39 .. v47}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v39, Lorg/locationtech/proj4j/datum/Ellipsoid;->MPRTS:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 188
    new-instance v40, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v46, 0x0

    const-string v48, "Plessis 1817 France)"

    const-string v41, "plessis"

    const-wide v42, 0x41585312c0000000L    # 6376523.0

    const-wide v44, 0x41583ee5c0000000L    # 6355863.0

    invoke-direct/range {v40 .. v48}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v40, Lorg/locationtech/proj4j/datum/Ellipsoid;->PLESSIS:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 191
    new-instance v41, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v47, 0x0

    const-string v49, "Southeast Asia"

    const-string v42, "SEasia"

    const-wide v43, 0x415854aac0000000L    # 6378155.0

    const-wide v45, 0x41583fc95483126fL    # 6356773.3205

    invoke-direct/range {v41 .. v49}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v41, Lorg/locationtech/proj4j/datum/Ellipsoid;->SEASIA:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 194
    new-instance v42, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v48, 0x0

    const-string v50, "Walbeck"

    const-string v43, "walbeck"

    const-wide v44, 0x4158537000000000L    # 6376896.0

    const-wide v46, 0x41583edeb6305532L    # 6355834.8467

    invoke-direct/range {v42 .. v50}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v42, Lorg/locationtech/proj4j/datum/Ellipsoid;->WALBECK:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 197
    new-instance v43, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v49, 0x40725775f6fd21ffL    # 293.4663

    const-string v51, "NAD27: Clarke 1880 mod."

    const-string v44, "NAD27"

    const-wide v45, 0x415854c24947ae14L    # 6378249.145

    const-wide/16 v47, 0x0

    invoke-direct/range {v43 .. v51}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v43, Lorg/locationtech/proj4j/datum/Ellipsoid;->NAD27:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 200
    new-instance v44, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide v50, 0x4072a41d94ebf9a8L    # 298.257222101

    const-string v52, "NAD83: GRS 1980 (IUGG, 1980)"

    const-string v45, "NAD83"

    const-wide v46, 0x415854a640000000L    # 6378137.0

    const-wide/16 v48, 0x0

    invoke-direct/range {v44 .. v52}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v44, Lorg/locationtech/proj4j/datum/Ellipsoid;->NAD83:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 203
    new-instance v45, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v51, 0x0

    const-string v53, "Sphere"

    const-string v46, "sphere"

    const-wide v47, 0x41584db0315e9e1bL    # 6371008.7714

    const-wide v49, 0x41584db0315e9e1bL    # 6371008.7714

    invoke-direct/range {v45 .. v53}, Lorg/locationtech/proj4j/datum/Ellipsoid;-><init>(Ljava/lang/String;DDDLjava/lang/String;)V

    sput-object v45, Lorg/locationtech/proj4j/datum/Ellipsoid;->SPHERE:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v0, 0x2d

    .line 206
    new-array v0, v0, [Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/16 v46, 0x0

    aput-object v1, v0, v46

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    aput-object v15, v0, v1

    const/16 v1, 0xf

    aput-object v16, v0, v1

    const/16 v1, 0x10

    aput-object v17, v0, v1

    const/16 v1, 0x11

    aput-object v18, v0, v1

    const/16 v1, 0x12

    aput-object v19, v0, v1

    const/16 v1, 0x13

    aput-object v20, v0, v1

    const/16 v1, 0x14

    aput-object v21, v0, v1

    const/16 v1, 0x15

    aput-object v22, v0, v1

    const/16 v1, 0x16

    aput-object v23, v0, v1

    const/16 v1, 0x17

    aput-object v24, v0, v1

    const/16 v1, 0x18

    aput-object v25, v0, v1

    const/16 v1, 0x19

    aput-object v26, v0, v1

    const/16 v1, 0x1a

    aput-object v27, v0, v1

    const/16 v1, 0x1b

    aput-object v28, v0, v1

    const/16 v1, 0x1c

    aput-object v29, v0, v1

    const/16 v1, 0x1d

    aput-object v30, v0, v1

    const/16 v1, 0x1e

    aput-object v31, v0, v1

    const/16 v1, 0x1f

    aput-object v32, v0, v1

    const/16 v1, 0x20

    aput-object v33, v0, v1

    const/16 v1, 0x21

    aput-object v34, v0, v1

    const/16 v1, 0x22

    aput-object v35, v0, v1

    const/16 v1, 0x23

    aput-object v36, v0, v1

    const/16 v1, 0x24

    aput-object v37, v0, v1

    const/16 v1, 0x25

    aput-object v38, v0, v1

    const/16 v1, 0x26

    aput-object v39, v0, v1

    const/16 v1, 0x27

    aput-object v40, v0, v1

    const/16 v1, 0x28

    aput-object v41, v0, v1

    const/16 v1, 0x29

    aput-object v42, v0, v1

    const/16 v1, 0x2a

    aput-object v43, v0, v1

    const/16 v1, 0x2b

    aput-object v44, v0, v1

    const/16 v1, 0x2c

    aput-object v45, v0, v1

    sput-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->ellipsoids:[Lorg/locationtech/proj4j/datum/Ellipsoid;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 59
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    .line 61
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    .line 63
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    .line 65
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDLjava/lang/String;)V
    .locals 4

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 63
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    .line 65
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    .line 263
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    .line 264
    iput-object p8, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    .line 265
    iput-wide p2, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    .line 266
    iput-wide p4, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p4, v2

    if-nez p1, :cond_1

    cmpl-double p1, p6, v2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "One of poleRadius or reciprocalFlattening must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    cmpl-double p1, p6, v2

    if-eqz p1, :cond_2

    div-double p4, v0, p6

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    mul-double p6, p6, p4

    mul-double p4, p4, p4

    sub-double/2addr p6, p4

    .line 279
    iput-wide p6, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    sub-double/2addr v0, p6

    .line 280
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    iput-wide p2, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    goto :goto_1

    :cond_2
    mul-double p4, p4, p4

    mul-double p2, p2, p2

    div-double/2addr p4, p2

    sub-double/2addr v0, p4

    .line 282
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    .line 285
    :goto_1
    iget-wide p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 61
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    .line 63
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    .line 65
    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    .line 290
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    .line 291
    iput-object p6, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    .line 292
    iput-wide p2, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    .line 293
    invoke-virtual {p0, p4, p5}, Lorg/locationtech/proj4j/datum/Ellipsoid;->setEccentricitySquared(D)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 298
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/datum/Ellipsoid;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 301
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 374
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 375
    check-cast p1, Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 376
    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v3, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    return v2

    .line 377
    :cond_1
    iget-object v3, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 378
    :cond_2
    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v3, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_3

    return v2

    .line 379
    :cond_3
    iget-object v3, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 380
    :cond_4
    iget-wide v3, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    iget-wide v5, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    iget-wide v5, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    iget-wide v5, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public getA()D
    .locals 2

    .line 330
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    return-wide v0
.end method

.method public getB()D
    .locals 2

    .line 334
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    return-wide v0
.end method

.method public getEccentricitySquared()D
    .locals 2

    .line 344
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    return-wide v0
.end method

.method public getEquatorRadius()D
    .locals 2

    .line 326
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 364
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget-wide v1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    .line 366
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    or-int/2addr v0, v1

    iget-wide v1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    .line 367
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iget-wide v1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    .line 368
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    or-int/2addr v0, v1

    return v0
.end method

.method public isEqual(Lorg/locationtech/proj4j/datum/Ellipsoid;)Z
    .locals 5

    .line 348
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEqual(Lorg/locationtech/proj4j/datum/Ellipsoid;D)Z
    .locals 6

    .line 352
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    return v4

    .line 353
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p1, v0, p2

    if-lez p1, :cond_1

    return v4

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setEccentricitySquared(D)V
    .locals 4

    .line 338
    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity2:D

    .line 339
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->poleRadius:D

    .line 340
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->eccentricity:D

    return-void
.end method

.method public setEquatorRadius(D)V
    .locals 0

    .line 322
    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->equatorRadius:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->shortName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Ellipsoid;->name:Ljava/lang/String;

    return-object v0
.end method
