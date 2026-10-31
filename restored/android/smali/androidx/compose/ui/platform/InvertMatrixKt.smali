.class public abstract Landroidx/compose/ui/platform/InvertMatrixKt;
.super Ljava/lang/Object;
.source "InvertMatrix.kt"


# direct methods
.method public static final invertTo-JiSxe2E([F[F)Z
    .locals 47

    const/4 v0, 0x0

    .line 39
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 39
    aget v3, p0, v2

    const/4 v4, 0x2

    .line 39
    aget v5, p0, v4

    const/4 v6, 0x3

    .line 39
    aget v7, p0, v6

    const/4 v8, 0x4

    .line 39
    aget v9, p0, v8

    const/4 v10, 0x5

    .line 39
    aget v11, p0, v10

    const/4 v12, 0x6

    .line 39
    aget v13, p0, v12

    const/4 v14, 0x7

    .line 39
    aget v15, p0, v14

    const/16 v16, 0x8

    const/16 v17, 0x0

    .line 39
    aget v0, p0, v16

    const/16 v18, 0x9

    const/16 v19, 0x1

    .line 39
    aget v2, p0, v18

    const/16 v20, 0xa

    .line 39
    aget v21, p0, v20

    const/16 v22, 0xb

    .line 39
    aget v23, p0, v22

    const/16 v24, 0xc

    const/16 v25, 0x2

    .line 39
    aget v4, p0, v24

    const/16 v26, 0xd

    .line 39
    aget v27, p0, v26

    const/16 v28, 0xe

    .line 39
    aget v29, p0, v28

    const/16 v30, 0xf

    .line 39
    aget v31, p0, v30

    mul-float v32, v1, v11

    mul-float v33, v3, v9

    sub-float v32, v32, v33

    mul-float v33, v1, v13

    mul-float v34, v5, v9

    sub-float v33, v33, v34

    mul-float v34, v1, v15

    mul-float v35, v7, v9

    sub-float v34, v34, v35

    mul-float v35, v3, v13

    mul-float v36, v5, v11

    sub-float v35, v35, v36

    mul-float v36, v3, v15

    mul-float v37, v7, v11

    sub-float v36, v36, v37

    mul-float v37, v5, v15

    mul-float v38, v7, v13

    sub-float v37, v37, v38

    mul-float v38, v0, v27

    mul-float v39, v2, v4

    sub-float v38, v38, v39

    mul-float v39, v0, v29

    mul-float v40, v21, v4

    sub-float v39, v39, v40

    mul-float v40, v0, v31

    mul-float v41, v23, v4

    sub-float v40, v40, v41

    mul-float v41, v2, v29

    mul-float v42, v21, v27

    sub-float v41, v41, v42

    mul-float v42, v2, v31

    mul-float v43, v23, v27

    sub-float v42, v42, v43

    mul-float v43, v21, v31

    mul-float v44, v23, v29

    sub-float v43, v43, v44

    mul-float v44, v32, v43

    mul-float v45, v33, v42

    sub-float v44, v44, v45

    mul-float v45, v34, v41

    add-float v44, v44, v45

    mul-float v45, v35, v40

    add-float v44, v44, v45

    mul-float v45, v36, v39

    sub-float v44, v44, v45

    mul-float v45, v37, v38

    add-float v44, v44, v45

    const/16 v45, 0x0

    cmpg-float v45, v44, v45

    if-nez v45, :cond_0

    return v17

    :cond_0
    const/high16 v45, 0x3f800000    # 1.0f

    div-float v45, v45, v44

    mul-float v44, v11, v43

    mul-float v46, v13, v42

    sub-float v44, v44, v46

    mul-float v46, v15, v41

    add-float v44, v44, v46

    mul-float v44, v44, v45

    .line 42
    aput v44, p1, v17

    const/16 v17, 0x3

    neg-float v6, v3

    mul-float v6, v6, v43

    mul-float v44, v5, v42

    add-float v6, v6, v44

    mul-float v44, v7, v41

    sub-float v6, v6, v44

    mul-float v6, v6, v45

    .line 42
    aput v6, p1, v19

    mul-float v6, v27, v37

    mul-float v44, v29, v36

    sub-float v6, v6, v44

    mul-float v44, v31, v35

    add-float v6, v6, v44

    mul-float v6, v6, v45

    .line 42
    aput v6, p1, v25

    neg-float v6, v2

    mul-float v6, v6, v37

    mul-float v25, v21, v36

    add-float v6, v6, v25

    mul-float v25, v23, v35

    sub-float v6, v6, v25

    mul-float v6, v6, v45

    .line 42
    aput v6, p1, v17

    neg-float v6, v9

    mul-float v17, v6, v43

    mul-float v25, v13, v40

    add-float v17, v17, v25

    mul-float v25, v15, v39

    sub-float v17, v17, v25

    mul-float v17, v17, v45

    .line 42
    aput v17, p1, v8

    mul-float v43, v43, v1

    mul-float v8, v5, v40

    sub-float v43, v43, v8

    mul-float v8, v7, v39

    add-float v43, v43, v8

    mul-float v43, v43, v45

    .line 42
    aput v43, p1, v10

    neg-float v8, v4

    mul-float v10, v8, v37

    mul-float v17, v29, v34

    add-float v10, v10, v17

    mul-float v17, v31, v33

    sub-float v10, v10, v17

    mul-float v10, v10, v45

    .line 42
    aput v10, p1, v12

    mul-float v37, v37, v0

    mul-float v10, v21, v34

    sub-float v37, v37, v10

    mul-float v10, v23, v33

    add-float v37, v37, v10

    mul-float v37, v37, v45

    .line 42
    aput v37, p1, v14

    mul-float v9, v9, v42

    mul-float v10, v11, v40

    sub-float/2addr v9, v10

    mul-float v15, v15, v38

    add-float/2addr v9, v15

    mul-float v9, v9, v45

    .line 42
    aput v9, p1, v16

    neg-float v9, v1

    mul-float v9, v9, v42

    mul-float v40, v40, v3

    add-float v9, v9, v40

    mul-float v7, v7, v38

    sub-float/2addr v9, v7

    mul-float v9, v9, v45

    .line 42
    aput v9, p1, v18

    mul-float v4, v4, v36

    mul-float v7, v27, v34

    sub-float/2addr v4, v7

    mul-float v31, v31, v32

    add-float v4, v4, v31

    mul-float v4, v4, v45

    .line 42
    aput v4, p1, v20

    neg-float v4, v0

    mul-float v4, v4, v36

    mul-float v34, v34, v2

    add-float v4, v4, v34

    mul-float v23, v23, v32

    sub-float v4, v4, v23

    mul-float v4, v4, v45

    .line 42
    aput v4, p1, v22

    mul-float v6, v6, v41

    mul-float v11, v11, v39

    add-float/2addr v6, v11

    mul-float v13, v13, v38

    sub-float/2addr v6, v13

    mul-float v6, v6, v45

    .line 42
    aput v6, p1, v24

    mul-float v1, v1, v41

    mul-float v3, v3, v39

    sub-float/2addr v1, v3

    mul-float v5, v5, v38

    add-float/2addr v1, v5

    mul-float v1, v1, v45

    .line 42
    aput v1, p1, v26

    mul-float v8, v8, v35

    mul-float v27, v27, v33

    add-float v8, v8, v27

    mul-float v29, v29, v32

    sub-float v8, v8, v29

    mul-float v8, v8, v45

    .line 42
    aput v8, p1, v28

    mul-float v0, v0, v35

    mul-float v2, v2, v33

    sub-float/2addr v0, v2

    mul-float v21, v21, v32

    add-float v0, v0, v21

    mul-float v0, v0, v45

    .line 42
    aput v0, p1, v30

    return v19
.end method
