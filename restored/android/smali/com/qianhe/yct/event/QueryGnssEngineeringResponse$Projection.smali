.class public Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;
.super Ljava/lang/Object;
.source "QueryGnssEngineeringResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Projection"
.end annotation


# instance fields
.field public ellipsoidType:I

.field public id:J

.field public paramsDetail:Ljava/lang/String;

.field public projectionType:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
