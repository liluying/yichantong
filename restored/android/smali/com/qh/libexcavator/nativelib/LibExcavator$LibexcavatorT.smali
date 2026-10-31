.class public Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "a"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibexcavatorT"
.end annotation


# instance fields
.field public a:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x80

    .line 292
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;->a:[J

    return-void
.end method
