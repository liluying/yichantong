.class Lcom/qianhe/yct/utils/NetworkUserLoader$50;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4186
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 4189
    new-instance p1, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    .line 4190
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v0, :cond_0

    .line 4191
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    .line 4192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createGnssTransParam onFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 9

    const-wide/16 v1, 0x0

    .line 4199
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521b\u5efaGNSS\u8f6c\u6362\u53c2\u6570\u54cd\u5e94: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 4200
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4201
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 4203
    const-string p1, "err_msg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4204
    new-instance v0, Lcom/qianhe/yct/event/GnssTransParamResponse;

    invoke-direct {v0, v4, p1}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    .line 4205
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object p1, v0, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_0

    .line 4206
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, v0, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    .line 4207
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4209
    :cond_1
    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4210
    const-string/jumbo p1, "uuid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4211
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_2

    .line 4212
    iput-wide v6, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 4213
    iput-object v8, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    .line 4215
    :cond_2
    new-instance v3, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const-string v5, "ok"

    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 4216
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object p1, v3, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_3

    .line 4217
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    goto :goto_1

    :cond_3
    move-wide v4, v1

    :goto_1
    iput-wide v4, v3, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    .line 4218
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4221
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6570\u636e\u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4222
    new-instance v0, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    .line 4223
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$50;->val$entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object p1, v0, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_4

    .line 4224
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    :cond_4
    iput-wide v1, v0, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    .line 4225
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
