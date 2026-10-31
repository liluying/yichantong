.class public final Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;
.super Ljava/lang/Object;
.source "ExcavatorCalibHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/ExcavatorCalibHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FineTuneSample"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public deviceHeading:D

.field public devicePitch:D

.field public deviceRoll:D

.field public down:D

.field public east:D

.field public elev:D

.field public lat:D

.field public lon:D

.field public north:D

.field public phaseToHang:D

.field public sensorHeading:D

.field public sensorPitch:D

.field public sensorRoll:D

.field public sensorValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
