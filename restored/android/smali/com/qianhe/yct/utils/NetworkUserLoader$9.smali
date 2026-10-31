.class Lcom/qianhe/yct/utils/NetworkUserLoader$9;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$orderNo:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$wxCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$orderNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$wxCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 825
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 826
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 827
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$orderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$wxCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$reason:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 829
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/CloseOrderResponse;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/CloseOrderResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 830
    const-string/jumbo p1, "\u5173\u95ed\u8ba2\u5355\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 836
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 838
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 840
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5173\u95ed\u8ba2\u5355\u54cd\u5e94\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 842
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 843
    const-string/jumbo p1, "state"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 844
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/CloseOrderResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/qianhe/yct/event/CloseOrderResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 846
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/qianhe/yct/event/CloseOrderResponse;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/qianhe/yct/event/CloseOrderResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5173\u95ed\u8ba2\u5355 onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/CloseOrderResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/qianhe/yct/event/CloseOrderResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 854
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 855
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$orderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$wxCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$9;->val$reason:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 857
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/CloseOrderResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/qianhe/yct/event/CloseOrderResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 858
    const-string/jumbo p1, "\u5173\u95ed\u8ba2\u5355\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
