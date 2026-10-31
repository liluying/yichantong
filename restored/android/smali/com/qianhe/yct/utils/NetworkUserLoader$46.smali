.class Lcom/qianhe/yct/utils/NetworkUserLoader$46;
.super Lokhttp3/RequestBody;
.source "NetworkUserLoader.java"


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

.field final synthetic val$fileLength:J

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;JLjava/io/File;)V
    .locals 0

    .line 3781
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->val$mime:Ljava/lang/String;

    iput-wide p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->val$fileLength:J

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->val$zipFile:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 3789
    iget-wide v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->val$fileLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 3784
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->val$mime:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 7

    .line 3794
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$46;->val$zipFile:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    .line 3795
    :try_start_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    :goto_0
    const-wide/16 v2, 0x2000

    .line 3797
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 3798
    invoke-interface {p1, v1, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3800
    :cond_0
    invoke-interface {v0}, Lokio/Source;->close()V

    return-void

    :goto_1
    if-eqz v0, :cond_1

    .line 3794
    :try_start_1
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method
