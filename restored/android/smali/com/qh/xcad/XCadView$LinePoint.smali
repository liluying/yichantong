.class Lcom/qh/xcad/XCadView$LinePoint;
.super Ljava/lang/Object;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinePoint"
.end annotation


# instance fields
.field color:I

.field index:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 3249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3250
    iput p1, p0, Lcom/qh/xcad/XCadView$LinePoint;->index:I

    .line 3251
    iput p2, p0, Lcom/qh/xcad/XCadView$LinePoint;->color:I

    return-void
.end method
