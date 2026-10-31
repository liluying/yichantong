.class Lcom/qianhe/yct/utils/NetworkUserLoader$4;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->getPriceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 500
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 501
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 502
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getPriceList()V

    return-void

    .line 504
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/PriceListResponse;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 505
    const-string p1, "getPriceList()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8

    .line 511
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 513
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 515
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u67e5\u8be2\u4ef7\u683c\u5217\u8868\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 517
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 518
    const-string p1, "err_msg"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/qianhe/yct/event/PriceListResponse;

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 523
    :cond_0
    const-string p1, "results"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 524
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 526
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 527
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 528
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$4$1;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$4$1;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader$4;)V

    .line 529
    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 528
    invoke-virtual {v6, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/bean/RenewPriceBean;

    .line 530
    iget v6, v5, Lcom/qianhe/yct/bean/RenewPriceBean;->price_group_id:I

    if-ne v6, v1, :cond_1

    const/4 v4, 0x1

    .line 531
    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/PriceListResponse;

    invoke-direct {v1, v2, p2, v4}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/util/List;Z)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 536
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/qianhe/yct/event/PriceListResponse;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPriceList() onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 540
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/PriceListResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 543
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 544
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_5

    .line 545
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$4;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getPriceList()V

    return-void

    .line 547
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/PriceListResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 548
    const-string p1, "getPriceList()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
