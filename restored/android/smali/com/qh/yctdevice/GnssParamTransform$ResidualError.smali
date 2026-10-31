.class public Lcom/qh/yctdevice/GnssParamTransform$ResidualError;
.super Ljava/lang/Object;
.source "GnssParamTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssParamTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResidualError"
.end annotation


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 295
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    .line 296
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    .line 297
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->z:D

    return-void
.end method
