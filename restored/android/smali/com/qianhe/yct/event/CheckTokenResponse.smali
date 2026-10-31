.class public Lcom/qianhe/yct/event/CheckTokenResponse;
.super Ljava/lang/Object;
.source "CheckTokenResponse.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public state:I

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/qianhe/yct/event/CheckTokenResponse;->state:I

    .line 19
    iput-object p2, p0, Lcom/qianhe/yct/event/CheckTokenResponse;->msg:Ljava/lang/String;

    return-void
.end method
