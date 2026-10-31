.class public final Landroidx/compose/ui/node/NestedVectorStack;
.super Ljava/lang/Object;
.source "NestedVectorStack.kt"


# instance fields
.field private currentIndexes:[I

.field private size:I

.field private vectors:[Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 25
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    .line 26
    new-array v0, v0, [Landroidx/compose/runtime/collection/MutableVector;

    iput-object v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method


# virtual methods
.method public final isNotEmpty()Z
    .locals 3

    .line 29
    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget v0, v1, v0

    if-ltz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final pop()Ljava/lang/Object;
    .locals 5

    .line 33
    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 37
    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    aget v1, v1, v0

    .line 38
    iget-object v2, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    aget-object v2, v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-lez v1, :cond_0

    .line 39
    iget-object v3, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 41
    iget-object v3, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 42
    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    .line 523
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call pop() on an empty stack. Guard with a call to isNotEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final push(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 4

    .line 49
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    .line 52
    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 53
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    .line 54
    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Landroidx/compose/runtime/collection/MutableVector;

    iput-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    .line 56
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 57
    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    aput-object p1, v1, v0

    .line 58
    iget p1, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    return-void
.end method
