.class Lcom/qianhe/yct/utils/NetworkUserLoader$5;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$sn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$sn:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 571
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 572
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 573
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$sn:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 575
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 576
    const-string/jumbo p1, "\u83b7\u53d6cors\u8fc7\u671f\u65f6\u95f4\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    .line 582
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_2

    .line 584
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 586
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 587
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u83b7\u53d6cors\u8fc7\u671f\u65f6\u95f4\uff1a"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 588
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 589
    const-string p1, "err_msg"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 592
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v3, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    invoke-direct {v3, v4, p1, v1, v2}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 594
    :cond_0
    const-string v3, "expire_epoch"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 595
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v5, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    invoke-direct {v5, v6, p1, v3, v4}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p2, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 598
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v3, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u83b7\u53d6cors\u8fc7\u671f\u65f6\u95f4 onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 602
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    invoke-direct {p2, v3, v0, v1, v2}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 605
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 606
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_3

    .line 607
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$sn:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 609
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$5;->val$className:Ljava/lang/String;

    invoke-direct {p2, v3, v0, v1, v2}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 610
    const-string/jumbo p1, "\u83b7\u53d6cors\u8fc7\u671f\u65f6\u95f4\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
