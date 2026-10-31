.class Lcom/qianhe/baselib/utils/LogToFile$2;
.super Ljava/io/FilterInputStream;
.source "LogToFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/LogToFile;->decryptLogToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPct:I

.field private readBytes:J

.field final synthetic val$progressListener:Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;

.field final synthetic val$totalBytes:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;JLcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;)V
    .locals 0

    .line 540
    iput-wide p2, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->val$totalBytes:J

    iput-object p4, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->val$progressListener:Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 542
    iput p1, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->lastPct:I

    return-void
.end method

.method private bump(I)V
    .locals 6

    if-gtz p1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->readBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->readBytes:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 549
    iget-wide v4, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->val$totalBytes:J

    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    .line 550
    iget v0, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->lastPct:I

    if-eq p1, v0, :cond_1

    .line 551
    iput p1, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->lastPct:I

    .line 552
    iget-object p1, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->val$progressListener:Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;

    iget-wide v0, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->readBytes:J

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->val$totalBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/LogToFile$2;->val$totalBytes:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;->onProgress(JJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    .line 558
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 560
    invoke-direct {p0, v1}, Lcom/qianhe/baselib/utils/LogToFile$2;->bump(I)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 567
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 568
    invoke-direct {p0, p1}, Lcom/qianhe/baselib/utils/LogToFile$2;->bump(I)V

    return p1
.end method
