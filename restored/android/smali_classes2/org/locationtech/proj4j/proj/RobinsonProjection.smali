.class public Lorg/locationtech/proj4j/proj/RobinsonProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "RobinsonProjection.java"


# static fields
.field private static final C1:D = 11.459155902616464

.field private static final EPS:D = 1.0E-10

.field private static final FXC:D = 0.8487

.field private static final FYC:D = 1.3523

.field private static final MAX_ITER:I = 0x64

.field private static final ONEEPS:D = 1.000001

.field private static final RC1:D = 0.08726646259971647

.field private static final X:[[D

.field private static final Y:[[D


# instance fields
.field private final NODES:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    const/4 v0, 0x4

    .line 27
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    new-array v4, v0, [D

    fill-array-data v4, :array_3

    new-array v5, v0, [D

    fill-array-data v5, :array_4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    new-array v7, v0, [D

    fill-array-data v7, :array_6

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    new-array v9, v0, [D

    fill-array-data v9, :array_8

    new-array v10, v0, [D

    fill-array-data v10, :array_9

    new-array v11, v0, [D

    fill-array-data v11, :array_a

    new-array v12, v0, [D

    fill-array-data v12, :array_b

    new-array v13, v0, [D

    fill-array-data v13, :array_c

    new-array v14, v0, [D

    fill-array-data v14, :array_d

    new-array v15, v0, [D

    fill-array-data v15, :array_e

    move-object/from16 v16, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_f

    move-object/from16 v17, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_10

    move-object/from16 v18, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_11

    move-object/from16 v19, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_12

    const/16 v20, 0x4

    const/16 v0, 0x13

    move-object/from16 v21, v1

    new-array v1, v0, [[D

    const/16 v22, 0x0

    aput-object v16, v1, v22

    const/16 v16, 0x1

    aput-object v2, v1, v16

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v3, 0x3

    aput-object v4, v1, v3

    aput-object v5, v1, v20

    const/4 v4, 0x5

    aput-object v6, v1, v4

    const/4 v5, 0x6

    aput-object v7, v1, v5

    const/4 v6, 0x7

    aput-object v8, v1, v6

    const/16 v7, 0x8

    aput-object v9, v1, v7

    const/16 v8, 0x9

    aput-object v10, v1, v8

    const/16 v9, 0xa

    aput-object v11, v1, v9

    const/16 v10, 0xb

    aput-object v12, v1, v10

    const/16 v11, 0xc

    aput-object v13, v1, v11

    const/16 v12, 0xd

    aput-object v14, v1, v12

    const/16 v13, 0xe

    aput-object v15, v1, v13

    const/16 v14, 0xf

    aput-object v17, v1, v14

    const/16 v15, 0x10

    aput-object v18, v1, v15

    const/16 v17, 0x11

    aput-object v19, v1, v17

    const/16 v17, 0x12

    aput-object v21, v1, v17

    sput-object v1, Lorg/locationtech/proj4j/proj/RobinsonProjection;->X:[[D

    const/4 v1, 0x4

    const/16 v17, 0x2

    .line 49
    new-array v2, v1, [D

    fill-array-data v2, :array_13

    const/16 v18, 0x3

    new-array v3, v1, [D

    fill-array-data v3, :array_14

    const/16 v19, 0x5

    new-array v4, v1, [D

    fill-array-data v4, :array_15

    const/16 v20, 0x6

    new-array v5, v1, [D

    fill-array-data v5, :array_16

    const/16 v21, 0x7

    new-array v6, v1, [D

    fill-array-data v6, :array_17

    const/16 v23, 0x8

    new-array v7, v1, [D

    fill-array-data v7, :array_18

    const/16 v24, 0x9

    new-array v8, v1, [D

    fill-array-data v8, :array_19

    const/16 v25, 0xa

    new-array v9, v1, [D

    fill-array-data v9, :array_1a

    const/16 v26, 0xb

    new-array v10, v1, [D

    fill-array-data v10, :array_1b

    const/16 v27, 0xc

    new-array v11, v1, [D

    fill-array-data v11, :array_1c

    const/16 v28, 0xd

    new-array v12, v1, [D

    fill-array-data v12, :array_1d

    const/16 v29, 0xe

    new-array v13, v1, [D

    fill-array-data v13, :array_1e

    const/16 v30, 0xf

    new-array v14, v1, [D

    fill-array-data v14, :array_1f

    const/16 v31, 0x10

    new-array v15, v1, [D

    fill-array-data v15, :array_20

    new-array v0, v1, [D

    fill-array-data v0, :array_21

    move-object/from16 v32, v0

    new-array v0, v1, [D

    fill-array-data v0, :array_22

    move-object/from16 v33, v0

    new-array v0, v1, [D

    fill-array-data v0, :array_23

    move-object/from16 v34, v0

    new-array v0, v1, [D

    fill-array-data v0, :array_24

    move-object/from16 v35, v0

    new-array v0, v1, [D

    fill-array-data v0, :array_25

    const/16 v1, 0x13

    const/16 v36, 0x4

    new-array v1, v1, [[D

    aput-object v2, v1, v22

    aput-object v3, v1, v16

    aput-object v4, v1, v17

    aput-object v5, v1, v18

    aput-object v6, v1, v36

    aput-object v7, v1, v19

    aput-object v8, v1, v20

    aput-object v9, v1, v21

    aput-object v10, v1, v23

    aput-object v11, v1, v24

    aput-object v12, v1, v25

    aput-object v13, v1, v26

    aput-object v14, v1, v27

    aput-object v15, v1, v28

    aput-object v32, v1, v29

    aput-object v33, v1, v30

    aput-object v34, v1, v31

    const/16 v2, 0x11

    aput-object v35, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sput-object v1, Lorg/locationtech/proj4j/proj/RobinsonProjection;->Y:[[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3c7997fd00000000L    # 2.21989997769713E-17
        -0x40ed3e42a0000000L    # -7.155149796744809E-5
        0x3eca175180000000L    # 3.1102999855647795E-6
    .end array-data

    :array_1
    .array-data 8
        0x3feff48800000000L    # 0.9986000061035156
        -0x40c0654e20000000L    # -4.822429909836501E-4
        -0x4105e4c340000000L    # -2.4896999093471095E-5
        -0x4149abd400000000L    # -1.3308999768923968E-6
    .end array-data

    :array_2
    .array-data 8
        0x3fefda5120000000L    # 0.9954000115394592
        -0x40b4c4d0a0000000L    # -8.310300181619823E-4
        -0x40f87aed00000000L    # -4.486049874685705E-5
        -0x414f7226c0000000L    # -9.867010248854058E-7
    .end array-data

    :array_3
    .array-data 8
        0x3fefae1480000000L    # 0.9900000095367432
        -0x40a9d26c20000000L    # -0.0013536399928852916
        -0x40f0b86fa0000000L    # -5.966100070509128E-5
        0x3eced9cd00000000L    # 3.677700078696944E-6
    .end array-data

    :array_4
    .array-data 8
        0x3fef6e2ec0000000L    # 0.982200026512146
        -0x40a490f940000000L    # -0.001674419967457652
        -0x412d2506a0000000L    # -4.495469966059318E-6
        -0x4127fdc8a0000000L    # -5.724109996663174E-6
    .end array-data

    :array_5
    .array-data 8
        0x3fef22d0e0000000L    # 0.9729999899864197
        -0x409e65e440000000L    # -0.0021486799232661724
        -0x40e8503ce0000000L    # -9.035709808813408E-5
        0x3e541e1cc0000000L    # 1.8735999418595384E-8
    .end array-data

    :array_6
    .array-data 8
        0x3feeb851e0000000L    # 0.9599999785423279
        -0x409701e760000000L    # -0.0030508500058203936
        -0x40e8631860000000L    # -9.007610060507432E-5
        0x3ebbab21a0000000L    # 1.6491700307597057E-6
    .end array-data

    :array_7
    .array-data 8
        0x3fee2a9940000000L    # 0.9427000284194946
        -0x4090a44520000000L    # -0.003827919950708747
        -0x40eedf3360000000L    # -6.533860141644254E-5
        -0x413a0f78a0000000L    # -2.6154000352107687E-6
    .end array-data

    :array_8
    .array-data 8
        0x3fed7dbf40000000L    # 0.9215999841690063
        -0x408cd753e0000000L    # -0.004677460063248873
        -0x40e4966d20000000L    # -1.0456999734742567E-4
        0x3ed42f4ea0000000L    # 4.812429779121885E-6
    .end array-data

    :array_9
    .array-data 8
        0x3fecadaba0000000L    # 0.8962000012397766
        -0x408a094b60000000L    # -0.005362229887396097
        -0x40ff059d20000000L    # -3.2383100915467367E-5
        -0x412934f180000000L    # -5.43431997357402E-6
    .end array-data

    :array_a
    .array-data 8
        0x3febc5d640000000L    # 0.867900013923645
        -0x40870a5da0000000L    # -0.006093630101531744
        -0x40e2246f40000000L    # -1.1389800056349486E-4
        0x3ecbe40a20000000L    # 3.324840008644969E-6
    .end array-data

    :array_b
    .array-data 8
        0x3feab851e0000000L    # 0.8349999785423279
        -0x4083658820000000L    # -0.006983249913901091
        -0x40ef3755c0000000L
        0x3eaf5f3ca0000000L    # 9.34959018650261E-7
    .end array-data

    :array_c
    .array-data 8
        0x3fe98e21a0000000L    # 0.7986000180244446
        -0x40810fb500000000L    # -0.007553379982709885
        -0x40f5c8fe20000000L    # -5.000090095563792E-5
        0x3eaf625f40000000L    # 9.353240102427662E-7
    .end array-data

    :array_d
    .array-data 8
        0x3fe84f7660000000L    # 0.7597000002861023
        -0x407fa67ba0000000L    # -0.00798324029892683
        -0x40fd240de0000000L    # -3.5970999306300655E-5
        -0x413ce7c4e0000000L    # -2.276259920108714E-6
    .end array-data

    :array_e
    .array-data 8
        0x3fe6fec560000000L    # 0.7185999751091003
        -0x407e906280000000L    # -0.008513670414686203
        -0x40ed9eab40000000L    # -7.011489651631564E-5
        -0x411de6a4a0000000L    # -8.63029981701402E-6
    .end array-data

    :array_f
    .array-data 8
        0x3fe58adac0000000L    # 0.6732000112533569
        -0x407bcd6ca0000000L    # -0.009862090460956097
        -0x40d5d79360000000L    # -1.9956899632234126E-4
        0x3ef4214340000000L    # 1.919739952427335E-5
    .end array-data

    :array_10
    .array-data 8
        0x3fe3e1b080000000L    # 0.6212999820709229
        -0x407aa9f7c0000000L    # -0.0104179996997118
        0x3f172be820000000L    # 8.839229849399999E-5
        0x3eda2cb260000000L    # 6.240510174393421E-6
    .end array-data

    :array_11
    .array-data 8
        0x3fe24f7660000000L    # 0.5722000002861023
        -0x407d6eccc0000000L    # -0.009066009894013405
        0x3f27dae820000000L    # 1.8200000340584666E-4
        0x3eda2cb260000000L    # 6.240510174393421E-6
    .end array-data

    :array_12
    .array-data 8
        0x3fe107c840000000L    # 0.5321999788284302
        -0x40843cc880000000L    # -0.006777970120310783
        0x3f320fef60000000L    # 2.756080066319555E-4
        0x3eda2cb260000000L    # 6.240510174393421E-6
    .end array-data

    :array_13
    .array-data 8
        -0x43a8000020000000L    # -5.204170014340115E-18
        0x3f89652be0000000L    # 0.012400000356137753
        0x3c36666ac0000000L    # 1.2143100314194296E-18
        -0x4228c3d7c0000000L    # -8.452839816985858E-11
    .end array-data

    :array_14
    .array-data 8
        0x3fafbe76c0000000L    # 0.06199999898672104
        0x3f89652be0000000L    # 0.012400000356137753
        -0x41ea3795c0000000L    # -1.267929983228555E-9
        0x3dfd0b3260000000L    # 4.226420047270807E-10
    .end array-data

    :array_15
    .array-data 8
        0x3fbfbe76c0000000L    # 0.12399999797344208
        0x3f89652be0000000L    # 0.012400000356137753
        0x3e35c86780000000L    # 5.071710162951604E-9
        -0x41e4688fc0000000L    # -1.6060399676831594E-9
    .end array-data

    :array_16
    .array-data 8
        0x3fc7ced920000000L    # 0.1860000044107437
        0x3f89651e60000000L    # 0.012399899773299694
        -0x41ab941fe0000000L    # -1.9018900232481428E-8
        0x3e39c6bdc0000000L    # 6.001520169718333E-9
    .end array-data

    :array_17
    .array-data 8
        0x3fcfbe76c0000000L    # 0.24799999594688416
        0x3f896546a0000000L    # 0.01240019965916872
        0x3e730f59e0000000L    # 7.100390320147199E-8
        -0x41a7f2bc20000000L    # -2.240000007702747E-8
    .end array-data

    :array_18
    .array-data 8
        0x3fd3d70a40000000L    # 0.3100000023841858
        0x3f8964c080000000L    # 0.012399200350046158
        -0x416e3762e0000000L    # -2.6499699856685766E-7
        0x3e7670da20000000L    # 8.359860004247821E-8
    .end array-data

    :array_19
    .array-data 8
        0x3fd7ced920000000L    # 0.3720000088214874
        0x3f8966b100000000L    # 0.01240289956331253
        0x3eb097a640000000L    # 9.88982947092154E-7
        -0x416b0ffbe0000000L    # -3.119940004125965E-7
    .end array-data

    :array_1a
    .array-data 8
        0x3fdbc6a7e0000000L    # 0.4339999854564667
        0x3f895f8fc0000000L    # 0.012389300391077995
        -0x413109c9c0000000L    # -3.6909300433762837E-6
        -0x4162c416a0000000L    # -4.3562098994698317E-7
    .end array-data

    :array_1b
    .array-data 8
        0x3fdfbb2fe0000000L    # 0.4957999885082245
        0x3f893b1fa0000000L    # 0.012319800443947315
        -0x411a8e6340000000L    # -1.0225199730484746E-5
        -0x4168cff5c0000000L    # -3.455230057625158E-7
    .end array-data

    :array_1c
    .array-data 8
        0x3fe1d3c360000000L    # 0.5570999979972839
        0x3f88f7e8e0000000L    # 0.012191600166261196
        -0x410fd7eb60000000L    # -1.540810080769006E-5
        -0x415c762f20000000L    # -5.822880098094174E-7
    .end array-data

    :array_1d
    .array-data 8
        0x3fe3c36120000000L    # 0.6176000237464905
        0x3f889034a0000000L    # 0.011993800289928913
        -0x4106af52e0000000L    # -2.4142400434357114E-5
        -0x415e5f79c0000000L    # -5.253269819149864E-7
    .end array-data

    :array_1e
    .array-data 8
        0x3fe5a92a40000000L    # 0.6769000291824341
        0x3f87fcfc40000000L    # 0.011713000014424324
        -0x40ff360a20000000L    # -3.202230072929524E-5
        -0x415eac1d60000000L    # -5.164050094208505E-7
    .end array-data

    :array_1f
    .array-data 8
        0x3fe781d7e0000000L    # 0.7346000075340271
        0x3f8740d180000000L    # 0.011354099959135056
        -0x40fb266020000000L    # -3.976840162067674E-5
        -0x415b904880000000L    # -6.090519946155837E-7
    .end array-data

    :array_20
    .array-data 8
        0x3fe94a2340000000L    # 0.7903000116348267
        0x3f86585960000000L    # 0.01091070007532835
        -0x40f65c3080000000L    # -4.8904199502430856E-5
        -0x414e6d7e80000000L    # -1.0473900147189852E-6
    .end array-data

    :array_21
    .array-data 8
        0x3feafdf3c0000000L    # 0.843500018119812
        0x3f852ec360000000L    # 0.010343099944293499
        -0x40ef0fc2c0000000L    # -6.461500015575439E-5
        -0x41e7e24940000000L    # -1.4037400131172717E-9
    .end array-data

    :array_22
    .array-data 8
        0x3fec985f00000000L    # 0.8935999870300293
        0x3f83dbf280000000L    # 0.009696859866380692
        -0x40ef0e5a00000000L    # -6.463599856942892E-5
        -0x411e135d40000000L    # -8.54700010677334E-6
    .end array-data

    :array_23
    .array-data 8
        0x3fee0f90a0000000L    # 0.9394000172615051
        0x3f8138fc00000000L    # 0.008409470319747925
        -0x40d6b95460000000L    # -1.9284100562799722E-4
        -0x412e56e720000000L    # -4.210599854559405E-6
    .end array-data

    :array_24
    .array-data 8
        0x3fef3c3620000000L    # 0.9761000275611877
        0x3f7940c120000000L    # 0.0061652702279388905
        -0x40cf390860000000L    # -2.5599999935366213E-4
        -0x412e56e720000000L    # -4.210599854559405E-6
    .end array-data

    :array_25
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3f6af284c0000000L    # 0.0032894699834287167
        -0x40cb156680000000L    # -3.191590076312423E-4
        -0x412e56e720000000L    # -4.210599854559405E-6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const/16 v0, 0x12

    .line 71
    iput v0, p0, Lorg/locationtech/proj4j/proj/RobinsonProjection;->NODES:I

    return-void
.end method

.method private DV([DD)D
    .locals 6

    const/4 v0, 0x1

    .line 88
    aget-wide v0, p1, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, p2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    mul-double p2, p2, p2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double p2, p2, v2

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method private V([DD)D
    .locals 8

    const/4 v0, 0x0

    .line 84
    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    const/4 v6, 0x3

    aget-wide v6, p1, v6

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    mul-double v4, v4, p2

    add-double/2addr v2, v4

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 7

    .line 92
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4026eb167b830193L    # 11.459155902616464

    mul-double v2, v2, v0

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    const/16 v2, 0x12

    :cond_0
    const-wide v3, 0x3fb657184ae74487L    # 0.08726646259971647

    int-to-double v5, v2

    mul-double v5, v5, v3

    sub-double/2addr v0, v5

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 97
    sget-object v3, Lorg/locationtech/proj4j/proj/RobinsonProjection;->X:[[D

    aget-object v3, v3, v2

    invoke-direct {p0, v3, v0, v1}, Lorg/locationtech/proj4j/proj/RobinsonProjection;->V([DD)D

    move-result-wide v3

    const-wide v5, 0x3feb288ce703afb8L    # 0.8487

    mul-double v3, v3, v5

    mul-double v3, v3, p1

    iput-wide v3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 98
    sget-object p1, Lorg/locationtech/proj4j/proj/RobinsonProjection;->Y:[[D

    aget-object p1, p1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/proj4j/proj/RobinsonProjection;->V([DD)D

    move-result-wide p1

    const-wide v0, 0x3ff5a305532617c2L    # 1.3523

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_1

    neg-double p1, p1

    .line 100
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_1
    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-wide v2, 0x3feb288ce703afb8L    # 0.8487

    div-double v2, p1, v2

    .line 108
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v2, 0x3ff5a305532617c2L    # 1.3523

    div-double v2, p3, v2

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/16 v6, 0x12

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v12, v2, v4

    if-ltz v12, :cond_2

    const-wide v4, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v12, v2, v4

    if-lez v12, :cond_0

    .line 112
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 113
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    :cond_0
    cmpg-double v2, p3, v7

    if-gez v2, :cond_1

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_1
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 116
    :goto_0
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 117
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    sget-object v4, Lorg/locationtech/proj4j/proj/RobinsonProjection;->X:[[D

    aget-object v4, v4, v6

    aget-wide v5, v4, v9

    div-double/2addr v2, v5

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    :cond_2
    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    mul-double v2, v2, v4

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-ltz v2, :cond_a

    if-lt v2, v6, :cond_3

    goto/16 :goto_4

    .line 127
    :cond_3
    :goto_1
    sget-object v3, Lorg/locationtech/proj4j/proj/RobinsonProjection;->Y:[[D

    aget-object v4, v3, v2

    aget-wide v5, v4, v9

    iget-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double v14, v5, v12

    if-lez v14, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v14, v2, 0x1

    .line 128
    aget-object v3, v3, v14

    aget-wide v15, v3, v9

    cmpg-double v3, v15, v12

    if-gtz v3, :cond_5

    move v2, v14

    goto :goto_1

    :cond_5
    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    sub-double/2addr v12, v5

    mul-double v12, v12, v17

    sub-double/2addr v15, v5

    div-double/2addr v12, v15

    const/16 v3, 0x64

    :goto_2
    if-lez v3, :cond_7

    .line 135
    invoke-direct {v0, v4, v12, v13}, Lorg/locationtech/proj4j/proj/RobinsonProjection;->V([DD)D

    move-result-wide v5

    iget-wide v14, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v5, v14

    invoke-direct {v0, v4, v12, v13}, Lorg/locationtech/proj4j/proj/RobinsonProjection;->DV([DD)D

    move-result-wide v14

    div-double/2addr v5, v14

    sub-double/2addr v12, v5

    .line 137
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v9, v5, v14

    if-gez v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    mul-int/lit8 v3, v2, 0x5

    int-to-double v3, v3

    add-double/2addr v3, v12

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    iput-wide v3, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v5, p3, v7

    if-gez v5, :cond_8

    neg-double v3, v3

    .line 142
    iput-wide v3, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 143
    :cond_8
    iget-wide v3, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    sget-object v5, Lorg/locationtech/proj4j/proj/RobinsonProjection;->X:[[D

    aget-object v2, v5, v2

    invoke-direct {v0, v2, v12, v13}, Lorg/locationtech/proj4j/proj/RobinsonProjection;->V([DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    iput-wide v3, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v2, v4

    if-lez v6, :cond_9

    .line 145
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 146
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_9
    return-object v1

    .line 122
    :cond_a
    :goto_4
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 123
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "Robinson"

    return-object v0
.end method
