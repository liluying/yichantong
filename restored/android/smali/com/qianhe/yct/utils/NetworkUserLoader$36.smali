.class Lcom/qianhe/yct/utils/NetworkUserLoader$36;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->delBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2461
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$36;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$36;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 3

    .line 2464
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/DelBucketResponse;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$36;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v0, v1, p2, v2}, Lcom/qianhe/yct/event/DelBucketResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    .line 2470
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2471
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2472
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/DelBucketResponse;

    const-string v3, "err_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$36;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v2, p1, v0, v3}, Lcom/qianhe/yct/event/DelBucketResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2474
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/DelBucketResponse;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$36;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v3, -0x1

    invoke-direct {v1, v3, p1, v2}, Lcom/qianhe/yct/event/DelBucketResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
