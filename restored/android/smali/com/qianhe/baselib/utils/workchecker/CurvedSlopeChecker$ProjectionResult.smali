.class Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;
.super Ljava/lang/Object;
.source "CurvedSlopeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectionResult"
.end annotation


# instance fields
.field cornerPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field isAtCorner:Z

.field nextNormal:[D

.field outwardNx:D

.field outwardNy:D

.field prevNormal:[D

.field projX:D

.field projY:D

.field tInSegment:D

.field tTotal:D

.field totalLen:D

.field zOnLine:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-wide p1, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projX:D

    .line 498
    iput-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projY:D

    .line 499
    iput-wide p5, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->zOnLine:D

    .line 500
    iput-wide p7, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->tInSegment:D

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->isAtCorner:Z

    return-void
.end method
