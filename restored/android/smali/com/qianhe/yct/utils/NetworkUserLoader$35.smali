.class Lcom/qianhe/yct/utils/NetworkUserLoader$35;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V
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

    .line 2383
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 2386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure() \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2387
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2388
    const-string/jumbo p1, "timeout"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 2389
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutBucket(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 2390
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutBucket(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutBucket(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2391
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V

    return-void

    .line 2393
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryBucketResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2396
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryBucketResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u8be2\u94f2\u6597\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2404
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2405
    const-string/jumbo p1, "state"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2406
    const-string/jumbo v2, "total_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_0

    .line 2408
    const-string v2, "err_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2409
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryBucketResponse;

    invoke-direct {v3, p1, v1}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2410
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 2412
    :cond_0
    const-string v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 2413
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2414
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2415
    new-instance v5, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 2416
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 2417
    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 2418
    const-string v6, "create_epoch"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 2419
    const-string/jumbo v6, "update_epoch"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    .line 2420
    const-string v6, "belong_uid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    .line 2421
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 2422
    const-string/jumbo v6, "uuid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 2424
    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v6, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mreadParamsDetailJson(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 2425
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2426
    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mparseBucketParamsDetail(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShovelEntity;Lorg/json/JSONObject;)V

    .line 2428
    :cond_1
    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetbucketList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2430
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetbucketList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 2431
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2432
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V

    return-void

    .line 2434
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2435
    new-instance v1, Lcom/qianhe/yct/event/QueryBucketResponse;

    const-string v2, "ok"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2436
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetbucketList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/qianhe/yct/event/QueryBucketResponse;->list:Ljava/util/List;

    .line 2437
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2441
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$35;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2443
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/QueryBucketResponse;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
