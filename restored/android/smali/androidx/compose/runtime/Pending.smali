.class final Landroidx/compose/runtime/Pending;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private groupIndex:I

.field private final groupInfos:Landroidx/collection/MutableIntObjectMap;

.field private final keyInfos:Ljava/util/List;

.field private final keyMap$delegate:Lkotlin/Lazy;

.field private final startIndex:I

.field private final usedKeys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 6

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    .line 119
    iput p2, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 124
    const-string p2, "Invalid start index"

    .line 37
    invoke-static {p2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 127
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    .line 130
    new-instance p2, Landroidx/collection/MutableIntObjectMap;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 132
    iget-object v2, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/KeyInfo;

    .line 133
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v3

    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v5

    invoke-direct {v4, v1, v0, v5}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-virtual {p2, v3, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 134
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_2
    iput-object p2, p0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 143
    new-instance p1, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(Landroidx/compose/runtime/Pending;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getGroupIndex()I
    .locals 1

    .line 121
    iget v0, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return v0
.end method

.method public final getKeyInfos()Ljava/util/List;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    return-object v0
.end method

.method public final getKeyMap-SAeQiB4()Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableScatterMultiMap;

    invoke-virtual {v0}, Landroidx/compose/runtime/MutableScatterMultiMap;->unbox-impl()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;
    .locals 1

    if-eqz p2, :cond_0

    .line 156
    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending;->getKeyMap-SAeQiB4()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/compose/runtime/MutableScatterMultiMap;->pop-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/KeyInfo;

    return-object p1
.end method

.method public final getStartIndex()I
    .locals 1

    .line 119
    iget v0, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    return v0
.end method

.method public final getUsed()Ljava/util/List;
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    return-object v0
.end method

.method public final nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    .line 230
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final recordUsed(Landroidx/compose/runtime/KeyInfo;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final registerInsert(Landroidx/compose/runtime/KeyInfo;I)V
    .locals 4

    .line 203
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    new-instance v1, Landroidx/compose/runtime/GroupInfo;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final registerMoveNode(III)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-le v1, v2, :cond_5

    .line 187
    iget-object v12, v0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 408
    iget-object v13, v12, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 354
    iget-object v12, v12, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 355
    array-length v14, v12

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_a

    const/4 v15, 0x0

    const-wide/16 v16, 0x80

    .line 358
    :goto_0
    aget-wide v3, v12, v15

    const-wide/16 v18, 0xff

    not-long v5, v3

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    and-long/2addr v5, v8

    cmp-long v20, v5, v8

    if-eqz v20, :cond_4

    sub-int v5, v15, v14

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    and-long v20, v3, v18

    cmp-long v22, v20, v16

    if-gez v22, :cond_1

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v6

    .line 412
    aget-object v20, v13, v20

    const/16 v21, 0x7

    move-object/from16 v7, v20

    check-cast v7, Landroidx/compose/runtime/GroupInfo;

    move-wide/from16 v22, v8

    .line 188
    invoke-virtual {v7}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v8

    if-gt v1, v8, :cond_0

    add-int v9, v1, p3

    if-ge v8, v9, :cond_0

    sub-int/2addr v8, v1

    add-int/2addr v8, v2

    .line 189
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_2

    :cond_0
    if-gt v2, v8, :cond_2

    if-ge v8, v1, :cond_2

    add-int v8, v8, p3

    .line 190
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_2

    :cond_1
    move-wide/from16 v22, v8

    const/16 v21, 0x7

    :cond_2
    :goto_2
    shr-long/2addr v3, v11

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v22

    const/4 v7, 0x7

    goto :goto_1

    :cond_3
    move-wide/from16 v22, v8

    const/16 v21, 0x7

    if-ne v5, v11, :cond_a

    goto :goto_3

    :cond_4
    move-wide/from16 v22, v8

    const/16 v21, 0x7

    :goto_3
    if-eq v15, v14, :cond_a

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, v22

    const/4 v7, 0x7

    goto :goto_0

    :cond_5
    move-wide/from16 v22, v8

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const/16 v21, 0x7

    if-le v2, v1, :cond_a

    .line 193
    iget-object v3, v0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 408
    iget-object v4, v3, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 354
    iget-object v3, v3, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 355
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_a

    const/4 v6, 0x0

    .line 358
    :goto_4
    aget-wide v7, v3, v6

    not-long v12, v7

    shl-long v12, v12, v21

    and-long/2addr v12, v7

    and-long v12, v12, v22

    cmp-long v9, v12, v22

    if-eqz v9, :cond_9

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_8

    and-long v13, v7, v18

    cmp-long v15, v13, v16

    if-gez v15, :cond_7

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    .line 412
    aget-object v13, v4, v13

    check-cast v13, Landroidx/compose/runtime/GroupInfo;

    .line 194
    invoke-virtual {v13}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v14

    if-gt v1, v14, :cond_6

    add-int v15, v1, p3

    if-ge v14, v15, :cond_6

    sub-int/2addr v14, v1

    add-int/2addr v14, v2

    .line 195
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v1, 0x1

    if-gt v15, v14, :cond_7

    if-ge v14, v2, :cond_7

    sub-int v14, v14, p3

    .line 196
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    :cond_7
    :goto_6
    shr-long/2addr v7, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    if-ne v9, v11, :cond_a

    :cond_9
    if-eq v6, v5, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public final registerMoveSlot(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-le v1, v2, :cond_5

    .line 171
    iget-object v12, v0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 408
    iget-object v13, v12, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 354
    iget-object v12, v12, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 355
    array-length v14, v12

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_a

    const/4 v15, 0x0

    const-wide/16 v16, 0x80

    .line 358
    :goto_0
    aget-wide v3, v12, v15

    const-wide/16 v18, 0xff

    not-long v5, v3

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    and-long/2addr v5, v8

    cmp-long v20, v5, v8

    if-eqz v20, :cond_4

    sub-int v5, v15, v14

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    and-long v20, v3, v18

    cmp-long v22, v20, v16

    if-gez v22, :cond_1

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v6

    .line 412
    aget-object v20, v13, v20

    const/16 v21, 0x7

    move-object/from16 v7, v20

    check-cast v7, Landroidx/compose/runtime/GroupInfo;

    move-wide/from16 v22, v8

    .line 172
    invoke-virtual {v7}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result v8

    if-ne v8, v1, :cond_0

    .line 173
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_2

    :cond_0
    if-gt v2, v8, :cond_2

    if-ge v8, v1, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 174
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_2

    :cond_1
    move-wide/from16 v22, v8

    const/16 v21, 0x7

    :cond_2
    :goto_2
    shr-long/2addr v3, v11

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v22

    const/4 v7, 0x7

    goto :goto_1

    :cond_3
    move-wide/from16 v22, v8

    const/16 v21, 0x7

    if-ne v5, v11, :cond_a

    goto :goto_3

    :cond_4
    move-wide/from16 v22, v8

    const/16 v21, 0x7

    :goto_3
    if-eq v15, v14, :cond_a

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, v22

    const/4 v7, 0x7

    goto :goto_0

    :cond_5
    move-wide/from16 v22, v8

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const/16 v21, 0x7

    if-le v2, v1, :cond_a

    .line 177
    iget-object v3, v0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 408
    iget-object v4, v3, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 354
    iget-object v3, v3, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 355
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_a

    const/4 v6, 0x0

    .line 358
    :goto_4
    aget-wide v7, v3, v6

    not-long v12, v7

    shl-long v12, v12, v21

    and-long/2addr v12, v7

    and-long v12, v12, v22

    cmp-long v9, v12, v22

    if-eqz v9, :cond_9

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_8

    and-long v13, v7, v18

    cmp-long v15, v13, v16

    if-gez v15, :cond_7

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    .line 412
    aget-object v13, v4, v13

    check-cast v13, Landroidx/compose/runtime/GroupInfo;

    .line 178
    invoke-virtual {v13}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result v14

    if-ne v14, v1, :cond_6

    .line 179
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v1, 0x1

    if-gt v15, v14, :cond_7

    if-ge v14, v2, :cond_7

    add-int/lit8 v14, v14, -0x1

    .line 180
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    :cond_7
    :goto_6
    shr-long/2addr v7, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    if-ne v9, v11, :cond_a

    :cond_9
    if-eq v6, v5, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public final setGroupIndex(I)V
    .locals 0

    .line 121
    iput p1, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return-void
.end method

.method public final slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final updateNodeCount(II)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 207
    iget-object v2, v0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/GroupInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {v2}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v4

    .line 210
    invoke-virtual {v2}, Landroidx/compose/runtime/GroupInfo;->getNodeCount()I

    move-result v5

    sub-int v5, v1, v5

    .line 211
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GroupInfo;->setNodeCount(I)V

    if-eqz v5, :cond_3

    .line 213
    iget-object v1, v0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 408
    iget-object v6, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 354
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 355
    array-length v7, v1

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_3

    const/4 v8, 0x0

    .line 358
    :goto_0
    aget-wide v9, v1, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v15, v11, v13

    if-eqz v15, :cond_2

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_1

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v18, v14, v16

    if-gez v18, :cond_0

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 412
    aget-object v14, v6, v14

    check-cast v14, Landroidx/compose/runtime/GroupInfo;

    .line 214
    invoke-virtual {v14}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v15

    if-lt v15, v4, :cond_0

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 215
    invoke-virtual {v14}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v15

    add-int/2addr v15, v5

    if-ltz v15, :cond_0

    .line 217
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    :cond_0
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    if-ne v11, v12, :cond_3

    :cond_2
    if-eq v8, v7, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    return v3
.end method

.method public final updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 2

    .line 234
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->getNodeCount()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result p1

    return p1
.end method
