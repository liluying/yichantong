.class public Lcom/qianhe/yct/event/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# instance fields
.field public account:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:I

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/qianhe/yct/event/LoginResponse;->state:I

    .line 21
    iput-object p3, p0, Lcom/qianhe/yct/event/LoginResponse;->token:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/qianhe/yct/event/LoginResponse;->account:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/qianhe/yct/event/LoginResponse;->name:Ljava/lang/String;

    return-void
.end method
