.class public abstract Landroidx/compose/runtime/CompositionKt;
.super Ljava/lang/Object;
.source "Composition.kt"


# static fields
.field private static final CompositionImplServiceKey:Landroidx/compose/runtime/CompositionServiceKey;

.field private static final PendingApplyNoModifications:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/CompositionKt;->PendingApplyNoModifications:Ljava/lang/Object;

    .line 428
    new-instance v0, Landroidx/compose/runtime/CompositionKt$CompositionImplServiceKey$1;

    invoke-direct {v0}, Landroidx/compose/runtime/CompositionKt$CompositionImplServiceKey$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/CompositionKt;->CompositionImplServiceKey:Landroidx/compose/runtime/CompositionServiceKey;

    return-void
.end method

.method public static final Composition(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;
    .locals 6

    .line 340
    new-instance v0, Landroidx/compose/runtime/CompositionImpl;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final synthetic access$getPendingApplyNoModifications$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/CompositionKt;->PendingApplyNoModifications:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$swap(Landroidx/collection/MutableIntList;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/CompositionKt;->swap(Landroidx/collection/MutableIntList;II)V

    return-void
.end method

.method public static final synthetic access$swap(Ljava/util/List;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/CompositionKt;->swap(Ljava/util/List;II)V

    return-void
.end method

.method private static final swap(Landroidx/collection/MutableIntList;II)V
    .locals 2

    .line 1492
    invoke-virtual {p0, p1}, Landroidx/collection/IntList;->get(I)I

    move-result v0

    .line 1493
    invoke-virtual {p0, p2}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/collection/MutableIntList;->set(II)I

    .line 1494
    invoke-virtual {p0, p2, v0}, Landroidx/collection/MutableIntList;->set(II)I

    return-void
.end method

.method private static final swap(Ljava/util/List;II)V
    .locals 2

    .line 1486
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1487
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1488
    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
