.class public Lcom/qh/yctdevice/GnssParamTransform$FourParameter;
.super Ljava/lang/Object;
.source "GnssParamTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssParamTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FourParameter"
.end annotation


# instance fields
.field public dx:D

.field public dy:D

.field public r:D

.field public scale:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 315
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dx:D

    .line 316
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dy:D

    .line 317
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->r:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 318
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->scale:D

    return-void
.end method
