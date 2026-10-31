.class public Lcom/qianhe/yct/event/QueryPointResponse$PointItem;
.super Ljava/lang/Object;
.source "QueryPointResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/QueryPointResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointItem"
.end annotation


# instance fields
.field public altitude:D

.field public collectedAt:J

.field public groupId:J

.field public hdop:D

.field public id:J

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public solution:I

.field public vdop:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
