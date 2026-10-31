.class Lcom/qianhe/yct/utils/NetworkUserLoader$61;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
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

    .line 5003
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$61;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$61;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 5006
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4fee\u6539\u70b9\u5e93\u7ec4\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 5007
    new-instance p1, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 5008
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$61;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p2, p1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 5009
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 5010
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    .line 5015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4fee\u6539\u70b9\u5e93\u7ec4\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 5017
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5018
    new-instance p1, Lcom/qianhe/yct/event/PointGroupResponse;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "err_msg"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 5019
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$61;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 5020
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 5021
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5023
    new-instance v0, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 5024
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$61;->val$entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 5025
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 5026
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
