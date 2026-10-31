.class Lcom/qianhe/yct/utils/NetworkUserLoader$62;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryPointGroup(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJII)V
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

    .line 5054
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$62;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 5057
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u67e5\u8be2\u70b9\u5e93\u7ec4\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 5058
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryPointGroupResponse;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryPointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 14

    .line 5063
    const-string/jumbo v0, "state"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u67e5\u8be2\u70b9\u5e93\u7ec4\u54cd\u5e94\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 5065
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5066
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5067
    const-string p1, ""

    if-eqz v3, :cond_0

    .line 5068
    :try_start_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/QueryPointGroupResponse;

    const-string v4, "err_msg"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/qianhe/yct/event/QueryPointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    .line 5071
    :cond_0
    const-string/jumbo v2, "total_count"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v8, v4

    move-wide v5, v6

    .line 5072
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5073
    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 5075
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 5076
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 5077
    new-instance v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;

    invoke-direct {v11}, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;-><init>()V

    .line 5078
    const-string v12, "id"

    invoke-virtual {v10, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->id:J

    .line 5079
    const-string/jumbo v12, "version"

    invoke-virtual {v10, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->version:J

    .line 5080
    const-string/jumbo v12, "uuid"

    invoke-virtual {v10, v12, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    .line 5081
    const-string v12, "create_epoch"

    invoke-virtual {v10, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->createEpoch:J

    .line 5082
    const-string/jumbo v12, "update_epoch"

    invoke-virtual {v10, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->updateEpoch:J

    .line 5083
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->state:I

    .line 5084
    const-string v12, "name"

    invoke-virtual {v10, v12, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->name:Ljava/lang/String;

    .line 5085
    const-string v12, "remark"

    invoke-virtual {v10, v12, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->remark:Ljava/lang/String;

    .line 5086
    const-string v12, "belong_engineering_id"

    invoke-virtual {v10, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->belongEngineeringId:J

    .line 5087
    const-string v12, "engineering_uuid"

    invoke-virtual {v10, v12, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    .line 5088
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5091
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/qianhe/yct/event/QueryPointGroupResponse;

    const-string v4, "ok"

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/event/QueryPointGroupResponse;-><init>(ILjava/lang/String;JLjava/util/List;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 5093
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/QueryPointGroupResponse;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/QueryPointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
