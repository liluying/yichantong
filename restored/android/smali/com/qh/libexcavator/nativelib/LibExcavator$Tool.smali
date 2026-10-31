.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "AB",
        "TT"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tool"
.end annotation


# instance fields
.field public AB:D

.field public TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 97
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    return-void
.end method
