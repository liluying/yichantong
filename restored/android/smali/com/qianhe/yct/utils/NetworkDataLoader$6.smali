.class Lcom/qianhe/yct/utils/NetworkDataLoader$6;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field final synthetic val$fmw_id:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;ILcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$fmw_id:I

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 426
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 427
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 428
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$fmw_id:I

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 430
    :cond_0
    const-string p1, "getFirmwareDownloadUrl()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 436
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 438
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 440
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5347\u7ea7\u6587\u4ef6\u4fe1\u606f\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 442
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 444
    const-string v1, "err_msg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 446
    new-instance p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;

    invoke-direct {p1}, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;-><init>()V

    .line 447
    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->err_msg:Ljava/lang/String;

    .line 448
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 449
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 452
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/qianhe/yct/utils/NetworkDataLoader$6$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/NetworkDataLoader$6$1;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader$6;)V

    .line 453
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 452
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;

    if-eqz p1, :cond_1

    .line 456
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 457
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 461
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirmwareDownloadUrl() onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 466
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_3

    .line 467
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$fmw_id:I

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 469
    :cond_3
    const-string p1, "getFirmwareDownloadUrl()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
