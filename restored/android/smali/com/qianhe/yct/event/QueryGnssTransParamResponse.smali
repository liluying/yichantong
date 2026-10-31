.class public Lcom/qianhe/yct/event/QueryGnssTransParamResponse;
.super Ljava/lang/Object;
.source "QueryGnssTransParamResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;
    }
.end annotation


# instance fields
.field public errMsg:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;",
            ">;"
        }
    .end annotation
.end field

.field public state:I

.field public totalCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->state:I

    .line 13
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->state:I

    .line 18
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->errMsg:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->totalCount:J

    .line 20
    iput-object p5, p0, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->list:Ljava/util/List;

    return-void
.end method
