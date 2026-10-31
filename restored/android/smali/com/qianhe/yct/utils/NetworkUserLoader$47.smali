.class Lcom/qianhe/yct/utils/NetworkUserLoader$47;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->putFileToOss(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$needMd5:Z

.field final synthetic val$retry:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3811
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$retry:I

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$zipFile:Ljava/io/File;

    iput-boolean p6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$needMd5:Z

    iput-object p7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 9

    .line 3814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSS PUT \u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3815
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$retry:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3816
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$zipFile:Ljava/io/File;

    iget-boolean v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$needMd5:Z

    iget-object v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    add-int/lit8 v8, v0, 0x1

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mputFileToOss(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V

    return-void

    .line 3817
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_1

    .line 3818
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10

    const/4 v1, 0x2

    .line 3824
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3825
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 3826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OSS PUT response.code()\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xc8

    if-eq v0, p2, :cond_0

    const/16 p2, 0xc9

    if-eq v0, p2, :cond_0

    const/16 p2, 0xcc

    if-ne v0, p2, :cond_1

    .line 3829
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz p2, :cond_3

    .line 3830
    const-string v0, ""

    invoke-interface {p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 3832
    :cond_1
    iget p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$retry:I

    if-ge p2, v1, :cond_2

    .line 3833
    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$zipFile:Ljava/io/File;

    iget-boolean v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$needMd5:Z

    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    add-int/lit8 v9, p2, 0x1

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mputFileToOss(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V

    goto :goto_0

    .line 3834
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz p2, :cond_3

    .line 3835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OSS PUT code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    .line 3837
    :try_start_2
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_4

    .line 3824
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3838
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSS PUT \u54cd\u5e94\u5904\u7406\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3839
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$retry:I

    if-ge v0, v1, :cond_5

    .line 3840
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$zipFile:Ljava/io/File;

    iget-boolean v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$needMd5:Z

    iget-object v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    add-int/lit8 v8, v0, 0x1

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mputFileToOss(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V

    goto :goto_4

    .line 3841
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_6

    .line 3842
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method
