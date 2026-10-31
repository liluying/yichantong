.class public Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;
.super Ljava/lang/Object;
.source "PointGroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectGnssQuality"
.end annotation


# instance fields
.field public final hdop:D

.field public final quality:I

.field public final vdop:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;->quality:I

    .line 78
    iput-wide p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;->hdop:D

    .line 79
    iput-wide p4, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;->vdop:D

    return-void
.end method
