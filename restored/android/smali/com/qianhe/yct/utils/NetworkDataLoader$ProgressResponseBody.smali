.class Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "NetworkDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/NetworkDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressResponseBody"
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final progressListener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method static bridge synthetic -$$Nest$fgetprogressListener(Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;)Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->progressListener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresponseBody(Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method constructor <init>(Lokhttp3/ResponseBody;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V
    .locals 0

    .line 785
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 786
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 787
    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->progressListener:Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;

    return-void
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 809
    new-instance v0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody$1;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
