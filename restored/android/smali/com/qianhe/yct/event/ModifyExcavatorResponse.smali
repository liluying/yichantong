.class public Lcom/qianhe/yct/event/ModifyExcavatorResponse;
.super Ljava/lang/Object;
.source "ModifyExcavatorResponse.java"


# instance fields
.field public excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field public msg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/qianhe/yct/event/ModifyExcavatorResponse;->state:I

    .line 21
    iput-object p2, p0, Lcom/qianhe/yct/event/ModifyExcavatorResponse;->msg:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/qianhe/yct/event/ModifyExcavatorResponse;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method
