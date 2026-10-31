.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "phase_to_hang",
        "HA",
        "Hy",
        "Dx",
        "AD",
        "CD",
        "BC",
        "tool",
        "RE_world_from_device",
        "RE_amount",
        "A_world_from_device",
        "B_world_from_device",
        "B_world_from_sensor",
        "dc_world_from_device",
        "dc_world_from_sensor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode21Cali"
.end annotation


# instance fields
.field public AD:D

.field public A_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public BC:D

.field public B_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public B_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public CD:D

.field public Dx:D

.field public HA:D

.field public Hy:D

.field public RE_amount:I

.field public RE_world_from_device:Lcom/sun/jna/Pointer;

.field public dc_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public dc_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public phase_to_hang:D

.field public tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 200
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    .line 206
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->A_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 208
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 210
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 212
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 214
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    return-void
.end method
