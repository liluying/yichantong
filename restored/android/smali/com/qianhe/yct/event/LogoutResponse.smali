.class public Lcom/qianhe/yct/event/LogoutResponse;
.super Ljava/lang/Object;
.source "LogoutResponse.java"


# instance fields
.field public loggedDeviceId:I

.field public msg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/qianhe/yct/event/LogoutResponse;->state:I

    .line 19
    iput-object p2, p0, Lcom/qianhe/yct/event/LogoutResponse;->msg:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/qianhe/yct/event/LogoutResponse;->loggedDeviceId:I

    return-void
.end method
