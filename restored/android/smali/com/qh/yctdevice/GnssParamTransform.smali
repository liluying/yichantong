.class public Lcom/qh/yctdevice/GnssParamTransform;
.super Ljava/lang/Object;
.source "GnssParamTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;,
        Lcom/qh/yctdevice/GnssParamTransform$FourParameter;,
        Lcom/qh/yctdevice/GnssParamTransform$Point3D;,
        Lcom/qh/yctdevice/GnssParamTransform$Point2D;,
        Lcom/qh/yctdevice/GnssParamTransform$ResidualError;
    }
.end annotation


# instance fields
.field private fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

.field private sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 365
    const-string/jumbo v0, "yctdevice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    .line 9
    iput-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    return-void
.end method

.method public static computeFourParameters(Ljava/util/List;Ljava/util/List;Lcom/qh/yctdevice/GnssParamTransform$FourParameter;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$Point2D;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$Point2D;",
            ">;",
            "Lcom/qh/yctdevice/GnssParamTransform$FourParameter;",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 232
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 233
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v5, :cond_3

    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_3
    mul-int/lit8 v7, v5, 0x2

    .line 235
    new-array v8, v7, [D

    .line 236
    new-array v9, v7, [D

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_4

    .line 239
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    .line 240
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    mul-int/lit8 v13, v10, 0x2

    .line 241
    iget-wide v14, v11, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    aput-wide v14, v8, v13

    add-int/lit8 v14, v13, 0x1

    move/from16 v16, v5

    const/4 v15, 0x0

    .line 242
    iget-wide v4, v11, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    aput-wide v4, v8, v14

    .line 243
    iget-wide v4, v12, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    aput-wide v4, v9, v13

    .line 244
    iget-wide v4, v12, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    aput-wide v4, v9, v14

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    goto :goto_0

    :cond_4
    move/from16 v16, v5

    const/4 v15, 0x0

    const/4 v0, 0x4

    .line 247
    new-array v0, v0, [D

    if-eqz v3, :cond_5

    .line 248
    new-array v1, v7, [D

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 249
    :goto_1
    invoke-static {v8, v9, v0, v1}, Lcom/qh/yctdevice/GnssParamTransform;->computeFourParameters([D[D[D[D)Z

    move-result v4

    if-nez v4, :cond_6

    return v15

    .line 251
    :cond_6
    aget-wide v4, v0, v15

    iput-wide v4, v2, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dx:D

    const/4 v4, 0x1

    .line 252
    aget-wide v7, v0, v4

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dy:D

    .line 253
    aget-wide v5, v0, v6

    iput-wide v5, v2, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->r:D

    const/4 v5, 0x3

    .line 254
    aget-wide v5, v0, v5

    iput-wide v5, v2, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->scale:D

    if-eqz v3, :cond_7

    .line 258
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v0, v16

    :goto_2
    if-ge v15, v0, :cond_7

    .line 261
    new-instance v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;

    invoke-direct {v2}, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;-><init>()V

    mul-int/lit8 v5, v15, 0x2

    .line 262
    aget-wide v6, v1, v5

    iput-wide v6, v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    add-int/2addr v5, v4

    .line 263
    aget-wide v5, v1, v5

    iput-wide v5, v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    const-wide/16 v5, 0x0

    .line 264
    iput-wide v5, v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->z:D

    .line 265
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_7
    return v4

    :goto_3
    return v15
.end method

.method private static native computeFourParameters([D[D[D[D)Z
.end method

.method public static computeSevenParameters(Ljava/util/List;Ljava/util/List;Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$Point3D;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$Point3D;",
            ">;",
            "Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 180
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v5, :cond_3

    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_3
    mul-int/lit8 v7, v5, 0x3

    .line 183
    new-array v8, v7, [D

    .line 184
    new-array v9, v7, [D

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_4

    .line 187
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    .line 188
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    mul-int/lit8 v13, v10, 0x3

    .line 189
    iget-wide v14, v11, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    aput-wide v14, v8, v13

    add-int/lit8 v14, v13, 0x1

    move/from16 v16, v5

    const/4 v15, 0x0

    .line 190
    iget-wide v4, v11, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    aput-wide v4, v8, v14

    add-int/lit8 v4, v13, 0x2

    move/from16 v17, v7

    const/4 v5, 0x3

    .line 191
    iget-wide v6, v11, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    aput-wide v6, v8, v4

    .line 192
    iget-wide v6, v12, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    aput-wide v6, v9, v13

    .line 193
    iget-wide v6, v12, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    aput-wide v6, v9, v14

    .line 194
    iget-wide v6, v12, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    aput-wide v6, v9, v4

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    move/from16 v7, v17

    const/4 v6, 0x3

    goto :goto_0

    :cond_4
    move/from16 v16, v5

    move/from16 v17, v7

    const/4 v5, 0x3

    const/4 v15, 0x0

    const/4 v0, 0x7

    .line 197
    new-array v0, v0, [D

    if-eqz v3, :cond_5

    move/from16 v1, v17

    .line 198
    new-array v1, v1, [D

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 199
    :goto_1
    invoke-static {v8, v9, v0, v1}, Lcom/qh/yctdevice/GnssParamTransform;->computeSevenParameters([D[D[D[D)Z

    move-result v4

    if-nez v4, :cond_6

    return v15

    .line 201
    :cond_6
    aget-wide v6, v0, v15

    iput-wide v6, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dx:D

    const/4 v4, 0x1

    .line 202
    aget-wide v6, v0, v4

    iput-wide v6, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dy:D

    const/4 v6, 0x2

    .line 203
    aget-wide v7, v0, v6

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dz:D

    .line 204
    aget-wide v7, v0, v5

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rx:D

    const/4 v5, 0x4

    .line 205
    aget-wide v7, v0, v5

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->ry:D

    const/4 v5, 0x5

    .line 206
    aget-wide v7, v0, v5

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rz:D

    const/4 v5, 0x6

    .line 207
    aget-wide v7, v0, v5

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->scale:D

    if-eqz v3, :cond_7

    .line 211
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v0, v16

    :goto_2
    if-ge v15, v0, :cond_7

    .line 214
    new-instance v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;

    invoke-direct {v2}, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;-><init>()V

    mul-int/lit8 v5, v15, 0x3

    .line 215
    aget-wide v7, v1, v5

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    add-int/lit8 v7, v5, 0x1

    .line 216
    aget-wide v7, v1, v7

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    add-int/2addr v5, v6

    .line 217
    aget-wide v7, v1, v5

    iput-wide v7, v2, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->z:D

    .line 218
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_7
    return v4

    :goto_3
    return v15
.end method

.method private static native computeSevenParameters([D[D[D[D)Z
.end method

.method private static native fourParamTransform([D[D[DZ)Z
.end method

.method private static native sevenParamTransform([D[D[DZ)Z
.end method


# virtual methods
.method public clearParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    .line 58
    iput-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    return-void
.end method

.method public getFourParameter()Lcom/qh/yctdevice/GnssParamTransform$FourParameter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    return-object v0
.end method

.method public getSevenParameter()Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    return-object v0
.end method

.method public setFourParameter(Lcom/qh/yctdevice/GnssParamTransform$FourParameter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/qh/yctdevice/GnssParamTransform;->fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/qh/yctdevice/GnssParamTransform;->sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    return-void
.end method

.method public setSevenParameter(Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/qh/yctdevice/GnssParamTransform;->fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    .line 44
    iput-object p1, p0, Lcom/qh/yctdevice/GnssParamTransform;->sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    return-void
.end method

.method public transform2D(Lcom/qh/yctdevice/GnssParamTransform$Point2D;)Lcom/qh/yctdevice/GnssParamTransform$Point2D;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/qh/yctdevice/GnssParamTransform;->transform2D(Lcom/qh/yctdevice/GnssParamTransform$Point2D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    move-result-object p1

    return-object p1
.end method

.method public transform2D(Lcom/qh/yctdevice/GnssParamTransform$Point2D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point2D;
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v3, p0, Lcom/qh/yctdevice/GnssParamTransform;->fourParameter:Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-wide v5, v3, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dx:D

    iget-wide v7, v3, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dy:D

    iget-wide v9, v3, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->r:D

    iget-wide v11, v3, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->scale:D

    const/4 v3, 0x4

    new-array v3, v3, [D

    aput-wide v5, v3, v2

    aput-wide v7, v3, v1

    aput-wide v9, v3, v0

    const/4 v5, 0x3

    aput-wide v11, v3, v5

    .line 134
    iget-wide v5, p1, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    iget-wide v7, p1, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    new-array p1, v0, [D

    aput-wide v5, p1, v2

    aput-wide v7, p1, v1

    .line 135
    new-array v0, v0, [D

    .line 136
    invoke-static {v3, p1, v0, p2}, Lcom/qh/yctdevice/GnssParamTransform;->fourParamTransform([D[D[DZ)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v4

    .line 137
    :cond_1
    new-instance p1, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/qh/yctdevice/GnssParamTransform$Point2D;-><init>(DD)V

    return-object p1

    :cond_2
    :goto_0
    return-object v4
.end method

.method public transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;)Lcom/qh/yctdevice/GnssParamTransform$Point3D;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/qh/yctdevice/GnssParamTransform;->transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    move-result-object p1

    return-object p1
.end method

.method public transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point3D;
    .locals 22

    move-object/from16 v0, p1

    const/4 v1, 0x3

    move-object/from16 v5, p0

    .line 72
    iget-object v6, v5, Lcom/qh/yctdevice/GnssParamTransform;->sevenParameter:Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    if-eqz v6, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 73
    :cond_1
    iget-wide v8, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dx:D

    iget-wide v10, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dy:D

    iget-wide v12, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dz:D

    iget-wide v14, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rx:D

    const/16 v16, 0x2

    const/16 v17, 0x1

    iget-wide v2, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->ry:D

    const/16 v18, 0x0

    iget-wide v4, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rz:D

    move-wide/from16 v20, v8

    const/16 v19, 0x0

    iget-wide v7, v6, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->scale:D

    const/4 v6, 0x7

    new-array v6, v6, [D

    aput-wide v20, v6, v18

    aput-wide v10, v6, v17

    aput-wide v12, v6, v16

    aput-wide v14, v6, v1

    const/4 v9, 0x4

    aput-wide v2, v6, v9

    const/4 v2, 0x5

    aput-wide v4, v6, v2

    const/4 v2, 0x6

    aput-wide v7, v6, v2

    .line 78
    iget-wide v2, v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    iget-wide v4, v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    iget-wide v7, v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    new-array v0, v1, [D

    aput-wide v2, v0, v18

    aput-wide v4, v0, v17

    aput-wide v7, v0, v16

    .line 79
    new-array v1, v1, [D

    move/from16 v2, p2

    .line 80
    invoke-static {v6, v0, v1, v2}, Lcom/qh/yctdevice/GnssParamTransform;->sevenParamTransform([D[D[DZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v19

    .line 81
    :cond_2
    new-instance v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    aget-wide v3, v1, v18

    aget-wide v5, v1, v17

    aget-wide v7, v1, v16

    invoke-direct/range {v2 .. v8}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    return-object v2

    :goto_0
    return-object v19
.end method
