.class public final Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;
.super Ljava/lang/Object;
.source "ApproachMeasureScope.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $placementBlock:Lkotlin/jvm/functions/Function1;

.field private final alignmentLines:Ljava/util/Map;

.field private final height:I

.field private final rulers:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;

.field private final width:I


# direct methods
.method constructor <init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;)V
    .locals 0

    iput-object p5, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->this$0:Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->width:I

    .line 105
    iput p2, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->height:I

    .line 108
    iput-object p3, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->alignmentLines:Ljava/util/Map;

    .line 109
    iput-object p4, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->rulers:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getAlignmentLines()Ljava/util/Map;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->alignmentLines:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 105
    iget v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->height:I

    return v0
.end method

.method public getRulers()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->rulers:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 104
    iget v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->width:I

    return v0
.end method

.method public placeChildren()V
    .locals 2

    .line 111
    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->this$0:Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->getCoordinator()Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
