.class Lcom/qh/xcad/XCadView2$1;
.super Lcom/qh/xcad/XCadView2$MarkerHit;
.source "XCadView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qh/xcad/XCadView2;->drawVisLinePoints(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qh/xcad/XCadView2;

.field final synthetic val$idx:I

.field final synthetic val$offsetY:F

.field final synthetic val$pointIdx:I

.field final synthetic val$radius:F

.field final synthetic val$sp:[F


# direct methods
.method constructor <init>(Lcom/qh/xcad/XCadView2;II[FFF)V
    .locals 0

    .line 1731
    iput-object p1, p0, Lcom/qh/xcad/XCadView2$1;->this$0:Lcom/qh/xcad/XCadView2;

    iput p2, p0, Lcom/qh/xcad/XCadView2$1;->val$idx:I

    iput p3, p0, Lcom/qh/xcad/XCadView2$1;->val$pointIdx:I

    iput-object p4, p0, Lcom/qh/xcad/XCadView2$1;->val$sp:[F

    iput p5, p0, Lcom/qh/xcad/XCadView2$1;->val$offsetY:F

    iput p6, p0, Lcom/qh/xcad/XCadView2$1;->val$radius:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2$MarkerHit;-><init>(Lcom/qh/xcad/XCadView2-IA;)V

    .line 1732
    iput p2, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->entityIndex:I

    .line 1733
    iput p3, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->pointIndex:I

    const/4 p1, 0x0

    .line 1734
    aget p1, p4, p1

    iput p1, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->sx:F

    const/4 p2, 0x1

    .line 1735
    aget p2, p4, p2

    iput p2, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->sy:F

    .line 1736
    iput p1, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->bubbleX:F

    sub-float/2addr p2, p5

    .line 1737
    iput p2, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->bubbleY:F

    .line 1738
    iput p6, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->bubbleRadius:F

    return-void
.end method
