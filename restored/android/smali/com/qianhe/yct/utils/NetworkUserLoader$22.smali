.class Lcom/qianhe/yct/utils/NetworkUserLoader$22;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByUUid([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$project_uuids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1589
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->val$project_uuids:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 1592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure() \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 1593
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1594
    const-string/jumbo p1, "timeout"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1595
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 1596
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u8d85\u65f6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u6b21"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1598
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->val$project_uuids:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByUUid([Ljava/lang/String;)V

    return-void

    .line 1600
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1603
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;

    invoke-direct {v0, v1, p2}, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 9

    .line 1610
    const-string/jumbo v0, "type"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u67e5\u8be2\u9879\u76ee\u54cd\u5e94(uuid)\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1611
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1612
    const-string/jumbo p1, "state"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1613
    const-string/jumbo v3, "total_count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eqz p1, :cond_0

    .line 1615
    const-string v0, "err_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;

    invoke-direct {v3, p1, v0}, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1617
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 1619
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "results"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1620
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1621
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1622
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1623
    const-string v7, "details"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1624
    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v8, v6, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mcreateEntry(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1626
    const-string/jumbo v7, "uuid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 1627
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    .line 1628
    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    .line 1629
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1630
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    .line 1631
    iget-object v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v7, v5, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mapplyProjectBelongEngineeringFromServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1632
    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetentityByUuidList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1635
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetentityByUuidList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 1636
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1637
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->val$project_uuids:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByUUid([Ljava/lang/String;)V

    return-void

    .line 1639
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;

    const-string v3, ""

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetentityByUuidList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1640
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1644
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 1645
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$22;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void
.end method
