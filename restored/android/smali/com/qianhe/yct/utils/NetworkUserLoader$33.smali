.class Lcom/qianhe/yct/utils/NetworkUserLoader$33;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
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

    .line 2275
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    .line 2278
    new-instance p1, Lcom/qianhe/yct/event/CreateBucketResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/CreateBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2279
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 2280
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure() \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 6

    .line 2287
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521b\u5efa\u94f2\u6597\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2288
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2289
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2291
    const-string v1, "err_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2292
    new-instance v1, Lcom/qianhe/yct/event/CreateBucketResponse;

    invoke-direct {v1, p1, v0}, Lcom/qianhe/yct/event/CreateBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2293
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p1, v1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 2294
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2297
    :cond_0
    new-instance v1, Lcom/qianhe/yct/event/CreateBucketResponse;

    const-string v2, "ok"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/yct/event/CreateBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2298
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const-string v2, "bucket_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 2299
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const-string v2, "bucket_uuid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 2300
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    .line 2302
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 2303
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 2305
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p1, v1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 2306
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2309
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2310
    new-instance v0, Lcom/qianhe/yct/event/CreateBucketResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/CreateBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2311
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$33;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p1, v0, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 2312
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
