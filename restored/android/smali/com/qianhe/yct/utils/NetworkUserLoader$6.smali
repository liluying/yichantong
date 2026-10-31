.class Lcom/qianhe/yct/utils/NetworkUserLoader$6;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->getWxOpenId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 634
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 635
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 636
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->val$code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getWxOpenId(Ljava/lang/String;)V

    return-void

    .line 638
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/WxOpenIdResponse;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/WxOpenIdResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 639
    const-string p1, "getWxOpenId()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 645
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 649
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 650
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u83b7\u53d6\u5fae\u4fe1\u7528\u6237openId\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 652
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$6$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$6$1;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader$6;)V

    .line 655
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 654
    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/event/WxOpenIdResponse;

    .line 656
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 658
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/qianhe/yct/event/WxOpenIdResponse;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/qianhe/yct/event/WxOpenIdResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWxOpenId() onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/WxOpenIdResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/qianhe/yct/event/WxOpenIdResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 666
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 667
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$6;->val$code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getWxOpenId(Ljava/lang/String;)V

    return-void

    .line 669
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/WxOpenIdResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/qianhe/yct/event/WxOpenIdResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 670
    const-string p1, "getWxOpenId()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
