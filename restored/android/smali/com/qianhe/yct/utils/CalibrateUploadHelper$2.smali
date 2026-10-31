.class Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;
.super Ljava/lang/Object;
.source "CalibrateUploadHelper.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/CalibrateUploadHelper;->ossCallback(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

.field final synthetic val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    iput-object p2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p3, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$uuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$zipFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 3

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6821\u51c6\u6570\u636e\u5305 OSS \u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$token:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    iget-object v2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$zipFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$mignoreNotify(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyCalibPacketState(Ljava/lang/String;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    .line 247
    const-string/jumbo p1, "\u6821\u51c6\u6570\u636e\u5305 OSS PUT \u6210\u529f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$net:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$token:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->this$0:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    iget-object v3, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;->val$zipFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->-$$Nest$mignoreNotify(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyCalibPacketState(Ljava/lang/String;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void
.end method
