.class public Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;
.super Ljava/lang/Object;
.source "GnssParamTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssParamTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SevenParameter"
.end annotation


# instance fields
.field public dx:D

.field public dy:D

.field public dz:D

.field public rx:D

.field public ry:D

.field public rz:D

.field public scale:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 303
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dx:D

    .line 304
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dy:D

    .line 305
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dz:D

    .line 306
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rx:D

    .line 307
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->ry:D

    .line 308
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rz:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 309
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->scale:D

    return-void
.end method
