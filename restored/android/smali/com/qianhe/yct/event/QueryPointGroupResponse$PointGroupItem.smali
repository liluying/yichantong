.class public Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;
.super Ljava/lang/Object;
.source "QueryPointGroupResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/QueryPointGroupResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointGroupItem"
.end annotation


# instance fields
.field public belongEngineeringId:J

.field public createEpoch:J

.field public engineeringUuid:Ljava/lang/String;

.field public id:J

.field public name:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public state:I

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
