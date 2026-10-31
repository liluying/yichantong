.class public Lcom/qh/xcad/XCadItemAreaPoint;
.super Ljava/lang/Object;
.source "XCadItemAreaPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;,
        Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;
    }
.end annotation


# instance fields
.field public itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

.field public visible:Z

.field public xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    .line 11
    new-instance v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    invoke-direct {v0}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/qh/xcad/XCadItemAreaPoint;
    .locals 4

    .line 23
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadItemAreaPoint;

    .line 25
    iget-object v1, p0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    if-eqz v1, :cond_0

    .line 26
    array-length v1, v1

    new-array v1, v1, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    iput-object v1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 29
    iget-object v3, v0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/qh/xcad/XCadItemAreaPoint;->clone()Lcom/qh/xcad/XCadItemAreaPoint;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    .line 16
    iget-object v0, p0, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->reset()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    return-void
.end method
