.class public Lcom/qianhe/yct/event/DelShareResponse;
.super Ljava/lang/Object;
.source "DelShareResponse.java"


# instance fields
.field public entity:Lcom/qianhe/baselib/bean/ShareEntity;

.field public msg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/qianhe/yct/event/DelShareResponse;->state:I

    .line 21
    iput-object p2, p0, Lcom/qianhe/yct/event/DelShareResponse;->msg:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/qianhe/yct/event/DelShareResponse;->entity:Lcom/qianhe/baselib/bean/ShareEntity;

    return-void
.end method
