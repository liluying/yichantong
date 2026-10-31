.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "world_from_device",
        "HA",
        "Hy",
        "Ay",
        "Ax",
        "Dx",
        "AD",
        "BD",
        "CD",
        "BC",
        "tool"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode3Cali"
.end annotation


# instance fields
.field public AD:D

.field public Ax:D

.field public Ay:D

.field public BC:D

.field public BD:D

.field public CD:D

.field public Dx:D

.field public HA:D

.field public Hy:D

.field public tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

.field public world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 223
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 243
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    return-void
.end method
