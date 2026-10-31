.class Lcom/qianhe/yct/utils/NetworkUserLoader$49;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3929
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 3932
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3933
    invoke-static {p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$smnotifyUnknownHostIfNeeded(Ljava/lang/Throwable;)V

    .line 3934
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3936
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u53d6\u6d88\u8bf7\u6c42\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    .line 3942
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3943
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3944
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3947
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3949
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3950
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1f40

    if-ne v1, v2, :cond_2

    .line 3952
    const-string v2, "err_msg"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3953
    const-string/jumbo v2, "token error"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3954
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3955
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 3956
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u672a\u767b\u5f55"

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "\u767b\u5f55\u5931\u6548"

    :goto_0
    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3957
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/LogoutResponse;

    const/4 v4, -0x1

    invoke-direct {v3, v1, p2, v4}, Lcom/qianhe/yct/event/LogoutResponse;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3959
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v1, :cond_5

    invoke-interface {v1, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    goto :goto_2

    .line 3962
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz p2, :cond_5

    invoke-interface {p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3966
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " JSON\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cbody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3967
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_5

    .line 3968
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    goto :goto_2

    .line 3971
    :cond_3
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz p2, :cond_5

    .line 3972
    const-string v0, "empty response"

    invoke-interface {p2, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    goto :goto_2

    .line 3975
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$49;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
