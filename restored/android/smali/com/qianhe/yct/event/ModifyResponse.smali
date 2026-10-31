.class public Lcom/qianhe/yct/event/ModifyResponse;
.super Ljava/lang/Object;
.source "ModifyResponse.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/qianhe/yct/event/ModifyResponse;->state:I

    .line 18
    iput-object p2, p0, Lcom/qianhe/yct/event/ModifyResponse;->msg:Ljava/lang/String;

    return-void
.end method
