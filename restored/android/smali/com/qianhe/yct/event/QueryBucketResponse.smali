.class public Lcom/qianhe/yct/event/QueryBucketResponse;
.super Ljava/lang/Object;
.source "QueryBucketResponse.java"


# instance fields
.field public err_msg:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/qianhe/yct/event/QueryBucketResponse;->state:I

    .line 13
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryBucketResponse;->err_msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/qianhe/yct/event/QueryBucketResponse;->state:I

    .line 18
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryBucketResponse;->err_msg:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/qianhe/yct/event/QueryBucketResponse;->list:Ljava/util/List;

    return-void
.end method
