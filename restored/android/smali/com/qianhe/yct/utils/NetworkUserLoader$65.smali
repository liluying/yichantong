.class Lcom/qianhe/yct/utils/NetworkUserLoader$65;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$point:Lcom/qianhe/baselib/bean/PointlibEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5252
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$65;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$65;->val$point:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    .line 5255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4fee\u6539\u70b9\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 5256
    new-instance p1, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5257
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$65;->val$point:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p2, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 5258
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    .line 5263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4fee\u6539\u70b9\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 5265
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5266
    new-instance p1, Lcom/qianhe/yct/event/PointSyncResponse;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "err_msg"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5267
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$65;->val$point:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 5268
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5270
    new-instance v0, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5271
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$65;->val$point:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p1, v0, Lcom/qianhe/yct/event/PointSyncResponse;->entity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 5272
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
