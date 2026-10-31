.class public Lcom/qianhe/yct/event/RenewCorsResponse;
.super Ljava/lang/Object;
.source "RenewCorsResponse.java"


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appid"
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "err_msg"
    .end annotation
.end field

.field public nonceStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonce_str"
    .end annotation
.end field

.field public paySign:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_sign"
    .end annotation
.end field

.field public prepayId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prepay_id"
    .end annotation
.end field

.field public signType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sign_type"
    .end annotation
.end field

.field public state:I

.field public timeStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_stamp"
    .end annotation
.end field

.field public tradeNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trade_no"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/qianhe/yct/event/RenewCorsResponse;->state:I

    .line 35
    iput-object p2, p0, Lcom/qianhe/yct/event/RenewCorsResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method
