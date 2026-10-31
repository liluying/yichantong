.class public Lcom/qh/xcad/XCadPoint;
.super Ljava/lang/Object;
.source "XCadPoint.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/qh/xcad/XCadPoint;->x:D

    .line 16
    iput-wide p3, p0, Lcom/qh/xcad/XCadPoint;->y:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/qh/xcad/XCadPoint;->x:D

    .line 10
    iput-wide p3, p0, Lcom/qh/xcad/XCadPoint;->y:D

    .line 11
    iput-wide p5, p0, Lcom/qh/xcad/XCadPoint;->z:D

    return-void
.end method
