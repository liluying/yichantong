.class public Lcom/qianhe/yct/event/PointGroupResponse;
.super Ljava/lang/Object;
.source "PointGroupResponse.java"


# instance fields
.field public entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

.field public errMsg:Ljava/lang/String;

.field public groupLocalId:J

.field public id:J

.field public state:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/qianhe/yct/event/PointGroupResponse;->state:I

    .line 15
    iput-object p2, p0, Lcom/qianhe/yct/event/PointGroupResponse;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/qianhe/yct/event/PointGroupResponse;->state:I

    .line 20
    iput-object p2, p0, Lcom/qianhe/yct/event/PointGroupResponse;->errMsg:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/qianhe/yct/event/PointGroupResponse;->id:J

    .line 22
    iput-object p5, p0, Lcom/qianhe/yct/event/PointGroupResponse;->uuid:Ljava/lang/String;

    return-void
.end method
