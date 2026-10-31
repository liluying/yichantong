.class Lcom/qianhe/yct/utils/NetworkUserLoader$31;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V
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

    .line 2158
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 2161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure() \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2162
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2163
    const-string/jumbo p1, "timeout"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 2164
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutExcavator(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 2165
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutExcavator(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutExcavator(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u8d85\u65f6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutExcavator(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u6b21"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2167
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V

    return-void

    .line 2169
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2172
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u8be2\u6316\u673a\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2180
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2181
    const-string/jumbo p1, "state"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2182
    const-string/jumbo v2, "total_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_0

    .line 2184
    const-string v2, "err_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2185
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    invoke-direct {v3, p1, v1}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2186
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 2188
    :cond_0
    const-string v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 2189
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2190
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2191
    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v5, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mparseExcavatorFromQueryResult(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v5

    .line 2192
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 2193
    const-string v6, "belong_uid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 2194
    const-string v6, "create_epoch"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    .line 2195
    const-string/jumbo v6, "update_epoch"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 2196
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    .line 2197
    const-string/jumbo v6, "uuid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    .line 2198
    const-string v6, "calib_params_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 2199
    const-string v6, "calib_params"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 2200
    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 2202
    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetexcavatorList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    new-instance v3, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    const-string v4, "ok"

    invoke-direct {v3, p1, v4}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    .line 2205
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetexcavatorList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v2, :cond_2

    .line 2206
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2207
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V

    return-void

    .line 2209
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2210
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetexcavatorList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v3, Lcom/qianhe/yct/event/QueryExcacatorResponse;->list:Ljava/util/List;

    .line 2211
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2215
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$31;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
