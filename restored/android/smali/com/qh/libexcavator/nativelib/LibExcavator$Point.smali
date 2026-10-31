.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Point;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "x",
        "y",
        "z"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 83
    iput-wide p1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 84
    iput-wide p3, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 85
    iput-wide p5, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    return-void
.end method
