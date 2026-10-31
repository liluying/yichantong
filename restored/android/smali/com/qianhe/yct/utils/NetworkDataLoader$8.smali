.class Lcom/qianhe/yct/utils/NetworkDataLoader$8;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkList(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$body:Lokhttp3/RequestBody;

.field final synthetic val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$requestBody:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;Ljava/lang/String;Lokhttp3/RequestBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 542
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$version:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$requestBody:Ljava/lang/String;

    iput-object p6, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$body:Lokhttp3/RequestBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 545
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputrequestApkList(Lcom/qianhe/yct/utils/NetworkDataLoader;Z)V

    .line 546
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 547
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 548
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$version:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkList(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;)V

    return-void

    .line 550
    :cond_0
    const-string p1, "getApkList()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 551
    new-instance p1, Lcom/qianhe/yct/event/ApkListResponse;

    invoke-direct {p1}, Lcom/qianhe/yct/event/ApkListResponse;-><init>()V

    const/4 v0, -0x1

    .line 552
    iput v0, p1, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    .line 553
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/yct/event/ApkListResponse;->err_msg:Ljava/lang/String;

    .line 554
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;->onError(Lcom/qianhe/yct/event/ApkListResponse;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 560
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputrequestApkList(Lcom/qianhe/yct/utils/NetworkDataLoader;Z)V

    .line 561
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const-string/jumbo v0, "\uff0c\u54cd\u5e94\u4f53\uff1a"

    if-eqz p1, :cond_4

    .line 563
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 565
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApkList() -> \u8f6f\u4ef6\u5f53\u524d\u7248\u672c:2.0.2609.109 apk\u5217\u8868:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 567
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 568
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 569
    const-string v2, "err_msg"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    const-string/jumbo v2, "\u8bf7\u6c42\u4f53\uff1a"

    if-eqz v1, :cond_1

    .line 571
    :try_start_1
    new-instance v3, Lcom/qianhe/yct/event/ApkListResponse;

    invoke-direct {v3}, Lcom/qianhe/yct/event/ApkListResponse;-><init>()V

    .line 572
    iput v1, v3, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    .line 573
    iput-object p2, v3, Lcom/qianhe/yct/event/ApkListResponse;->err_msg:Ljava/lang/String;

    .line 575
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

    if-eqz p2, :cond_0

    invoke-interface {p2, v3}, Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;->onError(Lcom/qianhe/yct/event/ApkListResponse;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 576
    :cond_0
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$requestBody:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 578
    :cond_1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$8$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/NetworkDataLoader$8$1;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader$8;)V

    .line 579
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 578
    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/yct/event/ApkListResponse;

    if-eqz p2, :cond_2

    .line 582
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;->onCheckResult(Lcom/qianhe/yct/event/ApkListResponse;)V

    goto :goto_2

    .line 584
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$requestBody:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 588
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApkList() JSONException\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0c\u8bf7\u6c42\u4f53\uff1a"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$requestBody:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    .line 592
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 593
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_5

    .line 594
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$version:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$onCheckResultListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkList(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;)V

    return-void

    .line 596
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getApkList() - \u8fde\u7eed3\u6b21\u5931\u8d25\uff1a\uff0c\u8bf7\u6c42\u4f53\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$requestBody:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$8;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
