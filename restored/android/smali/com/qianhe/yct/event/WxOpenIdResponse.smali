.class public Lcom/qianhe/yct/event/WxOpenIdResponse;
.super Ljava/lang/Object;
.source "WxOpenIdResponse.java"


# instance fields
.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "err_msg"
    .end annotation
.end field

.field public state:I

.field public wxOpenId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openid"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/qianhe/yct/event/WxOpenIdResponse;->state:I

    .line 23
    iput-object p2, p0, Lcom/qianhe/yct/event/WxOpenIdResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method
