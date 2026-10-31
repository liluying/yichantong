.class Lcom/qianhe/yct/utils/NetworkDataLoader$9;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkDownloadUrl(ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$apkId:I

.field final synthetic val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$apkId:I

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 625
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 626
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 627
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$apkId:I

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkDownloadUrl(ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V

    return-void

    .line 629
    :cond_0
    const-string p1, "getApkDownloadUrl()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 630
    new-instance p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;

    invoke-direct {p1}, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;-><init>()V

    .line 631
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->err_msg:Ljava/lang/String;

    .line 633
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;->onDownloadInfo(Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 639
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 641
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 643
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apk\u4e0b\u8f7d\u4fe1\u606f\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 645
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 646
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 647
    const-string v1, "err_msg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 649
    new-instance p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;

    invoke-direct {p1}, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;-><init>()V

    .line 650
    iput-object p2, p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->err_msg:Ljava/lang/String;

    .line 652
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;->onDownloadInfo(Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 654
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/qianhe/yct/utils/NetworkDataLoader$9$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/NetworkDataLoader$9$1;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader$9;)V

    .line 655
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 654
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;

    .line 657
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;->onDownloadInfo(Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 660
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getApkDownloadUrl() onResponse\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    .line 664
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V

    .line 665
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_3

    .line 666
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iget p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$apkId:I

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$9;->val$downloadInfoResponseListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getApkDownloadUrl(ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V

    return-void

    .line 668
    :cond_3
    const-string p1, "getApkDownloadUrl()\u5931\u8d25 - \u8fde\u7eed3\u6b21"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
