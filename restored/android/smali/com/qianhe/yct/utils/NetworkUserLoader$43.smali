.class Lcom/qianhe/yct/utils/NetworkUserLoader$43;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadLogFileToServer(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$contentMd5Base64:Ljava/lang/String;

.field final synthetic val$fileList:Ljava/util/List;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$needMD5:Z

.field final synthetic val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

.field final synthetic val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;

.field final synthetic val$zipFile:Ljava/io/File;

.field final synthetic val$zipPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3558
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-boolean p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$needMD5:Z

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iput-object p7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    iput-object p8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iput-object p9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iput-object p10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$contentMd5Base64:Ljava/lang/String;

    iput-object p11, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 12

    .line 3561
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3566
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSS\u4e0a\u4f20\u5931\u8d25\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3568
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3569
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result p1

    const/4 p2, 0x3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    if-ge p1, p2, :cond_1

    .line 3570
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-boolean v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$needMD5:Z

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    iget-object v9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iget-object v10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iget-object v11, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$contentMd5Base64:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$muploadLogFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V

    return-void

    .line 3572
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3573
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    .line 3574
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V

    .line 3575
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipFile:Ljava/io/File;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mnotifyUploadLogFileState(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void

    .line 3562
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    .line 3563
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3582
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3583
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3588
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 3589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSS upload response.code()\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3590
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xc8

    if-eq v0, v6, :cond_1

    const/16 v6, 0xc9

    if-eq v0, v6, :cond_1

    const/16 v6, 0xcc

    if-ne v0, v6, :cond_3

    .line 3592
    :cond_1
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3593
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    .line 3594
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V

    .line 3595
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    if-eqz v0, :cond_2

    const/16 v6, 0x64

    .line 3596
    invoke-interface {v0, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;->onProgress(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto/16 :goto_4

    .line 3599
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipFile:Ljava/io/File;

    iget-object v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v8, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    const/4 v9, 0x2

    invoke-static {v0, v6, v7, v9, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mnotifyUploadLogFileState(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    .line 3600
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mdeleteLogUploadDecryptTempFiles(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V

    goto :goto_1

    .line 3602
    :cond_3
    iget-object v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSS\u4e0a\u4f20\u5931\u8d25 code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cmsg:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3604
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 3605
    iget-object v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-boolean v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$needMD5:Z

    iget-object v8, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$url:Ljava/lang/String;

    iget-object v9, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$mimeType:Ljava/lang/String;

    iget-object v10, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipPath:Ljava/lang/String;

    iget-object v11, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v12, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    iget-object v13, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iget-object v14, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iget-object v15, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$contentMd5Base64:Ljava/lang/String;

    invoke-static/range {v6 .. v15}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$muploadLogFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V

    goto :goto_1

    .line 3607
    :cond_4
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3608
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    .line 3609
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V

    .line 3610
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipFile:Ljava/io/File;

    iget-object v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v8, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    invoke-static {v0, v6, v7, v2, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mnotifyUploadLogFileState(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    .line 3611
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mdeleteLogUploadDecryptTempFiles(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_8

    .line 3614
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    .line 3584
    :cond_5
    :goto_3
    :try_start_3
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    .line 3585
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_8

    goto :goto_2

    :goto_4
    if-eqz v5, :cond_6

    .line 3582
    :try_start_4
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 3615
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OSS\u4e0a\u4f20\u54cd\u5e94\u5904\u7406\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3616
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3617
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 3618
    iget-object v5, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-boolean v6, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$needMD5:Z

    iget-object v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$url:Ljava/lang/String;

    iget-object v8, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$mimeType:Ljava/lang/String;

    iget-object v9, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipPath:Ljava/lang/String;

    iget-object v10, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v11, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    iget-object v12, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iget-object v13, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iget-object v14, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$contentMd5Base64:Ljava/lang/String;

    invoke-static/range {v5 .. v14}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$muploadLogFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V

    goto :goto_7

    .line 3620
    :cond_7
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 3621
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    .line 3622
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V

    .line 3623
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v3, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$zipFile:Ljava/io/File;

    iget-object v4, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$uuid:Ljava/lang/String;

    iget-object v5, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    invoke-static {v0, v3, v4, v2, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mnotifyUploadLogFileState(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    .line 3624
    iget-object v0, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v2, v1, Lcom/qianhe/yct/utils/NetworkUserLoader$43;->val$fileList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mdeleteLogUploadDecryptTempFiles(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V

    :cond_8
    :goto_7
    return-void
.end method
