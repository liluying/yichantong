.class Lcom/qianhe/yct/utils/NetworkUserLoader$41;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadTodayLogInternal(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$compressProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$generation:I

.field final synthetic val$md5Pair:[Ljava/lang/String;

.field final synthetic val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

.field final synthetic val$otherFiles:Ljava/util/List;

.field final synthetic val$remark:Ljava/lang/String;

.field final synthetic val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ILandroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/io/File;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3358
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$generation:I

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$remark:Ljava/lang/String;

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iput-object p6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iput-object p7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$compressProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iput-object p8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$zipFile:Ljava/io/File;

    iput-object p9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$otherFiles:Ljava/util/List;

    iput-object p10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$md5Pair:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 8

    .line 3361
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$generation:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$misLogUploadSessionActive(Lcom/qianhe/yct/utils/NetworkUserLoader;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure() \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "timeout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3366
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3367
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$generation:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$misLogUploadSessionActive(Lcom/qianhe/yct/utils/NetworkUserLoader;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 3368
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$remark:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iget-object v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$compressProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    invoke-virtual/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadTodayLog(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;)V

    return-void

    .line 3370
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3371
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mendLogUploadSession(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    .line 3372
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_4

    .line 3373
    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    .line 3378
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_4

    .line 3379
    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 14

    .line 3387
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$generation:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$misLogUploadSessionActive(Lcom/qianhe/yct/utils/NetworkUserLoader;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 3391
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0a\u4f20\u5f53\u5929\u65e5\u5fd7\u54cd\u5e94\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3392
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3393
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 3395
    const-string p1, "err_msg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3396
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_3

    .line 3397
    invoke-interface {v0, v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3401
    :cond_1
    const-string p1, "results"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3402
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 3403
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3404
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3405
    const-string v3, "android_device_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3406
    const-string v3, "log_beg_epoch"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 3407
    const-string v3, "log_end_epoch"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 3408
    const-string v3, "log_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 3409
    const-string v3, "device_sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3410
    const-string/jumbo v3, "upload_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3411
    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3412
    const-string/jumbo v3, "uuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3413
    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$otherFiles:Ljava/util/List;

    iget-object v11, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iget-object v12, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$md5Pair:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v13, v2, v3

    const/4 v5, 0x1

    invoke-static/range {v4 .. v13}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$muploadLogFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3416
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz p1, :cond_3

    .line 3417
    const-string/jumbo v0, "\u65e0\u4e0a\u4f20\u4fe1\u606f"

    invoke-interface {p1, v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3423
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3424
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_3

    .line 3425
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
