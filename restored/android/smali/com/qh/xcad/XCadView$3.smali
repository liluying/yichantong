.class Lcom/qh/xcad/XCadView$3;
.super Lcom/qh/xcad/XCadView$MarkerHit;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qh/xcad/XCadView;->drawVisLinePoints(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qh/xcad/XCadView;

.field final synthetic val$idx:I

.field final synthetic val$offsetY:F

.field final synthetic val$pointIdx:I

.field final synthetic val$radius:F

.field final synthetic val$sp:[F


# direct methods
.method constructor <init>(Lcom/qh/xcad/XCadView;II[FFF)V
    .locals 0

    .line 2669
    iput-object p1, p0, Lcom/qh/xcad/XCadView$3;->this$0:Lcom/qh/xcad/XCadView;

    iput p2, p0, Lcom/qh/xcad/XCadView$3;->val$idx:I

    iput p3, p0, Lcom/qh/xcad/XCadView$3;->val$pointIdx:I

    iput-object p4, p0, Lcom/qh/xcad/XCadView$3;->val$sp:[F

    iput p5, p0, Lcom/qh/xcad/XCadView$3;->val$offsetY:F

    iput p6, p0, Lcom/qh/xcad/XCadView$3;->val$radius:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView$MarkerHit;-><init>(Lcom/qh/xcad/XCadView-IA;)V

    .line 2670
    iput p2, p0, Lcom/qh/xcad/XCadView$MarkerHit;->entityIndex:I

    .line 2671
    iput p3, p0, Lcom/qh/xcad/XCadView$MarkerHit;->pointIndex:I

    const/4 p1, 0x0

    .line 2672
    aget p1, p4, p1

    iput p1, p0, Lcom/qh/xcad/XCadView$MarkerHit;->sx:F

    const/4 p2, 0x1

    .line 2673
    aget p2, p4, p2

    iput p2, p0, Lcom/qh/xcad/XCadView$MarkerHit;->sy:F

    .line 2674
    iput p1, p0, Lcom/qh/xcad/XCadView$MarkerHit;->bubbleX:F

    sub-float/2addr p2, p5

    .line 2675
    iput p2, p0, Lcom/qh/xcad/XCadView$MarkerHit;->bubbleY:F

    .line 2676
    iput p6, p0, Lcom/qh/xcad/XCadView$MarkerHit;->bubbleRadius:F

    return-void
.end method
