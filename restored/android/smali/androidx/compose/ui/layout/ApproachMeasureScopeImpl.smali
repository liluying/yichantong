.class public final Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;
.super Ljava/lang/Object;
.source "ApproachMeasureScope.kt"

# interfaces
.implements Landroidx/compose/ui/layout/IntrinsicMeasureScope;
.implements Landroidx/compose/ui/layout/MeasureScope;


# instance fields
.field private final coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;Landroidx/compose/ui/layout/ApproachLayoutModifierNode;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    return-void
.end method


# virtual methods
.method public final getApproachNode()Landroidx/compose/ui/layout/ApproachLayoutModifierNode;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCoordinator()Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getDensity()F

    move-result v0

    return v0
.end method

.method public getFontScale()F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getFontScale()F

    move-result v0

    return v0
.end method

.method public getLookaheadSize-YbymL2g()J
    .locals 2

    .line 67
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 103
    :cond_1
    new-instance v1, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;

    move-object v7, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;)V

    return-object v1
.end method

.method public final setApproachNode(Landroidx/compose/ui/layout/ApproachLayoutModifierNode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public toDp-GaN1DYA(J)F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->toDp-GaN1DYA(J)F

    move-result p1

    return p1
.end method

.method public toPx--R2X_6o(J)F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->toPx--R2X_6o(J)F

    move-result p1

    return p1
.end method

.method public toPx-0680j_4(F)F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->toPx-0680j_4(F)F

    move-result p1

    return p1
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->toSize-XkaWNTQ(J)J

    move-result-wide p1

    return-wide p1
.end method
