.class Lcom/qianhe/yct/utils/NetworkUserLoader$57;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryEngineeringByUuid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$engineeringUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4687
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->val$engineeringUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 3

    .line 4690
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->val$engineeringUuid:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryEngineeringByUuid onFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    const/4 v0, -0x1

    .line 4697
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6309uuid\u67e5\u8be2\u5de5\u7a0b\u54cd\u5e94: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 4698
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4699
    const-string/jumbo p1, "state"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 4701
    const-string v2, "err_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4702
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->val$engineeringUuid:Ljava/lang/String;

    invoke-direct {v3, p1, v1, v4}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 4705
    :cond_0
    const-string p1, "results"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4706
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4707
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    const-string v2, "engineering not found"

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->val$engineeringUuid:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4710
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mparseGnssEngineeringItem(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    move-result-object p1

    .line 4711
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mconvertGnssEngineeringItemToEntity(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    .line 4712
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->val$engineeringUuid:Ljava/lang/String;

    invoke-direct {v3, v2, p1, v4}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4714
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryEngineeringByUuid \u6570\u636e\u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4715
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$57;->val$engineeringUuid:Ljava/lang/String;

    invoke-direct {v2, v0, p1, v3}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
