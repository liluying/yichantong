.class public final Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
.super Ljava/lang/Object;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentCollectResult"
.end annotation


# instance fields
.field public final coords:[D

.field public final geodetic:[D

.field public final hdop:D

.field public final quality:I

.field public final vdop:D


# direct methods
.method public constructor <init>([D[DIDD)V
    .locals 0

    .line 2662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2663
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    .line 2664
    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->geodetic:[D

    .line 2665
    iput p3, p0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->quality:I

    .line 2666
    iput-wide p4, p0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->hdop:D

    .line 2667
    iput-wide p6, p0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->vdop:D

    return-void
.end method
