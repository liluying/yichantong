.class public Lcom/qianhe/yct/event/WxAppIdResponse;
.super Ljava/lang/Object;
.source "WxAppIdResponse.java"


# instance fields
.field public appid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wechatpay.android_yct_appid"
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;

.field public mchid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wechatpay.mchid"
    .end annotation
.end field

.field public notifyUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wechatpay.notify_url"
    .end annotation
.end field

.field public state:I

.field public wechatpayEnable:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wechatpay.enable"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/qianhe/yct/event/WxAppIdResponse;->state:I

    .line 28
    iput-object p2, p0, Lcom/qianhe/yct/event/WxAppIdResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method
