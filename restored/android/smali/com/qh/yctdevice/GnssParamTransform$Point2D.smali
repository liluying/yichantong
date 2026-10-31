.class public Lcom/qh/yctdevice/GnssParamTransform$Point2D;
.super Ljava/lang/Object;
.source "GnssParamTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssParamTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point2D"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 285
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    .line 286
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    iput-wide p3, p0, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    return-void
.end method
