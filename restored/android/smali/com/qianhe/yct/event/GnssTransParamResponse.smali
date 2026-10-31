.class public Lcom/qianhe/yct/event/GnssTransParamResponse;
.super Ljava/lang/Object;
.source "GnssTransParamResponse.java"


# instance fields
.field public entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

.field public errMsg:Ljava/lang/String;

.field public id:J

.field public localDbId:J

.field public state:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/qianhe/yct/event/GnssTransParamResponse;->state:I

    .line 16
    iput-object p2, p0, Lcom/qianhe/yct/event/GnssTransParamResponse;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/qianhe/yct/event/GnssTransParamResponse;->state:I

    .line 21
    iput-object p2, p0, Lcom/qianhe/yct/event/GnssTransParamResponse;->errMsg:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/qianhe/yct/event/GnssTransParamResponse;->id:J

    .line 23
    iput-object p5, p0, Lcom/qianhe/yct/event/GnssTransParamResponse;->uuid:Ljava/lang/String;

    return-void
.end method
