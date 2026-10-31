.class final Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecryptJob"
.end annotation


# instance fields
.field final error:Ljava/lang/Exception;

.field final src:Ljava/io/File;

.field final temp:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/Exception;)V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->src:Ljava/io/File;

    .line 561
    iput-object p2, p0, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->temp:Ljava/io/File;

    .line 562
    iput-object p3, p0, Lcom/qianhe/baselib/utils/ZipUtil$DecryptJob;->error:Ljava/lang/Exception;

    return-void
.end method
