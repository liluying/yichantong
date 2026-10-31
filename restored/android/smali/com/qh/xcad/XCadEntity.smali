.class public final Lcom/qh/xcad/XCadEntity;
.super Ljava/lang/Object;
.source "XCadEntity.java"


# instance fields
.field public final color:I

.field public final flags:I

.field public final layerName:Ljava/lang/String;

.field public final maxX:D

.field public final maxY:D

.field public final maxZ:D

.field public final minX:D

.field public final minY:D

.field public final minZ:D

.field public final points:[D

.field public final scene:Lcom/qh/xcad/XCadScene;

.field public final text:Ljava/lang/String;

.field public final textAttachment:I

.field public final textHeight:F

.field public final textRotation:F

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/qh/xcad/XCadScene;IIILjava/lang/String;[DDDDDDDLjava/lang/String;FF)V
    .locals 23

    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    .line 75
    invoke-direct/range {v0 .. v22}, Lcom/qh/xcad/XCadEntity;-><init>(Lcom/qh/xcad/XCadScene;IIILjava/lang/String;[DDDDDDDLjava/lang/String;FFI)V

    return-void
.end method

.method public constructor <init>(Lcom/qh/xcad/XCadScene;IIILjava/lang/String;[DDDDDDDLjava/lang/String;FFI)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/qh/xcad/XCadEntity;->scene:Lcom/qh/xcad/XCadScene;

    .line 98
    iput p2, p0, Lcom/qh/xcad/XCadEntity;->type:I

    .line 99
    iput p3, p0, Lcom/qh/xcad/XCadEntity;->flags:I

    .line 100
    iput p4, p0, Lcom/qh/xcad/XCadEntity;->color:I

    .line 101
    iput-object p5, p0, Lcom/qh/xcad/XCadEntity;->layerName:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/qh/xcad/XCadEntity;->points:[D

    .line 103
    iput-wide p7, p0, Lcom/qh/xcad/XCadEntity;->minX:D

    .line 104
    iput-wide p9, p0, Lcom/qh/xcad/XCadEntity;->minY:D

    .line 105
    iput-wide p11, p0, Lcom/qh/xcad/XCadEntity;->minZ:D

    .line 106
    iput-wide p13, p0, Lcom/qh/xcad/XCadEntity;->maxX:D

    move-wide p1, p15

    .line 107
    iput-wide p1, p0, Lcom/qh/xcad/XCadEntity;->maxY:D

    move-wide/from16 p1, p17

    .line 108
    iput-wide p1, p0, Lcom/qh/xcad/XCadEntity;->maxZ:D

    move-object/from16 p1, p19

    .line 109
    iput-object p1, p0, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    move/from16 p1, p20

    .line 110
    iput p1, p0, Lcom/qh/xcad/XCadEntity;->textHeight:F

    move/from16 p1, p21

    .line 111
    iput p1, p0, Lcom/qh/xcad/XCadEntity;->textRotation:F

    move/from16 p1, p22

    .line 112
    iput p1, p0, Lcom/qh/xcad/XCadEntity;->textAttachment:I

    return-void
.end method


# virtual methods
.method public isClosed()Z
    .locals 2

    .line 116
    iget v0, p0, Lcom/qh/xcad/XCadEntity;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDashed()Z
    .locals 1

    .line 120
    iget v0, p0, Lcom/qh/xcad/XCadEntity;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFilled()Z
    .locals 1

    .line 124
    iget v0, p0, Lcom/qh/xcad/XCadEntity;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pointCount()I
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/qh/xcad/XCadEntity;->points:[D

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    array-length v0, v0

    div-int/2addr v0, v2

    return v0
.end method

.method public pointX(I)D
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/qh/xcad/XCadEntity;->points:[D

    mul-int/lit8 p1, p1, 0x3

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public pointY(I)D
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/qh/xcad/XCadEntity;->points:[D

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public pointZ(I)D
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/qh/xcad/XCadEntity;->points:[D

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    aget-wide v1, v0, p1

    return-wide v1
.end method
