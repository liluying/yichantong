.class public Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;
.super Ljava/lang/Object;
.source "CurvedSlopeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlopeResult"
.end annotation


# instance fields
.field public distanceCm:I

.field public intersectPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field public isCut:Z

.field public isOutOfSlopeRange:Z

.field public isVerticalSlope:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
