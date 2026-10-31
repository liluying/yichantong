.class final Lcom/qianhe/baselib/utils/LogIo$Appender;
.super Ljava/lang/Object;
.source "LogIo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/LogIo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Appender"
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureWriter(Ljava/lang/String;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 120
    :cond_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->writer:Ljava/io/BufferedWriter;

    .line 123
    iput-object p1, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/baselib/utils/LogIo$Appender;->ensureWriter(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    :cond_1
    :goto_0
    return-void
.end method

.method closeQuietly()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->writer:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->writer:Ljava/io/BufferedWriter;

    .line 102
    iput-object v0, p0, Lcom/qianhe/baselib/utils/LogIo$Appender;->path:Ljava/lang/String;

    return-void
.end method

.method rotateIfTooLarge(Ljava/lang/String;J)V
    .locals 3

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-lez p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    return-void
.end method
