.class public Lorg/locationtech/proj4j/units/Units;
.super Ljava/lang/Object;
.source "Units.java"


# static fields
.field public static final ARC_MINUTES:Lorg/locationtech/proj4j/units/Unit;

.field public static final ARC_SECONDS:Lorg/locationtech/proj4j/units/Unit;

.field public static final CENTIMETRES:Lorg/locationtech/proj4j/units/Unit;

.field public static final CHAINS:Lorg/locationtech/proj4j/units/Unit;

.field public static final DECIMETRES:Lorg/locationtech/proj4j/units/Unit;

.field public static final DEGREES:Lorg/locationtech/proj4j/units/Unit;

.field public static final FATHOMS:Lorg/locationtech/proj4j/units/Unit;

.field public static final FEET:Lorg/locationtech/proj4j/units/Unit;

.field public static final INCHES:Lorg/locationtech/proj4j/units/Unit;

.field public static final KILOMETRES:Lorg/locationtech/proj4j/units/Unit;

.field public static final LINKS:Lorg/locationtech/proj4j/units/Unit;

.field public static final METRES:Lorg/locationtech/proj4j/units/Unit;

.field public static final MILES:Lorg/locationtech/proj4j/units/Unit;

.field public static final MILLIMETRES:Lorg/locationtech/proj4j/units/Unit;

.field public static final NAUTICAL_MILES:Lorg/locationtech/proj4j/units/Unit;

.field public static final POINTS:Lorg/locationtech/proj4j/units/Unit;

.field public static final RADIANS:Lorg/locationtech/proj4j/units/Unit;

.field public static final US_CHAINS:Lorg/locationtech/proj4j/units/Unit;

.field public static final US_FEET:Lorg/locationtech/proj4j/units/Unit;

.field public static final US_INCHES:Lorg/locationtech/proj4j/units/Unit;

.field public static final US_MILES:Lorg/locationtech/proj4j/units/Unit;

.field public static final US_YARDS:Lorg/locationtech/proj4j/units/Unit;

.field public static final YARDS:Lorg/locationtech/proj4j/units/Unit;

.field public static units:[Lorg/locationtech/proj4j/units/Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 22
    new-instance v0, Lorg/locationtech/proj4j/units/DegreeUnit;

    invoke-direct {v0}, Lorg/locationtech/proj4j/units/DegreeUnit;-><init>()V

    sput-object v0, Lorg/locationtech/proj4j/units/Units;->DEGREES:Lorg/locationtech/proj4j/units/Unit;

    .line 23
    new-instance v1, Lorg/locationtech/proj4j/units/Unit;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    const-string v2, "radian"

    const-string v3, "radians"

    const-string v4, "rad"

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v1, Lorg/locationtech/proj4j/units/Units;->RADIANS:Lorg/locationtech/proj4j/units/Unit;

    .line 24
    new-instance v2, Lorg/locationtech/proj4j/units/Unit;

    const-string v5, "min"

    const-wide v6, 0x3f91111111111111L    # 0.016666666666666666

    const-string v3, "arc minute"

    const-string v4, "arc minutes"

    invoke-direct/range {v2 .. v7}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v2, Lorg/locationtech/proj4j/units/Units;->ARC_MINUTES:Lorg/locationtech/proj4j/units/Unit;

    .line 25
    new-instance v3, Lorg/locationtech/proj4j/units/Unit;

    const-string v6, "sec"

    const-wide v7, 0x3f323456789abcdfL    # 2.777777777777778E-4

    const-string v4, "arc second"

    const-string v5, "arc seconds"

    invoke-direct/range {v3 .. v8}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v3, Lorg/locationtech/proj4j/units/Units;->ARC_SECONDS:Lorg/locationtech/proj4j/units/Unit;

    .line 30
    new-instance v4, Lorg/locationtech/proj4j/units/Unit;

    const-string v7, "km"

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-string v5, "kilometre"

    const-string v6, "kilometres"

    invoke-direct/range {v4 .. v9}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v4, Lorg/locationtech/proj4j/units/Units;->KILOMETRES:Lorg/locationtech/proj4j/units/Unit;

    .line 31
    new-instance v5, Lorg/locationtech/proj4j/units/Unit;

    const-string v8, "m"

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-string v6, "metre"

    const-string v7, "metres"

    invoke-direct/range {v5 .. v10}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v5, Lorg/locationtech/proj4j/units/Units;->METRES:Lorg/locationtech/proj4j/units/Unit;

    .line 32
    new-instance v6, Lorg/locationtech/proj4j/units/Unit;

    const-string v9, "dm"

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const-string v7, "decimetre"

    const-string v8, "decimetres"

    invoke-direct/range {v6 .. v11}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v6, Lorg/locationtech/proj4j/units/Units;->DECIMETRES:Lorg/locationtech/proj4j/units/Unit;

    .line 33
    new-instance v7, Lorg/locationtech/proj4j/units/Unit;

    const-string v10, "cm"

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    const-string v8, "centimetre"

    const-string v9, "centimetres"

    invoke-direct/range {v7 .. v12}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v7, Lorg/locationtech/proj4j/units/Units;->CENTIMETRES:Lorg/locationtech/proj4j/units/Unit;

    .line 34
    new-instance v8, Lorg/locationtech/proj4j/units/Unit;

    const-string v11, "mm"

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    const-string v9, "millimetre"

    const-string v10, "millimetres"

    invoke-direct/range {v8 .. v13}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v8, Lorg/locationtech/proj4j/units/Units;->MILLIMETRES:Lorg/locationtech/proj4j/units/Unit;

    .line 37
    new-instance v9, Lorg/locationtech/proj4j/units/Unit;

    const-string v12, "kmi"

    const-wide v13, 0x409cf00000000000L    # 1852.0

    const-string v10, "nautical mile"

    const-string v11, "nautical miles"

    invoke-direct/range {v9 .. v14}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v9, Lorg/locationtech/proj4j/units/Units;->NAUTICAL_MILES:Lorg/locationtech/proj4j/units/Unit;

    .line 38
    new-instance v10, Lorg/locationtech/proj4j/units/Unit;

    const-string v13, "mi"

    const-wide v14, 0x409925604189374cL    # 1609.344

    const-string v11, "mile"

    const-string v12, "miles"

    invoke-direct/range {v10 .. v15}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v10, Lorg/locationtech/proj4j/units/Units;->MILES:Lorg/locationtech/proj4j/units/Unit;

    .line 39
    new-instance v11, Lorg/locationtech/proj4j/units/Unit;

    const-string v14, "ch"

    const-wide v15, 0x40341de69ad42c3dL    # 20.1168

    const-string v12, "chain"

    const-string v13, "chains"

    invoke-direct/range {v11 .. v16}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v11, Lorg/locationtech/proj4j/units/Units;->CHAINS:Lorg/locationtech/proj4j/units/Unit;

    .line 40
    new-instance v12, Lorg/locationtech/proj4j/units/Unit;

    const-string v15, "yd"

    const-wide v16, 0x3fed42c3c9eecbfbL    # 0.9144

    const-string v13, "yard"

    const-string v14, "yards"

    invoke-direct/range {v12 .. v17}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v12, Lorg/locationtech/proj4j/units/Units;->YARDS:Lorg/locationtech/proj4j/units/Unit;

    .line 41
    new-instance v13, Lorg/locationtech/proj4j/units/Unit;

    const-string v16, "ft"

    const-wide v17, 0x3fd381d7dbf487fdL    # 0.3048

    const-string v14, "foot"

    const-string v15, "feet"

    invoke-direct/range {v13 .. v18}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v13, Lorg/locationtech/proj4j/units/Units;->FEET:Lorg/locationtech/proj4j/units/Unit;

    .line 42
    new-instance v14, Lorg/locationtech/proj4j/units/Unit;

    const-string v17, "in"

    const-wide v18, 0x3f9a027525460aa6L    # 0.0254

    const-string v15, "inch"

    const-string v16, "inches"

    invoke-direct/range {v14 .. v19}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v14, Lorg/locationtech/proj4j/units/Units;->INCHES:Lorg/locationtech/proj4j/units/Unit;

    .line 45
    new-instance v15, Lorg/locationtech/proj4j/units/Unit;

    const-string v18, "us-mi"

    const-wide v19, 0x409925638d4c24abL    # 1609.347218694437

    const-string v16, "U.S. mile"

    const-string v17, "U.S. miles"

    invoke-direct/range {v15 .. v20}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v15, Lorg/locationtech/proj4j/units/Units;->US_MILES:Lorg/locationtech/proj4j/units/Unit;

    .line 46
    new-instance v16, Lorg/locationtech/proj4j/units/Unit;

    const-string v19, "us-ch"

    const-wide v20, 0x40341de93dd683beL    # 20.11684023368047

    const-string v17, "U.S. chain"

    const-string v18, "U.S. chains"

    invoke-direct/range {v16 .. v21}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v16, Lorg/locationtech/proj4j/units/Units;->US_CHAINS:Lorg/locationtech/proj4j/units/Unit;

    .line 47
    new-instance v17, Lorg/locationtech/proj4j/units/Unit;

    const-string v20, "us-yd"

    const-wide v21, 0x3fed42c79fc3a85cL    # 0.914401828803658

    const-string v18, "U.S. yard"

    const-string v19, "U.S. yards"

    invoke-direct/range {v17 .. v22}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v17, Lorg/locationtech/proj4j/units/Units;->US_YARDS:Lorg/locationtech/proj4j/units/Unit;

    .line 48
    new-instance v18, Lorg/locationtech/proj4j/units/Unit;

    const-string v21, "us-ft"

    const-wide v22, 0x3fd381da6a827038L    # 0.304800609601219

    const-string v19, "U.S. foot"

    const-string v20, "U.S. feet"

    invoke-direct/range {v18 .. v23}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v18, Lorg/locationtech/proj4j/units/Units;->US_FEET:Lorg/locationtech/proj4j/units/Unit;

    .line 49
    new-instance v19, Lorg/locationtech/proj4j/units/Unit;

    const-string v22, "us-in"

    const-wide v23, 0x3f9a02788e034050L    # 0.025400050800101603

    const-string v20, "U.S. inch"

    const-string v21, "U.S. inches"

    invoke-direct/range {v19 .. v24}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v19, Lorg/locationtech/proj4j/units/Units;->US_INCHES:Lorg/locationtech/proj4j/units/Unit;

    .line 52
    new-instance v20, Lorg/locationtech/proj4j/units/Unit;

    const-string v23, "fath"

    const-wide v24, 0x3ffd42c3c9eecbfbL    # 1.8288

    const-string v21, "fathom"

    const-string v22, "fathoms"

    invoke-direct/range {v20 .. v25}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v20, Lorg/locationtech/proj4j/units/Units;->FATHOMS:Lorg/locationtech/proj4j/units/Unit;

    .line 53
    new-instance v21, Lorg/locationtech/proj4j/units/Unit;

    const-string v24, "link"

    const-wide v25, 0x3fc9bfdf7e8038a0L    # 0.201168

    const-string v22, "link"

    const-string v23, "links"

    invoke-direct/range {v21 .. v26}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v21, Lorg/locationtech/proj4j/units/Units;->LINKS:Lorg/locationtech/proj4j/units/Unit;

    .line 55
    new-instance v22, Lorg/locationtech/proj4j/units/Unit;

    const-string v25, "point"

    const-wide v26, 0x3f3708845ca900d3L    # 3.5145980351459805E-4

    const-string v23, "point"

    const-string v24, "points"

    invoke-direct/range {v22 .. v27}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    sput-object v22, Lorg/locationtech/proj4j/units/Units;->POINTS:Lorg/locationtech/proj4j/units/Unit;

    const/16 v1, 0xf

    .line 57
    new-array v1, v1, [Lorg/locationtech/proj4j/units/Unit;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v4, v1, v0

    const/4 v0, 0x2

    aput-object v5, v1, v0

    const/4 v0, 0x3

    aput-object v6, v1, v0

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    const/4 v0, 0x6

    aput-object v10, v1, v0

    const/4 v0, 0x7

    aput-object v12, v1, v0

    const/16 v0, 0x8

    aput-object v13, v1, v0

    const/16 v0, 0x9

    aput-object v14, v1, v0

    const/16 v0, 0xa

    aput-object v15, v1, v0

    const/16 v0, 0xb

    aput-object v17, v1, v0

    const/16 v0, 0xc

    aput-object v18, v1, v0

    const/16 v0, 0xd

    aput-object v19, v1, v0

    const/16 v0, 0xe

    aput-object v9, v1, v0

    sput-object v1, Lorg/locationtech/proj4j/units/Units;->units:[Lorg/locationtech/proj4j/units/Unit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(DLorg/locationtech/proj4j/units/Unit;Lorg/locationtech/proj4j/units/Unit;)D
    .locals 0

    if-ne p2, p3, :cond_0

    return-wide p0

    .line 76
    :cond_0
    invoke-virtual {p2, p0, p1}, Lorg/locationtech/proj4j/units/Unit;->toBase(D)D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lorg/locationtech/proj4j/units/Unit;->fromBase(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static findUnits(Ljava/lang/String;)Lorg/locationtech/proj4j/units/Unit;
    .locals 3

    const/4 v0, 0x0

    .line 66
    :goto_0
    sget-object v1, Lorg/locationtech/proj4j/units/Units;->units:[Lorg/locationtech/proj4j/units/Unit;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 67
    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/locationtech/proj4j/units/Unit;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/locationtech/proj4j/units/Units;->units:[Lorg/locationtech/proj4j/units/Unit;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/locationtech/proj4j/units/Unit;->plural:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/locationtech/proj4j/units/Units;->units:[Lorg/locationtech/proj4j/units/Unit;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/locationtech/proj4j/units/Unit;->abbreviation:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    sget-object p0, Lorg/locationtech/proj4j/units/Units;->units:[Lorg/locationtech/proj4j/units/Unit;

    aget-object p0, p0, v0

    return-object p0

    .line 70
    :cond_2
    sget-object p0, Lorg/locationtech/proj4j/units/Units;->METRES:Lorg/locationtech/proj4j/units/Unit;

    return-object p0
.end method
