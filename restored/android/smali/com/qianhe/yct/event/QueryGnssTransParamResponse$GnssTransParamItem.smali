.class public Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;
.super Ljava/lang/Object;
.source "QueryGnssTransParamResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/QueryGnssTransParamResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssTransParamItem"
.end annotation


# instance fields
.field public belongUid:J

.field public controlPoints:Ljava/lang/String;

.field public createEpoch:J

.field public id:J

.field public name:Ljava/lang/String;

.field public paramType:I

.field public paramsDetail:Ljava/lang/String;

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
