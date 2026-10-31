.class public Lcom/qianhe/yct/event/ApkDownloadUrlResponse;
.super Ljava/lang/Object;
.source "ApkDownloadUrlResponse.java"


# instance fields
.field public download_url:Ljava/lang/String;

.field public err_msg:Ljava/lang/String;

.field public file_md5:Ljava/lang/String;

.field public file_size:J

.field public state:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->state:I

    .line 25
    iput-object p2, p0, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->err_msg:Ljava/lang/String;

    return-void
.end method
