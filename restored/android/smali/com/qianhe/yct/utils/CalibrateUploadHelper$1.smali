.class Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;
.super Ljava/lang/Object;
.source "CalibrateUploadHelper.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/CalibrateUploadHelper;->uploadPacket(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

.field final synthetic val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$zip:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    iput-object p2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    iput-object p3, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p4, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6821\u51c6\u6570\u636e\u5305 1001 \u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 207
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    const-string/jumbo p1, "state"

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6821\u51c6\u6570\u636e\u5305 1001\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "err_msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 213
    :cond_0
    const-string p1, "is_duplicate"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 214
    const-string/jumbo p1, "\u6821\u51c6\u6570\u636e\u5305\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7 PUT"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V

    return-void

    .line 218
    :cond_1
    const-string/jumbo p1, "upload_url"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    const-string p1, "mime_type"

    const-string v2, "application/zip"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    const-string/jumbo p1, "uuid"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v5, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    iget-object v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    iget-object v1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$token:Ljava/lang/String;

    invoke-static {v0, v2, v1, p1, v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$mossCallback(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putFileToOss(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void

    .line 222
    :cond_3
    :goto_0
    const-string/jumbo p1, "\u6821\u51c6\u6570\u636e\u5305 1001 \u65e0 upload_url/uuid"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 228
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6821\u51c6\u6570\u636e\u5305 1001 \u89e3\u6790\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;->val$zip:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V

    return-void
.end method
