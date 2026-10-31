.class Lcom/qianhe/yct/utils/NetworkUserLoader$42;
.super Lokhttp3/RequestBody;
.source "NetworkUserLoader.java"


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

.field final synthetic val$fileLength:J

.field final synthetic val$lastProgress:[I

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;JLjava/io/File;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;[I)V
    .locals 0

    .line 3495
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$mimeType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$fileLength:J

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$zipFile:Ljava/io/File;

    iput-object p6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    iput-object p7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$lastProgress:[I

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 3503
    iget-wide v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$fileLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 3498
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$mimeType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public isOneShot()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 13

    .line 3515
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$zipFile:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    .line 3516
    :try_start_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :cond_0
    :goto_0
    const-wide/16 v8, 0x2000

    .line 3518
    invoke-interface {v0, v1, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    .line 3519
    invoke-interface {p1, v1, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    add-long/2addr v4, v8

    add-long/2addr v6, v8

    const-wide/32 v8, 0x10000

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    .line 3523
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    move-wide v6, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 3526
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$uploadProgressListener:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    if-eqz v8, :cond_0

    iget-wide v9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$fileLength:J

    cmp-long v11, v9, v2

    if-lez v11, :cond_0

    const-wide/16 v11, 0x63

    mul-long v11, v11, v4

    .line 3527
    div-long/2addr v11, v9

    long-to-int v9, v11

    const/16 v10, 0x63

    if-le v9, v10, :cond_2

    const/16 v9, 0x63

    .line 3531
    :cond_2
    iget-object v10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;->val$lastProgress:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    if-eq v9, v12, :cond_0

    .line 3532
    aput v9, v10, v11

    .line 3533
    invoke-interface {v8, v9}, Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3537
    :cond_3
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 3538
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void

    :goto_2
    if-eqz v0, :cond_4

    .line 3515
    :try_start_1
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method
