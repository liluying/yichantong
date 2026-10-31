.class public final Lcom/qh/xcad/XCadBinary;
.super Ljava/lang/Object;
.source "XCadBinary.java"


# static fields
.field private static final ENTITY_HEADER_SIZE:I = 0x14

.field public static final ENT_ARC:I = 0x3

.field public static final ENT_CIRCLE:I = 0x2

.field public static final ENT_LINE:I = 0x0

.field public static final ENT_MTEXT:I = 0x6

.field public static final ENT_POINT:I = 0x4

.field public static final ENT_POLYLINE:I = 0x1

.field public static final ENT_TEXT:I = 0x5

.field private static final FILE_HEADER_SIZE:I = 0x40

.field public static final FLAG_CLOSED:I = 0x1

.field public static final FLAG_DASHED:I = 0x2

.field public static final FLAG_FILLED:I = 0x4

.field public static final FORMAT_VERSION:I = 0x4

.field public static final MAGIC:I = 0x58434144

.field private static final NO_LAYER:I = 0xffff

.field private static final NO_TEXT:J = 0xffffffffL

.field private static final POINT_STRIDE:I = 0x18


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)Lcom/qh/xcad/XCadScene;
    .locals 53

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/16 v2, 0x40

    const/4 v3, 0x3

    const/16 v4, 0x14

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_f

    .line 80
    array-length v9, v0

    if-ge v9, v2, :cond_0

    goto/16 :goto_7

    .line 83
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 85
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v11, 0x58434144

    if-ne v10, v11, :cond_e

    .line 89
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_d

    .line 94
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const/16 v11, 0xc

    .line 97
    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v14

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v16

    const/16 v12, 0x1c

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v18

    const/16 v12, 0x24

    .line 98
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v20

    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v22

    const/16 v12, 0x34

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v24

    const/4 v12, 0x6

    new-array v12, v12, [D

    aput-wide v14, v12, v7

    aput-wide v16, v12, v8

    aput-wide v18, v12, v1

    aput-wide v20, v12, v3

    aput-wide v22, v12, v6

    const/4 v14, 0x5

    aput-wide v24, v12, v14

    const/16 v14, 0x3c

    .line 101
    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    const-wide v21, 0xffffffffL

    and-long v14, v14, v21

    const/16 v23, 0x2

    const/16 v24, 0x40

    int-to-long v1, v10

    const-wide/16 v16, 0x14

    mul-long v1, v1, v16

    const-wide/16 v16, 0x40

    add-long v1, v1, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    const/4 v3, 0x0

    const/16 v25, 0x3

    :goto_0
    if-ge v3, v10, :cond_1

    mul-int/lit8 v20, v3, 0x14

    const/16 v26, 0x14

    add-int/lit8 v4, v20, 0x48

    .line 110
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    move-object/from16 v20, v12

    const/16 v27, 0xc

    int-to-long v11, v4

    add-long v18, v18, v11

    add-int/2addr v3, v8

    move-object/from16 v12, v20

    const/16 v4, 0x14

    const/16 v11, 0xc

    goto :goto_0

    :cond_1
    move-object/from16 v20, v12

    const/16 v26, 0x14

    const/16 v27, 0xc

    const-wide/16 v3, 0x18

    mul-long v18, v18, v3

    add-long v18, v1, v18

    cmp-long v3, v14, v16

    if-eqz v3, :cond_2

    long-to-int v3, v14

    .line 117
    invoke-static {v9, v0, v3}, Lcom/qh/xcad/XCadBinary;->readLayerPool(Ljava/nio/ByteBuffer;[BI)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v15, v0

    goto :goto_2

    .line 118
    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 120
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    new-instance v12, Lcom/qh/xcad/XCadScene;

    move-object/from16 v16, v0

    move-object/from16 v14, v20

    move-wide/from16 v19, v18

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v20}, Lcom/qh/xcad/XCadScene;-><init>(I[DLjava/util/List;Ljava/util/List;JJ)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_c

    mul-int/lit8 v4, v1, 0x14

    add-int/lit8 v2, v4, 0x40

    .line 130
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v4, 0x41

    .line 131
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v11, v4, 0x42

    .line 132
    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    const v13, 0xffff

    and-int/2addr v11, v13

    add-int/lit8 v14, v4, 0x44

    .line 133
    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v32

    add-int/lit8 v14, v4, 0x48

    .line 135
    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    const/16 v16, 0x8

    add-int/lit8 v5, v4, 0x4c

    .line 136
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/lit8 v4, v4, 0x50

    .line 137
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const/16 v50, 0x0

    const/16 v51, 0x1

    int-to-long v7, v4

    and-long v7, v7, v21

    mul-int/lit8 v5, v5, 0x18

    int-to-long v4, v5

    add-long v4, v17, v4

    long-to-int v5, v4

    mul-int/lit8 v4, v14, 0x3

    .line 143
    new-array v4, v4, [D

    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v30, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v41, v28

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    move-wide/from16 v35, v30

    move-wide/from16 v37, v35

    move-wide/from16 v39, v37

    const/4 v6, 0x0

    const/16 v52, 0x4

    :goto_4
    if-ge v6, v14, :cond_9

    .line 147
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v28

    add-int/lit8 v13, v5, 0x8

    .line 148
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v30

    add-int/lit8 v13, v5, 0x10

    .line 149
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v33

    mul-int/lit8 v13, v6, 0x3

    .line 151
    aput-wide v28, v4, v13

    add-int/lit8 v47, v13, 0x1

    .line 152
    aput-wide v30, v4, v47

    add-int/lit8 v13, v13, 0x2

    .line 153
    aput-wide v33, v4, v13

    cmpg-double v13, v28, v35

    if-gez v13, :cond_3

    move-wide/from16 v35, v28

    :cond_3
    cmpg-double v13, v30, v37

    if-gez v13, :cond_4

    move-wide/from16 v37, v30

    :cond_4
    cmpg-double v13, v33, v39

    if-gez v13, :cond_5

    move-wide/from16 v39, v33

    :cond_5
    cmpl-double v13, v28, v41

    if-lez v13, :cond_6

    move-wide/from16 v41, v28

    :cond_6
    cmpl-double v13, v30, v43

    if-lez v13, :cond_7

    move-wide/from16 v43, v30

    :cond_7
    cmpl-double v13, v33, v45

    if-lez v13, :cond_8

    move-wide/from16 v45, v33

    :cond_8
    add-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v6, 0x1

    const v13, 0xffff

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    cmp-long v6, v7, v21

    if-eqz v6, :cond_a

    add-long v7, v19, v7

    long-to-int v6, v7

    .line 171
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    add-int/lit8 v8, v6, 0x4

    .line 172
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v8

    add-int/lit8 v13, v6, 0x8

    .line 173
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    .line 174
    new-array v13, v13, [B

    add-int/lit8 v6, v6, 0xc

    .line 175
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 177
    new-instance v6, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v47, v6

    move/from16 v48, v7

    move/from16 v49, v8

    :goto_5
    const v6, 0xffff

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    move-object/from16 v47, v5

    const/16 v48, 0x0

    const/16 v49, 0x0

    goto :goto_5

    :goto_6
    if-eq v11, v6, :cond_b

    .line 180
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v11, v6, :cond_b

    .line 181
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_b
    move-object/from16 v33, v5

    .line 184
    new-instance v28, Lcom/qh/xcad/XCadEntity;

    move/from16 v30, v2

    move/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v29, v12

    invoke-direct/range {v28 .. v49}, Lcom/qh/xcad/XCadEntity;-><init>(Lcom/qh/xcad/XCadScene;IIILjava/lang/String;[DDDDDDDLjava/lang/String;FF)V

    move-object/from16 v2, v28

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_c
    return-object v12

    :cond_d
    const/16 v52, 0x4

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0d\u652f\u6301\u7684\u683c\u5f0f\u7248\u672c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff08\u4ec5\u652f\u6301 v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0c\u4e0d\u5411\u540e\u517c\u5bb9\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/16 v50, 0x0

    const/16 v51, 0x1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v50

    const-string v1, "magic \u4e0d\u5339\u914d: 0x%08X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_f
    :goto_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6570\u636e\u8fc7\u77ed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_10

    const-string v0, "null"

    goto :goto_8

    :cond_10
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readLayerPool(Ljava/nio/ByteBuffer;[BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[BI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x4

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 207
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/lit8 p2, p2, 0x4

    .line 209
    new-array v3, v2, [B

    .line 210
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 212
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
