.class public Lcom/qh/libexcavator/nativelib/LibExcavator$Mode11Cali;
.super Lcom/sun/jna/Structure;
.source "LibExcavator.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "phase_to_arp",
        "arp_to_rod",
        "sample_list",
        "sample_amount"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/libexcavator/nativelib/LibExcavator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode11Cali"
.end annotation


# instance fields
.field public arp_to_rod:D

.field public phase_to_arp:D

.field public sample_amount:I

.field public sample_list:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
