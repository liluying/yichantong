.class public final Landroidx/collection/MutableIntSet;
.super Landroidx/collection/IntSet;
.source "IntSet.kt"


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, v0}, Landroidx/collection/IntSet;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    .line 500
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableIntSet;->initializeStorage(I)V

    return-void

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capacity must be a positive value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 492
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    return-void
.end method

.method private final adjustStorage()V
    .locals 6

    .line 781
    iget v0, p0, Landroidx/collection/IntSet;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/IntSet;->_size:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/IntSet;->_capacity:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const-wide/16 v4, 0x19

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/collection/MutableIntIntMap$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    .line 783
    iget v0, p0, Landroidx/collection/IntSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/collection/MutableIntSet;->resizeStorage(I)V

    return-void

    .line 785
    :cond_0
    iget v0, p0, Landroidx/collection/IntSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/collection/MutableIntSet;->resizeStorage(I)V

    return-void
.end method

.method private final findAbsoluteInsertIndex(I)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int v2, v2, v1

    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x7

    and-int/lit8 v2, v2, 0x7f

    .line 700
    iget v4, v0, Landroidx/collection/IntSet;->_capacity:I

    and-int v5, v3, v4

    const/4 v7, 0x0

    .line 705
    :goto_0
    iget-object v8, v0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v9, v5, 0x3

    and-int/lit8 v10, v5, 0x7

    shl-int/lit8 v10, v10, 0x3

    .line 1781
    aget-wide v11, v8, v9

    ushr-long/2addr v11, v10

    const/4 v13, 0x1

    add-int/2addr v9, v13

    aget-wide v14, v8, v9

    rsub-int/lit8 v8, v10, 0x40

    shl-long v8, v14, v8

    int-to-long v14, v10

    neg-long v14, v14

    const/16 v10, 0x3f

    shr-long/2addr v14, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v11

    int-to-long v10, v2

    const-wide v14, 0x101010101010101L

    mul-long v16, v10, v14

    move/from16 v18, v7

    xor-long v6, v8, v16

    sub-long v14, v6, v14

    not-long v6, v6

    and-long/2addr v6, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v14

    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v19, v6, v16

    if-eqz v19, :cond_1

    .line 1699
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    shr-int/lit8 v16, v16, 0x3

    add-int v16, v5, v16

    and-int v16, v16, v4

    .line 709
    iget-object v12, v0, Landroidx/collection/IntSet;->elements:[I

    aget v12, v12, v16

    if-ne v12, v1, :cond_0

    return v16

    :cond_0
    const-wide/16 v16, 0x1

    sub-long v16, v6, v16

    and-long v6, v6, v16

    goto :goto_1

    :cond_1
    not-long v6, v8

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v6, v8

    and-long/2addr v6, v14

    cmp-long v8, v6, v16

    if-eqz v8, :cond_5

    .line 723
    invoke-direct {v0, v3}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    move-result v1

    .line 724
    iget v2, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    const-wide/16 v4, 0xff

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v6, v1, 0x3

    .line 1645
    aget-wide v6, v2, v6

    and-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x3

    shr-long/2addr v6, v2

    and-long/2addr v6, v4

    const-wide/16 v8, 0xfe

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    goto :goto_2

    .line 725
    :cond_2
    invoke-direct {v0}, Landroidx/collection/MutableIntSet;->adjustStorage()V

    .line 726
    invoke-direct {v0, v3}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    move-result v1

    .line 729
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/IntSet;->_size:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/IntSet;->_size:I

    .line 730
    iget v2, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v6, v1, 0x3

    .line 1645
    aget-wide v7, v3, v6

    and-int/lit8 v9, v1, 0x7

    shl-int/lit8 v9, v9, 0x3

    shr-long v14, v7, v9

    and-long/2addr v14, v4

    const-wide/16 v16, 0x80

    cmp-long v12, v14, v16

    if-nez v12, :cond_4

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    sub-int v2, v2, v19

    .line 730
    iput v2, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    shl-long v12, v4, v9

    not-long v12, v12

    and-long/2addr v7, v12

    shl-long v12, v10, v9

    or-long/2addr v7, v12

    .line 1660
    aput-wide v7, v3, v6

    .line 820
    iget v2, v0, Landroidx/collection/IntSet;->_capacity:I

    add-int/lit8 v6, v1, -0x7

    and-int/2addr v6, v2

    and-int/lit8 v2, v2, 0x7

    add-int/2addr v6, v2

    shr-int/lit8 v2, v6, 0x3

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x3

    .line 1660
    aget-wide v7, v3, v2

    shl-long/2addr v4, v6

    not-long v4, v4

    and-long/2addr v4, v7

    shl-long v6, v10, v6

    or-long/2addr v4, v6

    aput-wide v4, v3, v2

    return v1

    :cond_5
    add-int/lit8 v7, v18, 0x8

    add-int/2addr v5, v7

    and-int/2addr v5, v4

    goto/16 :goto_0
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 741
    iget v0, p0, Landroidx/collection/IntSet;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 745
    :goto_0
    iget-object v2, p0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    .line 1781
    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v2, v3

    rsub-int/lit8 v2, v4, 0x40

    shl-long v2, v7, v2

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 1699
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 531
    invoke-virtual {p0}, Landroidx/collection/IntSet;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/IntSet;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableIntSet;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 518
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 522
    new-array v1, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 523
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    move-object v0, v1

    .line 517
    :goto_0
    iput-object v0, p0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    .line 1660
    aget-wide v2, v0, v1

    const-wide/16 v4, 0xff

    shl-long/2addr v4, p1

    not-long v6, v4

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 527
    invoke-direct {p0}, Landroidx/collection/MutableIntSet;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 507
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 511
    :goto_0
    iput p1, p0, Landroidx/collection/IntSet;->_capacity:I

    .line 512
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntSet;->initializeMetadata(I)V

    .line 513
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/collection/IntSet;->elements:[I

    return-void
.end method

.method private final removeElementAt(I)V
    .locals 11

    .line 669
    iget v0, p0, Landroidx/collection/IntSet;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IntSet;->_size:I

    .line 816
    iget-object v0, p0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    .line 1660
    aget-wide v3, v0, v1

    const-wide/16 v5, 0xff

    shl-long v7, v5, v2

    not-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0xfe

    shl-long v9, v7, v2

    or-long/2addr v3, v9

    aput-wide v3, v0, v1

    .line 820
    iget v1, p0, Landroidx/collection/IntSet;->_capacity:I

    add-int/lit8 p1, p1, -0x7

    and-int/2addr p1, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr p1, v1

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    .line 1660
    aget-wide v2, v0, v1

    shl-long v4, v5, p1

    not-long v4, v4

    and-long/2addr v2, v4

    shl-long v4, v7, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method private final resizeStorage(I)V
    .locals 19

    move-object/from16 v0, p0

    .line 790
    iget-object v1, v0, Landroidx/collection/IntSet;->metadata:[J

    .line 791
    iget-object v2, v0, Landroidx/collection/IntSet;->elements:[I

    .line 792
    iget v3, v0, Landroidx/collection/IntSet;->_capacity:I

    .line 794
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableIntSet;->initializeStorage(I)V

    .line 796
    iget-object v4, v0, Landroidx/collection/IntSet;->elements:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    shr-int/lit8 v6, v5, 0x3

    .line 1645
    aget-wide v6, v1, v6

    and-int/lit8 v8, v5, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const-wide/16 v10, 0x80

    cmp-long v12, v6, v10

    if-gez v12, :cond_0

    .line 800
    aget v6, v2, v5

    const v7, -0x3361d2af    # -8.293031E7f

    mul-int v7, v7, v6

    shl-int/lit8 v10, v7, 0x10

    xor-int/2addr v7, v10

    ushr-int/lit8 v10, v7, 0x7

    .line 802
    invoke-direct {v0, v10}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    move-result v10

    and-int/lit8 v7, v7, 0x7f

    int-to-long v11, v7

    .line 816
    iget-object v7, v0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v14, v10, 0x7

    shl-int/lit8 v14, v14, 0x3

    .line 1660
    aget-wide v15, v7, v13

    move-wide/from16 v17, v8

    shl-long v8, v17, v14

    not-long v8, v8

    and-long/2addr v8, v15

    shl-long v14, v11, v14

    or-long/2addr v8, v14

    aput-wide v8, v7, v13

    .line 820
    iget v8, v0, Landroidx/collection/IntSet;->_capacity:I

    add-int/lit8 v9, v10, -0x7

    and-int/2addr v9, v8

    and-int/lit8 v8, v8, 0x7

    add-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0x3

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x3

    .line 1660
    aget-wide v13, v7, v8

    move-object v15, v1

    shl-long v0, v17, v9

    not-long v0, v0

    and-long/2addr v0, v13

    shl-long/2addr v11, v9

    or-long/2addr v0, v11

    aput-wide v0, v7, v8

    .line 805
    aput v6, v4, v10

    goto :goto_1

    :cond_0
    move-object v15, v1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final add(I)Z
    .locals 3

    .line 541
    iget v0, p0, Landroidx/collection/IntSet;->_size:I

    .line 542
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntSet;->findAbsoluteInsertIndex(I)I

    move-result v1

    .line 543
    iget-object v2, p0, Landroidx/collection/IntSet;->elements:[I

    aput p1, v2, v1

    .line 544
    iget p1, p0, Landroidx/collection/IntSet;->_size:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 9

    const/4 v0, 0x0

    .line 680
    iput v0, p0, Landroidx/collection/IntSet;->_size:I

    .line 681
    iget-object v1, p0, Landroidx/collection/IntSet;->metadata:[J

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v1, v0, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 682
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 683
    iget-object v0, p0, Landroidx/collection/IntSet;->metadata:[J

    iget v1, p0, Landroidx/collection/IntSet;->_capacity:I

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    .line 1660
    aget-wide v3, v0, v2

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v1

    not-long v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 685
    :cond_0
    invoke-direct {p0}, Landroidx/collection/MutableIntSet;->initializeGrowth()V

    return-void
.end method

.method public final minusAssign(I)V
    .locals 13

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int v0, v0, p1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    .line 445
    iget v2, p0, Landroidx/collection/IntSet;->_capacity:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    .line 449
    :goto_0
    iget-object v4, p0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    .line 1781
    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v4, v5

    rsub-int/lit8 v4, v6, 0x40

    shl-long v4, v9, v4

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v1

    const-wide v8, 0x101010101010101L

    mul-long v6, v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    .line 1699
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v0

    and-int/2addr v10, v2

    .line 453
    iget-object v11, p0, Landroidx/collection/IntSet;->elements:[I

    aget v11, v11, v10

    if-ne v11, p1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_1

    :cond_1
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v6, v4, v10

    if-eqz v6, :cond_3

    const/4 v10, -0x1

    :goto_2
    if-ltz v10, :cond_2

    .line 622
    invoke-direct {p0, v10}, Landroidx/collection/MutableIntSet;->removeElementAt(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    and-int/2addr v0, v2

    goto :goto_0
.end method

.method public final minusAssign(Landroidx/collection/IntSet;)V
    .locals 14

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p1, Landroidx/collection/IntSet;->elements:[I

    .line 233
    iget-object p1, p1, Landroidx/collection/IntSet;->metadata:[J

    .line 234
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 237
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 266
    aget v9, v0, v9

    .line 664
    invoke-virtual {p0, v9}, Landroidx/collection/MutableIntSet;->minusAssign(I)V

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final remove(I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int v2, v2, v1

    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x7f

    .line 445
    iget v4, v0, Landroidx/collection/IntSet;->_capacity:I

    ushr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 449
    :goto_0
    iget-object v7, v0, Landroidx/collection/IntSet;->metadata:[J

    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v9, v2, 0x7

    shl-int/lit8 v9, v9, 0x3

    .line 1781
    aget-wide v10, v7, v8

    ushr-long/2addr v10, v9

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aget-wide v13, v7, v8

    rsub-int/lit8 v7, v9, 0x40

    shl-long v7, v13, v7

    int-to-long v13, v9

    neg-long v13, v13

    const/16 v9, 0x3f

    shr-long/2addr v13, v9

    and-long/2addr v7, v13

    or-long/2addr v7, v10

    int-to-long v9, v3

    const-wide v13, 0x101010101010101L

    mul-long v9, v9, v13

    xor-long/2addr v9, v7

    sub-long v13, v9, v13

    not-long v9, v9

    and-long/2addr v9, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v13

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v11, v9, v15

    if-eqz v11, :cond_1

    .line 1699
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    and-int/2addr v11, v4

    .line 453
    iget-object v15, v0, Landroidx/collection/IntSet;->elements:[I

    aget v15, v15, v11

    if-ne v15, v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v15, 0x1

    sub-long v15, v9, v15

    and-long/2addr v9, v15

    goto :goto_1

    :cond_1
    not-long v9, v7

    const/4 v11, 0x6

    shl-long/2addr v9, v11

    and-long/2addr v7, v9

    and-long/2addr v7, v13

    cmp-long v9, v7, v15

    if-eqz v9, :cond_4

    const/4 v11, -0x1

    :goto_2
    if-ltz v11, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    .line 610
    invoke-direct {v0, v11}, Landroidx/collection/MutableIntSet;->removeElementAt(I)V

    :cond_3
    return v5

    :cond_4
    add-int/lit8 v6, v6, 0x8

    add-int/2addr v2, v6

    and-int/2addr v2, v4

    goto :goto_0
.end method

.method public final removeAll(Landroidx/collection/IntSet;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget v0, p0, Landroidx/collection/IntSet;->_size:I

    .line 654
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntSet;->minusAssign(Landroidx/collection/IntSet;)V

    .line 655
    iget p1, p0, Landroidx/collection/IntSet;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
