.class public Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "sample",
        "A",
        "B",
        "D",
        "L",
        "R"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdjustRtkSample"
.end annotation


# instance fields
.field public A:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public B:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public D:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public L:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public R:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

.field public sample:Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 273
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;->sample:Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    .line 275
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;->A:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 277
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;->B:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 279
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;->D:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 281
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;->L:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    .line 283
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;->R:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    return-void
.end method
