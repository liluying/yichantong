.class public Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;
.super Ljava/lang/Object;
.source "DeleteGnssTransParamResponse.java"


# instance fields
.field public errMsg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;->state:I

    .line 9
    iput-object p2, p0, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;->errMsg:Ljava/lang/String;

    return-void
.end method
