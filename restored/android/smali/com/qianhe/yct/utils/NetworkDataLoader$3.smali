.class Lcom/qianhe/yct/utils/NetworkDataLoader$3;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->getRegisterInfo(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field final synthetic val$sn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$sn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 191
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$sn:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getRegisterInfo(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    const-string/jumbo p1, "\u8bf7\u6c42\u6ce8\u518c\u7801\u4fe1\u606f\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    .line 200
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 204
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u83b7\u53d6\u6ce8\u518c\u7801\u4fe1\u606f\u54cd\u5e94\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 206
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 208
    const-string v0, "err_msg"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/RequstRegisterResult;

    invoke-direct {p2, v0}, Lcom/qianhe/yct/event/RequstRegisterResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 212
    :cond_0
    const-string p1, "regist_info"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "apply_datetime"

    const-string v2, "null"

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    const-string p1, "expire_datetime"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-string p1, "regist_code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetmSp(Lcom/qianhe/yct/utils/NetworkDataLoader;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$sn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET,REGISTER,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v5, "ok"

    invoke-direct {v3, v4, v0, v5}, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 225
    :cond_2
    :goto_0
    const-string p1, "feature_info"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 227
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    const-string p1, "feature_code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET,FEATURE_CODE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 234
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegisterInfo() onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    .line 238
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_5

    .line 240
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$3;->val$sn:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getRegisterInfo(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_5
    const-string p1, "getRegisterInfo()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
