.class public Lcom/qianhe/yct/event/CloseOrderResponse;
.super Ljava/lang/Object;
.source "CloseOrderResponse.java"


# instance fields
.field public errMsg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/qianhe/yct/event/CloseOrderResponse;->state:I

    .line 19
    iput-object p2, p0, Lcom/qianhe/yct/event/CloseOrderResponse;->errMsg:Ljava/lang/String;

    return-void
.end method
