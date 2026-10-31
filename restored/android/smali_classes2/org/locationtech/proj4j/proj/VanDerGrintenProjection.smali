.class public Lorg/locationtech/proj4j/proj/VanDerGrintenProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "VanDerGrintenProjection.java"


# static fields
.field private static final C2_27:D = 0.07407407407407407

.field private static final HPISQ:D = 4.934802200544679

.field private static final PI4_3:D = 4.188790204786391

.field private static final PISQ:D = 9.869604401089358

.field private static final THIRD:D = 0.3333333333333333

.field private static final TOL:D = 1.0E-10

.field private static final TPISQ:D = 19.739208802178716

.field private static final TWO_THRD:D = 0.6666666666666666


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 26

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double v3, p3, v3

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sub-double v7, v3, v5

    .line 41
    const-string v9, "F"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v7, v10

    if-gtz v12, :cond_9

    cmpl-double v7, v3, v10

    if-lez v7, :cond_0

    move-wide v3, v10

    .line 44
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmpg-double v14, v7, v5

    if-gtz v14, :cond_1

    .line 45
    iput-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 46
    iput-wide v12, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v2

    .line 47
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    cmpg-double v18, v7, v5

    if-lez v18, :cond_7

    sub-double v7, v3, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v18, v7, v5

    if-gez v18, :cond_2

    goto/16 :goto_0

    :cond_2
    div-double v5, v16, v0

    div-double v7, v0, v16

    sub-double/2addr v5, v7

    .line 52
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v14

    mul-double v7, v5, v5

    mul-double v14, v3, v3

    sub-double v14, v10, v14

    .line 54
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    add-double v18, v3, v14

    sub-double v18, v18, v10

    div-double v14, v14, v18

    mul-double v18, v14, v14

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v3, v20, v3

    sub-double/2addr v3, v10

    mul-double v3, v3, v14

    mul-double v3, v3, v3

    sub-double/2addr v14, v3

    .line 59
    iput-wide v14, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    add-double v22, v3, v7

    mul-double v24, v5, v14

    mul-double v7, v7, v14

    mul-double v7, v7, v14

    sub-double v18, v18, v3

    mul-double v18, v18, v22

    sub-double v7, v7, v18

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double v24, v24, v3

    mul-double v24, v24, v16

    div-double v3, v24, v22

    iput-wide v3, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    cmpg-double v7, v0, v12

    if-gez v7, :cond_3

    neg-double v0, v3

    .line 61
    iput-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 62
    :cond_3
    iget-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    div-double v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double v5, v5, v20

    add-double/2addr v5, v0

    mul-double v0, v0, v5

    sub-double/2addr v10, v0

    .line 63
    iput-wide v10, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, -0x4224832026284245L    # -1.0E-10

    cmpg-double v3, v10, v0

    if-ltz v3, :cond_6

    cmpg-double v0, v10, v12

    if-gez v0, :cond_4

    .line 66
    iput-wide v12, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v2

    .line 68
    :cond_4
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v3, p3, v12

    if-gez v3, :cond_5

    const-wide v16, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :cond_5
    mul-double v0, v0, v16

    iput-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v2

    .line 64
    :cond_6
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_7
    :goto_0
    iput-wide v12, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double v0, v0, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v0, v0, v16

    iput-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v3, p3, v12

    if-gez v3, :cond_8

    neg-double v0, v0

    .line 50
    iput-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_8
    return-object v2

    .line 41
    :cond_9
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 43

    move-object/from16 v0, p5

    mul-double v1, p1, p1

    .line 77
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide v7, 0x4013bd3cc9be45deL    # 4.934802200544679

    const-wide v9, 0x4033bd3cc9be45deL    # 19.739208802178716

    const-wide v11, 0x4023bd3cc9be45deL    # 9.869604401089358

    const-wide/16 v13, 0x0

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v17, v3, v15

    if-gez v17, :cond_1

    .line 78
    iput-wide v13, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v3, v1, v1

    add-double/2addr v7, v1

    mul-double v7, v7, v9

    add-double/2addr v3, v7

    .line 80
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v9, v7, v15

    if-gtz v9, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr v1, v11

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    mul-double v1, v1, v5

    div-double v13, v1, p1

    :goto_0
    iput-wide v13, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v0

    :cond_1
    mul-double v17, p3, p3

    add-double v19, v1, v17

    mul-double v21, v19, v19

    const-wide v23, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    mul-double v23, v23, v3

    add-double v25, v19, v11

    mul-double v23, v23, v25

    mul-double v25, v3, v19

    const-wide v27, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v27, v3, v27

    const-wide v29, 0x400921fb54442d18L    # Math.PI

    mul-double v27, v27, v29

    add-double v27, v17, v27

    mul-double v27, v27, v29

    add-double v25, v25, v27

    const-wide v27, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v25, v25, v27

    add-double v25, v21, v25

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    mul-double v31, v17, v27

    sub-double v31, v19, v31

    mul-double v31, v31, v11

    add-double v31, v23, v31

    mul-double v3, v3, v29

    div-double v31, v31, v25

    div-double v33, v23, v25

    const-wide v35, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v37, v31, v35

    mul-double v39, v37, v31

    sub-double v33, v33, v39

    const-wide v39, -0x402aaaaaaaaaaaabL    # -0.3333333333333333

    mul-double v39, v39, v33

    .line 92
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v39

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    mul-double v39, v39, v41

    const-wide v41, 0x3fb2f684bda12f68L    # 0.07407407407407407

    mul-double v41, v41, v31

    mul-double v41, v41, v31

    mul-double v41, v41, v31

    mul-double v3, v3, v3

    mul-double v23, v23, v37

    sub-double v3, v3, v23

    div-double v3, v3, v25

    add-double v41, v41, v3

    mul-double v41, v41, v27

    mul-double v33, v33, v39

    div-double v41, v41, v33

    .line 94
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double v23, v3, v15

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    cmpg-double v27, v23, v25

    if-gtz v27, :cond_7

    cmpl-double v23, v3, v25

    if-lez v23, :cond_3

    cmpl-double v3, v41, v13

    if-lez v3, :cond_2

    move-wide v3, v13

    goto :goto_1

    :cond_2
    move-wide/from16 v3, v29

    goto :goto_1

    .line 95
    :cond_3
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    :goto_1
    mul-double v3, v3, v35

    const-wide v23, 0x4010c152382d7366L    # 4.188790204786391

    add-double v3, v3, v23

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v39, v39, v3

    sub-double v39, v39, v37

    mul-double v3, v39, v29

    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v23, p3, v13

    if-gez v23, :cond_4

    neg-double v3, v3

    .line 97
    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_4
    sub-double v1, v1, v17

    add-double/2addr v1, v7

    mul-double v1, v1, v9

    add-double v21, v21, v1

    .line 99
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v15

    if-gtz v3, :cond_5

    goto :goto_3

    :cond_5
    sub-double v19, v19, v11

    cmpg-double v1, v21, v13

    if-gtz v1, :cond_6

    goto :goto_2

    .line 100
    :cond_6
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    :goto_2
    add-double v19, v19, v13

    mul-double v19, v19, v5

    div-double v13, v19, p1

    :goto_3
    iput-wide v13, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v0

    .line 102
    :cond_7
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "I"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "van der Grinten (I)"

    return-object v0
.end method
