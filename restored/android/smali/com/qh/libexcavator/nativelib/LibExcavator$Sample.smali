.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "phase_to_hang",
        "phase_center",
        "phase_center_stde",
        "world_from_device",
        "world_from_device_stde",
        "world_from_sensor",
        "world_from_sensor_valid"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field public phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public phase_center_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public phase_to_hang:D

.field public world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public world_from_device_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public world_from_sensor_valid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 254
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 256
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 258
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 260
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 262
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    return-void
.end method
