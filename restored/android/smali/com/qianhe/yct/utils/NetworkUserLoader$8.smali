.class Lcom/qianhe/yct/utils/NetworkUserLoader$8;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->getOrderRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$wxCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 753
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->val$wxCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure() \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 757
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 758
    const-string/jumbo p1, "timeout"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 759
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutOrderRecord(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 760
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutOrderRecord(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutOrderRecord(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 761
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u8d85\u65f6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutOrderRecord(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u6b21"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 762
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->val$wxCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getOrderRecord(Ljava/lang/String;)V

    return-void

    .line 764
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/OrderRecordResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/OrderRecordResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 767
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/OrderRecordResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/OrderRecordResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u8be2\u8ba2\u5355\u8bb0\u5f55\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 775
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 776
    const-string/jumbo p1, "state"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 777
    const-string/jumbo v2, "total_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_0

    .line 779
    const-string v2, "err_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/OrderRecordResponse;

    invoke-direct {v3, p1, v1}, Lcom/qianhe/yct/event/OrderRecordResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 781
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 783
    :cond_0
    const-string v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 784
    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetorderRecordList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$8$1;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$8$1;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader$8;)V

    .line 785
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 784
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetorderRecordList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 787
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 788
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->val$wxCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getOrderRecord(Ljava/lang/String;)V

    return-void

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 791
    new-instance v1, Lcom/qianhe/yct/event/OrderRecordResponse;

    const-string v2, "ok"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/yct/event/OrderRecordResponse;-><init>(ILjava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetorderRecordList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/qianhe/yct/event/OrderRecordResponse;->list:Ljava/util/List;

    .line 793
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 797
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 799
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/OrderRecordResponse;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/OrderRecordResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
