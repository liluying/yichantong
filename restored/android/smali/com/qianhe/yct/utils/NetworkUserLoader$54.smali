.class Lcom/qianhe/yct/utils/NetworkUserLoader$54;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssEngineering(Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$localDbId:J


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4453
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$54;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-wide p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$54;->val$localDbId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 4456
    new-instance p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    .line 4457
    iget-wide v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$54;->val$localDbId:J

    iput-wide v0, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    .line 4458
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createGnssEngineering onFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 10

    .line 4465
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521b\u5efa\u5de5\u7a0b\u54cd\u5e94: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 4466
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4467
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4469
    const-string p1, "err_msg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4470
    new-instance v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    invoke-direct {v0, v2, p1}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    .line 4471
    iget-wide v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$54;->val$localDbId:J

    iput-wide v1, v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    .line 4472
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 4474
    :cond_0
    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4475
    const-string/jumbo p1, "uuid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4476
    const-string p1, "gnss_proj_param_id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4477
    const-string p1, "gnss_proj_param_uuid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4478
    new-instance v1, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const-string v3, "ok"

    invoke-direct/range {v1 .. v9}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    .line 4479
    iget-wide v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$54;->val$localDbId:J

    iput-wide v2, v1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    .line 4480
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4483
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4484
    new-instance v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    .line 4485
    iget-wide v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$54;->val$localDbId:J

    iput-wide v1, v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    .line 4486
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
