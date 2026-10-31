.class Lcom/qianhe/yct/utils/NetworkDataLoader$7;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;->downloadFirmwareWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

.field final synthetic val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 487
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4e0b\u8f7d\u56fa\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 495
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 496
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 498
    new-instance p2, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->val$listener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    invoke-direct {p2, p1, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V

    .line 499
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->val$savePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 503
    :cond_0
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->val$savePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1000

    .line 504
    :try_start_1
    new-array v0, v0, [B

    .line 506
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;->this$0:Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->-$$Nest$fgetstartDownLoad(Lcom/qianhe/yct/utils/NetworkDataLoader;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 509
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1
    move-exception p2

    goto :goto_3

    .line 503
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p2

    :cond_3
    return-void

    .line 495
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
