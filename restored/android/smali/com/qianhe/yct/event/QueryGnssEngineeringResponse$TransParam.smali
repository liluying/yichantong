.class public Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;
.super Ljava/lang/Object;
.source "QueryGnssEngineeringResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransParam"
.end annotation


# instance fields
.field public controlPoints:Ljava/lang/String;

.field public dx:Ljava/lang/Double;

.field public dy:Ljava/lang/Double;

.field public dz:Ljava/lang/Double;

.field public id:J

.field public name:Ljava/lang/String;

.field public paramType:I

.field public paramsDetail:Ljava/lang/String;

.field public rotation:Ljava/lang/Double;

.field public rotationX:Ljava/lang/Double;

.field public rotationY:Ljava/lang/Double;

.field public rotationZ:Ljava/lang/Double;

.field public scale:Ljava/lang/Double;

.field public type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
