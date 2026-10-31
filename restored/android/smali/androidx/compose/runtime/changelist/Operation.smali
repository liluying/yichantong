.class public abstract Landroidx/compose/runtime/changelist/Operation;
.super Ljava/lang/Object;
.source "Operation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;,
        Landroidx/compose/runtime/changelist/Operation$AppendValue;,
        Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;,
        Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;,
        Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;,
        Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;,
        Landroidx/compose/runtime/changelist/Operation$Downs;,
        Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;,
        Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;,
        Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;,
        Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;,
        Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;,
        Landroidx/compose/runtime/changelist/Operation$InsertSlots;,
        Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;,
        Landroidx/compose/runtime/changelist/Operation$IntParameter;,
        Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;,
        Landroidx/compose/runtime/changelist/Operation$MoveNode;,
        Landroidx/compose/runtime/changelist/Operation$ObjectParameter;,
        Landroidx/compose/runtime/changelist/Operation$Remember;,
        Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;,
        Landroidx/compose/runtime/changelist/Operation$RemoveNode;,
        Landroidx/compose/runtime/changelist/Operation$ResetSlots;,
        Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;,
        Landroidx/compose/runtime/changelist/Operation$TrimParentValues;,
        Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;,
        Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;,
        Landroidx/compose/runtime/changelist/Operation$UpdateValue;,
        Landroidx/compose/runtime/changelist/Operation$Ups;
    }
.end annotation


# instance fields
.field private final ints:I

.field private final objects:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    .line 49
    iput p2, p0, Landroidx/compose/runtime/changelist/Operation;->objects:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 p3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/changelist/Operation;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/changelist/Operation;-><init>(II)V

    return-void
.end method


# virtual methods
.method public abstract execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
.end method

.method public final getInts()I
    .locals 1

    .line 48
    iget v0, p0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getObjects()I
    .locals 1

    .line 49
    iget v0, p0, Landroidx/compose/runtime/changelist/Operation;->objects:I

    return v0
.end method

.method public intParamName-w8GmfQM(I)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
