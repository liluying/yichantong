.class public Lcom/qianhe/yct/event/CreateShareResponse;
.super Ljava/lang/Object;
.source "CreateShareResponse.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public shareCode:Ljava/lang/String;

.field public shareId:J

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/qianhe/yct/event/CreateShareResponse;->state:I

    .line 20
    iput-object p2, p0, Lcom/qianhe/yct/event/CreateShareResponse;->msg:Ljava/lang/String;

    return-void
.end method
