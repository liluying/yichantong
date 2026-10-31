.class Lcom/qianhe/yct/utils/NetworkUserLoader$63;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->addPoints(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$toUpload:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5128
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    .line 5131
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mclearUploadingPointLocalIds(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V

    .line 5132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6dfb\u52a0\u70b9\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 5133
    new-instance p1, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5134
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    iput-object p2, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    .line 5135
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 11

    .line 5140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6dfb\u52a0\u70b9\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 5142
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5143
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5144
    new-instance v1, Lcom/qianhe/yct/event/PointSyncResponse;

    const-string v2, "err_msg"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5145
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    iput-object v2, v1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    if-nez p1, :cond_1

    .line 5147
    const-string p1, "ids"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    .line 5150
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 5151
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5152
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    .line 5153
    iget-object v5, v1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5154
    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 5155
    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v5, :cond_0

    .line 5156
    iget-wide v6, v5, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    .line 5157
    invoke-virtual {v0, v6, v7, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointServerId(JJ)V

    .line 5158
    iput-wide v3, v5, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5164
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mclearUploadingPointLocalIds(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V

    .line 5165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5167
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mclearUploadingPointLocalIds(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V

    .line 5168
    new-instance v0, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5169
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$63;->val$toUpload:Ljava/util/List;

    iput-object p1, v0, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    .line 5170
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
