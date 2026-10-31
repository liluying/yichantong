.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "world_from_device",
        "GL",
        "GR",
        "LR",
        "HG"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode1Cali"
.end annotation


# instance fields
.field public GL:D

.field public GR:D

.field public HG:D

.field public LR:D

.field public world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 106
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    return-void
.end method
