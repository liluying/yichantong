.class public Lcom/qianhe/yct/event/QueryEngineeringResponse;
.super Ljava/lang/Object;
.source "QueryEngineeringResponse.java"


# instance fields
.field public engineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field public msg:Ljava/lang/String;

.field public requestEngineeringUuid:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->state:I

    .line 28
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->engineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    return-void
.end method

.method public constructor <init>(ILcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->state:I

    .line 39
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->engineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 40
    iput-object p3, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->requestEngineeringUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->state:I

    .line 23
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->state:I

    .line 33
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->msg:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/qianhe/yct/event/QueryEngineeringResponse;->requestEngineeringUuid:Ljava/lang/String;

    return-void
.end method
