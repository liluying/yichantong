.class Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;
.super Ljava/lang/Object;
.source "CalibrateUploadHelper.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/CalibrateUploadHelper;->ignoreNotify(Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;->this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    iput-object p2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;->val$zipFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6821\u51c6\u4e0a\u4f20\u7ed3\u679c\u901a\u77e5\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;->val$zipFile:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;->val$zipFile:Ljava/io/File;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V

    return-void
.end method
