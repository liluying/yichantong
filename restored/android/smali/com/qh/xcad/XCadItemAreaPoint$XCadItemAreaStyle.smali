.class public Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;
.super Ljava/lang/Object;
.source "XCadItemAreaPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadItemAreaPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XCadItemAreaStyle"
.end annotation


# instance fields
.field public closed:Z

.field public drawPointCircle:Z

.field public fill:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->drawPointCircle:Z

    .line 76
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->fill:Z

    .line 78
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->closed:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->drawPointCircle:Z

    .line 82
    iput-boolean p2, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->fill:Z

    .line 83
    iput-boolean p3, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->closed:Z

    return-void
.end method


# virtual methods
.method protected clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;
    .locals 1

    .line 109
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->drawPointCircle:Z

    .line 102
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->fill:Z

    .line 103
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->closed:Z

    return-void
.end method

.method public setXCadItemAreaStyle(Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->reset()V

    return-void

    .line 95
    :cond_0
    iget-boolean v0, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->drawPointCircle:Z

    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->drawPointCircle:Z

    .line 96
    iget-boolean v0, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->fill:Z

    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->fill:Z

    .line 97
    iget-boolean p1, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->closed:Z

    iput-boolean p1, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->closed:Z

    return-void
.end method
