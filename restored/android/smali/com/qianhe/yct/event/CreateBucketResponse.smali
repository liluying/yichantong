.class public Lcom/qianhe/yct/event/CreateBucketResponse;
.super Ljava/lang/Object;
.source "CreateBucketResponse.java"


# instance fields
.field public err_msg:Ljava/lang/String;

.field public shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    .line 12
    iput-object p2, p0, Lcom/qianhe/yct/event/CreateBucketResponse;->err_msg:Ljava/lang/String;

    return-void
.end method
