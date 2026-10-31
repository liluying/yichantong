.class Lcom/qianhe/yct/utils/NetworkDataLoader$5;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field final synthetic val$isModuleUpgrade:Z

.field final synthetic val$pn:Ljava/lang/String;

.field final synthetic val$requestBody:Ljava/lang/String;

.field final synthetic val$versions:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$pn:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$versions:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$isModuleUpgrade:Z

    iput-object p6, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$requestBody:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 350
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 352
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 353
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$pn:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$versions:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$isModuleUpgrade:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 355
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirmwareList()\u5931\u8d25 - \u8fde\u7eed3\u6b21\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 361
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 362
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 364
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 366
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirmwareList()\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 368
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    const-string v1, "err_msg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 372
    new-instance p1, Lcom/qianhe/yct/event/FirmwareResponse;

    invoke-direct {p1}, Lcom/qianhe/yct/event/FirmwareResponse;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v1, p1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 374
    iput v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->state:I

    .line 375
    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareResponse;->err_msg:Ljava/lang/String;

    .line 376
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u8bf7\u6c42\u4f53\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$requestBody:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 379
    :cond_1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/qianhe/yct/utils/NetworkDataLoader$5$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/NetworkDataLoader$5$1;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader$5;)V

    .line 380
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 379
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/event/FirmwareResponse;

    if-eqz p1, :cond_2

    .line 382
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 383
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$pn:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareResponse;->pns:Ljava/lang/String;

    .line 384
    iget-boolean p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$isModuleUpgrade:Z

    iput-boolean p2, p1, Lcom/qianhe/yct/event/FirmwareResponse;->isModuleUpgrade:Z

    .line 385
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirmwareList() onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 393
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 394
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_4

    .line 395
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$pn:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$versions:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$5;->val$isModuleUpgrade:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 397
    :cond_4
    const-string p1, "getFirmwareList()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
