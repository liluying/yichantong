.class public Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;
.super Ljava/lang/Object;
.source "QueryGnssEngineeringResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssEngineeringItem"
.end annotation


# instance fields
.field public belongUid:J

.field public createEpoch:J

.field public currentUsage:I

.field public id:J

.field public name:Ljava/lang/String;

.field public projection:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;

.field public projectionParamId:J

.field public state:I

.field public transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

.field public transParamId:J

.field public updateEpoch:J

.field public uuid:Ljava/lang/String;

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
