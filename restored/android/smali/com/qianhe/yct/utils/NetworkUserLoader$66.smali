.class Lcom/qianhe/yct/utils/NetworkUserLoader$66;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryPoints(JLjava/util/List;Ljava/lang/String;JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$groupId:J


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5299
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$66;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-wide p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$66;->val$groupId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 5302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u67e5\u8be2\u70b9\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 5303
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryPointResponse;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryPointResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p1

    .line 5308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u67e5\u8be2\u70b9\u54cd\u5e94\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 5310
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5311
    const-string/jumbo v0, "state"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5312
    const-string v0, ""

    if-eqz v3, :cond_0

    .line 5313
    :try_start_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/yct/event/QueryPointResponse;

    const-string v5, "err_msg"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/qianhe/yct/event/QueryPointResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 5316
    :cond_0
    const-string/jumbo v2, "total_count"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v8, v6

    .line 5317
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5318
    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 5320
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 5321
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 5322
    new-instance v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;

    invoke-direct {v11}, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;-><init>()V

    .line 5323
    const-string v12, "id"

    invoke-virtual {v10, v12, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->id:J

    .line 5324
    const-string v12, "group_id"

    invoke-virtual {v10, v12, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->groupId:J

    .line 5325
    const-string v12, "name"

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->name:Ljava/lang/String;

    .line 5326
    const-string v12, "collected_at"

    invoke-virtual {v10, v12, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->collectedAt:J

    .line 5327
    const-string v12, "latitude"

    const-wide/16 v13, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->latitude:D

    .line 5328
    const-string v4, "longitude"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->longitude:D

    .line 5329
    const-string v4, "altitude"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->altitude:D

    .line 5330
    const-string/jumbo v4, "x"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->x:D

    .line 5331
    const-string/jumbo v4, "y"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->y:D

    .line 5332
    const-string/jumbo v4, "z"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->z:D

    .line 5333
    const-string/jumbo v4, "solution"

    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->solution:I

    .line 5334
    const-string v4, "hdop"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->hdop:D

    .line 5335
    const-string/jumbo v4, "vdop"

    invoke-virtual {v10, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v11, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->vdop:D

    .line 5336
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 5339
    :cond_1
    new-instance v2, Lcom/qianhe/yct/event/QueryPointResponse;

    const-string v4, "ok"

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/event/QueryPointResponse;-><init>(ILjava/lang/String;JLjava/util/List;)V

    .line 5340
    iget-wide v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$66;->val$groupId:J

    iput-wide v0, v2, Lcom/qianhe/yct/event/QueryPointResponse;->groupId:J

    .line 5341
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 5343
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/QueryPointResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/qianhe/yct/event/QueryPointResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
