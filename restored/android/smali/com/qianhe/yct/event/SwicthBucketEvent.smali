.class public Lcom/qianhe/yct/event/SwicthBucketEvent;
.super Ljava/lang/Object;
.source "SwicthBucketEvent.java"


# instance fields
.field public bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field public calibParamsId:Ljava/lang/String;

.field public final refreshOnly:Z


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lcom/qianhe/yct/event/SwicthBucketEvent;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/baselib/bean/ShovelEntity;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/event/SwicthBucketEvent;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/baselib/bean/ShovelEntity;ZLjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/qianhe/yct/event/SwicthBucketEvent;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 32
    iput-boolean p2, p0, Lcom/qianhe/yct/event/SwicthBucketEvent;->refreshOnly:Z

    .line 33
    iput-object p3, p0, Lcom/qianhe/yct/event/SwicthBucketEvent;->calibParamsId:Ljava/lang/String;

    return-void
.end method
