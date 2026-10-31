.class public Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;
.super Ljava/lang/Object;
.source "GnssCoordConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssCoordConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GaussKrugerParams"
.end annotation


# instance fields
.field public deformationMethod:I

.field public fe:D

.field public fn:D

.field public k0:D

.field public lat0:D

.field public lon0:D

.field public projectionHeight:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 218
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lon0:D

    .line 219
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lat0:D

    const-wide v2, 0x411e848000000000L    # 500000.0

    .line 220
    iput-wide v2, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fe:D

    .line 221
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fn:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 222
    iput-wide v2, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->k0:D

    .line 223
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->projectionHeight:D

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->deformationMethod:I

    return-void
.end method
