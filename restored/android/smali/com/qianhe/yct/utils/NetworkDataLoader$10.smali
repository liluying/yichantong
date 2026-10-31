.class Lcom/qianhe/yct/utils/NetworkDataLoader$10;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->downloadApkWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

.field final synthetic val$savePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 684
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 689
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputstartDownLoad(Lcom/qianhe/yct/utils/NetworkDataLoader;Z)V

    .line 690
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 691
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 692
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fputapkDownloadCall(Lcom/qianhe/yct/utils/NetworkDataLoader;Lokhttp3/Call;)V

    .line 693
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetapkDownloadCall(Lcom/qianhe/yct/utils/NetworkDataLoader;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 697
    new-instance v2, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    invoke-direct {v2, v1, v3}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V

    .line 698
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$savePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 700
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_7

    .line 702
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$savePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x1000

    .line 703
    :try_start_3
    new-array v3, v3, [B

    .line 705
    :goto_1
    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {v4}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetstartDownLoad(Lcom/qianhe/yct/utils/NetworkDataLoader;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 706
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_2

    .line 708
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_4

    .line 702
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 710
    :cond_3
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    .line 694
    :cond_4
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    if-eqz v0, :cond_5

    .line 693
    :try_start_c
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_8
    throw v1

    .line 712
    :cond_6
    const-string/jumbo v0, "\u4e0b\u8f7dapk\u5931\u8d25\uff1aurl\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;->onError()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    return-void

    .line 716
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Socket closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 717
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0b\u8f7dapk\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetstartDownLoad(Lcom/qianhe/yct/utils/NetworkDataLoader;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$10;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    invoke-interface {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;->onError()V

    :cond_8
    return-void
.end method
