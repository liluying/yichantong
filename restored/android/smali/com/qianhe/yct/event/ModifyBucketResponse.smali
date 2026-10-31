.class public Lcom/qianhe/yct/event/ModifyBucketResponse;
.super Ljava/lang/Object;
.source "ModifyBucketResponse.java"


# instance fields
.field public err_msg:Ljava/lang/String;

.field public shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/qianhe/yct/event/ModifyBucketResponse;->state:I

    .line 12
    iput-object p2, p0, Lcom/qianhe/yct/event/ModifyBucketResponse;->err_msg:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/qianhe/yct/event/ModifyBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method
