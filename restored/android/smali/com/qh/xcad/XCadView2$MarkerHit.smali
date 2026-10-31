.class Lcom/qh/xcad/XCadView2$MarkerHit;
.super Ljava/lang/Object;
.source "XCadView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadView2;
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

    .line 2111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2112
    iput v0, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->entityIndex:I

    .line 2113
    iput v0, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->pointIndex:I

    const/4 v0, 0x0

    .line 2114
    iput v0, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->sx:F

    .line 2115
    iput v0, p0, Lcom/qh/xcad/XCadView2$MarkerHit;->sy:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/qh/xcad/XCadView2-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2$MarkerHit;-><init>()V

    return-void
.end method
