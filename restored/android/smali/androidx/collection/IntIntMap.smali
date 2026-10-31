.class public abstract Landroidx/collection/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.kt"


# instance fields
.field public _capacity:I

.field public _size:I

.field public keys:[I

.field public metadata:[J

.field public values:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 263
    invoke-static {}, Landroidx/collection/IntSetKt;->getEmptyIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/collection/IntIntMap;->keys:[I

    .line 267
    invoke-static {}, Landroidx/collection/IntSetKt;->getEmptyIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/collection/IntIntMap;->values:[I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/collection/IntIntMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->findKeyIndex(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    .line 569
    :cond_0
    instance-of v3, v1, Landroidx/collection/IntIntMap;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 572
    :cond_1
    check-cast v1, Landroidx/collection/IntIntMap;

    invoke-virtual {v1}, Landroidx/collection/IntIntMap;->getSize()I

    move-result v3

    invoke-virtual {v0}, Landroidx/collection/IntIntMap;->getSize()I

    move-result v5

    if-eq v3, v5, :cond_2

    return v4

    .line 385
    :cond_2
    iget-object v3, v0, Landroidx/collection/IntIntMap;->keys:[I

    .line 386
    iget-object v5, v0, Landroidx/collection/IntIntMap;->values:[I

    .line 357
    iget-object v6, v0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 358
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_6

    const/4 v8, 0x0

    .line 361
    :goto_0
    aget-wide v9, v6, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v15, v11, v13

    if-eqz v15, :cond_5

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v18, v14, v16

    if-gez v18, :cond_3

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 389
    aget v15, v3, v14

    aget v14, v5, v14

    .line 577
    invoke-virtual {v1, v15}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v15

    if-eq v14, v15, :cond_3

    return v4

    :cond_3
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    if-ne v11, v12, :cond_6

    :cond_5
    if-eq v8, v7, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public final findKeyIndex(I)I
    .locals 13

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int v0, v0, p1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    .line 620
    iget v2, p0, Landroidx/collection/IntIntMap;->_capacity:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    .line 625
    :goto_0
    iget-object v4, p0, Landroidx/collection/IntIntMap;->metadata:[J

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

    .line 629
    iget-object v11, p0, Landroidx/collection/IntIntMap;->keys:[I

    aget v11, v11, v10

    if-ne v11, p1, :cond_0

    return v10

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

    if-eqz v6, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    and-int/2addr v0, v2

    goto :goto_0
.end method

.method public final get(I)I
    .locals 3

    .line 319
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->findKeyIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 323
    iget-object p1, p0, Landroidx/collection/IntIntMap;->values:[I

    aget p1, p1, v0

    return p1

    .line 321
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCapacity()I
    .locals 1

    .line 280
    iget v0, p0, Landroidx/collection/IntIntMap;->_capacity:I

    return v0
.end method

.method public final getOrDefault(II)I
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->findKeyIndex(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 333
    iget-object p2, p0, Landroidx/collection/IntIntMap;->values:[I

    aget p1, p2, p1

    return p1

    :cond_0
    return p2
.end method

.method public final getSize()I
    .locals 1

    .line 292
    iget v0, p0, Landroidx/collection/IntIntMap;->_size:I

    return v0
.end method

.method public hashCode()I
    .locals 18

    move-object/from16 v0, p0

    .line 385
    iget-object v1, v0, Landroidx/collection/IntIntMap;->keys:[I

    .line 386
    iget-object v2, v0, Landroidx/collection/IntIntMap;->values:[I

    .line 357
    iget-object v3, v0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 358
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 361
    :goto_0
    aget-wide v8, v3, v6

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v14, v10, v12

    if-eqz v14, :cond_3

    sub-int v10, v6, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v17, v13, v15

    if-gez v17, :cond_0

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    .line 389
    aget v14, v1, v13

    aget v13, v2, v13

    xor-int/2addr v13, v14

    add-int/2addr v7, v13

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_2

    goto :goto_2

    :cond_2
    return v7

    :cond_3
    :goto_2
    if-eq v6, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return v7

    :cond_5
    return v5
.end method

.method public final isEmpty()Z
    .locals 1

    .line 307
    iget v0, p0, Landroidx/collection/IntIntMap;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 592
    invoke-virtual {v0}, Landroidx/collection/IntIntMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    const-string/jumbo v1, "{}"

    return-object v1

    .line 596
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    iget-object v2, v0, Landroidx/collection/IntIntMap;->keys:[I

    .line 386
    iget-object v3, v0, Landroidx/collection/IntIntMap;->values:[I

    .line 357
    iget-object v4, v0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 358
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 361
    :goto_0
    aget-wide v9, v4, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v15, v11, v13

    if-eqz v15, :cond_3

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v18, v14, v16

    if-gez v18, :cond_1

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    .line 389
    aget v15, v2, v14

    aget v14, v3, v14

    .line 599
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    const-string v15, "="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    .line 603
    iget v14, v0, Landroidx/collection/IntIntMap;->_size:I

    if-ge v8, v14, :cond_1

    const/16 v14, 0x2c

    .line 604
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    if-ne v11, v12, :cond_4

    :cond_3
    if-eq v7, v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x7d

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s.append(\'}\').toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
