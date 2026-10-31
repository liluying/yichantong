.class Lcom/qh/xcad/XCadView$MarkerHit;
.super Ljava/lang/Object;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkerHit"
.end annotation


# instance fields
.field bubbleRadius:F

.field bubbleX:F

.field bubbleY:F

.field entityIndex:I

.field pointIndex:I

.field sx:F

.field sy:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3234
    iput v0, p0, Lcom/qh/xcad/XCadView$MarkerHit;->entityIndex:I

    .line 3235
    iput v0, p0, Lcom/qh/xcad/XCadView$MarkerHit;->pointIndex:I

    const/4 v0, 0x0

    .line 3236
    iput v0, p0, Lcom/qh/xcad/XCadView$MarkerHit;->sx:F

    .line 3237
    iput v0, p0, Lcom/qh/xcad/XCadView$MarkerHit;->sy:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/qh/xcad/XCadView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView$MarkerHit;-><init>()V

    return-void
.end method
