.class Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;
.super Ljava/lang/Object;
.source "VerifyAccuracyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/VerifyAccuracyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoordinatePoint"
.end annotation


# instance fields
.field east:D

.field height:D

.field latitude:D

.field longitude:D

.field north:D


# direct methods
.method constructor <init>(DDDDD)V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->latitude:D

    .line 432
    iput-wide p3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->longitude:D

    .line 433
    iput-wide p5, p0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    .line 434
    iput-wide p7, p0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->east:D

    .line 435
    iput-wide p9, p0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->north:D

    return-void
.end method
