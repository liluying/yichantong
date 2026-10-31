.class public Lcom/qianhe/yct/event/CreateEngineeringResponse;
.super Ljava/lang/Object;
.source "CreateEngineeringResponse.java"


# instance fields
.field public errMsg:Ljava/lang/String;

.field public gnssProjParamId:J

.field public gnssProjParamUuid:Ljava/lang/String;

.field public id:J

.field public localDbId:J

.field public state:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->state:I

    .line 15
    iput-object p2, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->state:I

    .line 20
    iput-object p2, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->errMsg:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    .line 22
    iput-object p5, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->uuid:Ljava/lang/String;

    .line 23
    iput-wide p6, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->gnssProjParamId:J

    .line 24
    iput-object p8, p0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->gnssProjParamUuid:Ljava/lang/String;

    return-void
.end method
