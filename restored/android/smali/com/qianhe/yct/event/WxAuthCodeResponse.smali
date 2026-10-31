.class public Lcom/qianhe/yct/event/WxAuthCodeResponse;
.super Ljava/lang/Object;
.source "WxAuthCodeResponse.java"


# instance fields
.field public closeOrderNo:Ljava/lang/String;

.field public errCode:I

.field public wxCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/qianhe/yct/event/WxAuthCodeResponse;->errCode:I

    .line 19
    iput-object p2, p0, Lcom/qianhe/yct/event/WxAuthCodeResponse;->wxCode:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/qianhe/yct/event/WxAuthCodeResponse;->closeOrderNo:Ljava/lang/String;

    return-void
.end method
