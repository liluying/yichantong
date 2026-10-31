.class public Lcom/qh/xcad/XCadExcavatorBucket;
.super Ljava/lang/Object;
.source "XCadExcavatorBucket.java"


# instance fields
.field public color:I

.field public drawAxis:Z

.field heading:D

.field public visible:Z

.field public xL:D

.field public xR:D

.field public yL:D

.field public yR:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/qh/xcad/XCadExcavatorBucket;->heading:D

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/qh/xcad/XCadExcavatorBucket;->drawAxis:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/qh/xcad/XCadExcavatorBucket;->visible:Z

    return-void
.end method
