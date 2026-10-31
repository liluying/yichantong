.class public Lcom/qianhe/yct/event/CreateAccountResponse;
.super Ljava/lang/Object;
.source "CreateAccountResponse.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/qianhe/yct/event/CreateAccountResponse;->state:I

    .line 18
    iput-object p2, p0, Lcom/qianhe/yct/event/CreateAccountResponse;->msg:Ljava/lang/String;

    return-void
.end method
