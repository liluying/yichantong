.class public Lcom/qh/xcad/XCadVehiclePoint;
.super Ljava/lang/Object;
.source "XCadVehiclePoint.java"


# instance fields
.field public color:I

.field public drawAxis:Z

.field heading:D

.field public visible:Z

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/qh/xcad/XCadVehiclePoint;->drawAxis:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/qh/xcad/XCadVehiclePoint;->visible:Z

    return-void
.end method
