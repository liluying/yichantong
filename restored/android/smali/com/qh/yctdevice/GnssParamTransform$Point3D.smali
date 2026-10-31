.class public Lcom/qh/yctdevice/GnssParamTransform$Point3D;
.super Ljava/lang/Object;
.source "GnssParamTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/GnssParamTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point3D"
.end annotation


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 274
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    .line 275
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    .line 276
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    iput-wide p3, p0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    iput-wide p5, p0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    return-void
.end method
