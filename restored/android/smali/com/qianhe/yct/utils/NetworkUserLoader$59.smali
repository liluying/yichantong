.class Lcom/qianhe/yct/utils/NetworkUserLoader$59;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->createPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4906
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 4909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u521b\u5efa\u70b9\u5e93\u7ec4\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4910
    new-instance p1, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 4911
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p2, p1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4912
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4913
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7

    .line 4918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521b\u5efa\u70b9\u5e93\u7ec4\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 4920
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4921
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4922
    const-string p1, ""

    if-eqz v2, :cond_0

    .line 4923
    :try_start_1
    new-instance v1, Lcom/qianhe/yct/event/PointGroupResponse;

    const-string v3, "err_msg"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 4924
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p1, v1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4925
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v2, v1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4926
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 4928
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4929
    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4930
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-wide v4, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    .line 4931
    iput-object v6, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    .line 4932
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongUid:J

    .line 4933
    new-instance v1, Lcom/qianhe/yct/event/PointGroupResponse;

    const-string v3, "ok"

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 4934
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p1, v1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4935
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v2, v1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4936
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 4939
    :goto_0
    new-instance v0, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 4940
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$59;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4941
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4942
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
