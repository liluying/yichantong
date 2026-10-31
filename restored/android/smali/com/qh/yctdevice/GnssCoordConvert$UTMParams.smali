.class public Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;
.super Ljava/lang/Object;
.source "GnssCoordConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssCoordConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTMParams"
.end annotation


# instance fields
.field public deformationMethod:I

.field public isNorth:Z

.field public projectionHeight:D

.field public zone:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 230
    iput v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->zone:I

    .line 231
    iput-boolean v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->isNorth:Z

    const-wide/16 v0, 0x0

    .line 232
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->projectionHeight:D

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->deformationMethod:I

    return-void
.end method
