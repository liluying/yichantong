.class public Lcom/qianhe/yct/event/QueryPointResponse;
.super Ljava/lang/Object;
.source "QueryPointResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/event/QueryPointResponse$PointItem;
    }
.end annotation


# instance fields
.field public errMsg:Ljava/lang/String;

.field public groupId:J

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryPointResponse$PointItem;",
            ">;"
        }
    .end annotation
.end field

.field public state:I

.field public totalCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/qianhe/yct/event/QueryPointResponse;->state:I

    .line 14
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryPointResponse;->errMsg:Ljava/lang/String;

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
            "Lcom/qianhe/yct/event/QueryPointResponse$PointItem;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/qianhe/yct/event/QueryPointResponse;->state:I

    .line 19
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryPointResponse;->errMsg:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Lcom/qianhe/yct/event/QueryPointResponse;->totalCount:J

    .line 21
    iput-object p5, p0, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    return-void
.end method
